// Seed 4 homepage variant pages vào Payload CMS
// Chạy: npx tsx src/scripts/runSeedHomeVariants.ts
//
// Tạo các pages:
//   home-modern-split  → /vi/home-modern-split
//   home-data-grid     → /vi/home-data-grid
//   home-modern-rounded → /vi/home-modern-rounded
//   home-ultra-modern  → /vi/home-ultra-modern

import { getPayload } from 'payload'

type PayloadConfig = Parameters<typeof getPayload>[0]['config']

// ──────────────────────────────────────────────
// Shared stats data (dùng cho tất cả các version)
// ──────────────────────────────────────────────
const statsData = [
  { value: 15, suffix: '+', labelTop: 'NĂM', labelBottom: 'Kinh Nghiệm', numberColor: '#B92C32' },
  { value: 500, suffix: '+', labelTop: 'DỰ ÁN', labelBottom: 'Hoàn Thành', numberColor: '#FFFFFF' },
  { value: 50, suffix: '+', labelTop: 'ĐỐI TÁC', labelBottom: 'Chiến Lược', numberColor: '#FFFFFF' },
  { value: 100, suffix: '+', labelTop: 'KỸ SƯ', labelBottom: 'Chuyên Nghiệp', numberColor: '#FFFFFF' },
]

const serviceCards = [
  {
    title: 'Tự Động Hóa Công Nghiệp',
    description:
      'Cung cấp giải pháp tự động hóa toàn diện cho nhà máy và dây chuyền sản xuất, tích hợp PLC, SCADA, HMI và hệ thống điều khiển phân tán.',
    imageURL: 'https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop',
    href: '/dich-vu/tu-dong-hoa',
    buttonLabel: 'Tìm hiểu thêm',
  },
  {
    title: 'Hệ Thống Điện Công Nghiệp',
    description:
      'Thiết kế, thi công và bảo trì hệ thống điện cho các công trình công nghiệp. Giải pháp quản lý năng lượng tiên tiến và tiết kiệm.',
    imageURL: 'https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&fit=crop',
    href: '/dich-vu/he-thong-dien',
    buttonLabel: 'Tìm hiểu thêm',
  },
  {
    title: 'Số Hóa Công Nghiệp',
    description:
      'Chuyển đổi số và giám sát thông minh cho các doanh nghiệp, tích hợp IoT, cloud và phân tích dữ liệu thời gian thực.',
    imageURL: 'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=800&fit=crop',
    href: '/dich-vu/so-hoa',
    buttonLabel: 'Tìm hiểu thêm',
  },
  {
    title: 'Hệ Thống BMS',
    description:
      'Giải pháp quản lý tòa nhà thông minh (BMS): tích hợp điều hòa, chiếu sáng, an ninh và năng lượng trên một nền tảng.',
    imageURL: 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800&fit=crop',
    href: '/dich-vu/bms',
    buttonLabel: 'Tìm hiểu thêm',
  },
  {
    title: 'Điện Tử Dân Dụng',
    description:
      'Cung cấp, lắp đặt và bảo trì hệ thống điện dân dụng, điều hòa không khí và các thiết bị tiêu dùng.',
    imageURL: 'https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop',
    href: '/dich-vu/dan-dung',
    buttonLabel: 'Tìm hiểu thêm',
  },
]

const tabs = [
  { label: 'Quản lý năng lượng', value: 'energy' },
  { label: 'Điện công nghiệp', value: 'electrical' },
  { label: 'Tự động hóa', value: 'automation' },
  { label: 'Hệ thống BMS', value: 'bms' },
]

