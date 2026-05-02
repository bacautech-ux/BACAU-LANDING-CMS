import React from 'react'
import Image from 'next/image'
import { Button } from '@/components/ui/Button'
import { SectionTitle } from '@/components/ui/SectionTitle'

interface ServiceArea {
  title: string
  description: string
  image: string
  imageAlt: string
  href: string
}

interface ServiceAreasSectionProps {
  locale: string
}

export function ServiceAreasSection({ locale }: ServiceAreasSectionProps) {
  const areas: ServiceArea[] = [
    {
      title: 'LĨNH VỰC THI CÔNG',
      description: 'Thi công, lắp đặt hệ thống điện, tự động hóa, HVAC và các công trình công nghiệp.',
      image: 'https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=800',
      imageAlt: 'Lĩnh vực thi công',
      href: `/${locale}/dich-vu/thi-cong`,
    },
    {
      title: 'DỊCH VỤ CÔNG NGHIỆP',
      description: 'Cung cấp giải pháp bảo trì, sửa chữa và nâng cấp hệ thống tự động hóa công nghiệp.',
      image: 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=800',
      imageAlt: 'Dịch vụ công nghiệp',
      href: `/${locale}/dich-vu/cong-nghiep`,
    },
    {
      title: 'DỊCH VỤ DÂN DỤNG',
      description: 'Thiết kế, lắp đặt hệ thống điện dân dụng, điều hòa không khí và an ninh.',
      image: 'https://images.unsplash.com/photo-1486325212027-8081e485255e?w=800',
      imageAlt: 'Dịch vụ dân dụng',
      href: `/${locale}/dich-vu/dan-dung`,
    },
  ]

  return (
    <section className="py-16 bg-bg-light">
      <div className="container-site">
        <SectionTitle title="LĨNH VỰC HOẠT ĐỘNG" className="mb-8" />
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {areas.map((area) => (
            <div key={area.title} className="bg-white flex flex-col">
              <div className="relative aspect-[4/3] overflow-hidden">
                <Image
                  src={area.image}
                  alt={area.imageAlt}
                  fill
                  className="object-cover"
                  sizes="(max-width: 768px) 100vw, 33vw"
                />
              </div>
              <div className="p-5 flex flex-col flex-1">
                <h3 className="text-sm font-bold text-primary-navy mb-2">{area.title}</h3>
                <p className="text-xs text-text-secondary leading-relaxed flex-1">{area.description}</p>
                <div className="mt-4">
                  <Button href={area.href} variant="secondary" size="sm">
                    Xem thêm
                  </Button>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
