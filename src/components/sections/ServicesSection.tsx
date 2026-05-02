import React from 'react'
import Image from 'next/image'
import Link from 'next/link'

interface ServiceCard {
  title: string
  description: string
  image: string
  href: string
}

const cards: ServiceCard[] = [
  {
    title: 'LĨNH VỰC THI CÔNG',
    description: 'Thi công hệ thống điện, tự động hóa, HVAC và các công trình công nghiệp',
    image: 'https://images.unsplash.com/photo-1664022447173-062a8edb226a?w=800',
    href: '/dich-vu/thi-cong',
  },
  {
    title: 'DỊCH VỤ CÔNG NGHIỆP',
    description: 'Cung cấp giải pháp bảo trì, sửa chữa và nâng cấp hệ thống tự động hóa công nghiệp',
    image: 'https://images.unsplash.com/photo-1727373203588-82996710c2af?w=800',
    href: '/dich-vu/cong-nghiep',
  },
  {
    title: 'DỊCH VỤ DÂN DỤNG',
    description: 'Thiết kế, lắp đặt hệ thống điện dân dụng, điều hòa không khí và an ninh',
    image: 'https://images.unsplash.com/photo-1613155898540-76dee366fc0d?w=800',
    href: '/dich-vu/dan-dung',
  },
]

interface ServicesSectionProps {
  locale: string
}

export function ServicesSection({ locale }: ServicesSectionProps) {
  return (
    <section className="bg-bg-light" style={{ padding: '80px 120px' }}>
      {/* Section title */}
      <div className="flex flex-col gap-2 mb-12">
        <div className="w-12 h-1 rounded-sm bg-primary-red" />
        <h2 className="text-[28px] font-extrabold text-primary-navy tracking-wide">
          LĨNH VỰC HOẠT ĐỘNG
        </h2>
        <p className="text-[15px] text-text-secondary leading-relaxed">
          Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng
        </p>
      </div>

      {/* Cards row */}
      <div className="grid grid-cols-3 gap-8">
        {cards.map((card) => (
          <div
            key={card.title}
            className="bg-white flex flex-col rounded-xl overflow-hidden"
            style={{ boxShadow: '0 4px 20px #0000000D' }}
          >
            {/* Image */}
            <div className="relative h-[240px] overflow-hidden rounded-t-xl">
              <Image
                src={card.image}
                alt={card.title}
                fill
                className="object-cover"
                sizes="33vw"
              />
            </div>

            {/* Content */}
            <div className="flex flex-col gap-4 p-6 flex-1">
              <h3 className="text-[15px] font-bold text-primary-navy tracking-[0.5px]">
                {card.title}
              </h3>
              <p className="text-[14px] text-text-secondary leading-[1.6] flex-1">
                {card.description}
              </p>
              <div>
                <Link
                  href={`/${locale}${card.href}`}
                  className="inline-flex items-center px-7 py-3 rounded-md bg-primary-navy text-white text-[13px] font-semibold"
                  style={{ borderBottom: '3px solid #B92C32' }}
                >
                  Xem thêm
                </Link>
              </div>
            </div>
          </div>
        ))}
      </div>
    </section>
  )
}
