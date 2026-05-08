import { getPayload } from 'payload'
import config from '../../payload.config'

const SLUG = 'home_v2'

async function seedHomeV2() {
  const payload = await getPayload({ config })

  const existing = await payload.find({
    collection: 'pages',
    where: { slug: { equals: SLUG } },
    limit: 1,
  })

  if (existing.docs.length > 0) {
    console.log(`[skip] Page "${SLUG}" đã tồn tại. Bỏ qua seed.`)
    process.exit(0)
  }

  await payload.create({
    collection: 'pages',
    locale: 'vi',
    data: {
      title: 'Trang Chủ V2',
      slug: SLUG,
      template: 'builder',
      layout: [
        /* 1. Hero Banner — full-width image, no text */
        {
          blockType: 'heroBanner',
          backgroundImageURL:
            'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=1600&fit=crop',
          height: 700,
          overlayOpacity: 40,
        },

        /* 2. Welcome / Intro Split */
        {
          blockType: 'welcomeIntro',
          eyebrow: 'CHÀO MỪNG',
          body: 'Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Với đội ngũ kỹ sư giàu kinh nghiệm, chúng tôi cung cấp các giải pháp toàn diện trong lĩnh vực tự động hóa, quản lý năng lượng và hệ thống điện công nghiệp cho các doanh nghiệp trên toàn quốc.',
          cta: {
            label: 'Xem thêm',
            href: '/gioi-thieu',
          },
          images: [
            {
              imageURL:
                'https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop',
              alt: 'Hệ thống tự động hóa công nghiệp',
            },
            {
              imageURL:
                'https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop',
              alt: 'Kỹ thuật điện công nghiệp',
            },
          ],
        },

        /* 3. Tin tức & Sự kiện — grid variant (3 equal cards) */
        {
          blockType: 'news',
          title: 'TIN TỨC & SỰ KIỆN',
          displayMode: 'grid',
          sourceMode: 'latest',
          count: 3,
          viewAll: { label: 'Xem tất cả →', href: '/tin-tuc' },
        },

        /* 4. Dự án Tiêu Biểu */
        {
          blockType: 'featuredProjects',
          title: 'DỰ ÁN TIÊU BIỂU',
          backgroundColor: '#FFFFFF',
          sourceMode: 'latest',
          count: 4,
          viewAll: { label: 'Xem tất cả →', href: '/du-an-tham-khao' },
          tabs: [
            { label: 'Quản lý năng lượng', value: 'energy' },
            { label: 'Điện công nghiệp', value: 'electrical' },
            { label: 'Tự động hóa', value: 'automation' },
            { label: 'Hệ thống BMS', value: 'bms' },
          ],
        },

        /* 5. Lĩnh vực Hoạt Động */
        {
          blockType: 'services',
          title: 'LĨNH VỰC HOẠT ĐỘNG',
          subtitle: 'Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng',
          cards: [
            {
              title: 'LĨNH VỰC THI CÔNG',
              description: 'Thi công hệ thống điện, tủ động hóa, HVAC và các công trình công nghiệp.',
              imageURL:
                'https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=800&fit=crop',
              href: '/dich-vu/thi-cong',
              buttonLabel: 'Xem thêm',
            },
            {
              title: 'DỊCH VỤ CÔNG NGHIỆP',
              description: 'Cung cấp giải pháp bảo trì, sửa chữa và nâng cấp hệ thống tự động hóa công nghiệp.',
              imageURL:
                'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=800&fit=crop',
              href: '/dich-vu/cong-nghiep',
              buttonLabel: 'Xem thêm',
            },
            {
              title: 'DỊCH VỤ DÂN DỤNG',
              description: 'Thiết kế, lắp đặt hệ thống điện dân dụng, điều hòa không khí và an ninh.',
              imageURL:
                'https://images.unsplash.com/photo-1581092160562-40aa08e78837?w=800&fit=crop',
              href: '/dich-vu/dan-dung',
              buttonLabel: 'Xem thêm',
            },
          ],
        },

        /* 6. Đối Tác — mosaic */
        {
          blockType: 'partners',
          title: 'ĐỐI TÁC',
          subtitle: 'Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa',
          backgroundColor: '#0B1221',
          images: [
            {
              imageURL:
                'https://images.unsplash.com/photo-1521791136064-7986c2920216?w=600&fit=crop',
              alt: 'Đối tác 1',
            },
            {
              imageURL:
                'https://images.unsplash.com/photo-1556761175-b413da4baf72?w=600&fit=crop',
              alt: 'Đối tác 2',
            },
            {
              imageURL:
                'https://images.unsplash.com/photo-1600880292203-757bb62b4baf?w=600&fit=crop',
              alt: 'Đối tác 3',
            },
            {
              imageURL:
                'https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=600&fit=crop',
              alt: 'Đối tác 4',
            },
          ],
        },

        /* 7. Thiết Bị & Sản Phẩm */
        {
          blockType: 'products',
          title: 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP',
          subtitle: 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới',
          sourceMode: 'latest',
          count: 5,
        },

        /* 8. Đối Tác Chiến Lược — logo strip */
        {
          blockType: 'brandLogos',
          title: 'ĐỐI TÁC CHIẾN LƯỢC',
          sourceMode: 'latest',
          count: 6,
          fallbackBrands: [
            { name: 'ABB' },
            { name: 'Intel' },
            { name: 'Mitsubishi' },
            { name: 'PSCL' },
            { name: 'KEIHIN' },
            { name: 'Siemens' },
          ],
        },
      ],
    },
  })

  console.log(`[ok] Đã tạo page "${SLUG}" thành công.`)
  console.log(`     URL: /vi/${SLUG} và /en/${SLUG}`)
  process.exit(0)
}

seedHomeV2().catch((err) => {
  console.error(err)
  process.exit(1)
})
