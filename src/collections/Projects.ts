import type { CollectionConfig } from 'payload'

export const Projects: CollectionConfig = {
  slug: 'projects',
  admin: { useAsTitle: 'title' },
  versions: { drafts: true },
  fields: [
    {
      name: 'title',
      type: 'group',
      fields: [
        { name: 'vi', type: 'text', required: true, label: 'Tiêu đề (VI)' },
        { name: 'en', type: 'text', label: 'Title (EN)' },
      ],
    },
    {
      name: 'slug',
      type: 'text',
      required: true,
      unique: true,
      admin: { position: 'sidebar' },
    },
    {
      name: 'category',
      type: 'select',
      required: true,
      options: [
        { label: 'Giải pháp Điện & Tự động hóa', value: 'electrical-automation' },
        { label: 'Giải pháp Số hóa', value: 'digitalization' },
        { label: 'Giải pháp Đo lường', value: 'measurement' },
        { label: 'Dịch vụ Công nghiệp', value: 'industrial-services' },
      ],
    },
    {
      name: 'industry',
      type: 'select',
      options: [
        { label: 'Dầu khí', value: 'oil-gas' },
        { label: 'Phân bón & Hóa chất', value: 'fertilizer-chemical' },
        { label: 'Điện', value: 'power' },
        { label: 'Xi măng & Khai khoáng', value: 'cement-mining' },
        { label: 'Thép', value: 'steel' },
        { label: 'Thực phẩm & Đồ uống', value: 'food-beverage' },
        { label: 'Hàng tiêu dùng', value: 'consumer-goods' },
        { label: 'Nước & Nước thải', value: 'water' },
        { label: 'Cảng', value: 'port' },
        { label: 'Khác', value: 'other' },
      ],
    },
    { name: 'thumbnail', type: 'upload', relationTo: 'media', required: true },
    {
      name: 'customerName',
      type: 'group',
      label: 'Tên khách hàng',
      fields: [
        { name: 'vi', type: 'text', label: 'VI' },
        { name: 'en', type: 'text', label: 'EN' },
      ],
    },
    { name: 'customerAddress', type: 'text' },
    { name: 'location', type: 'text', label: 'Địa điểm thực hiện' },
    { name: 'year', type: 'number', label: 'Năm thực hiện' },
    {
      name: 'summary',
      type: 'group',
      label: 'Mô tả ngắn',
      fields: [
        { name: 'vi', type: 'textarea', label: 'VI' },
        { name: 'en', type: 'textarea', label: 'EN' },
      ],
    },
    {
      name: 'intro',
      type: 'group',
      label: 'Giới thiệu dự án',
      fields: [
        { name: 'vi', type: 'richText', label: 'VI' },
        { name: 'en', type: 'richText', label: 'EN' },
      ],
    },
    {
      name: 'solutions',
      type: 'group',
      label: 'Công việc & Giải pháp',
      fields: [
        { name: 'vi', type: 'richText', label: 'VI' },
        { name: 'en', type: 'richText', label: 'EN' },
      ],
    },
    {
      name: 'results',
      type: 'group',
      label: 'Kết quả đạt được',
      fields: [
        { name: 'vi', type: 'richText', label: 'VI' },
        { name: 'en', type: 'richText', label: 'EN' },
      ],
    },
    {
      name: 'images',
      type: 'array',
      label: 'Hình ảnh dự án',
      fields: [{ name: 'image', type: 'upload', relationTo: 'media' }],
    },
    { name: 'featured', type: 'checkbox', label: 'Dự án tiêu biểu', defaultValue: false },
  ],
}
