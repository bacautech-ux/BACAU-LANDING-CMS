import type { CollectionConfig } from 'payload'
import { revalidatePath } from 'next/cache'

const revalidateServices = () => {
  revalidatePath('/vi/dich-vu')
  revalidatePath('/en/dich-vu')
  revalidatePath('/vi')
  revalidatePath('/en')
}

export const Services: CollectionConfig = {
  slug: 'services',
  admin: { useAsTitle: 'name' },
  versions: { drafts: true },
  hooks: {
    afterChange: [revalidateServices],
    afterDelete: [revalidateServices],
  },
  fields: [
    {
      name: 'name',
      type: 'group',
      fields: [
        { name: 'vi', type: 'text', required: true, label: 'Tên dịch vụ (VI)' },
        { name: 'en', type: 'text', label: 'Service name (EN)' },
      ],
    },
    { name: 'slug', type: 'text', required: true, unique: true, admin: { position: 'sidebar' } },
    {
      name: 'category',
      type: 'select',
      options: [
        { label: 'Giải pháp Điện & Tự động hóa', value: 'electrical-automation' },
        { label: 'Giải pháp Số hóa', value: 'digitalization' },
        { label: 'Giải pháp Đo lường', value: 'measurement' },
        { label: 'Dịch vụ Công nghiệp', value: 'industrial-services' },
      ],
    },
    { name: 'icon', type: 'upload', relationTo: 'media' },
    { name: 'thumbnail', type: 'upload', relationTo: 'media' },
    {
      name: 'summary',
      type: 'group',
      fields: [
        { name: 'vi', type: 'textarea', label: 'VI' },
        { name: 'en', type: 'textarea', label: 'EN' },
      ],
    },
    {
      name: 'content',
      type: 'group',
      fields: [
        { name: 'vi', type: 'richText', label: 'VI' },
        { name: 'en', type: 'richText', label: 'EN' },
      ],
    },
    { name: 'order', type: 'number', defaultValue: 0 },
  ],
}
