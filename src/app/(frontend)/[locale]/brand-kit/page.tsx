import React from 'react'
import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Brand Kit | BắcÂu ESTEC',
  description: 'BắcÂu ESTEC brand guidelines, colors, typography and logo usage.',
}

// ─── Color Swatch Card ──────────────────────────────────────────────
function ColorCard({
  hex,
  name,
  rgb,
  usage,
}: {
  hex: string
  name: string
  rgb: string
  usage: string
}) {
  return (
    <div className="flex flex-col flex-1 overflow-hidden rounded-xl">
      {/* Color swatch */}
      <div className="h-[180px] w-full rounded-t-xl" style={{ background: hex }} />
      {/* Info */}
      <div
        className="flex flex-col gap-2 p-5 rounded-b-xl border border-t-0"
        style={{ background: '#F8FAFC', borderColor: '#E4E4E7' }}
      >
        <p className="font-semibold text-[18px]" style={{ color: '#18181B' }}>{name}</p>
        <p className="font-mono font-medium text-[14px]" style={{ color: '#71717A' }}>{hex}</p>
        <p className="text-[13px]" style={{ color: '#71717A' }}>{rgb}</p>
        <p className="text-[13px]" style={{ color: '#71717A' }}>{usage}</p>
      </div>
    </div>
  )
}

// ─── Color Variation Chip ───────────────────────────────────────────
function ColorChip({ hex, label }: { hex: string; label: string }) {
  return (
    <div className="flex flex-col items-center gap-2 flex-1">
      <div className="w-full rounded-lg" style={{ height: 80, background: hex }} />
      <p className="text-[12px] font-medium text-center" style={{ color: '#18181B' }}>{label}</p>
      <p className="text-[11px]" style={{ color: '#71717A' }}>{hex}</p>
    </div>
  )
}

// ─── Section Header ──────────────────────────────────────────────────
function SectionHeader({ title, subtitle }: { title: string; subtitle?: string }) {
  return (
    <div className="flex flex-col gap-2">
      <h2 className="text-[28px] font-bold" style={{ color: '#18181B' }}>{title}</h2>
      {subtitle && <p className="text-[14px]" style={{ color: '#71717A' }}>{subtitle}</p>}
    </div>
  )
}

// ─── Panel (white/light card) ────────────────────────────────────────
function Panel({ children, className = '' }: { children: React.ReactNode; className?: string }) {
  return (
    <div
      className={`flex flex-col gap-4 p-6 rounded-xl border ${className}`}
      style={{ background: '#F8FAFC', borderColor: '#E4E4E7' }}
    >
      {children}
    </div>
  )
}

// ─── Button demos ────────────────────────────────────────────────────
function PrimaryBtn({ size = 'md', label = 'Xem thêm' }: { size?: 'lg' | 'md' | 'sm'; label?: string }) {
  const styles: Record<string, { fontSize: number; padding: string }> = {
    lg: { fontSize: 16, padding: '16px 36px' },
    md: { fontSize: 14, padding: '12px 28px' },
    sm: { fontSize: 12, padding: '8px 16px' },
  }
  const s = styles[size]
  return (
    <button
      className="text-white font-semibold cursor-default"
      style={{
        fontSize: s.fontSize,
        padding: s.padding,
        background: '#2b358c',
        borderBottom: '3px solid #b92c32',
      }}
    >
      {label}
    </button>
  )
}

// ─── Sidebar Preview ──────────────────────────────────────────────────
function SidebarPreview() {
  const groups = [
    {
      title: 'Về BắcÂu',
      items: ['Giới thiệu', 'Sứ mệnh - Tầm nhìn - Giá trị'],
    },
    {
      title: 'Lĩnh vực kinh doanh',
      items: ['Giải pháp Điện - Tự động hóa', 'Giải pháp Số hóa', 'Giải pháp Đo lường Công nghệ', 'Sản phẩm Công nghiệp', 'Dịch vụ Công nghiệp'],
    },
    {
      title: 'Năng lực',
      items: ['Trang thiết bị nhà xưởng', 'Văn phòng đại diện'],
    },
  ]

  return (
    <div
      className="flex flex-col overflow-hidden rounded-lg border"
      style={{ width: 340, background: '#fff', borderColor: '#E4E4E7' }}
    >
      {groups.map((group, gi) => (
        <React.Fragment key={gi}>
          <div className="flex flex-col items-end gap-1.5 py-4 px-0">
            <p className="text-[14px] font-bold w-full text-right pr-0" style={{ color: '#18181B' }}>
              {group.title}
            </p>
            {group.items.map((item) => (
              <p key={item} className="text-[13px] w-full text-right" style={{ color: '#71717A' }}>
                {item}
              </p>
            ))}
          </div>
          {gi < groups.length - 1 && <div className="h-px w-full" style={{ background: '#E4E4E7' }} />}
        </React.Fragment>
      ))}
    </div>
  )
}

