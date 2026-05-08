import type { Block } from 'payload'

export const NewsBlock: Block = {
  slug: 'news',
  labels: { singular: 'Tin tức & Sự kiện', plural: 'Tin tức & Sự kiện' },
  imageURL: 'https://images.unsplash.com/photo-1761489798131-5cdde3262832?w=400&h=200&fit=crop',
  imageAltText: 'Tin tức & Sự kiện — 1 featured card lớn + 2 card nhỏ bên phải',
  fields: [
    { name: 'title', type: 'text', localized: true, label: 'Tiêu đề section', defaultValue: 'TIN TỨC & SỰ KIỆN' },
    {
      name: 'displayMode',
      type: 'select',
      label: 'Kiểu hiển thị',
      defaultValue: 'featured',
      options: [
        { label: 'Featured: 1 ảnh lớn trái + 2 card nhỏ phải', value: 'featured' },
        { label: 'Grid: 3 card bằng nhau hàng ngang', value: 'grid' },
      ],
      admin: { description: 'Featured là layout mặc định (home v1). Grid dùng cho home v2.' },
    },
    {
      name: 'viewAll',
      type: 'group',
      label: 'Link xem tất cả',
      fields: [
        { name: 'label', type: 'text', localized: true, label: 'Label', defaultValue: 'Xem tất cả →' },
        { name: 'href', type: 'text', label: 'Đường dẫn', defaultValue: '/tin-tuc' },
      ],
    },
    {
      name: 'sourceMode',
      type: 'select',
      label: 'Nguồn bài viết',
      defaultValue: 'latest',
      admin: {
        description: 'Latest: tự lấy bài mới nhất từ collection News. Manual: ưu tiên các bài được chọn bên dưới.',
      },
      options: [
        { label: 'Tự động lấy bài mới nhất', value: 'latest' },
        { label: 'Chọn bài thủ công', value: 'manual' },
      ],
    },
    {
      name: 'count',
      type: 'number',
      label: 'Số bài hiển thị',
      defaultValue: 3,
      min: 3,
      max: 3,
      admin: {
        description: 'UI hiện tại cố định 3 bài: 1 bài lớn bên trái và 2 bài nhỏ bên phải.',
      },
    },
    {
      name: 'featuredNews',
      type: 'relationship',
      relationTo: 'news',
      label: 'Bài nổi bật bên trái',
      admin: {
        description: 'Dùng khi nguồn bài viết là Manual. Nếu để trống sẽ fallback về bài mới nhất.',
      },
    },
    {
      name: 'secondaryNews',
      type: 'relationship',
      relationTo: 'news',
      hasMany: true,
      maxRows: 2,
      label: 'Hai bài phụ bên phải',
      admin: {
        description: 'Dùng khi nguồn bài viết là Manual. Nếu để trống sẽ fallback về các bài mới tiếp theo.',
      },
    },
  ],
}
