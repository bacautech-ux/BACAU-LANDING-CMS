import type { Block } from 'payload'

export const HeroBlock: Block = {
  slug: 'hero',
  labels: { singular: 'Hero Section', plural: 'Hero Sections' },
  imageURL: 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=400&h=200&fit=crop',
  imageAltText: 'Hero Section — ảnh nền full-width + tiêu đề lớn + CTA',
  fields: [
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
  ],
}

export const ServicesBlock: Block = {
  slug: 'services',
  labels: { singular: 'Lĩnh vực Hoạt động', plural: 'Lĩnh vực Hoạt động' },
  imageURL: 'https://images.unsplash.com/photo-1664022447173-062a8edb226a?w=400&h=200&fit=crop',
  imageAltText: 'Lĩnh vực Hoạt động — 3 cards: Thi công, Công nghiệp, Dân dụng',
  fields: [
    { name: 'subtitle', type: 'text', localized: true, label: 'Mô tả phụ', defaultValue: 'Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng' },
  ],
}

export const NewsBlock: Block = {
  slug: 'news',
  labels: { singular: 'Tin tức & Sự kiện', plural: 'Tin tức & Sự kiện' },
  imageURL: 'https://images.unsplash.com/photo-1761489798131-5cdde3262832?w=400&h=200&fit=crop',
  imageAltText: 'Tin tức & Sự kiện — 1 featured card lớn + 2 card nhỏ bên phải',
  fields: [
    { name: 'count', type: 'number', label: 'Số bài hiển thị', defaultValue: 3, min: 2, max: 6 },
  ],
}

export const FeaturedProjectsBlock: Block = {
  slug: 'featuredProjects',
  labels: { singular: 'Dự án Tiêu biểu', plural: 'Dự án Tiêu biểu' },
  imageURL: 'https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=400&h=200&fit=crop',
  imageAltText: 'Dự án Tiêu biểu — grid 2x2 với filter tabs, nền navy',
  fields: [
    {
      name: 'featuredProjects',
      type: 'relationship',
      relationTo: 'projects',
      hasMany: true,
      label: 'Chọn dự án nổi bật (tối đa 4)',
      maxRows: 4,
    },
  ],
}

export const PartnersBlock: Block = {
  slug: 'partners',
  labels: { singular: 'Đối tác (ảnh mosaic)', plural: 'Đối tác' },
  imageURL: 'https://images.unsplash.com/photo-1521791136064-7986c2920216?w=400&h=200&fit=crop',
  imageAltText: 'Đối tác — nền navy, mosaic ảnh đối tác bên phải',
  fields: [
    { name: 'subtitle', type: 'text', localized: true, label: 'Mô tả phụ', defaultValue: 'Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa' },
  ],
}

export const ProductsBlock: Block = {
  slug: 'products',
  labels: { singular: 'Thiết bị & Sản phẩm', plural: 'Thiết bị & Sản phẩm' },
  imageURL: 'https://images.unsplash.com/photo-1703668984128-b506579acdd2?w=400&h=200&fit=crop',
  imageAltText: 'Thiết bị & Sản phẩm — 5 product cards hàng ngang',
  fields: [
    { name: 'subtitle', type: 'text', localized: true, label: 'Mô tả phụ', defaultValue: 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới' },
  ],
}

export const CTABannerBlock: Block = {
  slug: 'ctaBanner',
  labels: { singular: 'CTA Banner', plural: 'CTA Banners' },
  imageURL: 'https://images.unsplash.com/photo-1486325212027-8081e485255e?w=400&h=200&fit=crop',
  imageAltText: 'CTA Banner — nền tối gradient, tiêu đề lớn + 2 nút CTA',
  fields: [
    { name: 'title', type: 'text', localized: true, label: 'Tiêu đề', defaultValue: 'Bắt đầu Dự án của bạn ngay hôm nay' },
    { name: 'subtitle', type: 'textarea', localized: true, label: 'Mô tả', defaultValue: 'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp' },
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

export const BrandLogosBlock: Block = {
  slug: 'brandLogos',
  labels: { singular: 'Đối tác Chiến lược (logos)', plural: 'Đối tác Chiến lược' },
  imageURL: 'https://images.unsplash.com/photo-1557804506-669a67965ba0?w=400&h=200&fit=crop',
  imageAltText: 'Đối tác Chiến lược — hàng logo: ABB, Intel, Mitsubishi, PSCL, KEIHIN, Siemens',
  fields: [],
}
