'use client'

// V4 Modern Rounded — Hero: container bo tròn, text căn trái, 1 CTA, stats card rời bên dưới
// Tablet: container rounded với padding nhỏ hơn
// Mobile: bỏ container rounded (full width), stats 2×2
// Xoá folder home-v4-modern-rounded để bỏ phiên bản này

import React, { useEffect, useRef, useState } from 'react'
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

function StatCard({ stat, started }: { stat: StatDef; started: boolean }) {
  const count = useCountUp(stat.value, 1800, started)
  return (
    <div className="flex flex-col items-center gap-1 bg-white rounded-xl border border-gray-100 shadow-sm py-5 px-4">
      <span className="text-2xl lg:text-3xl font-black" style={{ color: '#0B1221' }}>
        {count}{stat.suffix}
      </span>
      <span
        className="text-[10px] font-bold tracking-[2px] uppercase"
        style={{ color: '#94A3B8' }}
      >
        {stat.labelTop}
      </span>
      <span className="text-sm font-medium" style={{ color: '#475569' }}>
        {stat.labelBottom}
      </span>
    </div>
  )
}

export interface HeroV4Props {
  badgeText?: string
  title: string
  subtitle?: string
  primaryCTA: { label: string; href: string }
  secondaryCTA?: { label: string; href: string }
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

export function HeroV4({
  badgeText,
  title,
  subtitle,
  primaryCTA,
  secondaryCTA,
  stats,
}: HeroV4Props) {
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
    <section
      className="px-0 md:px-5 lg:px-10 xl:px-[60px] py-0 md:py-5 lg:py-8"
      style={{ background: '#F1F5F9' }}
    >
      {/* Rounded hero container — rounded on tablet+, full-bleed on mobile */}
      <div
        className="rounded-none md:rounded-2xl overflow-hidden min-h-[380px] md:min-h-[400px] lg:min-h-[440px] flex items-center px-6 md:px-10 lg:px-14 xl:px-20 py-12 lg:py-16"
        style={{
          background: 'linear-gradient(135deg, #0B1221 0%, #1a2745 50%, #0d1b38 100%)',
        }}
      >
        <div className="max-w-2xl w-full">
          {badgeText && (
            <p
              className="text-[11px] font-bold tracking-[3px] uppercase mb-5"
              style={{ color: 'rgba(185,44,50,0.9)' }}
            >
              {badgeText}
            </p>
          )}
          <h1
            className="font-black text-white leading-[1.1] whitespace-pre-line"
            style={{ fontSize: 'clamp(28px, 4vw, 56px)' }}
          >
            {title}
          </h1>
          {subtitle && (
            <p
              className="mt-4 leading-[1.7]"
              style={{ fontSize: 15, color: 'rgba(148,163,184,1)' }}
            >
              {subtitle}
            </p>
          )}
          <div className="flex items-center gap-3 mt-8 flex-wrap">
            <Link
              href={primaryCTA.href}
              className="inline-flex items-center gap-2 rounded-full font-bold text-white transition-opacity hover:opacity-90"
              style={{ fontSize: 14, padding: '13px 32px', background: '#2b358c' }}
            >
              {primaryCTA.label} →
            </Link>
            {secondaryCTA && (
              <Link
                href={secondaryCTA.href}
                className="inline-flex items-center gap-2 rounded-full font-semibold border transition-opacity hover:opacity-80"
                style={{
                  fontSize: 14,
                  padding: '13px 32px',
                  borderColor: 'rgba(255,255,255,0.3)',
                  color: 'rgba(255,255,255,0.85)',
                }}
              >
                {secondaryCTA.label}
              </Link>
            )}
          </div>
        </div>
      </div>

      {/* Stats: mobile/tablet = 2×2 grid, desktop = 4-col */}
      {visibleStats.length > 0 && (
        <div
          ref={statsRef}
          className="grid grid-cols-2 lg:grid-cols-4 gap-3 md:gap-4 mt-3 md:mt-4 lg:mt-5 px-4 md:px-0"
        >
          {visibleStats.map((stat, i) => (
            <StatCard key={i} stat={stat} started={statsStarted} />
          ))}
        </div>
      )}
    </section>
  )
}
