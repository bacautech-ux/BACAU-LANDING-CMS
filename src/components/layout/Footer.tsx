import React from 'react'
import Link from 'next/link'
import Image from 'next/image'
import config from '@payload-config'
import { getPayload } from 'payload'

interface FooterProps {
  locale: string
}

interface FooterLink {
  label?: string | null
  href?: string | null
}

interface FooterColumn {
  title?: string | null
  links?: FooterLink[] | null
}

interface SiteSettingsFooter {
  logoImage?:
    | {
        url?: string | null
        alt?: string | null
        filename?: string | null
      }
    | number
    | null
  logoAlt?: string | null
  logoText?: string | null
  description?: string | null
  backgroundColor?: string | null
  accentColor?: string | null
  columns?: FooterColumn[] | null
  copyright?: string | null
  credit?: string | null
}

const fallbackColumns: FooterColumn[] = [
  {
    title: 'LIÊN KẾT',
    links: [
      { label: 'Trang Chủ', href: '/' },
      { label: 'Giới Thiệu', href: '/gioi-thieu' },
      { label: 'Dịch Vụ', href: '/dich-vu' },
      { label: 'Dự Án', href: '/du-an-tham-khao' },
      { label: 'Liên Hệ', href: '/lien-he' },
    ],
  },
  {
    title: 'LIÊN HỆ',
    links: [
      {
        label: 'Lô E2a-7, Đường D1, Khu Công Nghệ Cao, TP. Thủ Đức, TP. Hồ Chí Minh',
        href: '',
      },
      { label: 'Tel: (028) 3636 9936', href: 'tel:02836369936' },
      { label: 'Email: info@bacau.com.vn', href: 'mailto:info@bacau.com.vn' },
    ],
  },
  {
    title: 'DỊCH VỤ',
    links: [
      { label: 'Tự Động Hóa', href: '/giai-phap/dien-tu-dong-hoa' },
      { label: 'Điện Công Nghiệp', href: '/giai-phap/dien-tu-dong-hoa' },
      { label: 'Bảo Trì & Sửa Chữa', href: '/giai-phap/dich-vu' },
      { label: 'Thiết Bị Đo Lường', href: '/giai-phap/do-luong' },
    ],
  },
]

function withLocalePath(href: string, locale: string) {
  if (!href) return ''
  if (/^(https?:|mailto:|tel:)/.test(href)) return href
  if (href === '/') return `/${locale}`
  if (href.startsWith(`/${locale}/`) || href === `/${locale}`) return href
  return `/${locale}${href.startsWith('/') ? href : `/${href}`}`
}

async function getFooterSettings(locale: string): Promise<SiteSettingsFooter | null> {
  try {
    const payload = await getPayload({ config })
    const settings = await payload.findGlobal({
      slug: 'site-settings',
      locale: locale === 'en' ? 'en' : 'vi',
      depth: 1,
    })

    return settings.footer ?? null
  } catch {
    return null
  }
}

function getLogoImageData(footer: SiteSettingsFooter | null) {
  if (!footer || !footer.logoImage || typeof footer.logoImage !== 'object') {
    return null
  }

  if (!footer.logoImage.url) {
    return null
  }

  return {
    src: footer.logoImage.url,
    alt: footer.logoAlt ?? footer.logoImage.alt ?? footer.logoText ?? 'Logo',
  }
}

export async function Footer({ locale }: FooterProps) {
  const footer = await getFooterSettings(locale)
  const columns = footer?.columns?.length ? footer.columns : fallbackColumns
  const backgroundColor = footer?.backgroundColor ?? '#0F172A'
  const accentColor = footer?.accentColor ?? '#B92C32'
  const logoText = footer?.logoText ?? 'BắcÂu'
  const logoImage = getLogoImageData(footer)
  const description =
    footer?.description ??
    'Công ty TNHH Kỹ thuật & Dịch vụ Bắc Âu chuyên cung cấp giải pháp tự động hóa, thiết bị công nghiệp và dịch vụ kỹ thuật.'
  const copyright = footer?.copyright ?? '© 2024 BắcÂu. All rights reserved.'
  const credit = footer?.credit ?? 'Designed by BắcÂu Technology'

  return (
    <footer className="text-white" style={{ backgroundColor }}>
      {/* Red 3px accent top */}
      <div className="h-[3px] w-full" style={{ backgroundColor: accentColor }} />

      {/* Main content */}
      <div className="px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-14">
        {/* 4 columns */}
        <div className="grid grid-cols-1 gap-5 md:grid-cols-4 md:gap-8 xl:gap-12">
          {/* Logo + description */}
          <div className="flex flex-col gap-3 md:gap-4" style={{ maxWidth: 300 }}>
            {logoImage ? (
              <Image
                src={logoImage.src}
                alt={logoImage.alt}
                width={180}
                height={52}
                className="block h-8 w-auto self-start object-contain md:h-10"
              />
            ) : (
              <span className="text-[18px] font-extrabold text-white">{logoText}</span>
            )}
            <p className="text-[13px] leading-[1.6]" style={{ color: '#94A3B8', maxWidth: 300 }}>
              {description}
            </p>
          </div>

          {columns.slice(0, 3).map((column, index) => (
            <div key={`${column.title}-${index}`} className="flex flex-col gap-2.5 md:gap-3">
              <p className="text-[14px] font-semibold text-white">{column.title}</p>
              {column.links?.map((link, linkIndex) => {
                const href = withLocalePath(link.href ?? '', locale)
                const label = link.label ?? ''

                if (!href) {
                  return (
                    <p
                      key={`${label}-${linkIndex}`}
                      className="text-[13px] leading-[1.6]"
                      style={{ color: '#94A3B8' }}
                    >
                      {label}
                    </p>
                  )
                }

                const isExternal = /^(https?:|mailto:|tel:)/.test(href)
                const className = 'inline-block text-[13px] transition-all duration-200 hover:text-white hover:translate-x-1'
                const style = { color: '#94A3B8' }

                return isExternal ? (
                  <a key={`${href}-${linkIndex}`} href={href} className={className} style={style}>
                    {label}
                  </a>
                ) : (
                  <Link key={`${href}-${linkIndex}`} href={href} className={className} style={style}>
                    {label}
                  </Link>
                )
              })}
            </div>
          ))}
        </div>

        {/* Divider */}
        <div className="my-5 h-px md:my-6 xl:my-8" style={{ background: '#1E293B' }} />

        {/* Footer bottom */}
        <div className="flex flex-col gap-2 md:flex-row md:items-center md:justify-between">
          <p className="text-[12px]" style={{ color: '#64748B' }}>
            {copyright}
          </p>
          <p className="text-[12px]" style={{ color: '#64748B' }}>
            {credit}
          </p>
        </div>
      </div>
    </footer>
  )
}
