'use client'

import React, { useCallback, useEffect, useRef, useState } from 'react'
import Image from 'next/image'
import Link from 'next/link'

interface WelcomeIntroImage {
  image?: { url?: string | null; filename?: string | null } | null
  imageURL?: string | null
  alt?: string | null
}

interface WelcomeIntroProps {
  locale: string
  eyebrow?: string | null
  body?: string | null
  cta?: { label?: string | null; href?: string | null } | null
  images?: WelcomeIntroImage[] | null
  autoPlay?: boolean | null
  autoPlayInterval?: number | null
}

function getMediaURL(value: { url?: string | null; filename?: string | null } | null | undefined): string | undefined {
  if (!value) return undefined
  if (value.url) return value.url
  if (value.filename) return `/api/media/file/${value.filename}`
  return undefined
}

const fallbackImages = [
  'https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop',
  'https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop',
]

function ImageCarousel({
  slides,
  autoPlay,
  intervalMs,
}: {
  slides: { url: string; alt: string }[]
  autoPlay: boolean
  intervalMs: number
}) {
  const [current, setCurrent] = useState(0)
  const [isHovered, setIsHovered] = useState(false)
  const timerRef = useRef<ReturnType<typeof setInterval> | null>(null)
  const total = slides.length

  const prev = useCallback(() => setCurrent((c) => (c - 1 + total) % total), [total])
  const next = useCallback(() => setCurrent((c) => (c + 1) % total), [total])

  useEffect(() => {
    if (!autoPlay || total <= 1 || isHovered) return
    timerRef.current = setInterval(next, intervalMs)
    return () => { if (timerRef.current) clearInterval(timerRef.current) }
  }, [autoPlay, total, isHovered, intervalMs, next])

  if (slides.length === 0) return null

  return (
    <div
      className="relative h-full w-full overflow-hidden"
      onMouseEnter={() => setIsHovered(true)}
      onMouseLeave={() => setIsHovered(false)}
    >
      {/* Slides */}
      {slides.map((slide, i) => (
        <div
          key={i}
          className="absolute inset-0 transition-opacity duration-700"
          style={{ opacity: i === current ? 1 : 0, zIndex: i === current ? 1 : 0 }}
        >
          <Image
            src={slide.url}
            alt={slide.alt}
            fill
            className="object-cover"
            sizes="(max-width: 767px) 100vw, 50vw"
            priority={i === 0}
          />
        </div>
      ))}

      {/* Nav arrows — chỉ hiện khi > 1 ảnh */}
      {total > 1 && (
        <>
          <button
            onClick={prev}
            aria-label="Ảnh trước"
            className="absolute left-3 top-1/2 z-10 flex h-9 w-9 -translate-y-1/2 items-center justify-center rounded-full bg-white/80 shadow-md transition hover:bg-white"
          >
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round">
              <polyline points="15 18 9 12 15 6" />
            </svg>
          </button>
          <button
            onClick={next}
            aria-label="Ảnh tiếp theo"
            className="absolute right-3 top-1/2 z-10 flex h-9 w-9 -translate-y-1/2 items-center justify-center rounded-full bg-white/80 shadow-md transition hover:bg-white"
          >
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round">
              <polyline points="9 18 15 12 9 6" />
            </svg>
          </button>

          {/* Dots indicator */}
          <div className="absolute bottom-3 left-1/2 z-10 flex -translate-x-1/2 gap-1.5">
            {slides.map((_, i) => (
              <button
                key={i}
                onClick={() => setCurrent(i)}
                aria-label={`Ảnh ${i + 1}`}
                className="h-1.5 rounded-full transition-all duration-300"
                style={{
                  width: i === current ? 20 : 6,
                  background: i === current ? '#B92C32' : 'rgba(255,255,255,0.6)',
                }}
              />
            ))}
          </div>
        </>
      )}
    </div>
  )
}

export function WelcomeIntro({
  locale,
  eyebrow = 'CHÀO MỪNG',
  body,
  cta,
  images,
  autoPlay = true,
  autoPlayInterval = 4,
}: WelcomeIntroProps) {
  const ctaLabel = cta?.label ?? 'Xem thêm'
  const ctaHref = `/${locale}${cta?.href ?? '/gioi-thieu'}`
  const intervalMs = (autoPlayInterval ?? 4) * 1000

  const slides = (images ?? [])
    .map((img, i) => ({
      url: getMediaURL(img.image) ?? img.imageURL ?? fallbackImages[i % fallbackImages.length] ?? '',
      alt: img.alt ?? eyebrow ?? 'Bắc Âu',
    }))
    .filter((s) => s.url)

  if (slides.length === 0) {
    fallbackImages.forEach((url, i) => slides.push({ url, alt: `Bắc Âu ${i + 1}` }))
  }

  return (
    <section className="bg-white">
      <div className="flex flex-col gap-8 px-4 py-8 md:flex-row md:gap-10 md:px-6 md:py-12 xl:gap-12 xl:px-[60px] xl:py-16">
        {/* Left column */}
        <div className="flex flex-col justify-center gap-6 md:w-1/2">
          <div className="flex items-center gap-4">
            <div className="h-9 w-1 shrink-0 bg-primary-red" />
            <h2 className="text-[28px] font-bold tracking-[1px] text-text-primary">
              {eyebrow}
            </h2>
          </div>

          {body && (
            <p className="text-[15px] leading-[1.6] text-text-secondary">
              {body}
            </p>
          )}

          <div>
            <Link
              href={ctaHref}
              className="btn-press inline-flex items-center gap-2 px-7 py-3 text-[14px] font-semibold text-white transition-all duration-300 hover:-translate-y-0.5 hover:shadow-lg"
              style={{ background: '#2b358c', borderBottom: '3px solid #B92C32' }}
            >
              {ctaLabel}
            </Link>
          </div>
        </div>

        {/* Right column — carousel */}
        <div className="relative md:w-1/2" style={{ minHeight: 380 }}>
          <ImageCarousel
            slides={slides}
            autoPlay={autoPlay ?? true}
            intervalMs={intervalMs}
          />
        </div>
      </div>
    </section>
  )
}
