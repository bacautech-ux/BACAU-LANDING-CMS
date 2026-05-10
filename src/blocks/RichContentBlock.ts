import type { Block } from 'payload'

export const RichContentBlock: Block = {
  slug: 'richContent',
  labels: { singular: 'Nội dung Bài viết', plural: 'Nội dung Bài viết' },
  imageURL:
    'https://images.unsplash.com/photo-1455390582262-044cdead277a?w=400&h=200&fit=crop',
  imageAltText: 'Block nội dung bài viết — title + rich text editor',
  fields: [
    {
      name: 'title',
      type: 'text',
      localized: true,
      label: 'Tiêu đề bài viết',
    },
    {
      name: 'content',
      type: 'richText',
      localized: true,
      required: true,
      label: 'Nội dung',
    },
  ],
}
