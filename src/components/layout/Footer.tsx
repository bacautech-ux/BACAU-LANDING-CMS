import React from 'react'
import Link from 'next/link'

interface FooterProps {
  locale: string
}

export function Footer({ locale }: FooterProps) {
  return (
    <footer className="bg-primary-navy text-white">
      {/* Red 3px accent top */}
      <div className="h-[3px] w-full bg-primary-red" />

      {/* Main content — padding [48, 80] from design */}
      <div style={{ padding: '48px 80px' }}>
        {/* 4 columns */}
        <div className="grid grid-cols-4 gap-12">
          {/* Logo + description */}
          <div className="flex flex-col gap-4" style={{ maxWidth: 300 }}>
            <span className="text-[18px] font-extrabold text-white">BắcÂu</span>
            <p className="text-[13px] leading-[1.6]" style={{ color: '#94A3B8', maxWidth: 300 }}>
              Công ty TNHH Kỹ thuật & Dịch vụ Bắc Âu chuyên cung cấp giải pháp tự động hóa, thiết bị công nghiệp và dịch vụ kỹ thuật.
            </p>
          </div>

          {/* Liên kết */}
          <div className="flex flex-col gap-3">
            <p className="text-[14px] font-semibold text-white">LIÊN KẾT</p>
            {[
              { label: 'Trang Chủ', href: `/${locale}` },
              { label: 'Giới Thiệu', href: `/${locale}/gioi-thieu` },
              { label: 'Dịch Vụ', href: `/${locale}/dich-vu` },
              { label: 'Dự Án', href: `/${locale}/du-an-tham-khao` },
              { label: 'Liên Hệ', href: `/${locale}/lien-he` },
            ].map((link) => (
              <Link
                key={link.href}
                href={link.href}
                className="text-[13px] transition-colors hover:text-white"
                style={{ color: '#94A3B8' }}
              >
                {link.label}
              </Link>
            ))}
          </div>

          {/* Liên hệ */}
          <div className="flex flex-col gap-3">
            <p className="text-[14px] font-semibold text-white">LIÊN HỆ</p>
            <p className="text-[13px] leading-[1.6]" style={{ color: '#94A3B8' }}>
              Lô E2a-7, Đường D1, Khu Công Nghệ Cao,<br />TP. Thủ Đức, TP. Hồ Chí Minh
            </p>
            <a href="tel:02836369936" className="text-[13px] hover:text-white transition-colors" style={{ color: '#94A3B8' }}>
              Tel: (028) 3636 9936
            </a>
            <a href="mailto:info@bacau.com.vn" className="text-[13px] hover:text-white transition-colors" style={{ color: '#94A3B8' }}>
              Email: info@bacau.com.vn
            </a>
          </div>

          {/* Dịch vụ */}
          <div className="flex flex-col gap-3">
            <p className="text-[14px] font-semibold text-white">DỊCH VỤ</p>
            {['Tự Động Hóa', 'Điện Công Nghiệp', 'Bảo Trì & Sửa Chữa', 'Thiết Bị Đo Lường'].map((s) => (
              <span key={s} className="text-[13px]" style={{ color: '#94A3B8' }}>{s}</span>
            ))}
          </div>
        </div>

        {/* Divider */}
        <div className="my-8 h-px" style={{ background: '#1E293B' }} />

        {/* Footer bottom */}
        <div className="flex items-center justify-between">
          <p className="text-[12px]" style={{ color: '#64748B' }}>
            © 2024 BắcÂu. All rights reserved.
          </p>
          <p className="text-[12px]" style={{ color: '#64748B' }}>
            Designed by BắcÂu Technology
          </p>
        </div>
      </div>
    </footer>
  )
}
