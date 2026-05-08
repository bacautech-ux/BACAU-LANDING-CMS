import type { Block } from 'payload'

export const FeaturedProjectsBlock: Block = {
  slug: 'featuredProjects',
  labels: { singular: 'Dự án Tiêu biểu', plural: 'Dự án Tiêu biểu' },
  imageURL: 'https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=400&h=200&fit=crop',
  imageAltText: 'Dự án Tiêu biểu — grid 2x2 với filter tabs, nền navy',
  fields: [
    {
      name: 'variant',
      type: 'select',
      label: 'Kiểu giao diện Dự án',
      defaultValue: 'grid',
      options: [
        { label: 'Grid + Filter Tabs (mặc định) — 2×2 với bộ lọc', value: 'grid' },
        { label: 'Alternating Large (V2) — ảnh lớn xen kẽ trái/phải', value: 'alternating' },
        { label: 'Vertical List (V5) — danh sách dọc từng dự án', value: 'list' },
      ],
      admin: {
        position: 'sidebar',
        description: 'Grid: dùng nền tối + tabs. Alternating & List: nền trắng, không có tabs.',
      },
    },
    { name: 'title', type: 'text', localized: true, label: 'Tiêu đề section', defaultValue: 'DỰ ÁN TIÊU BIỂU' },
    {
      name: 'backgroundColor',
      type: 'text',
      label: 'Màu nền section',
      defaultValue: '#0B1221',
      admin: {
        description: 'Nhập mã màu HEX. VD: #0B1221 cho nền navy tối, #FFFFFF cho nền trắng.',
      },
    },
    {
      name: 'textTheme',
      type: 'select',
      label: 'Màu chữ / chủ đề',
      defaultValue: 'dark',
      options: [
        { label: 'Chữ trắng (dùng cho nền tối)', value: 'dark' },
        { label: 'Chữ đen (dùng cho nền sáng / trắng)', value: 'light' },
      ],
      admin: {
        description: 'Chọn "Chữ đen" khi nền section là màu sáng (trắng, xám nhạt, v.v.) để đảm bảo text dễ đọc.',
      },
    },
    {
      name: 'viewAll',
      type: 'group',
      label: 'Link xem tất cả',
      fields: [
        { name: 'label', type: 'text', localized: true, label: 'Label', defaultValue: 'Xem tất cả →' },
        { name: 'href', type: 'text', label: 'Đường dẫn', defaultValue: '/du-an-tham-khao' },
      ],
    },
    {
      name: 'sourceMode',
      type: 'select',
      label: 'Nguồn dự án',
      defaultValue: 'latest',
      admin: {
        description: 'Latest: tự lấy dự án featured mới nhất. Manual: ưu tiên các dự án được chọn bên dưới.',
      },
      options: [
        { label: 'Tự động lấy dự án tiêu biểu mới nhất', value: 'latest' },
        { label: 'Chọn dự án thủ công', value: 'manual' },
      ],
    },
    {
      name: 'count',
      type: 'number',
      label: 'Số dự án hiển thị',
      defaultValue: 4,
      min: 2,
      max: 4,
      admin: {
        description: 'UI hiện tại dùng grid 2x2, tối đa 4 dự án.',
      },
    },
    {
      name: 'featuredProjects',
      type: 'relationship',
      relationTo: 'projects',
      hasMany: true,
      label: 'Chọn dự án nổi bật thủ công (tối đa 4)',
      maxRows: 4,
      admin: {
        description: 'Dùng khi nguồn dự án là Manual. Nếu để trống sẽ fallback về dự án featured mới nhất.',
      },
    },
    {
      name: 'tabs',
      type: 'array',
      label: 'Tabs / nhóm lọc hiển thị',
      maxRows: 6,
      admin: {
        description: 'Các pill filter phía trên grid. Label hiển thị trên UI; value nên khớp nhóm hiển thị của project.',
      },
      fields: [
        { name: 'label', type: 'text', localized: true, required: true, label: 'Label tab' },
        {
          name: 'value',
          type: 'select',
          required: true,
          label: 'Nhóm project',
          options: [
            { label: 'Quản lý năng lượng', value: 'energy' },
            { label: 'Điện công nghiệp', value: 'electrical' },
            { label: 'Tự động hóa', value: 'automation' },
            { label: 'Hệ thống BMS', value: 'bms' },
          ],
        },
      ],
    },
  ],
}
