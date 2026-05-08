'use client'

// V3 Data Grid — Hero: text căn trái nền tối, 4 stat-box grid 2×2 bên phải (desktop)
// Mobile/Tablet: text trên, stats 2×2 bên dưới trong cùng nền tối
// Xoá folder home-v3-data-grid để bỏ phiên bản này

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

function StatGridCell({ stat, started }: { stat: StatDef; started: boolean }) {
  const count = useCountUp(stat.value, 1800, started)
  return (
    <div
      className="flex flex-col items-center justify-center gap-2 border p-6 lg:p-8"
      style={{ background: '#0F1A2E', borderColor: 'rgba(255,255,255,0.08)' }}
    >
      <span className="text-3xl lg:text-4xl font-black text-white">
        {count}{stat.suffix}
      </span>
      <span
        className="text-[10px] font-bold tracking-[2px] uppercase"
        style={{ color: 'rgba(255,255,255,0.4)' }}
      >
        {stat.labelTop}
      </span>
      <span className="text-sm font-medium" style={{ color: 'rgba(255,255,255,0.65)' }}>
        {stat.labelBottom}
      </span>
    </div>
  )
}

export interface HeroV3Props {
  title: string
  subtitle?: string
  primaryCTA: { label: string; href: string }
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

export function HeroV3({ title, subtitle, primaryCTA, stats }: HeroV3Props) {
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
    .slice(0, 4)
    .map((s) => ({
      value: s.value ?? 0,
      suffix: s.suffix ?? '+',
      labelTop: s.labelTop ?? '',
      labelBottom: s.labelBottom ?? '',
    }))

  return (
    <section style={{ background: '#0B1221' }}>
      {/* Desktop: left text 3/5 + right stats 2/5 side by side */}
      {/* Mobile/Tablet: text on top, stats 2×2 below */}
      <div className="flex flex-col lg:flex-row lg:min-h-[500px]">
        {/* Text */}
        <div className="flex-1 lg:flex-[3] flex items-center px-6 md:px-12 lg:px-16 xl:px-24 py-14 lg:py-20">
          <div className="max-w-2xl w-full">
            <h1
              className="font-black text-white leading-[1.1] whitespace-pre-line"
              style={{ fontSize: 'clamp(28px, 4vw, 54px)' }}
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
            <Link
              href={primaryCTA.href}
              className="mt-8 inline-flex items-center gap-2 rounded-md font-bold text-white transition-opacity hover:opacity-90"
              style={{ fontSize: 14, padding: '13px 32px', background: '#2b358c' }}
            >
              {primaryCTA.label} →
            </Link>
          </div>
        </div>

        {/* Stats — desktop: right 2×2 panel, mobile/tablet: 2×2 grid below */}
        {visibleStats.length > 0 && (
          <div
            ref={statsRef}
            className="grid grid-cols-2 lg:flex-[2]"
          >
            {visibleStats.map((stat, i) => (
              <StatGridCell key={i} stat={stat} started={statsStarted} />
            ))}
          </div>
        )}
      </div>
    </section>
  )
}
