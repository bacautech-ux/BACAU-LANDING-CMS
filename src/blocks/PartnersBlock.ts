import type { Block } from 'payload'

export const PartnersBlock: Block = {
  slug: 'partners',
  labels: { singular: 'Đối tác (ảnh mosaic)', plural: 'Đối tác' },
  imageURL: 'https://images.unsplash.com/photo-1521791136064-7986c2920216?w=400&h=200&fit=crop',
  imageAltText: 'Đối tác — nền navy, mosaic ảnh đối tác bên phải',
  fields: [
    { name: 'title', type: 'text', localized: true, label: 'Tiêu đề section', defaultValue: 'ĐỐI TÁC' },
    { name: 'subtitle', type: 'text', localized: true, label: 'Mô tả phụ', defaultValue: 'Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa' },
    {
      name: 'backgroundColor',
      type: 'text',
      label: 'Màu nền section',
      defaultValue: '#0B1221',
    },
    {
      name: 'images',
      type: 'array',
      label: 'Ảnh mosaic đối tác',
      minRows: 0,
      maxRows: 4,
      admin: {
        description: '4 ảnh theo layout design: trái cao, giữa 2 ảnh nhỏ, phải cao.',
      },
      fields: [
        { name: 'alt', type: 'text', localized: true, label: 'Alt text' },
        { name: 'image', type: 'upload', relationTo: 'media', label: 'Ảnh upload' },
        {
          name: 'imageURL',
          type: 'text',
          label: 'URL ảnh fallback',
          admin: {
            description: 'Dùng khi chưa upload ảnh. Nếu upload ảnh, frontend ưu tiên ảnh upload.',
          },
        },
      ],
    },
  ],
}
