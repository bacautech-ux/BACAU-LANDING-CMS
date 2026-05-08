import type { Block } from 'payload'

export const CTABannerBlock: Block = {
  slug: 'ctaBanner',
  labels: { singular: 'CTA Banner', plural: 'CTA Banners' },
  imageURL: 'https://images.unsplash.com/photo-1486325212027-8081e485255e?w=400&h=200&fit=crop',
  imageAltText: 'CTA Banner — nền tối gradient, tiêu đề lớn + 2 nút CTA',
  fields: [
    { name: 'title', type: 'text', localized: true, label: 'Tiêu đề', defaultValue: 'Bắt đầu Dự án của bạn ngay hôm nay' },
    { name: 'subtitle', type: 'textarea', localized: true, label: 'Mô tả', defaultValue: 'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp' },
    { name: 'backgroundColor', type: 'text', label: 'Màu nền', defaultValue: '#0F172A' },
    { name: 'gradientFrom', type: 'text', label: 'Gradient màu 1', defaultValue: '#B92C32' },
    { name: 'gradientMiddle', type: 'text', label: 'Gradient màu 2', defaultValue: '#2b358c' },
    { name: 'gradientTo', type: 'text', label: 'Gradient màu 3', defaultValue: '#0F172A' },
    { name: 'accentColor', type: 'text', label: 'Màu gạch accent', defaultValue: '#B92C32' },
    {
      name: 'primaryCTA',
      type: 'group',
      label: 'Nút chính',
      fields: [
        { name: 'label', type: 'text', localized: true, defaultValue: 'Liên hệ Ngay' },
        { name: 'href', type: 'text', defaultValue: '/lien-he' },
      ],
    },
    {
      name: 'secondaryCTA',
      type: 'group',
      label: 'Nút phụ',
      fields: [
        { name: 'label', type: 'text', localized: true, defaultValue: 'Xem Dịch vụ' },
        { name: 'href', type: 'text', defaultValue: '/dich-vu' },
      ],
    },
  ],
}