// ─── Header Preview ───────────────────────────────────────────────────
function HeaderPreview() {
  return (
    <div className="overflow-hidden rounded-lg border" style={{ borderColor: '#E4E4E7' }}>
      {/* Top bar */}
      <div
        className="flex items-center justify-between px-10 py-1.5"
        style={{ background: '#0F172A' }}
      >
        <div className="flex items-center gap-5">
          <span className="text-[12px]" style={{ color: '#94A3B8' }}>📞 (028) 3636 9936</span>
          <span className="text-[12px]" style={{ color: '#94A3B8' }}>✉ info@bacau.com.vn</span>
        </div>
        <span className="text-[12px]" style={{ color: '#94A3B8' }}>EN | VI</span>
      </div>
      {/* Main nav */}
      <div
        className="flex items-center justify-between px-10 py-3 border-b"
        style={{ background: '#fff', borderColor: '#E4E4E7' }}
      >
        <span className="text-[18px] font-bold" style={{ color: '#2b358c' }}>BắcÂu</span>
        <div className="flex items-center gap-6">
          {['Công ty BắcÂu', 'Dự án', 'Giải pháp', 'Sản phẩm', 'Blog'].map((item) => (
            <span key={item} className="text-[10px] font-semibold" style={{ color: '#18181B' }}>
              {item}
            </span>
          ))}
        </div>
      </div>
      {/* Dropdown indicator */}
      <div className="px-10 py-0 border-b" style={{ borderColor: '#E4E4E7' }}>
        <div className="inline-flex items-center gap-1 py-2">
          <span className="text-[10px] font-semibold" style={{ color: '#2b358c' }}>Công ty BắcÂu</span>
          <div className="h-0.5 w-full" style={{ background: '#2b358c' }} />
        </div>
      </div>
      {/* Dropdown panel */}
      <div
        className="grid grid-cols-4 gap-12 px-10 py-6 border-b"
        style={{ background: '#fff', borderColor: '#E4E4E7', boxShadow: '0 4px 12px #00000015' }}
      >
        {[
          { label: 'Giới thiệu', items: ['Về BắcÂu', 'Sứ mệnh & Tầm nhìn', 'Sơ đồ tổ chức'] },
          { label: 'Lĩnh vực', items: ['Tự động hóa', 'Điện công nghiệp', 'Số hóa'] },
          { label: 'Năng lực', items: ['Nhà xưởng', 'Văn phòng'] },
          { label: 'Chứng chỉ', items: ['ISO 9001', 'Đối tác Siemens'] },
        ].map((col) => (
          <div key={col.label} className="flex flex-col gap-2">
            <p className="text-[12px] font-bold" style={{ color: '#2b358c' }}>{col.label}</p>
            {col.items.map((i) => (
              <p key={i} className="text-[11px]" style={{ color: '#71717A' }}>{i}</p>
            ))}
          </div>
        ))}
      </div>
    </div>
  )
}

