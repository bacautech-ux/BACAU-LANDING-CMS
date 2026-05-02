import React from 'react'
import Image from 'next/image'
import { Button } from '@/components/ui/Button'

interface PartnersSectionProps {
  locale: string
}

const partnerPhotos = [
  { src: 'https://images.unsplash.com/photo-1521791136064-7986c2920216?w=400', alt: 'Đối tác 1' },
  { src: 'https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?w=400', alt: 'Đối tác 2' },
  { src: 'https://images.unsplash.com/photo-1556761175-5973dc0f32e7?w=400', alt: 'Đối tác 3' },
  { src: 'https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=400', alt: 'Đối tác 4' },
  { src: 'https://images.unsplash.com/photo-1540575467063-178a50c2df87?w=400', alt: 'Đối tác 5' },
]

export function PartnersSection({ locale }: PartnersSectionProps) {
  return (
    <section className="bg-primary-navy py-16">
      <div className="container-site">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
          {/* Left: text */}
          <div>
            <h2 className="text-2xl md:text-3xl font-bold text-white mb-2 flex items-center gap-3">
              <span className="inline-block w-1 h-8 bg-primary-red shrink-0" />
              ĐỐI TÁC
            </h2>
            <p className="text-white/70 leading-relaxed mt-4 mb-6">
              Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa
              để mang đến những giải pháp tốt nhất cho khách hàng.
            </p>
            <Button href={`/${locale}/doi-tac`} variant="outline" size="md" className="border-white text-white hover:bg-white hover:text-primary-navy">
              Xem tất cả đối tác
            </Button>
          </div>

          {/* Right: photo mosaic */}
          <div className="grid grid-cols-3 gap-2">
            <div className="col-span-2 row-span-2 relative aspect-square overflow-hidden">
              <Image src={partnerPhotos[0].src} alt={partnerPhotos[0].alt} fill className="object-cover" sizes="40vw" />
            </div>
            <div className="relative aspect-square overflow-hidden">
              <Image src={partnerPhotos[1].src} alt={partnerPhotos[1].alt} fill className="object-cover" sizes="20vw" />
            </div>
            <div className="relative aspect-square overflow-hidden">
              <Image src={partnerPhotos[2].src} alt={partnerPhotos[2].alt} fill className="object-cover" sizes="20vw" />
            </div>
            <div className="relative aspect-square overflow-hidden">
              <Image src={partnerPhotos[3].src} alt={partnerPhotos[3].alt} fill className="object-cover" sizes="20vw" />
            </div>
            <div className="relative aspect-square overflow-hidden">
              <Image src={partnerPhotos[4].src} alt={partnerPhotos[4].alt} fill className="object-cover" sizes="20vw" />
            </div>
          </div>
        </div>
      </div>
    </section>
  )
}
