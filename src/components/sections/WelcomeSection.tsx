import React from 'react'
import Image from 'next/image'
import { Button } from '@/components/ui/Button'

interface WelcomeSectionProps {
  locale: string
}

export function WelcomeSection({ locale }: WelcomeSectionProps) {
  return (
    <section className="py-16 bg-white">
      <div className="container-site">
        <div className="grid grid-cols-1 lg:grid-cols-5 gap-10 items-center">
          {/* Left: text */}
          <div className="lg:col-span-3">
            <h2 className="text-2xl md:text-3xl font-bold text-primary-navy mb-5 flex items-center gap-3">
              <span className="inline-block w-1 h-8 bg-primary-red shrink-0" />
              CHÀO MỪNG
            </h2>
            <p className="text-text-secondary leading-relaxed mb-6">
              Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Với đội ngũ kỹ sư
              giàu kinh nghiệm, chúng tôi cung cấp các giải pháp toàn diện trong lĩnh vực tự động hóa,
              quản lý năng lượng và hệ thống điện công nghiệp cho các doanh nghiệp trên toàn quốc.
            </p>
            <Button href={`/${locale}/gioi-thieu`} variant="secondary" size="md">
              Xem thêm
            </Button>
          </div>

          {/* Right: images */}
          <div className="lg:col-span-2 grid grid-cols-2 gap-3">
            <div className="relative aspect-[3/4] overflow-hidden">
              <Image
                src="https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=600"
                alt="Tự động hóa công nghiệp"
                fill
                className="object-cover"
                sizes="(max-width: 1024px) 50vw, 20vw"
              />
            </div>
            <div className="relative aspect-[3/4] overflow-hidden mt-6">
              <Image
                src="https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=600"
                alt="Hệ thống điện công nghiệp"
                fill
                className="object-cover"
                sizes="(max-width: 1024px) 50vw, 20vw"
              />
            </div>
          </div>
        </div>
      </div>
    </section>
  )
}
