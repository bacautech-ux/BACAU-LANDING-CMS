import type { Block } from 'payload'

export const HeroBlock: Block = {
  slug: 'hero',
  labels: { singular: 'Hero Section', plural: 'Hero Sections' },
  imageURL: 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=400&h=200&fit=crop',
  imageAltText: 'Hero Section — ảnh nền full-width + tiêu đề lớn + CTA',
  fields: [
    {
      name: 'variant',
      type: 'select',
      label: 'Kiểu giao diện Hero',
      defaultValue: 'corporate',
      options: [
        { label: 'Corporate (V1) — nền tối, căn giữa, ảnh/video nền', value: 'corporate' },
        { label: 'Modern Split (V2) — text nền trắng trái, ảnh phải', value: 'modernSplit' },
        { label: 'Data Grid (V3) — text trái, 4 stat-box bên phải', value: 'dataGrid' },
        { label: 'Modern Rounded (V4) — container rounded, text căn trái', value: 'modernRounded' },
        { label: 'Ultra Modern (V5) — nền tối + grid texture', value: 'ultraModern' },
      ],
      admin: {
        position: 'sidebar',
        description: 'Chọn kiểu layout. Mỗi biến thể tương ứng 1 phiên bản homepage trong design_3.pen.',
      },
    },
    {
      name: 'heroImage',
      type: 'upload',
      relationTo: 'media',
      label: 'Ảnh hero cột phải (chỉ dùng cho Modern Split)',
      admin: {
        description: 'Ảnh hiển thị ở cột phải của hero khi variant = Modern Split.',
        condition: (_, s) => s?.variant === 'modernSplit',
      },
    },
    {
      name: 'heroImageURL',
      type: 'text',
      label: 'URL ảnh hero fallback (Modern Split)',
      admin: {
        condition: (_, s) => s?.variant === 'modernSplit',
      },
    },
    {
      name: 'badgeText',
      type: 'text',
      localized: true,
      label: 'Text nhãn nhỏ phía trên tiêu đề',
      defaultValue: 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU',
    },
    { name: 'title', type: 'text', required: true, localized: true, label: 'Tiêu đề (gõ \\n để xuống dòng, ví dụ: Dòng 1\\nDòng 2)' },
    { name: 'subtitle', type: 'textarea', localized: true, label: 'Mô tả phụ' },
    {
      name: 'backgroundType',
      type: 'radio',
      label: 'Loại nền',
      defaultValue: 'image',
      options: [
        { label: 'Hình ảnh', value: 'image' },
        { label: 'Video', value: 'video' },
      ],
    },
    {
      name: 'backgroundImage',
      type: 'upload',
      relationTo: 'media',
      label: 'Ảnh nền',
      admin: { condition: (data, siblingData) => siblingData?.backgroundType !== 'video' },
    },
    {
      name: 'backgroundVideo',
      type: 'upload',
      relationTo: 'media',
      label: 'Video nền (MP4/WebM)',
      admin: { condition: (data, siblingData) => siblingData?.backgroundType === 'video' },
    },
    {
      name: 'trustPartners',
      type: 'array',
      label: 'Danh sách đối tác (hàng logo bên dưới) — để trống để ẩn',
      fields: [
        { name: 'name', type: 'text', required: true, label: 'Tên đối tác' },
        {
          name: 'logo',
          type: 'upload',
          relationTo: 'media',
          label: 'Logo (nếu có — ưu tiên hiện logo thay vì text)',
        },
      ],
    },
    {
      name: 'primaryCTA',
      type: 'group',
      label: 'Nút chính',
      fields: [
        { name: 'label', type: 'text', localized: true, defaultValue: 'Khám phá Dịch vụ' },
        { name: 'href', type: 'text', defaultValue: '/dich-vu' },
      ],
    },
    {
      name: 'secondaryCTA',
      type: 'group',
      label: 'Nút phụ',
      fields: [
        { name: 'label', type: 'text', localized: true, defaultValue: 'Liên hệ Tư vấn' },
        { name: 'href', type: 'text', defaultValue: '/lien-he' },
      ],
    },
    {
      name: 'stats',
      type: 'array',
      label: 'Thông số thống kê bên dưới hero',
      minRows: 0,
      maxRows: 4,
      admin: {
        description: 'Để trống để ẩn thanh thống kê. Item đầu tiên có thể dùng màu khác.',
      },
      fields: [
        { name: 'value', type: 'number', required: true, label: 'Giá trị', defaultValue: 15 },
        { name: 'suffix', type: 'text', label: 'Ký tự sau số', defaultValue: '+' },
        { name: 'labelTop', type: 'text', localized: true, label: 'Nhãn trên', defaultValue: 'NĂM' },
        { name: 'labelBottom', type: 'text', localized: true, label: 'Nhãn dưới', defaultValue: 'Kinh Nghiệm' },
        {
          name: 'numberColor',
          type: 'text',
          label: 'Màu số',
          defaultValue: '#FFFFFF',
          admin: {
            description: 'Nhập mã màu HEX. VD: #B92C32 cho màu đỏ, #FFFFFF cho màu trắng.',
          },
        },
      ],
    },
  ],
}
