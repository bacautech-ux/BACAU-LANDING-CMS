import type { Block } from 'payload'

export const PageHeroBlock: Block = {
  slug: 'pageHero',
  labels: { singular: 'Page Banner', plural: 'Page Banners' },
  imageURL: 'https://images.unsplash.com/photo-1737703121444-c568a9d3bc0e?w=400&h=200&fit=crop',
  imageAltText: 'Page Banner — banner ảnh, breadcrumb và tiêu đề trang',
  fields: [
    { name: 'title', type: 'text', localized: true, required: true, label: 'Tiêu đề trang' },
    {
      name: 'breadcrumbLabel',
      type: 'text',
      localized: true,
      label: 'Label breadcrumb',
      admin: { description: 'Nếu để trống sẽ dùng tiêu đề trang.' },
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