// ─── Page ─────────────────────────────────────────────────────────────
export default function BrandKitPage() {
  return (
    <div style={{ background: '#fff', minHeight: '100vh' }}>
      {/* Header — #2b358c bg, height 200 */}
      <div
        className="flex flex-col justify-center"
        style={{ background: '#2b358c', height: 200, padding: '60px 80px' }}
      >
        <h1 className="text-[42px] font-bold text-white">BắcÂu Brand Kit</h1>
        <p className="text-[18px] mt-3" style={{ color: '#FFFFFFCC' }}>Brand Identity Guidelines</p>
      </div>

      {/* Body — padding [60, 80], gap 60 */}
      <div className="flex flex-col gap-[60px]" style={{ padding: '60px 80px' }}>

        {/* 1. Brand Colors */}
        <div className="flex flex-col gap-6">
          <SectionHeader
            title="Brand Colors"
            subtitle="Hai màu chủ đạo của thương hiệu BắcÂu"
          />
          <div className="flex gap-10">
            <ColorCard
              hex="#2b358c"
              name="BắcÂu Blue"
              rgb="RGB: 43, 53, 140"
              usage="Primary brand color — Headers, Navigation, CTAs"
            />
            <ColorCard
              hex="#b92c32"
              name="BắcÂu Red"
              rgb="RGB: 185, 44, 50"
              usage="Accent brand color — Highlights, Alerts, Key elements"
            />
          </div>
        </div>

        {/* 2. Color Variations */}
        <div className="flex flex-col gap-6">
          <SectionHeader title="Color Variations" />
          <div className="flex gap-5">
            <ColorChip hex="#2b358c" label="Primary Blue" />
            <ColorChip hex="#1e2566" label="Dark Blue" />
            <ColorChip hex="#b92c32" label="Primary Red" />
            <ColorChip hex="#8f2027" label="Dark Red" />
            <ColorChip hex="#0F172A" label="Navy" />
          </div>
        </div>

        {/* 3. Typography */}
        <div className="flex flex-col gap-6">
          <SectionHeader title="Typography" />
          <div className="flex gap-10">
            {/* Left — type specimens */}
            <Panel className="flex-1">
              <p className="font-bold" style={{ fontSize: 36, color: '#2b358c', fontFamily: 'Inter' }}>Heading 1</p>
              <p className="font-semibold" style={{ fontSize: 28, color: '#2b358c', fontFamily: 'Inter' }}>Heading 2</p>
              <p className="font-semibold" style={{ fontSize: 22, color: '#18181B' }}>Heading 3</p>
              <p className="font-normal" style={{ fontSize: 16, color: '#18181B' }}>Body Text — Inter Regular 16px</p>
              <p className="font-normal" style={{ fontSize: 14, color: '#71717A' }}>Caption — Inter Regular 14px</p>
            </Panel>

            {/* Right — specs */}
            <Panel className="flex-1">
              <p className="font-semibold text-[18px]" style={{ color: '#18181B' }}>Font Family: Inter</p>
              <p className="text-[14px]" style={{ color: '#71717A' }}>
                Weights: 400 (Regular), 500 (Medium), 600 (Semibold), 700 (Bold)
              </p>
              <p className="text-[14px]" style={{ color: '#71717A' }}>Heading color: #2b358c (Brand Blue)</p>
              <p className="text-[14px]" style={{ color: '#71717A' }}>Body color: #18181B (Dark)</p>
              <p className="text-[14px]" style={{ color: '#71717A' }}>Secondary color: #71717A (Gray)</p>
            </Panel>
          </div>
        </div>

        {/* 4. Components */}
        <div className="flex flex-col gap-10">
          <SectionHeader
            title="Components"
            subtitle="Các component mẫu được sử dụng trong website BắcÂu"
          />

          {/* Buttons */}
          <div className="flex flex-col gap-5">
            <p className="text-[20px] font-semibold" style={{ color: '#18181B' }}>Buttons</p>

            <p className="text-[13px]" style={{ color: '#71717A' }}>Primary Buttons</p>
            <div className="flex items-center gap-4">
              <PrimaryBtn size="lg" />
              <PrimaryBtn size="md" />
              <PrimaryBtn size="sm" />
            </div>

            <p className="text-[13px]" style={{ color: '#71717A' }}>Outline Buttons</p>
            <div className="flex items-center gap-4">
              <button
                className="font-semibold cursor-default"
                style={{ fontSize: 14, padding: '12px 28px', border: '2px solid #2b358c', color: '#2b358c' }}
              >
                Xem thêm
              </button>
              <button
                className="font-semibold cursor-default"
                style={{ fontSize: 14, padding: '12px 28px', border: '2px solid #b92c32', color: '#b92c32' }}
              >
                Xem thêm
              </button>
            </div>

            <p className="text-[13px]" style={{ color: '#71717A' }}>Secondary Buttons</p>
            <div className="flex items-center gap-4">
              <button
                className="font-medium cursor-default"
                style={{ fontSize: 14, padding: '12px 28px', background: '#F2F3F0', border: '1px solid #CBCCC9', color: '#111111' }}
              >
                Xem thêm
              </button>
              <button
                className="font-medium cursor-default"
                style={{ fontSize: 14, padding: '12px 28px', background: '#E4E4E7', color: '#A1A1AA' }}
              >
                Xem thêm
              </button>
            </div>
          </div>

          {/* Side Menu */}
          <div className="flex flex-col gap-5">
            <p className="text-[20px] font-semibold" style={{ color: '#18181B' }}>Side Menu</p>
            <SidebarPreview />
          </div>

          {/* Header Navigation */}
          <div className="flex flex-col gap-5">
            <p className="text-[20px] font-semibold" style={{ color: '#18181B' }}>
              Header Navigation (with Dropdown)
            </p>
            <p className="text-[13px]" style={{ color: '#71717A' }}>
              Khi hover vào menu item trên header, sẽ hiển thị danh sách menu con
            </p>
            <HeaderPreview />
          </div>
        </div>

      </div>
    </div>
  )
}
