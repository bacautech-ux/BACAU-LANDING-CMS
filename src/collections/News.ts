import type { CollectionConfig } from 'payload'
import { revalidatePath } from 'next/cache'

const revalidateNews = ({ doc }: { doc: { slug?: string } }) => {
  revalidatePath('/vi/tin-tuc')
  revalidatePath('/en/tin-tuc')
  revalidatePath('/vi')
  revalidatePath('/en')
  if (doc?.slug) {
    revalidatePath(`/vi/tin-tuc/${doc.slug}`)
    revalidatePath(`/en/tin-tuc/${doc.slug}`)
  }
}

export const News: CollectionConfig = {
  slug: 'news',
  admin: { useAsTitle: 'titleLabel' },
  versions: { drafts: true },
  hooks: {
    afterChange: [revalidateNews],
    afterDelete: [revalidateNews],
    beforeValidate: [
      ({ data }) => {
        if (!data) return data

        return {
          ...data,
          titleLabel: data.title?.vi ?? data.titleLabel ?? data.slug,
        }
      },
    ],
  },
  fields: [
    {
      name: 'titleLabel',
      type: 'text',
      admin: {
        hidden: true,
      },
    },
    {
      name: 'title',
      type: 'group',
      fields: [
        { name: 'vi', type: 'text', required: true, label: 'Tiêu đề (VI)' },
        { name: 'en', type: 'text', label: 'Title (EN)' },
      ],
    },
    { name: 'slug', type: 'text', required: true, unique: true, admin: { position: 'sidebar' } },
    { name: 'publishedAt', type: 'date', required: true, admin: { position: 'sidebar' } },
    { name: 'thumbnail', type: 'upload', relationTo: 'media', required: true },
    {
      name: 'excerpt',
      type: 'group',
      label: 'Mô tả ngắn',
      fields: [
        { name: 'vi', type: 'textarea', label: 'VI' },
        { name: 'en', type: 'textarea', label: 'EN' },
      ],
    },
    {
      name: 'content',
      type: 'group',
      label: 'Nội dung',
      fields: [
        { name: 'vi', type: 'richText', label: 'VI' },
        { name: 'en', type: 'richText', label: 'EN' },
      ],
    },
    {
      name: 'tags',
      type: 'select',
      hasMany: true,
      options: ['Tin tức', 'Sự kiện', 'Hội thảo', 'Thông cáo'],
    },
  ],
}
