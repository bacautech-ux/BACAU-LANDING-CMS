import React from 'react'
import Image from 'next/image'

export function PartnersMosaic() {
  return (
    <section className="bg-primary-navy" style={{ padding: '80px 120px' }}>
      <div className="flex flex-col gap-12">
        {/* Title */}
        <div className="flex flex-col gap-2">
          <div className="w-12 h-1 rounded-sm bg-primary-red" />
          <h2 className="text-[28px] font-extrabold text-white tracking-wide">ĐỐI TÁC</h2>
        </div>

        {/* Subtitle */}
        <p className="text-[15px] leading-[1.6]" style={{ color: '#B8C0D0' }}>
          Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa
        </p>

        {/* Photo mosaic: 3 columns */}
        <div className="grid grid-cols-[1fr_1fr_1fr] gap-6" style={{ height: 280 }}>
          {/* Left — tall image */}
          <div className="relative rounded-lg overflow-hidden h-full" style={{ boxShadow: '0 2px 12px #00000033' }}>
            <Image
              src="https://images.unsplash.com/photo-1758599543129-5269a8f29e68?w=600"
              alt="Đối tác 1"
              fill
              className="object-cover"
              sizes="33vw"
            />
          </div>

          {/* Middle — 2 images stacked */}
          <div className="flex flex-col gap-6 h-full">
            <div className="relative flex-1 rounded-lg overflow-hidden" style={{ boxShadow: '0 2px 12px #00000033' }}>
              <Image
                src="https://images.unsplash.com/photo-1762028892701-692dc360db08?w=600"
                alt="Đối tác 2"
                fill
                className="object-cover"
                sizes="20vw"
              />
            </div>
            <div className="relative flex-1 rounded-lg overflow-hidden" style={{ boxShadow: '0 2px 12px #00000033' }}>
              <Image
                src="https://images.unsplash.com/photo-1632910121591-29e2484c0259?w=600"
                alt="Đối tác 3"
                fill
                className="object-cover"
                sizes="20vw"
              />
            </div>
          </div>

          {/* Right — tall image */}
          <div className="relative rounded-lg overflow-hidden h-full" style={{ boxShadow: '0 2px 12px #00000033' }}>
            <Image
              src="https://images.unsplash.com/photo-1752412145493-e11fec9ac951?w=600"
              alt="Đối tác 4"
              fill
              className="object-cover"
              sizes="33vw"
            />
          </div>
        </div>
      </div>
    </section>
  )
}