// ──────────────────────────────────────────────
// V2 – Modern Split layout
// Hero: text trắng trái / ảnh phải
// Services: bento grid (2 lớn + 3 nhỏ)
// FeaturedProjects: alternating large rows
// ──────────────────────────────────────────────
function layoutV2() {
  return [
    {
      blockType: 'hero',
      variant: 'modernSplit',
      badgeText: 'GIẢI PHÁP CÔNG NGHIỆP HÀNG ĐẦU',
      title: 'Giải Pháp Tự Động Hóa\nToàn Diện',
      subtitle:
        'Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm cho doanh nghiệp trên toàn quốc.',
      heroImageURL:
        'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=1400&fit=crop',
      primaryCTA: { label: 'Khám phá dịch vụ', href: '/dich-vu' },
      secondaryCTA: { label: 'Xem dự án', href: '/du-an-tham-khao' },
      stats: statsData,
    },
    {
      blockType: 'welcomeIntro',
      eyebrow: 'VỀ CHÚNG TÔI',
      body: 'ESTEC là đơn vị hàng đầu trong lĩnh vực tự động hóa công nghiệp tại Việt Nam. Với hơn 15 năm kinh nghiệm, chúng tôi cung cấp các giải pháp điện kỹ thuật, tự động hóa và số hóa, giúp khách hàng tối ưu hóa quy trình và nâng cao năng suất.',
      cta: { label: 'Tìm hiểu thêm →', href: '/gioi-thieu' },
      images: [
        {
          imageURL: 'https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop',
          alt: 'Hệ thống tự động hóa',
        },
        {
          imageURL: 'https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop',
          alt: 'Kỹ thuật điện công nghiệp',
        },
      ],
    },
    {
      blockType: 'services',
      variant: 'bento',
      title: 'LĨNH VỰC HOẠT ĐỘNG',
      subtitle: 'Chúng tôi cung cấp các giải pháp toàn diện cho doanh nghiệp',
      cards: serviceCards,
    },
    {
      blockType: 'news',
      title: 'TIN TỨC & SỰ KIỆN',
      displayMode: 'featured',
      sourceMode: 'latest',
      count: 3,
      viewAll: { label: 'Xem tất cả →', href: '/tin-tuc' },
    },
    {
      blockType: 'featuredProjects',
      variant: 'alternating',
      title: 'DỰ ÁN TIÊU BIỂU',
      subtitle: 'Các dự án đã triển khai thành công',
      sourceMode: 'latest',
      count: 4,
      viewAll: { label: 'Xem tất cả →', href: '/du-an-tham-khao' },
    },
    {
      blockType: 'products',
      title: 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP',
      subtitle: 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới',
      sourceMode: 'latest',
      count: 5,
    },
    {
      blockType: 'ctaBanner',
      title: 'Bắt đầu Dự án của bạn ngay hôm nay',
      subtitle:
        'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp',
      primaryCTA: { label: 'Liên hệ Ngay', href: '/lien-he' },
      secondaryCTA: { label: 'Xem Dịch vụ', href: '/dich-vu' },
      backgroundColor: '#0F172A',
      gradientFrom: '#B92C32',
      gradientMiddle: '#2b358c',
      gradientTo: '#0F172A',
    },
    {
      blockType: 'brandLogos',
      title: 'ĐỐI TÁC CHIẾN LƯỢC',
      sourceMode: 'latest',
      count: 6,
    },
  ]
}

// ──────────────────────────────────────────────
// V3 – Data Grid layout
// Hero: text trái / 2×2 stat-box grid phải
// Services: cards (mặc định)
// FeaturedProjects: grid (mặc định)
// ──────────────────────────────────────────────
function layoutV3() {
  return [
    {
      blockType: 'hero',
      variant: 'dataGrid',
      title: 'GIẢI PHÁP TỰ ĐỘNG HÓA &\nKỸ THUẬT ĐIỆN CÔNG NGHIỆP',
      subtitle:
        'Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm.',
      primaryCTA: { label: 'Khám Phá Giải Pháp', href: '/dich-vu' },
      stats: statsData,
    },
    {
      blockType: 'welcomeIntro',
      eyebrow: 'VỀ CHÚNG TÔI',
      body: 'Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Với đội ngũ kỹ sư giàu kinh nghiệm, chúng tôi cung cấp các giải pháp toàn diện cho doanh nghiệp.',
      cta: { label: 'Xem thêm →', href: '/gioi-thieu' },
      images: [
        {
          imageURL: 'https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop',
          alt: 'Hệ thống tự động hóa',
        },
      ],
    },
    {
      blockType: 'services',
      variant: 'cards',
      title: 'LĨNH VỰC HOẠT ĐỘNG',
      subtitle: 'Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp',
      cards: serviceCards.slice(0, 3),
    },
    {
      blockType: 'news',
      title: 'TIN TỨC & SỰ KIỆN',
      displayMode: 'grid',
      sourceMode: 'latest',
      count: 3,
      viewAll: { label: 'Xem tất cả →', href: '/tin-tuc' },
    },
    {
      blockType: 'featuredProjects',
      variant: 'grid',
      title: 'DỰ ÁN TIÊU BIỂU',
      backgroundColor: '#0B1221',
      textTheme: 'dark',
      sourceMode: 'latest',
      count: 4,
      viewAll: { label: 'Xem tất cả →', href: '/du-an-tham-khao' },
      tabs,
    },
    {
      blockType: 'partners',
      title: 'ĐỐI TÁC',
      subtitle: 'Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa',
      backgroundColor: '#0B1221',
      images: [
        { imageURL: 'https://images.unsplash.com/photo-1521791136064-7986c2920216?w=600&fit=crop', alt: 'Đối tác 1' },
        { imageURL: 'https://images.unsplash.com/photo-1556761175-b413da4baf72?w=600&fit=crop', alt: 'Đối tác 2' },
        { imageURL: 'https://images.unsplash.com/photo-1600880292203-757bb62b4baf?w=600&fit=crop', alt: 'Đối tác 3' },
        { imageURL: 'https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=600&fit=crop', alt: 'Đối tác 4' },
      ],
    },
    {
      blockType: 'products',
      title: 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP',
      subtitle: 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới',
      sourceMode: 'latest',
      count: 5,
    },
    {
      blockType: 'brandLogos',
      title: 'ĐỐI TÁC CHIẾN LƯỢC',
      sourceMode: 'latest',
      count: 6,
    },
  ]
}

