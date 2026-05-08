// V5 Ultra Modern — Services: mỗi dịch vụ 1 hàng, ảnh/text xen kẽ trái-phải (desktop)
// Mobile/Tablet: ảnh trên, nội dung bên dưới (stacked)
// Xoá folder home-v5-ultra-modern để bỏ phiên bản này

import React from 'react'
import Image from 'next/image'
import Link from 'next/link'

interface ServiceCard {
  title?: string | null
  description?: string | null
  image?: { url?: string | null; filename?: string | null } | null
  imageURL?: string | null
  href?: string | null
  buttonLabel?: string | null
}

function getMediaURL(value: ServiceCard['image']): string | undefined {
  if (!value) return undefined
  return value.url ?? (value.filename ? `/api/media/file/${value.filename}` : undefined)
}

const fallbackImages = [
  'https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=900&fit=crop',
  'https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=900&fit=crop',
  'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=900&fit=crop',
]

export interface ServicesAlternatingV5Props {
  title?: string | null
  subtitle?: string | null
  cards?: ServiceCard[]
  locale?: string
}

const defaultCards: ServiceCard[] = [
  {
    title: 'Tự Động Hóa Công Nghiệp',
    description:
      'Cung cấp giải pháp tự động hóa toàn diện cho các nhà máy và dây chuyền sản xuất, tích hợp PLC, SCADA, HMI và hệ thống điều khiển phân tán.',
    buttonLabel: 'Tìm hiểu thêm',
  },
  {
    title: 'Hệ Thống Điện Công Nghiệp',
    description:
      'Thiết kế, thi công và bảo trì hệ thống điện cho các công trình công nghiệp. Giải pháp quản lý năng lượng tiên tiến và tiết kiệm.',
    buttonLabel: 'Tìm hiểu thêm',
  },
  {
    title: 'Số Hóa Công Nghiệp',
    description:
      'Chuyển đổi số và giám sát thông minh cho các doanh nghiệp. Tích hợp IoT, cloud và hệ thống phân tích dữ liệu thời gian thực.',
    buttonLabel: 'Tìm hiểu thêm',
  },
]

export function ServicesAlternatingV5({ title, subtitle, cards, locale }: ServicesAlternatingV5Props) {
  const displayCards = (cards && cards.length > 0 ? cards : defaultCards)

  return (
    <section className="py-12 md:py-16" style={{ background: '#FFFFFF' }}>
      {/* Header */}
      <div className="px-5 md:px-8 xl:px-[60px] mb-10 md:mb-12">
        {title && (
          <div className="flex items-center gap-3 mb-3">
            <div className="h-0.5 w-8 shrink-0" style={{ background: '#B92C32' }} />
            <h2
              className="font-bold tracking-[1.5px]"
              style={{ fontSize: 'clamp(18px, 2.2vw, 28px)', color: '#0B1221' }}
            >
              {title}
            </h2>
          </div>
        )}
        {subtitle && (
          <p style={{ fontSize: 14, color: '#64748B' }}>{subtitle}</p>
        )}
      </div>

      {/* Alternating rows */}
      <div className="flex flex-col">
        {displayCards.map((card, i) => {
          const imgSrc =
            getMediaURL(card.image) ??
            card.imageURL ??
            fallbackImages[i % fallbackImages.length]
          const reversed = i % 2 !== 0
          const btnLabel = card.buttonLabel ?? 'Tìm hiểu thêm'
          const href = card.href
            ? locale ? `/${locale}${card.href}` : card.href
            : '#'

          return (
            <div
              key={i}
              className={`flex flex-col md:flex-row md:items-center ${reversed ? 'md:flex-row-reverse' : ''} border-b border-gray-100 last:border-b-0`}
            >
              {/* Image */}
              <div className="w-full md:w-1/2 relative h-[220px] md:h-[280px] lg:h-[300px] overflow-hidden">
                <Image
                  src={imgSrc}
                  alt={card.title ?? ''}
                  fill
                  className="object-cover"
                  sizes="(max-width: 768px) 100vw, 50vw"
                />
              </div>

              {/* Content */}
              <div
                className={`w-full md:w-1/2 flex flex-col justify-center px-6 md:px-10 lg:px-14 xl:px-20 py-8 lg:py-12 ${reversed ? 'md:items-end md:text-right' : ''}`}
              >
                {card.title && (
                  <h3
                    className="font-bold leading-tight mb-4"
                    style={{ fontSize: 'clamp(17px, 2vw, 24px)', color: '#0B1221' }}
                  >
                    {card.title}
                  </h3>
                )}
                {card.description && (
                  <p
                    className="leading-[1.75] mb-6"
                    style={{ fontSize: 14, color: '#64748B', maxWidth: 460 }}
                  >
                    {card.description}
                  </p>
                )}
                <Link
                  href={href}
                  className="inline-flex items-center gap-1.5 font-semibold transition-opacity hover:opacity-70"
                  style={{ fontSize: 14, color: '#2b358c' }}
                >
                  {btnLabel} →
                </Link>
              </div>
            </div>
          )
        })}
      </div>
    </section>
  )
}
