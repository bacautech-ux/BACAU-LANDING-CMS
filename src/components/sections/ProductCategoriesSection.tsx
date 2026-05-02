import React from 'react'
import Image from 'next/image'
import Link from 'next/link'
import { SectionTitle } from '@/components/ui/SectionTitle'

interface ProductCategory {
  slug: string
  nameVi: string
  nameEn: string
  image: string
}

interface ProductCategoriesSectionProps {
  locale: string
}

const categories: ProductCategory[] = [
  {
    slug: 'van-cong-nghiep',
    nameVi: 'Van Công Nghiệp',
    nameEn: 'Valve & Actuator',
    image: 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400',
  },
  {
    slug: 'dong-co-dien',
    nameVi: 'Động Cơ Điện',
    nameEn: 'Motor & Drive',
    image: 'https://images.unsplash.com/photo-1581092160607-ee22621dd758?w=400',
  },
  {
    slug: 'cam-bien',
    nameVi: 'Cảm Biến',
    nameEn: 'Sensor & Instrument',
    image: 'https://images.unsplash.com/photo-1518770660439-4636190af475?w=400',
  },
  {
    slug: 'tu-dien-dieu-khien',
    nameVi: 'Tủ Điện Điều Khiển',
    nameEn: 'Control Panel',
    image: 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=400',
  },
  {
    slug: 'thiet-bi-do-luong',
    nameVi: 'Thiết Bị Đo Lường',
    nameEn: 'Measurement Device',
    image: 'https://images.unsplash.com/photo-1504328345606-18bbc8c9d7d1?w=400',
  },
]

export function ProductCategoriesSection({ locale }: ProductCategoriesSectionProps) {
  return (
    <section className="py-16 bg-white">
      <div className="container-site">
        <SectionTitle title="THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP" className="mb-8" />
        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-5 gap-4">
          {categories.map((cat) => (
            <Link
              key={cat.slug}
              href={`/${locale}/san-pham/${cat.slug}`}
              className="group block text-center"
            >
              <div className="relative aspect-square overflow-hidden mb-3">
                <Image
                  src={cat.image}
                  alt={cat.nameVi}
                  fill
                  className="object-cover group-hover:scale-105 transition-transform duration-500"
                  sizes="(max-width: 768px) 50vw, 20vw"
                />
              </div>
              <p className="text-sm font-semibold text-primary-navy group-hover:text-primary-blue transition-colors">
                {cat.nameVi}
              </p>
              <p className="text-xs text-text-secondary mt-0.5">{cat.nameEn}</p>
            </Link>
          ))}
        </div>
      </div>
    </section>
  )
}