// ──────────────────────────────────────────────
// V4 – Modern Rounded layout
// Hero: container rounded, text căn trái
// Services: cards (mặc định)
// ──────────────────────────────────────────────
function layoutV4() {
  return [
    {
      blockType: 'hero',
      variant: 'modernRounded',
      badgeText: 'GIẢI PHÁP CÔNG NGHIỆP HÀNG ĐẦU',
      title: 'GIẢI PHÁP TỰ ĐỘNG HÓA\nTOÀN DIỆN',
      subtitle:
        'Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm.',
      primaryCTA: { label: 'Khám Phá Giải Pháp', href: '/dich-vu' },
      secondaryCTA: { label: 'Xem dự án', href: '/du-an-tham-khao' },
      stats: statsData,
    },
    {
      blockType: 'welcomeIntro',
      eyebrow: 'GIỚI THIỆU CÔNG TY',
      body: 'Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Chúng tôi cung cấp giải pháp toàn diện từ thiết kế, thi công đến vận hành cho các doanh nghiệp.',
      cta: { label: 'Xem thêm →', href: '/gioi-thieu' },
      images: [
        {
          imageURL: 'https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop',
          alt: 'Hệ thống tự động hóa',
        },
        {
          imageURL: 'https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop',
          alt: 'Kỹ thuật điện công nghiệp',
        },
      ],
    },
    {
      blockType: 'services',
      variant: 'cards',
      title: 'LĨNH VỰC HOẠT ĐỘNG',
      subtitle: 'Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng',
      cards: serviceCards.slice(0, 3),
    },
    {
      blockType: 'news',
      title: 'TIN TỨC & SỰ KIỆN',
      displayMode: 'grid',
      sourceMode: 'latest',
      count: 3,
      viewAll: { label: 'Xem tất cả →', href: '/tin-tuc' },
    },
    {
      blockType: 'featuredProjects',
      variant: 'grid',
      title: 'DỰ ÁN TIÊU BIỂU',
      backgroundColor: '#0B1221',
      textTheme: 'dark',
      sourceMode: 'latest',
      count: 4,
      viewAll: { label: 'Xem tất cả →', href: '/du-an-tham-khao' },
      tabs,
    },
    {
      blockType: 'ctaBanner',
      title: 'Bắt đầu Dự án của bạn ngay hôm nay',
      subtitle: 'Liên hệ với đội ngũ chuyên gia để được tư vấn giải pháp tối ưu cho doanh nghiệp',
      primaryCTA: { label: 'Liên hệ Ngay', href: '/lien-he' },
      secondaryCTA: { label: 'Xem Dịch vụ', href: '/dich-vu' },
      backgroundColor: '#0F172A',
      gradientFrom: '#B92C32',
      gradientMiddle: '#2b358c',
      gradientTo: '#0F172A',
    },
    {
      blockType: 'products',
      title: 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP',
      subtitle: 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới',
      sourceMode: 'latest',
      count: 5,
    },
    {
      blockType: 'brandLogos',
      title: 'ĐỐI TÁC CHIẾN LƯỢC',
      sourceMode: 'latest',
      count: 6,
    },
  ]
}

