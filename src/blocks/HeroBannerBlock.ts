import type { Block } from 'payload'

export const HeroBannerBlock: Block = {
  slug: 'heroBanner',
  labels: { singular: 'Hero Banner (ảnh / video nền)', plural: 'Hero Banners' },
  imageURL: 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=400&h=200&fit=crop',
  imageAltText: 'Hero Banner — ảnh hoặc video nền full-width, không có text/CTA',
  fields: [
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
      admin: {
        condition: (_, siblingData) => siblingData?.backgroundType !== 'video',
      },
    },
    {
      name: 'backgroundImageURL',
      type: 'text',
      label: 'URL ảnh fallback',
      admin: {
        description: 'Dùng khi chưa upload ảnh.',
        condition: (_, siblingData) => siblingData?.backgroundType !== 'video',
      },
    },
    {
      name: 'backgroundVideo',
      type: 'upload',
      relationTo: 'media',
      label: 'Video nền (MP4/WebM)',
      admin: {
        description: 'Upload file MP4 hoặc WebM. Video sẽ tự phát, tắt tiếng, lặp lại.',
        condition: (_, siblingData) => siblingData?.backgroundType === 'video',
      },
    },
    {
      name: 'posterImage',
      type: 'upload',
      relationTo: 'media',
      label: 'Ảnh poster (hiện khi video chưa load)',
      admin: {
        description: 'Khuyên dùng — hiện trên thiết bị không hỗ trợ autoplay hoặc khi video đang tải.',
        condition: (_, siblingData) => siblingData?.backgroundType === 'video',
      },
    },
    {
      name: 'height',
      type: 'number',
      label: 'Chiều cao banner (px)',
      defaultValue: 700,
      min: 200,
      max: 1200,
      admin: { description: 'Chiều cao trên desktop. Mobile sẽ tự scale xuống.' },
    },
    {
      name: 'overlayOpacity',
      type: 'number',
      label: 'Độ đậm gradient overlay (0–100)',
      defaultValue: 40,
      min: 0,
      max: 100,
      admin: { description: '0 = không overlay, 100 = tối hoàn toàn.' },
    },
  ],
}
