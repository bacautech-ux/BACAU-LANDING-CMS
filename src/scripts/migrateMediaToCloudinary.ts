import { v2 as cloudinary } from 'cloudinary'
import pg from 'pg'
import sharp from 'sharp'

cloudinary.config({
  cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
  api_key: process.env.CLOUDINARY_API_KEY,
  api_secret: process.env.CLOUDINARY_API_SECRET,
})

const db = new pg.Client({ connectionString: process.env.DATABASE_URL })

// Unsplash photos — download trực tiếp từ URL
const UNSPLASH_IDS: Record<string, string> = {
  'photo-1664022447173-062a8edb226a.jpeg':   'photo-1664022447173-062a8edb226a',
  'photo-1664022447173-062a8edb226a-1.jpeg': 'photo-1664022447173-062a8edb226a',
  'photo-1727373203588-82996710c2af.jpeg':   'photo-1727373203588-82996710c2af',
  'photo-1613155898540-76dee366fc0d.jpeg':   'photo-1613155898540-76dee366fc0d',
}

// Placeholder màu cho ảnh không rõ nguồn
const PLACEHOLDER_COLORS: Record<string, [number, number, number]> = {
  'LOGO-01.png':   [43, 53, 140],   // navy blue
  'LOGO-02.png':   [185, 44, 50],   // red
  'card2img.jpg':  [30, 58, 138],   // blue
  'card3img.jpg':  [17, 24, 39],    // dark
  'p3.jpg':        [15, 23, 42],    // navy
}

async function generatePlaceholder(color: [number, number, number]): Promise<Buffer> {
  return sharp({
    create: { width: 1200, height: 700, channels: 3, background: { r: color[0], g: color[1], b: color[2] } },
  }).jpeg({ quality: 80 }).toBuffer()
}

async function uploadBuffer(buffer: Buffer, publicId: string, resourceType: 'image' | 'video' = 'image'): Promise<string> {
  return new Promise((resolve, reject) => {
    const stream = cloudinary.uploader.upload_stream(
      { public_id: publicId, resource_type: resourceType, overwrite: true },
      (err, result) => {
        if (err || !result) reject(err ?? new Error('Upload failed'))
        else resolve(result.secure_url)
      }
    )
    stream.end(buffer)
  })
}

async function main() {
  await db.connect()
  const { rows } = await db.query<{ id: number; filename: string }>(
    "SELECT id, filename FROM media WHERE url NOT LIKE '%cloudinary%' ORDER BY id"
  )

  console.log(`Found ${rows.length} media records to migrate`)

  for (const row of rows) {
    const { id, filename } = row
    const publicId = `media/${filename.replace(/\.[^/.]+$/, '')}`
    const isVideo = /\.(mp4|webm|mov)$/i.test(filename)

    try {
      let cloudinaryUrl: string

      if (isVideo) {
        console.log(`⏭ Skip video: ${filename}`)
        continue
      } else if (UNSPLASH_IDS[filename]) {
        // Upload trực tiếp từ Unsplash URL
        const unsplashUrl = `https://images.unsplash.com/${UNSPLASH_IDS[filename]}?w=1200&q=80`
        const result = await cloudinary.uploader.upload(unsplashUrl, {
          public_id: publicId, resource_type: 'image', overwrite: true,
        })
        cloudinaryUrl = result.secure_url
      } else {
        // Generate placeholder
        const color = PLACEHOLDER_COLORS[filename] ?? [43, 53, 140]
        const buffer = await generatePlaceholder(color)
        cloudinaryUrl = await uploadBuffer(buffer, publicId)
      }

      await db.query('UPDATE media SET url = $1 WHERE id = $2', [cloudinaryUrl, id])
      console.log(`✓ ${filename} → ${cloudinaryUrl}`)
    } catch (e) {
      console.error(`✗ ${filename}:`, e)
    }
  }

  await db.end()
  console.log('Done!')
}

main()
