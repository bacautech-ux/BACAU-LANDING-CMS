import type { Block } from 'payload'

export const ServicesBlock: Block = {
  slug: 'services',
  labels: { singular: 'Lĩnh vực Hoạt động', plural: 'Lĩnh vực Hoạt động' },
  imageURL: 'https://images.unsplash.com/photo-1664022447173-062a8edb226a?w=400&h=200&fit=crop',
  imageAltText: 'Lĩnh vực Hoạt động — 3 cards: Thi công, Công nghiệp, Dân dụng',
  fields: [
    {
      name: 'variant',
      type: 'select',
      label: 'Kiểu giao diện Services',
      defaultValue: 'cards',
      options: [
        { label: 'Cards (mặc định) — 3 card ảnh + text bên dưới', value: 'cards' },
        { label: 'Bento Grid (V2) — 2 card lớn + 3 card nhỏ, overlay tối', value: 'bento' },
        { label: 'Alternating Split (V5) — mỗi dịch vụ 1 hàng xen kẽ trái/phải', value: 'alternating' },
      ],
      admin: {
        position: 'sidebar',
        description: 'Bento: 5 cards đầu; Alternating: tất cả cards xen kẽ; Cards: 3 cards mặc định.',
      },
    },
    { name: 'title', type: 'text', localized: true, label: 'Tiêu đề', defaultValue: 'LĨNH VỰC HOẠT ĐỘNG' },
    { name: 'subtitle', type: 'text', localized: true, label: 'Mô tả phụ', defaultValue: 'Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng' },
    {
      name: 'cards',
      type: 'array',
      label: 'Danh sách lĩnh vực',
      minRows: 1,
      maxRows: 6,
      admin: {
        description: 'Mỗi item tương ứng một card bên dưới section. Home hiện dùng 3 card như thiết kế.',
      },
      fields: [
        { name: 'title', type: 'text', localized: true, required: true, label: 'Tiêu đề card' },
        { name: 'description', type: 'textarea', localized: true, label: 'Mô tả card' },
        { name: 'image', type: 'upload', relationTo: 'media', label: 'Ảnh card' },
        {
          name: 'imageURL',
          type: 'text',
          label: 'URL ảnh fallback',
          admin: {
            description: 'Dùng khi chưa upload ảnh. Nếu upload ảnh, frontend sẽ ưu tiên ảnh upload.',
          },
        },
        { name: 'href', type: 'text', label: 'Link khi bấm Xem thêm' },
        { name: 'buttonLabel', type: 'text', localized: true, label: 'Label nút', defaultValue: 'Xem thêm' },
      ],
    },
  ],
}