// ──────────────────────────────────────────────
// V5 – Ultra Modern layout
// Hero: full dark + dot-grid texture
// Services: alternating split rows
// FeaturedProjects: vertical list
// ──────────────────────────────────────────────
function layoutV5() {
  return [
    {
      blockType: 'hero',
      variant: 'ultraModern',
      badgeText: 'GIẢI PHÁP CÔNG NGHIỆP HÀNG ĐẦU',
      title: 'Kiến Tạo Tương Lai\nCông Nghiệp Số',
      subtitle:
        'Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm.',
      backgroundType: 'image',
      primaryCTA: { label: 'Khám Phá Giải Pháp', href: '/dich-vu' },
      secondaryCTA: { label: 'Liên Hệ Tư Vấn', href: '/lien-he' },
      stats: statsData,
    },
    {
      blockType: 'welcomeIntro',
      eyebrow: 'VỀ CHÚNG TÔI',
      body: 'Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Với đội ngũ kỹ sư giàu kinh nghiệm, chúng tôi cung cấp các giải pháp toàn diện giúp doanh nghiệp vận hành tối ưu và bền vững.',
      cta: { label: 'Xem thêm →', href: '/gioi-thieu' },
      images: [
        {
          imageURL: 'https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop',
          alt: 'Hệ thống tự động hóa',
        },
        {
          imageURL: 'https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop',
          alt: 'Kỹ thuật điện công nghiệp',
        },
      ],
    },
    {
      blockType: 'services',
      variant: 'alternating',
      title: 'LĨNH VỰC HOẠT ĐỘNG',
      subtitle: 'Cung cấp các giải pháp công nghiệp toàn diện',
      cards: serviceCards.slice(0, 3),
    },
    {
      blockType: 'news',
      title: 'TIN TỨC & SỰ KIỆN',
      displayMode: 'featured',
      sourceMode: 'latest',
      count: 3,
      viewAll: { label: 'Xem tất cả →', href: '/tin-tuc' },
    },
    {
      blockType: 'featuredProjects',
      variant: 'list',
      title: 'DỰ ÁN TIÊU BIỂU',
      subtitle: 'Những dự án tiêu biểu đã được Bắc Âu triển khai thành công trên toàn quốc',
      sourceMode: 'latest',
      count: 4,
      viewAll: { label: 'Xem tất cả →', href: '/du-an-tham-khao' },
    },
    {
      blockType: 'brandLogos',
      title: 'ĐỐI TÁC CHIẾN LƯỢC',
      sourceMode: 'latest',
      count: 6,
    },
    {
      blockType: 'products',
      title: 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP',
      subtitle: 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới',
      sourceMode: 'latest',
      count: 5,
    },
    {
      blockType: 'ctaBanner',
      title: 'Sẵn sàng bắt đầu dự án?',
      subtitle: 'Liên hệ với đội ngũ chuyên gia của chúng tôi ngay hôm nay',
      primaryCTA: { label: 'Liên hệ Ngay', href: '/lien-he' },
      secondaryCTA: { label: 'Xem Dịch vụ', href: '/dich-vu' },
      backgroundColor: '#0F172A',
      gradientFrom: '#B92C32',
      gradientMiddle: '#2b358c',
      gradientTo: '#0F172A',
    },
  ]
}

// ──────────────────────────────────────────────
// Main upsert function
// ──────────────────────────────────────────────

interface PageDef {
  slug: string
  titleVi: string
  titleEn: string
  layout: unknown[]
}

const pages: PageDef[] = [
  {
    slug: 'home-modern-split',
    titleVi: 'Trang Chủ V2 — Modern Split',
    titleEn: 'Home V2 — Modern Split',
    layout: layoutV2(),
  },
  {
    slug: 'home-data-grid',
    titleVi: 'Trang Chủ V3 — Data Grid',
    titleEn: 'Home V3 — Data Grid',
    layout: layoutV3(),
  },
  {
    slug: 'home-modern-rounded',
    titleVi: 'Trang Chủ V4 — Modern Rounded',
    titleEn: 'Home V4 — Modern Rounded',
    layout: layoutV4(),
  },
  {
    slug: 'home-ultra-modern',
    titleVi: 'Trang Chủ V5 — Ultra Modern',
    titleEn: 'Home V5 — Ultra Modern',
    layout: layoutV5(),
  },
]

export async function script(config: PayloadConfig) {
  const payload = await getPayload({ config })
  let created = 0
  let skipped = 0

  for (const page of pages) {
    const existing = await payload.find({
      collection: 'pages',
      where: { slug: { equals: page.slug } },
      limit: 1,
    })

    if (existing.docs.length > 0) {
      console.log(`[skip] "${page.slug}" đã tồn tại.`)
      skipped++
      continue
    }

    const doc = await payload.create({
      collection: 'pages',
      locale: 'vi',
      data: {
        title: page.titleVi,
        slug: page.slug,
        template: 'builder',
        layout: page.layout,
      } as never,
    })

    console.log(`[ok]   "${page.slug}" đã tạo (id: ${doc.id})`)
    console.log(`       Preview: http://localhost:3000/vi/${page.slug}`)
    created++
  }

  await payload.destroy()
  console.log(`\n[done] ${created} trang tạo mới, ${skipped} bỏ qua.`)
  console.log('\nCác URL preview:')
  pages.forEach((p) => console.log(`  http://localhost:3000/vi/${p.slug}`))
}
