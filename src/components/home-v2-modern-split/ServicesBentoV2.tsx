// V2 Modern Split — Services Bento Grid
// Desktop: 2 card lớn trên + 3 card nhỏ dưới
// Tablet: 2 card trên + 2-col dưới | Mobile: single column
// Xoá folder home-v2-modern-split để bỏ phiên bản này

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
  if (value.url) return value.url
  if (value.filename) return `/api/media/file/${value.filename}`
  return undefined
}

const fallbackImages = [
  'https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop',
  'https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&fit=crop',
  'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=800&fit=crop',
  'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=800&fit=crop',
  'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800&fit=crop',
]

interface BentoCardProps {
  card: ServiceCard
  index: number
  tall?: boolean
}

function BentoCard({ card, index, tall }: BentoCardProps) {
  const imgSrc = getMediaURL(card.image) ?? card.imageURL ?? fallbackImages[index % fallbackImages.length]
  const href = card.href ?? '#'

  return (
    <Link
      href={href}
      className={`relative overflow-hidden rounded-lg group block ${tall ? 'h-[260px] md:h-[300px] lg:h-[320px]' : 'h-[200px] md:h-[180px]'}`}
    >
      <Image
        src={imgSrc}
        alt={card.title ?? ''}
        fill
        className="object-cover transition-transform duration-500 group-hover:scale-105"
        sizes="(max-width: 768px) 100vw, (max-width: 1024px) 50vw, 33vw"
      />
      <div
        className="absolute inset-0"
        style={{
          background:
            'linear-gradient(to top, rgba(0,0,0,0.78) 30%, rgba(0,0,0,0.18) 80%, transparent 100%)',
        }}
      />
      <div className="absolute bottom-0 left-0 right-0 p-5">
        {card.title && (
          <p className="text-white font-bold leading-tight" style={{ fontSize: 16 }}>
            {card.title}
          </p>
        )}
        {card.description && (
          <p
            className="mt-1 line-clamp-2 opacity-0 group-hover:opacity-100 transition-opacity duration-300"
            style={{ fontSize: 13, color: 'rgba(255,255,255,0.8)' }}
          >
            {card.description}
          </p>
        )}
      </div>
    </Link>
  )
}

export interface ServicesBentoV2Props {
  title?: string | null
  subtitle?: string | null
  cards?: ServiceCard[]
}

const defaultCards: ServiceCard[] = [
  { title: 'Tự Động Hóa Công Nghiệp' },
  { title: 'Hệ Thống Điện Công Nghiệp' },
  { title: 'Hệ Thống BMS' },
  { title: 'Số Lượng Chế Tạo' },
  { title: 'Điện Tử Dân Dụng' },
]

export function ServicesBentoV2({ title, subtitle, cards }: ServicesBentoV2Props) {
  const displayCards = (cards && cards.length > 0 ? cards : defaultCards).slice(0, 5)
  const topCards = displayCards.slice(0, 2)
  const bottomCards = displayCards.slice(2, 5)

  return (
    <section className="py-12 md:py-16 px-5 md:px-8 xl:px-[60px]" style={{ background: '#FFFFFF' }}>
      {/* Header */}
      <div className="mb-7 md:mb-8">
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
          <p style={{ fontSize: 14, color: '#64748B', maxWidth: 560 }}>{subtitle}</p>
        )}
      </div>

      {/* Bento grid */}
      <div className="flex flex-col gap-3">
        {/* Row 1 — 2 tall cards: single col on mobile, 2-col on tablet+ */}
        {topCards.length > 0 && (
          <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
            {topCards.map((card, i) => (
              <BentoCard key={i} card={card} index={i} tall />
            ))}
          </div>
        )}

        {/* Row 2 — 3 shorter cards: single col on mobile, 2-col on tablet, 3-col on desktop */}
        {bottomCards.length > 0 && (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-3">
            {bottomCards.map((card, i) => (
              <BentoCard key={i + 2} card={card} index={i + 2} />
            ))}
          </div>
        )}
      </div>
    </section>
  )
}
