'use client'

// V5 Ultra Modern — Hero: nền tối full-width với dot-grid texture, căn giữa
// Mobile: content stacked, stats 2×2 grid | Tablet: centered, stats dạng row
// Xoá folder home-v5-ultra-modern để bỏ phiên bản này

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
  numberColor?: string
}

function StatItem({ stat, started }: { stat: StatDef; started: boolean }) {
  const count = useCountUp(stat.value, 1800, started)
  return (
    <div className="flex items-center gap-3">
      <span
        className="text-3xl md:text-4xl xl:text-5xl font-black leading-none"
        style={{ color: stat.numberColor ?? '#FFFFFF' }}
      >
        {count}{stat.suffix}
      </span>
      <div className="flex flex-col gap-0.5">
        <span className="text-[10px] font-bold tracking-[2px] uppercase" style={{ color: 'rgba(255,255,255,0.5)' }}>
          {stat.labelTop}
        </span>
        <span className="text-sm font-medium text-white">{stat.labelBottom}</span>
      </div>
    </div>
  )
}

function StatBox({ stat, started }: { stat: StatDef; started: boolean }) {
  const count = useCountUp(stat.value, 1800, started)
  return (
    <div
      className="flex flex-col items-center justify-center gap-2 p-5 border"
      style={{ background: '#0F1829', borderColor: 'rgba(255,255,255,0.08)' }}
    >
      <span
        className="text-3xl font-black"
        style={{ color: stat.numberColor ?? '#FFFFFF' }}
      >
        {count}{stat.suffix}
      </span>
      <span className="text-[9px] font-bold tracking-[2px] uppercase" style={{ color: 'rgba(255,255,255,0.4)' }}>
        {stat.labelTop}
      </span>
      <span className="text-xs font-medium text-white">{stat.labelBottom}</span>
    </div>
  )
}

export interface HeroV5Props {
  badgeText?: string
  title: string
  subtitle?: string
  primaryCTA: { label: string; href: string }
  secondaryCTA?: { label: string; href: string }
  backgroundImage?: string
  backgroundVideo?: string
  stats?: {
    value?: number | null
    suffix?: string | null
    labelTop?: string | null
    labelBottom?: string | null
    numberColor?: string | null
  }[]
}

const defaultStats: StatDef[] = [
  { value: 15, suffix: '+', labelTop: 'NĂM', labelBottom: 'Kinh Nghiệm', numberColor: '#B92C32' },
  { value: 500, suffix: '+', labelTop: 'DỰ ÁN', labelBottom: 'Hoàn Thành', numberColor: '#FFFFFF' },
  { value: 50, suffix: '+', labelTop: 'ĐỐI TÁC', labelBottom: 'Chiến Lược', numberColor: '#FFFFFF' },
  { value: 100, suffix: '+', labelTop: 'KỸ SƯ', labelBottom: 'Chuyên Nghiệp', numberColor: '#FFFFFF' },
]

