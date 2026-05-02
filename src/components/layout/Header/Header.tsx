import React from 'react'
import Link from 'next/link'
import { getTranslations } from 'next-intl/server'
import { LanguageToggle } from './LanguageToggle'
import { MobileMenu } from './MobileMenu'

interface HeaderProps {
  locale: string
}

export async function Header({ locale }: HeaderProps) {
  const t = await getTranslations('nav')

  const navItems = [
    {
      label: t('company'),
      href: `/${locale}/gioi-thieu`,
      children: [
        { label: 'Giới thiệu', href: `/${locale}/gioi-thieu` },
        { label: 'Sứ mệnh & Tầm nhìn', href: `/${locale}/gioi-thieu/su-menh` },
        { label: 'Sơ đồ tổ chức', href: `/${locale}/gioi-thieu/to-chuc` },
        { label: 'Chứng chỉ & Chất lượng', href: `/${locale}/gioi-thieu/chung-chi` },
        { label: 'Liên hệ', href: `/${locale}/lien-he` },
      ],
    },
    { label: t('projects'), href: `/${locale}/du-an-tham-khao` },
    {
      label: t('solutions'),
      href: `/${locale}/giai-phap`,
      children: [
        { label: 'Giải pháp Điện & Tự động hóa', href: `/${locale}/giai-phap/dien-tu-dong-hoa` },
        { label: 'Giải pháp Số hóa', href: `/${locale}/giai-phap/so-hoa` },
        { label: 'Giải pháp Đo lường', href: `/${locale}/giai-phap/do-luong` },
        { label: 'Dịch vụ Công nghiệp', href: `/${locale}/giai-phap/dich-vu` },
      ],
    },
    { label: t('products'), href: `/${locale}/san-pham` },
    { label: t('news'), href: `/${locale}/tin-tuc` },
    { label: t('careers'), href: `/${locale}/tuyen-dung` },
  ]

  return (
    <header className="sticky top-0 z-50 shadow-sm">
      {/* Top info bar — navy bg */}
      <div className="bg-primary-navy">
        <div className="flex items-center justify-between py-[6px] px-[60px]">
          <div className="flex items-center gap-5">
            <a href="tel:02836369936" className="text-xs text-[#94A3B8] hover:text-white transition-colors">
              📞 (028) 3636 9936
            </a>
            <a href="mailto:info@bacau.com.vn" className="text-xs text-[#94A3B8] hover:text-white transition-colors">
              ✉ info@bacau.com.vn
            </a>
          </div>
          <LanguageToggle currentLocale={locale} />
        </div>
      </div>

      {/* Main nav — white bg */}
      <div className="bg-white border-b border-border">
        <div className="flex items-center justify-between h-14 px-[60px] relative">
          <Link href={`/${locale}`} className="flex items-center shrink-0">
            <span className="text-lg font-bold text-primary-blue tracking-tight">BắcÂu</span>
          </Link>

          {/* Desktop nav */}
          <nav className="hidden lg:flex items-center gap-0">
            {navItems.map((item) => (
              <div key={item.href} className="relative group">
                <Link
                  href={item.href}
                  className="flex items-center gap-1 px-3 py-2 text-[15px] font-bold text-text-primary hover:text-primary-blue transition-colors whitespace-nowrap"
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
            <MobileMenu items={navItems} locale={locale} />
          </div>
        </div>
      </div>
    </header>
  )
}
