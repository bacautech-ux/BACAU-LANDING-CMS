import type { Block } from 'payload'

export const WelcomeIntroBlock: Block = {
  slug: 'welcomeIntro',
  labels: { singular: 'Welcome / Intro Split', plural: 'Welcome Intro Sections' },
  imageURL: 'https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=400&h=200&fit=crop',
  imageAltText: 'Welcome Intro — cột trái: heading + mô tả + nút; cột phải: 2 ảnh xếp dọc',
  fields: [
    {
      name: 'eyebrow',
      type: 'text',
      localized: true,
      label: 'Eyebrow / heading chính',
      defaultValue: 'CHÀO MỪNG',
      admin: { description: 'Text lớn phía trên mô tả. Hiển thị kèm thanh đỏ bên trái.' },
    },
    {
      name: 'body',
      type: 'textarea',
      localized: true,
      label: 'Đoạn mô tả',
      admin: { description: 'Đoạn văn giới thiệu hiển thị dưới tiêu đề.' },
    },
    {
      name: 'cta',
      type: 'group',
      label: 'Nút CTA',
      fields: [
        { name: 'label', type: 'text', localized: true, defaultValue: 'Xem thêm', label: 'Label nút' },
        { name: 'href', type: 'text', defaultValue: '/gioi-thieu', label: 'Đường dẫn' },
      ],
    },
    {
      name: 'images',
      type: 'array',
      label: 'Ảnh carousel cột phải',
      minRows: 1,
      maxRows: 10,
      admin: { description: 'Tối thiểu 1 ảnh. Nếu có từ 2 ảnh trở lên sẽ hiện carousel với nút mũi tên.' },
      fields: [
        { name: 'image', type: 'upload', relationTo: 'media', label: 'Ảnh upload' },
        { name: 'imageURL', type: 'text', label: 'URL ảnh fallback' },
        { name: 'alt', type: 'text', localized: true, label: 'Alt text' },
      ],
    },
    {
      name: 'autoPlay',
      type: 'checkbox',
      label: 'Tự động chuyển ảnh',
      defaultValue: true,
      admin: { description: 'Carousel tự chuyển sau mỗi 4 giây. Tạm dừng khi hover.' },
    },
    {
      name: 'autoPlayInterval',
      type: 'number',
      label: 'Thời gian mỗi ảnh (giây)',
      defaultValue: 4,
      min: 2,
      max: 10,
      admin: {
        description: 'Chỉ có hiệu lực khi "Tự động chuyển ảnh" được bật.',
        condition: (_, siblingData) => siblingData?.autoPlay === true,
      },
    },
  ],
}
