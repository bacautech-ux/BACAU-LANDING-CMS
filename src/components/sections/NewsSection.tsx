import React from 'react'
import Image from 'next/image'
import Link from 'next/link'

interface NewsItem {
  slug: string
  title: string
  excerpt: string
  date: string
  image: string
  featured?: boolean
}

const news: NewsItem[] = [
  {
    slug: 'du-an-binh-duong-2026',
    title: 'Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương',
    excerpt: 'Dự án triển khai hệ thống SCADA và PLC cho nhà máy sản xuất với quy mô lớn...',
    date: '20 Tháng 3, 2026',
    image: 'https://images.unsplash.com/photo-1761489798131-5cdde3262832?w=1200',
    featured: true,
  },
  {
    slug: 'hoi-thao-nang-luong-2026',
    title: 'Hội thảo giải pháp quản lý năng lượng thông minh 2026',
    excerpt: 'Bắc Âu đồng tổ chức hội thảo về các giải pháp tiết kiệm năng lượng cho khu công nghiệp...',
    date: '15 Tháng 3, 2026',
    image: 'https://images.unsplash.com/photo-1726866672851-5b99c837603c?w=600',
  },
  {
    slug: 'hop-tac-nhat-ban-2026',
    title: 'Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản',
    excerpt: 'Thỏa thuận hợp tác trong lĩnh vực cung cấp thiết bị và chuyển giao công nghệ tự động hóa...',
    date: '05 Tháng 3, 2026',
    image: 'https://images.unsplash.com/photo-1731694406551-5f9522167493?w=600',
  },
]

interface NewsSectionProps {
  locale: string
}

export function NewsSection({ locale }: NewsSectionProps) {
  const featured = news[0]
  const secondary = news.slice(1)

  return (
    <section className="bg-white" style={{ padding: '64px 80px' }}>
      {/* Header */}
      <div className="flex items-center justify-between mb-10">
        <div className="flex items-center gap-3">
          <div className="w-10 h-1 rounded-sm bg-primary-red" />
          <h2 className="text-[28px] font-bold text-primary-navy tracking-[1.5px]">
            TIN TỨC & SỰ KIỆN
          </h2>
        </div>
        <Link
          href={`/${locale}/tin-tuc`}
          className="text-[14px] font-semibold text-primary-blue hover:underline"
        >
          Xem tất cả →
        </Link>
      </div>

      {/* Cards row — featured left + 2 small right */}
      <div className="grid grid-cols-[1fr_1fr] gap-6" style={{ height: 440 }}>
        {/* Featured card — full image with overlay */}
        <Link
          href={`/${locale}/tin-tuc/${featured.slug}`}
          className="relative flex flex-col justify-between rounded-xl overflow-hidden"
          style={{ boxShadow: '0 4px 20px #00000020' }}
        >
          <Image
            src={featured.image}
            alt={featured.title}
            fill
            className="object-cover"
            sizes="50vw"
          />
          {/* Date badge top */}
          <div className="relative z-10 p-5">
            <span className="inline-block px-3 py-1.5 rounded bg-primary-red text-white text-[11px] font-bold tracking-[0.5px]">
              {featured.date}
            </span>
          </div>
          {/* Text overlay bottom */}
          <div
            className="relative z-10 flex flex-col gap-2 p-7"
            style={{
              background: 'linear-gradient(180deg, #00000000 0%, #000000BB 40%, #000000DD 100%)',
              paddingTop: 80,
            }}
          >
            <h3 className="text-[22px] font-bold text-white leading-[1.3]">
              {featured.title}
            </h3>
            <p className="text-[14px] leading-[1.5]" style={{ color: '#FFFFFFAA' }}>
              {featured.excerpt}
            </p>
          </div>
        </Link>

        {/* Right column — 2 small horizontal cards */}
        <div className="flex flex-col gap-6">
          {secondary.map((item) => (
            <Link
              key={item.slug}
              href={`/${locale}/tin-tuc/${item.slug}`}
              className="flex flex-1 rounded-xl overflow-hidden border border-border bg-white hover:shadow-md transition-shadow"
              style={{ boxShadow: '0 2px 12px #00000012' }}
            >
              {/* Image */}
              <div className="relative w-[220px] shrink-0">
                <Image
                  src={item.image}
                  alt={item.title}
                  fill
                  className="object-cover"
                  sizes="220px"
                />
              </div>
              {/* Body */}
              <div className="flex flex-col justify-center gap-2.5 p-5 flex-1">
                <span className="inline-block self-start px-3 py-1 rounded bg-primary-red text-white text-[11px] font-bold">
                  {item.date}
                </span>
                <h3 className="text-[15px] font-bold text-text-primary leading-[1.4]">
                  {item.title}
                </h3>
                <p className="text-[13px] text-text-secondary leading-[1.5]">
                  {item.excerpt}
                </p>
              </div>
            </Link>
          ))}
        </div>
      </div>
    </section>
  )
}
