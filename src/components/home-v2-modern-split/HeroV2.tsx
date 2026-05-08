'use client'

// V2 Modern Split — Hero: text trắng bên trái, ảnh lớn bên phải (desktop)
// Mobile/Tablet: ảnh trên, text + stats bên dưới
// Xoá folder home-v2-modern-split để bỏ phiên bản này

import React, { useEffect, useRef, useState } from 'react'
import Image from 'next/image'
import Link from 'next/link'

function useCountUp(target: number, duration = 1800, started: boolean) {
  const [count, setCount] = useState(0)
  useEffect(() => {
    if (!started) return
    const start = performance.now()
    const tick = (now: number) => {
      const progress = Math.min((now - start) / duration, 1)
      setCount(Math.floor(progress * target))
      if (progress < 1) requestAnimationFrame(tick)
    }
    requestAnimationFrame(tick)
  }, [target, duration, started])
  return count
}

interface StatDef {
  value: number
  suffix: string
  labelTop: string
  labelBottom: string
}

function StatBox({ stat, started, mobile }: { stat: StatDef; started: boolean; mobile?: boolean }) {
  const count = useCountUp(stat.value, 1800, started)
  if (mobile) {
    return (
      <div className="flex flex-col items-center justify-center gap-1 py-5 px-3">
        <span className="text-2xl font-black" style={{ color: '#0B1221' }}>
          {count}{stat.suffix}
        </span>
        <span className="text-[9px] font-bold tracking-[2px] uppercase" style={{ color: '#94A3B8' }}>
          {stat.labelTop}
        </span>
        <span className="text-xs font-medium" style={{ color: '#475569' }}>
          {stat.labelBottom}
        </span>
      </div>
    )
  }
  return (
    <div className="flex flex-col items-center justify-center gap-1 border-r border-gray-200 last:border-r-0 py-7 px-4">
      <span className="text-3xl font-black" style={{ color: '#0B1221' }}>
        {count}{stat.suffix}
      </span>
      <span className="text-[10px] font-bold tracking-[2px] uppercase" style={{ color: '#94A3B8' }}>
        {stat.labelTop}
      </span>
      <span className="text-sm font-medium" style={{ color: '#475569' }}>
        {stat.labelBottom}
      </span>
    </div>
  )
}

export interface HeroV2Props {
  badgeText?: string
  title: string
  subtitle?: string
  primaryCTA: { label: string; href: string }
  secondaryCTA?: { label: string; href: string }
  heroImage?: string
  stats?: {
    value?: number | null
    suffix?: string | null
    labelTop?: string | null
    labelBottom?: string | null
  }[]
}

const defaultStats: StatDef[] = [
  { value: 15, suffix: '+', labelTop: 'NĂM', labelBottom: 'Kinh Nghiệm' },
  { value: 500, suffix: '+', labelTop: 'DỰ ÁN', labelBottom: 'Hoàn Thành' },
  { value: 50, suffix: '+', labelTop: 'ĐỐI TÁC', labelBottom: 'Chiến Lược' },
  { value: 100, suffix: '+', labelTop: 'KỸ SƯ', labelBottom: 'Chuyên Nghiệp' },
]

const fallbackHeroImage =
  'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=1400&fit=crop'

export function HeroV2({
  badgeText,
  title,
  subtitle,
  primaryCTA,
  secondaryCTA,
  heroImage,
  stats,
}: HeroV2Props) {
  const statsRef = useRef<HTMLDivElement>(null)
  const [statsStarted, setStatsStarted] = useState(false)

  useEffect(() => {
    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) setStatsStarted(true)
      },
      { threshold: 0.3 },
    )
    if (statsRef.current) observer.observe(statsRef.current)
    return () => observer.disconnect()
  }, [])

  const visibleStats: StatDef[] = (stats ?? defaultStats)
    .filter((s) => typeof s.value === 'number')
    .map((s) => ({
      value: s.value ?? 0,
      suffix: s.suffix ?? '+',
      labelTop: s.labelTop ?? '',
      labelBottom: s.labelBottom ?? '',
    }))

  return (
    <section>
      {/* Hero: mobile/tablet = column (image top), desktop = row split */}
      <div className="flex flex-col lg:flex-row lg:min-h-[480px]">
        {/* Image — mobile: top, desktop: right */}
        <div className="order-first lg:order-last w-full lg:w-1/2 relative h-[240px] md:h-[300px] lg:h-auto overflow-hidden">
          <Image
            src={heroImage ?? fallbackHeroImage}
            alt={title}
            fill
            priority
            className="object-cover"
            sizes="(max-width: 1024px) 100vw, 50vw"
          />
          <div
            className="absolute inset-0"
            style={{
              background:
                'linear-gradient(270deg, transparent 50%, rgba(255,255,255,0.08) 100%)',
            }}
          />
        </div>

        {/* Content */}
        <div
          className="order-last lg:order-first w-full lg:w-1/2 flex items-center px-6 md:px-12 lg:px-16 xl:px-24 py-10 lg:py-16"
          style={{ background: '#FFFFFF' }}
        >
          <div className="max-w-lg w-full">
            {badgeText && (
              <p
                className="text-[11px] font-bold tracking-[3px] uppercase mb-5"
                style={{ color: '#B92C32' }}
              >
                {badgeText}
              </p>
            )}
            <h1
              className="font-black leading-[1.1] whitespace-pre-line"
              style={{ fontSize: 'clamp(26px, 4vw, 52px)', color: '#0B1221' }}
            >
              {title}
            </h1>
            {subtitle && (
              <p className="mt-4 leading-[1.7]" style={{ fontSize: 15, color: '#64748B' }}>
                {subtitle}
              </p>
            )}
            <div className="flex items-center gap-3 mt-8 flex-wrap">
              <Link
                href={primaryCTA.href}
                className="inline-flex items-center gap-2 rounded-md font-bold text-white transition-opacity hover:opacity-90"
                style={{ fontSize: 14, padding: '13px 28px', background: '#2b358c' }}
              >
                {primaryCTA.label} →
              </Link>
              {secondaryCTA && (
                <Link
                  href={secondaryCTA.href}
                  className="inline-flex items-center gap-2 rounded-md font-semibold border transition-opacity hover:opacity-90"
                  style={{
                    fontSize: 14,
                    padding: '13px 28px',
                    borderColor: '#CBD5E1',
                    color: '#0B1221',
                  }}
                >
                  {secondaryCTA.label}
                </Link>
              )}
            </div>
          </div>
        </div>
      </div>

      {/* Stats: mobile/tablet = 2×2 grid, desktop = 4-col row */}
      {visibleStats.length > 0 && (
        <div ref={statsRef} className="border-t border-gray-100">
          {/* Mobile/tablet 2×2 */}
          <div className="grid grid-cols-2 lg:hidden divide-x divide-y divide-gray-100">
            {visibleStats.map((stat, i) => (
              <StatBox key={i} stat={stat} started={statsStarted} mobile />
            ))}
          </div>
          {/* Desktop 4-col */}
          <div
            className="hidden lg:grid"
            style={{ gridTemplateColumns: `repeat(${visibleStats.length}, 1fr)` }}
          >
            {visibleStats.map((stat, i) => (
              <StatBox key={i} stat={stat} started={statsStarted} />
            ))}
          </div>
        </div>
      )}
    </section>
  )
}
