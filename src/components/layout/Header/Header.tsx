import React from 'react'
import Link from 'next/link'
import Image from 'next/image'
import config from '@payload-config'
import { getTranslations } from 'next-intl/server'
import { getPayload } from 'payload'
import { LanguageToggle } from './LanguageToggle'
import { MobileMenu } from './MobileMenu'

interface HeaderProps {
  locale: string
}

interface NavItem {
  label: string
  href: string
  children?: NavItem[] | null
}

interface SiteSettingsHeader {
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
  phone?: string | null
  email?: string | null
  navItems?: NavItem[] | null
}

function withLocalePath(href: string, locale: string) {
  if (!href) return `/${locale}`
  if (/^(https?:|mailto:|tel:)/.test(href)) return href
  if (href === '/') return `/${locale}`
  if (href.startsWith(`/${locale}/`) || href === `/${locale}`) return href
  return `/${locale}${href.startsWith('/') ? href : `/${href}`}`
}

function normalizeNavItems(items: NavItem[] | null | undefined, locale: string) {
  return (items ?? []).map((item) => ({
    ...item,
    href: withLocalePath(item.href, locale),
    children: item.children?.length
      ? item.children.map((child) => ({
          ...child,
          href: withLocalePath(child.href, locale),
        }))
      : undefined,
  }))
}

async function getHeaderSettings(locale: string): Promise<SiteSettingsHeader | null> {
  try {
    const payload = await getPayload({ config })
    const settings = await payload.findGlobal({
      slug: 'site-settings',
      locale: locale === 'en' ? 'en' : 'vi',
      depth: 1,
    })

    return settings.header ?? null
  } catch {
    return null
  }
}

function getLogoImageData(header: SiteSettingsHeader | null) {
  if (!header || !header.logoImage || typeof header.logoImage !== 'object') {
    return null
  }

  if (!header.logoImage.url) {
    return null
  }

  return {
    src: header.logoImage.url,
    alt: header.logoAlt ?? header.logoImage.alt ?? header.logoText ?? 'Logo',
  }
}

export async function Header({ locale }: HeaderProps) {
  const t = await getTranslations('nav')
  const header = await getHeaderSettings(locale)

  const fallbackNavItems = [
    {
      label: t('company'),
      href: '/gioi-thieu',
      children: [
        { label: 'Giới thiệu', href: '/gioi-thieu' },
        { label: 'Sứ mệnh & Tầm nhìn', href: '/gioi-thieu/su-menh' },
        { label: 'Sơ đồ tổ chức', href: '/gioi-thieu/to-chuc' },
        { label: 'Chứng chỉ & Chất lượng', href: '/gioi-thieu/chung-chi' },
        { label: 'Liên hệ', href: '/lien-he' },
      ],
    },
    { label: t('projects'), href: '/du-an-tham-khao' },
    {
      label: t('solutions'),
      href: '/giai-phap',
      children: [
        { label: 'Giải pháp Điện & Tự động hóa', href: '/giai-phap/dien-tu-dong-hoa' },
        { label: 'Giải pháp Số hóa', href: '/giai-phap/so-hoa' },
        { label: 'Giải pháp Đo lường', href: '/giai-phap/do-luong' },
        { label: 'Dịch vụ Công nghiệp', href: '/giai-phap/dich-vu' },
      ],
    },
    { label: t('products'), href: '/san-pham' },
    { label: t('news'), href: '/tin-tuc' },
    { label: t('careers'), href: '/tuyen-dung' },
  ]
  const navItems = normalizeNavItems(
    header?.navItems?.length ? header.navItems : fallbackNavItems,
    locale,
  )
  const phone = header?.phone ?? '(028) 3636 9936'
  const email = header?.email ?? 'info@bacau.com.vn'
  const logoText = header?.logoText ?? 'BắcÂu'
  const logoImage = getLogoImageData(header)

  return (
    <header className="sticky top-0 z-50 shadow-sm">
      {/* Top info bar — navy bg */}
      <div className="hidden bg-primary-navy md:block">
        <div className="flex items-center justify-between px-6 py-[6px] xl:px-[60px]">
          <div className="flex items-center gap-4 xl:gap-5">
            <a href="tel:02836369936" className="text-xs text-[#94A3B8] hover:text-white transition-colors">
              📞 {phone}
            </a>
            <a href={`mailto:${email}`} className="text-xs text-[#94A3B8] hover:text-white transition-colors">
              ✉ {email}
            </a>
          </div>
          <LanguageToggle currentLocale={locale} />
        </div>
      </div>

      {/* Main nav — white bg */}
      <div className="bg-white border-b border-border">
        <div className="relative flex h-9 items-center justify-between px-3 md:h-[39px] md:px-6 lg:h-14 xl:px-[60px]">
          <Link href={`/${locale}`} className="flex items-center shrink-0">
            {logoImage ? (
              <Image
                src={logoImage.src}
                alt={logoImage.alt}
                width={180}
                height={52}
                className="h-7 w-auto object-contain md:h-8 lg:h-10"
                priority
              />
            ) : (
              <span className="text-base font-bold tracking-tight text-primary-blue lg:text-lg">{logoText}</span>
            )}
          </Link>

          {/* Desktop nav */}
          <nav className="hidden lg:flex items-center gap-0">
            {navItems.map((item) => (
              <div key={item.href} className="relative group">
                <Link
                  href={item.href}
                  className="flex items-center gap-1 px-2 py-2 text-[13px] font-bold text-text-primary transition-colors hover:text-primary-blue xl:px-3 xl:text-[15px]"
                >
                  {item.label}
                  {item.children && <span className="text-text-muted text-xs">▾</span>}
                </Link>
                {item.children && (
                  <div className="absolute top-full left-0 hidden group-hover:block min-w-52 bg-white shadow-xl border-t-2 border-primary-red z-50">
                    {item.children.map((child) => (
                      <Link
                        key={child.href}
                        href={child.href}
                        className="block px-4 py-3 text-sm text-text-primary hover:bg-bg-light hover:text-primary-navy border-b border-border/50 last:border-0 transition-colors"
                      >
                        {child.label}
                      </Link>
                    ))}
                  </div>
                )}
              </div>
            ))}
          </nav>

          {/* Mobile menu */}
          <div className="lg:hidden">
            <MobileMenu items={navItems} />
          </div>
        </div>
      </div>
    </header>
  )
}
