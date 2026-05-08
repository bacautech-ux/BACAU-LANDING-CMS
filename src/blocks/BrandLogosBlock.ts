import type { Block } from 'payload'

export const BrandLogosBlock: Block = {
  slug: 'brandLogos',
  labels: { singular: 'Đối tác Chiến lược (logos)', plural: 'Đối tác Chiến lược' },
  imageURL: 'https://images.unsplash.com/photo-1557804506-669a67965ba0?w=400&h=200&fit=crop',
  imageAltText: 'Đối tác Chiến lược — hàng logo: ABB, Intel, Mitsubishi, PSCL, KEIHIN, Siemens',
  fields: [
    { name: 'title', type: 'text', localized: true, label: 'Tiêu đề section', defaultValue: 'ĐỐI TÁC CHIẾN LƯỢC' },
    {
      name: 'sourceMode',
      type: 'select',
      label: 'Nguồn logo',
      defaultValue: 'latest',
      options: [
        { label: 'Tự động lấy partner theo thứ tự', value: 'latest' },
        { label: 'Chọn partner thủ công', value: 'manual' },
      ],
    },
    { name: 'count', type: 'number', label: 'Số logo hiển thị', defaultValue: 6, min: 1, max: 12 },
    {
      name: 'partners',
      type: 'relationship',
      relationTo: 'partners',
      hasMany: true,
      maxRows: 12,
      label: 'Chọn partner thủ công',
    },
    {
      name: 'fallbackBrands',
      type: 'array',
      label: 'Tên brand fallback nếu chưa có logo',
      fields: [{ name: 'name', type: 'text', required: true, label: 'Tên brand' }],
    },
  ],
}