export function HeroV5({
  badgeText,
  title,
  subtitle,
  primaryCTA,
  secondaryCTA,
  backgroundImage,
  backgroundVideo,
  stats,
}: HeroV5Props) {
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

  const statsSource = stats ?? defaultStats
  const visibleStats: StatDef[] = statsSource
    .filter((s) => typeof s.value === 'number')
    .map((s, i) => ({
      value: s.value ?? 0,
      suffix: s.suffix ?? '+',
      labelTop: s.labelTop ?? '',
      labelBottom: s.labelBottom ?? '',
      numberColor: s.numberColor ?? (i === 0 ? '#B92C32' : '#FFFFFF'),
    }))

  return (
    <section>
      {/* Hero */}
      <div
        className="relative flex min-h-[500px] md:min-h-[580px] lg:min-h-[680px] items-center justify-center overflow-hidden"
        style={{ background: '#080C15' }}
      >
        {/* Background video/image */}
        {backgroundVideo ? (
          <video
            src={backgroundVideo}
            autoPlay
            loop
            muted
            playsInline
            className="absolute inset-0 w-full h-full object-cover"
          />
        ) : backgroundImage ? (
          <Image
            src={backgroundImage}
            alt="Hero background"
            fill
            priority
            className="object-cover"
            sizes="100vw"
          />
        ) : null}

        {/* Dot grid texture */}
        <div
          className="absolute inset-0 z-[1]"
          style={{
            backgroundImage:
              'radial-gradient(circle, rgba(255,255,255,0.04) 1px, transparent 1px)',
            backgroundSize: '36px 36px',
          }}
        />

        {/* Radial glow */}
        <div
          className="absolute inset-0 z-[1]"
          style={{
            background:
              'radial-gradient(ellipse 80% 60% at 50% 40%, rgba(43,53,140,0.18) 0%, transparent 70%)',
          }}
        />

        {/* Dark overlay for bg media */}
        {(backgroundImage || backgroundVideo) && (
          <div
            className="absolute inset-0 z-[1]"
            style={{ background: 'rgba(8,12,21,0.72)' }}
          />
        )}

        {/* Content */}
        <div className="relative z-10 w-full max-w-4xl flex flex-col items-center gap-6 px-6 md:px-8 py-16 lg:py-24 text-center">
          {badgeText && (
            <div className="flex flex-col items-center gap-2">
              <div className="h-0.5 w-8" style={{ background: '#B92C32' }} />
              <span
                className="text-[11px] font-bold tracking-[3px] uppercase"
                style={{ color: 'rgba(255,255,255,0.6)' }}
              >
                {badgeText}
              </span>
            </div>
          )}

          <h1
            className="text-white font-black leading-[1.08] whitespace-pre-line"
            style={{ fontSize: 'clamp(30px, 5vw, 64px)' }}
          >
            {title}
          </h1>

          {subtitle && (
            <p
              className="max-w-[580px] text-center leading-[1.7]"
              style={{ fontSize: 16, color: '#CBD5E1' }}
            >
              {subtitle}
            </p>
          )}

          <div className="flex items-center gap-4 flex-wrap justify-center mt-1">
            <Link
              href={primaryCTA.href}
              className="inline-flex items-center gap-2.5 rounded-md font-bold text-white transition-opacity hover:opacity-90"
              style={{
                fontSize: 14,
                padding: '13px 32px',
                background: '#2b358c',
                boxShadow: '0 4px 20px rgba(43,53,140,0.4)',
              }}
            >
              {primaryCTA.label} →
            </Link>
            {secondaryCTA && (
              <Link
                href={secondaryCTA.href}
                className="inline-flex items-center gap-2.5 rounded-md font-semibold border transition-opacity hover:opacity-90"
                style={{
                  fontSize: 14,
                  padding: '13px 32px',
                  background: 'rgba(255,255,255,0.06)',
                  borderColor: 'rgba(255,255,255,0.25)',
                  color: '#FFFFFF',
                }}
              >
                {secondaryCTA.label}
              </Link>
            )}
          </div>
        </div>
      </div>

      {/* Gradient divider */}
      <div
        className="h-[2px] w-full"
        style={{ background: 'linear-gradient(90deg, #B92C32 0%, #2b358c 50%, transparent 100%)' }}
      />

      {/* Stats */}
      {visibleStats.length > 0 && (
        <div ref={statsRef} style={{ background: '#080C15' }}>
          {/* Mobile: 2×2 grid */}
          <div className="grid grid-cols-2 md:hidden">
            {visibleStats.map((stat, i) => (
              <StatBox key={i} stat={stat} started={statsStarted} />
            ))}
          </div>
          {/* Tablet+: horizontal bar */}
          <div className="hidden md:flex w-full items-center justify-between gap-6 px-8 lg:px-[80px] xl:px-[120px] py-7 lg:py-9 flex-wrap">
            {visibleStats.map((stat, i) => (
              <React.Fragment key={i}>
                <StatItem stat={stat} started={statsStarted} />
                {i < visibleStats.length - 1 && (
                  <div className="w-px h-[40px] lg:h-[50px] hidden lg:block" style={{ background: 'rgba(255,255,255,0.1)' }} />
                )}
              </React.Fragment>
            ))}
          </div>
        </div>
      )}
    </section>
  )
}
