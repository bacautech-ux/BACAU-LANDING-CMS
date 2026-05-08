import { v2 as cloudinary } from 'cloudinary'
import type { Adapter } from '@payloadcms/plugin-cloud-storage/types'

cloudinary.config({
  cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
  api_key: process.env.CLOUDINARY_API_KEY,
  api_secret: process.env.CLOUDINARY_API_SECRET,
})

function getResourceType(url: string): 'image' | 'video' | 'raw' {
  if (url.includes('/video/upload/')) return 'video'
  if (url.includes('/raw/upload/')) return 'raw'
  return 'image'
}

function extractPublicId(url: string): string {
  const match = url.match(/\/upload\/(?:v\d+\/)?(.+)$/)
  if (!match) return ''
  return match[1].replace(/\.[^/.]+$/, '')
}

export const cloudinaryAdapter = (): Adapter =>
  ({ collection, prefix }) => {
    const folder = prefix ?? collection.slug

    return {
      name: 'cloudinary',

      handleUpload: async ({ file }) => {
        const publicId = `${folder}/${file.filename.replace(/\.[^/.]+$/, '')}`

        const result = await new Promise<{ secure_url: string }>(
          (resolve, reject) => {
            const stream = cloudinary.uploader.upload_stream(
              {
                public_id: publicId,
                resource_type: 'auto',
                overwrite: true,
              },
              (error, result) => {
                if (error || !result) reject(error ?? new Error('Cloudinary upload failed'))
                else resolve(result as { secure_url: string })
              },
            )
            stream.end(file.buffer)
          },
        )

        return { url: result.secure_url }
      },

      handleDelete: async ({ doc }) => {
        const url = (doc as unknown as Record<string, unknown>).url as string | undefined
        if (!url) return
        const publicId = extractPublicId(url)
        if (!publicId) return
        const resourceType = getResourceType(url)
        await cloudinary.uploader.destroy(publicId, { resource_type: resourceType })
      },

      staticHandler: async (_req, { params, doc }) => {
        const url = (doc as Record<string, unknown> | undefined)?.url as string | undefined
        if (url?.startsWith('https://res.cloudinary.com')) {
          return Response.redirect(url, 302)
        }
        const publicId = `${folder}/${params.filename}`
        return Response.redirect(cloudinary.url(publicId, { secure: true }), 302)
      },
    }
  }
