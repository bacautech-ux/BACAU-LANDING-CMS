import type { CollectionConfig } from 'payload'

export const Products: CollectionConfig = {
  slug: 'products',
  admin: { useAsTitle: 'name' },
  versions: { drafts: true },
  fields: [
    {
      name: 'name',
      type: 'group',
      fields: [
        { name: 'vi', type: 'text', required: true, label: 'Tên sản phẩm (VI)' },
        { name: 'en', type: 'text', label: 'Product name (EN)' },
      ],
    },
    { name: 'slug', type: 'text', required: true, unique: true, admin: { position: 'sidebar' } },
    {
      name: 'category',
      type: 'select',
      required: true,
      options: [
        { label: 'Thiết bị Tự động hóa', value: 'automation' },
        { label: 'Thiết bị Đo lường', value: 'measurement' },
        { label: 'Van Công nghiệp', value: 'industrial-valve' },
        { label: 'Thiết bị Điện', value: 'electrical' },
        { label: 'Động cơ Điện', value: 'motor' },
        { label: 'Cảm biến', value: 'sensor' },
      ],
    },
    { name: 'thumbnail', type: 'upload', relationTo: 'media', required: true },
    {
      name: 'description',
      type: 'group',
      fields: [
        { name: 'vi', type: 'richText', label: 'VI' },
        { name: 'en', type: 'richText', label: 'EN' },
      ],
    },
    { name: 'brand', type: 'text', label: 'Thương hiệu' },
    { name: 'featured', type: 'checkbox', defaultValue: false },
  ],
}
