import type { Block } from 'payload'

export const PageHeroBlock: Block = {
  slug: 'pageHero',
  labels: { singular: 'Page Banner', plural: 'Page Banners' },
  imageURL: 'https://images.unsplash.com/photo-1737703121444-c568a9d3bc0e?w=400&h=200&fit=crop',
  imageAltText: 'Page Banner — banner ảnh, breadcrumb và tiêu đề trang',
  fields: [
    { name: 'title', type: 'text', localized: true, required: true, label: 'Tiêu đề trang' },
    {
      name: 'breadcrumbs',
      type: 'array',
      label: 'Breadcrumbs',
      admin: { description: 'Danh sách breadcrumb. Item cuối không cần href.' },
      fields: [
        { name: 'label', type: 'text', localized: true, required: true, label: 'Nhãn' },
        { name: 'href', type: 'text', label: 'URL (để trống nếu là item hiện tại)' },
      ],
    },
    {
      name: 'breadcrumbLabel',
      type: 'text',
      localized: true,
      label: 'Label breadcrumb (legacy)',
      admin: { description: 'Dùng khi không set Breadcrumbs ở trên. Nếu để trống sẽ dùng tiêu đề trang.' },
    },
    {
      name: 'height',
      type: 'select',
      label: 'Chiều cao banner',
      defaultValue: 'md',
      options: [
        { label: 'Nhỏ (160px)', value: 'sm' },
        { label: 'Vừa (200px)', value: 'md' },
        { label: 'Lớn (280px)', value: 'lg' },
        { label: 'Rất lớn (360px)', value: 'xl' },
      ],
    },
    { name: 'backgroundImage', type: 'upload', relationTo: 'media', label: 'Ảnh nền banner' },
    {
      name: 'backgroundImageURL',
      type: 'text',
      label: 'URL ảnh fallback',
      admin: { description: 'Dùng khi chưa upload ảnh.' },
    },
  ],
}
