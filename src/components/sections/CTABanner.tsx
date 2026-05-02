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
}

export function CTABanner({
  locale,
  title = 'Bắt đầu Dự án của bạn ngay hôm nay',
  subtitle = 'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp',
  primaryCTALabel = 'Liên hệ Ngay',
  primaryCTAHref = '/lien-he',
  secondaryCTALabel = 'Xem Dịch vụ',
  secondaryCTAHref = '/dich-vu',
}: CTABannerProps) {
  return (
    <section
      className="flex flex-col items-center justify-center gap-6 text-center"
      style={{
        height: 360,
        padding: '80px 200px',
        background: `linear-gradient(135deg, rgba(185,44,50,0.3) 0%, rgba(43,53,140,0.3) 50%, rgba(15,23,42,0.3) 100%), #0F172A`,
      }}
    >
      <div className="w-[60px] h-1 rounded-sm bg-primary-red" />
      <h2 className="text-[36px] font-extrabold text-white w-full">{title}</h2>
      <p className="text-[16px] max-w-[600px]" style={{ color: '#CBD5E1' }}>{subtitle}</p>
      <div className="flex items-center gap-4">
        <Link
          href={`/${locale}${primaryCTAHref}`}
          className="flex items-center gap-2.5 rounded-md text-white font-bold"
          style={{ fontSize: 15, padding: '16px 40px', background: '#B92C32', boxShadow: '0 4px 24px #B92C3255' }}
        >
          {primaryCTALabel} <span>→</span>
        </Link>
        <Link
          href={`/${locale}${secondaryCTAHref}`}
          className="flex items-center rounded-md text-white font-semibold border"
          style={{ fontSize: 15, padding: '16px 40px', background: '#FFFFFF10', borderColor: '#FFFFFF30' }}
        >
          {secondaryCTALabel}
        </Link>
      </div>
    </section>
  )
}
