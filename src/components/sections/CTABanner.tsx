import React from 'react'
import Link from 'next/link'

interface CTABannerProps {
  locale: string
  title?: string
  subtitle?: string
  primaryCTALabel?: string
  primaryCTAHref?: string
  secondaryCTALabel?: string
  secondaryCTAHref?: string
  backgroundColor?: string
  gradientFrom?: string
  gradientMiddle?: string
  gradientTo?: string
  accentColor?: string
}

export function CTABanner({
  locale,
  title = 'Bắt đầu Dự án của bạn ngay hôm nay',
  subtitle = 'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp',
  primaryCTALabel = 'Liên hệ Ngay',
  primaryCTAHref = '/lien-he',
  secondaryCTALabel = 'Xem Dịch vụ',
  secondaryCTAHref = '/dich-vu',
  backgroundColor = '#0F172A',
  gradientFrom = '#B92C32',
  gradientMiddle = '#2b358c',
  gradientTo = '#0F172A',
  accentColor = '#B92C32',
}: CTABannerProps) {
  return (
    <section
      className="flex min-h-[360px] flex-col items-center justify-center gap-5 px-4 py-10 text-center md:min-h-[360px] md:px-24 xl:px-[200px] xl:py-20"
      style={{
        background: `linear-gradient(135deg, ${gradientFrom}4D 0%, ${gradientMiddle}4D 50%, ${gradientTo}4D 100%), ${backgroundColor}`,
      }}
    >
      <div className="h-1 w-[60px] rounded-sm" style={{ background: accentColor }} />
      <h2 className="w-full text-[28px] font-extrabold leading-[1.2] text-white md:text-[32px] xl:text-[36px]">{title}</h2>
      <p className="max-w-[600px] text-[14px] leading-[1.6] md:text-[16px]" style={{ color: '#CBD5E1' }}>{subtitle}</p>
      <div className="flex w-full flex-col items-stretch gap-3 sm:w-auto sm:flex-row sm:items-center md:gap-4">
        <Link
          href={`/${locale}${primaryCTAHref}`}
          className="flex items-center justify-center gap-2.5 rounded-md px-8 py-4 text-[15px] font-bold text-white"
          style={{ background: '#B92C32', boxShadow: '0 4px 24px #B92C3255' }}
        >
          {primaryCTALabel} <span>→</span>
        </Link>
        <Link
          href={`/${locale}${secondaryCTAHref}`}
          className="flex items-center justify-center rounded-md border px-8 py-4 text-[15px] font-semibold text-white"
          style={{ background: '#FFFFFF10', borderColor: '#FFFFFF30' }}
        >
          {secondaryCTALabel}
        </Link>
      </div>
    </section>
  )
}
