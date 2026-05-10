import React from 'react'
import Image from 'next/image'
import Link from 'next/link'

interface ServiceCard {
  title: string
  description: string
  image: string
  imageURL?: string
  href: string
  buttonLabel: string
}

const defaultCards: ServiceCard[] = [
  {
    title: 'LĨNH VỰC THI CÔNG',
    description: 'Thi công hệ thống điện, tự động hóa, HVAC và các công trình công nghiệp',
    image: 'https://images.unsplash.com/photo-1664022447173-062a8edb226a?w=800',
    imageURL: 'https://images.unsplash.com/photo-1664022447173-062a8edb226a?w=800',
    href: '/dich-vu/thi-cong',
    buttonLabel: 'Xem thêm',
  },
  {
    title: 'DỊCH VỤ CÔNG NGHIỆP',
    description: 'Cung cấp giải pháp bảo trì, sửa chữa và nâng cấp hệ thống tự động hóa công nghiệp',
    image: 'https://images.unsplash.com/photo-1727373203588-82996710c2af?w=800',
    imageURL: 'https://images.unsplash.com/photo-1727373203588-82996710c2af?w=800',
    href: '/dich-vu/cong-nghiep',
    buttonLabel: 'Xem thêm',
  },
  {
    title: 'DỊCH VỤ DÂN DỤNG',
    description: 'Thiết kế, lắp đặt hệ thống điện dân dụng, điều hòa không khí và an ninh',
    image: 'https://images.unsplash.com/photo-1613155898540-76dee366fc0d?w=800',
    imageURL: 'https://images.unsplash.com/photo-1613155898540-76dee366fc0d?w=800',
    href: '/dich-vu/dan-dung',
    buttonLabel: 'Xem thêm',
  },
]

interface ServiceCardInput {
  title?: string | null
  description?: string | null
  image?: { url?: string | null; filename?: string | null } | null
  imageURL?: string | null
  href?: string | null
  buttonLabel?: string | null
}

interface ServicesSectionProps {
  locale: string
  title?: string
  subtitle?: string
  cards?: ServiceCardInput[]
}

function getCardImage(card: ServiceCardInput, fallbackImage: string) {
  if (card.image?.url) return card.image.url
  if (card.image?.filename) return `/api/media/file/${card.image.filename}`
  if (card.imageURL) return card.imageURL

  return fallbackImage
}

export function ServicesSection({
  locale,
  title = 'LĨNH VỰC HOẠT ĐỘNG',
  subtitle = 'Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng',
  cards,
}: ServicesSectionProps) {
  const visibleCards = cards?.length
    ? cards
        .filter((card) => card.title)
        .map((card, index) => {
          const fallback = defaultCards[index] ?? defaultCards[0]

          return {
            title: card.title ?? fallback.title,
            description: card.description ?? '',
            image: getCardImage(card, fallback.image),
            imageURL: card.imageURL ?? fallback.imageURL,
            href: card.href ?? fallback.href,
            buttonLabel: card.buttonLabel ?? 'Xem thêm',
          }
        })
    : defaultCards

  return (
    <section className="bg-bg-light px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-16">
      {/* Section title */}
      <div className="mb-8 flex flex-col gap-2 md:mb-8 xl:mb-12">
        <div className="h-1 w-10 rounded-sm bg-primary-red md:w-12" />
        <h2 className="text-[24px] font-extrabold tracking-wide text-primary-navy md:text-[28px]">
          {title}
        </h2>
        <p className="text-[14px] leading-relaxed text-text-secondary md:text-[15px]">
          {subtitle}
        </p>
      </div>

      {/* Cards row */}
      <div className="grid grid-cols-1 gap-4 md:grid-cols-3 md:gap-5 xl:gap-8">
        {visibleCards.map((card) => (
          <div
            key={card.title}
            className="group card-hover flex flex-col overflow-hidden rounded-lg bg-white md:rounded-xl"
            style={{ boxShadow: '0 4px 20px #0000000D' }}
          >
            {/* Image */}
            <div className="relative h-[150px] overflow-hidden md:h-[120px] xl:h-[240px]">
              <Image
                src={card.image}
                alt={card.title}
                fill
                className="img-zoom object-cover"
                sizes="(max-width: 767px) 100vw, (max-width: 1279px) 33vw, 380px"
              />
            </div>

            {/* Content */}
            <div className="flex flex-1 flex-col gap-3 p-4 md:p-4 xl:gap-4 xl:p-6">
              <h3 className="text-[14px] font-bold tracking-[0.5px] text-primary-navy md:text-[13px] xl:text-[15px]">
                {card.title}
              </h3>
              <p className="flex-1 text-[13px] leading-[1.55] text-text-secondary xl:text-[14px] xl:leading-[1.6]">
                {card.description}
              </p>
              <div>
                <Link
                  href={`/${locale}${card.href}`}
                  className="btn-press inline-flex items-center rounded-md bg-primary-navy px-5 py-2.5 text-[12px] font-semibold text-white transition-colors duration-200 hover:bg-primary-dark xl:px-7 xl:py-3 xl:text-[13px]"
                  style={{ borderBottom: '3px solid #B92C32' }}
                >
                  {card.buttonLabel}
                </Link>
              </div>
            </div>
          </div>
        ))}
      </div>
    </section>
  )
}
