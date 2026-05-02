'use client'

import React, { useEffect, useRef, useState } from 'react'
import Image from 'next/image'
import Link from 'next/link'

/* ── Count-up hook ─────────────────────────────────────── */
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

/* ── Stat item ─────────────────────────────────────────── */
interface StatDef {
  value: number
  suffix: string
  labelTop: string
  labelBottom: string
  redNumber?: boolean
}

function StatItem({ stat, started }: { stat: StatDef; started: boolean }) {
  const count = useCountUp(stat.value, 1800, started)
  return (
    <div className="flex items-center gap-4">
      <span
        className={`text-5xl font-black leading-none ${stat.redNumber ? 'text-primary-red' : 'text-white'}`}
      >
        {count}{stat.suffix}
      </span>
      <div className="flex flex-col gap-0.5">
        <span className="text-[11px] font-bold tracking-[2px] text-white/60 uppercase">
          {stat.labelTop}
        </span>
        <span className="text-sm font-medium text-white">{stat.labelBottom}</span>
      </div>
    </div>
  )
}

/* ── Props ─────────────────────────────────────────────── */
interface TrustPartner {
  name: string
  logo?: { url: string; alt?: string } | null
}

interface HeroSectionProps {
  title: string
  subtitle: string
  primaryCTA: { label: string; href: string }
  secondaryCTA: { label: string; href: string }
  backgroundImage?: string
  backgroundVideo?: string
  trustPartners?: TrustPartner[]
}

/* ── Main component ─────────────────────────────────────── */
export function HeroSection({
  title,
  subtitle,
  primaryCTA,
  secondaryCTA,
  backgroundImage,
  backgroundVideo,
  trustPartners,
}: HeroSectionProps) {
  // Ẩn hàng đối tác nếu admin không setup
  const showTrust = trustPartners && trustPartners.length > 0
  const statsRef = useRef<HTMLDivElement>(null)
  const [statsStarted, setStatsStarted] = useState(false)

  useEffect(() => {
    const observer = new IntersectionObserver(
      ([entry]) => { if (entry.isIntersecting) setStatsStarted(true) },
      { threshold: 0.3 },
    )
    if (statsRef.current) observer.observe(statsRef.current)
    return () => observer.disconnect()
  }, [])

  const stats: StatDef[] = [
    { value: 15, suffix: '+', labelTop: 'NĂM', labelBottom: 'Kinh Nghiệm', redNumber: true },
    { value: 500, suffix: '+', labelTop: 'DỰ ÁN', labelBottom: 'Hoàn Thành' },
    { value: 200, suffix: '+', labelTop: 'KHÁCH HÀNG', labelBottom: 'Tin Tưởng' },
    { value: 50, suffix: '+', labelTop: 'ĐỐI TÁC', labelBottom: 'Chiến Lược' },
  ]


  return (
    <section>
      {/* ── Hero fullbleed ── */}
      <div className="relative flex items-center justify-center overflow-hidden" style={{ height: 700 }}>
        {/* Background — video hoặc image */}
        <div className="absolute inset-0 z-0">
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
          <div
            className="absolute inset-0"
            style={{
              background:
                'linear-gradient(180deg, #0A0F1FFA 0%, #0A0F1FE8 35%, #0A0F1FB0 70%, #0A0F1F90 100%)',
            }}
          />
        </div>

        {/* Content */}
        <div className="relative z-10 flex flex-col items-center gap-8 px-6 text-center w-full max-w-5xl mx-auto py-24">
          {/* Badge pill */}
          <div
            className="flex items-center gap-2 px-5 py-2.5 rounded-full border"
            style={{ background: '#FFFFFF10', borderColor: '#FFFFFF20' }}
          >
            <span className="w-2 h-2 rounded-sm bg-primary-red shrink-0" />
            <span
              className="text-[11px] font-bold tracking-[3px] uppercase"
              style={{ color: '#FFFFFFBB' }}
            >
              CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU
            </span>
          </div>

          {/* Headline */}
          <h1
            className="text-white font-black leading-[1.1] w-full whitespace-pre-line"
            style={{ fontSize: 'clamp(36px, 5vw, 60px)' }}
          >
            {title}
          </h1>

          {/* Subtitle */}
          <p
            className="max-w-[700px] text-center leading-[1.7] whitespace-pre-line"
            style={{ fontSize: 17, color: '#CBD5E1' }}
          >
            {subtitle}
          </p>

          {/* CTA buttons */}
          <div className="flex items-center gap-5 flex-wrap justify-center">
            {/* Primary — red with glow shadow */}
            <Link
              href={primaryCTA.href}
              className="flex items-center gap-2.5 rounded-md text-white font-bold transition-opacity hover:opacity-90"
              style={{
                fontSize: 15,
                padding: '16px 40px',
                background: '#B92C32',
                boxShadow: '0 4px 20px #B92C3266',
              }}
            >
              {primaryCTA.label}
              <span className="text-base">→</span>
            </Link>

            {/* Secondary — glass */}
            <Link
              href={secondaryCTA.href}
              className="flex items-center gap-2.5 rounded-md text-white font-semibold border transition-opacity hover:opacity-90 backdrop-blur-sm"
              style={{
                fontSize: 15,
                padding: '16px 40px',
                background: '#FFFFFF15',
                borderColor: '#FFFFFF40',
              }}
            >
              {secondaryCTA.label}
            </Link>
          </div>

          {/* Trust logos — ẩn nếu admin không setup */}
          {showTrust && (
            <div className="flex items-center gap-8 justify-center flex-wrap mt-2">
              <span className="text-[12px] font-medium" style={{ color: '#FFFFFF50' }}>
                Đối tác:
              </span>
              {trustPartners!.map((partner, i) => (
                <React.Fragment key={i}>
                  {partner.logo?.url ? (
                    // Có logo → hiện ảnh
                    <Image
                      src={partner.logo.url}
                      alt={partner.logo.alt ?? partner.name}
                      width={80}
                      height={32}
                      className="object-contain brightness-0 invert opacity-40 hover:opacity-70 transition-opacity"
                    />
                  ) : (
                    // Chỉ có tên → hiện text
                    <span
                      className="text-sm font-bold tracking-wide"
                      style={{ color: '#FFFFFF40' }}
                    >
                      {partner.name}
                    </span>
                  )}
                  {i < trustPartners!.length - 1 && (
                    <span style={{ color: '#FFFFFF30' }}>·</span>
                  )}
                </React.Fragment>
              ))}
            </div>
          )}
        </div>
      </div>

      {/* ── Gradient divider ── */}
      <div
        className="h-1 w-full"
        style={{ background: 'linear-gradient(90deg, #B92C32 0%, #2b358c 100%)' }}
      />

      {/* ── Stats bar ── */}
      <div
        ref={statsRef}
        className="w-full flex items-center justify-between px-[120px] py-9 flex-wrap gap-8"
        style={{ background: '#080C15' }}
      >
        {stats.map((stat, i) => (
          <React.Fragment key={i}>
            <StatItem stat={stat} started={statsStarted} />
            {i < stats.length - 1 && (
              <div className="w-px h-[50px]" style={{ background: '#FFFFFF12' }} />
            )}
          </React.Fragment>
        ))}
      </div>
    </section>
  )
}
