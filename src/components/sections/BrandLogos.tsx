import React from 'react'

const brands = ['ABB', 'Intel', 'Mitsubishi', 'PSCL', 'KEIHIN', 'Siemens']

export function BrandLogos() {
  return (
    <section
      className="bg-bg-light flex flex-col items-center gap-6"
      style={{ padding: '40px 120px' }}
    >
      {/* Title */}
      <p
        className="text-[12px] font-semibold tracking-[4px] uppercase"
        style={{ color: '#64748B' }}
      >
        ĐỐI TÁC CHIẾN LƯỢC
      </p>

      {/* Brand names */}
      <div className="flex items-center justify-around w-full px-10">
        {brands.map((brand) => (
          <span
            key={brand}
            className="text-[22px] font-extrabold tracking-[2px]"
            style={{ color: '#0F172A', opacity: 0.35 }}
          >
            {brand}
          </span>
        ))}
      </div>
    </section>
  )
}
