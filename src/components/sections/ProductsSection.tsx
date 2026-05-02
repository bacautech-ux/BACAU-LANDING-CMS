import React from 'react'
import Image from 'next/image'
import Link from 'next/link'

const products = [
  {
    slug: 'van-cong-nghiep',
    name: 'Van Công Nghiệp',
    category: 'Valve & Actuator',
    image: 'https://images.unsplash.com/photo-1703668984128-b506579acdd2?w=600',
  },
  {
    slug: 'dong-co-dien',
    name: 'Động Cơ Điện',
    category: 'Motor & Drive',
    image: 'https://images.unsplash.com/photo-1637708546408-cc724003a665?w=600',
  },
  {
    slug: 'cam-bien',
    name: 'Cảm Biến',
    category: 'Sensor & Instrument',
    image: 'https://images.unsplash.com/photo-1596839808531-218de5fbc3b4?w=600',
  },
  {
    slug: 'tu-dien-dieu-khien',
    name: 'Tủ Điện Điều Khiển',
    category: 'Control Panel',
    image: 'https://images.unsplash.com/photo-1669876505507-b79a89b17ae9?w=600',
  },
  {
    slug: 'thiet-bi-do-luong',
    name: 'Thiết Bị Đo Lường',
    category: 'Measurement Device',
    image: 'https://images.unsplash.com/photo-1667240013482-6bc41f938d5f?w=600',
  },
]

interface ProductsSectionProps {
  locale: string
}

export function ProductsSection({ locale }: ProductsSectionProps) {
  return (
    <section className="bg-white" style={{ padding: '80px 120px' }}>
      {/* Title */}
      <div className="flex flex-col gap-2 mb-12">
        <div className="w-12 h-1 rounded-sm bg-primary-red" />
        <h2 className="text-[28px] font-extrabold text-primary-navy tracking-wide">
          THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP
        </h2>
        <p className="text-[15px] text-text-secondary leading-relaxed">
          Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới
        </p>
      </div>

      {/* 5 product cards */}
      <div className="grid grid-cols-5 gap-6">
        {products.map((p) => (
          <Link
            key={p.slug}
            href={`/${locale}/san-pham/${p.slug}`}
            className="flex flex-col rounded-xl overflow-hidden border border-border bg-white hover:shadow-md transition-shadow"
            style={{ boxShadow: '0 4px 16px #0000000A' }}
          >
            {/* Image */}
            <div className="relative h-[200px] overflow-hidden rounded-t-xl">
              <Image
                src={p.image}
                alt={p.name}
                fill
                className="object-cover hover:scale-105 transition-transform duration-500"
                sizes="20vw"
              />
            </div>
            {/* Content */}
            <div className="flex flex-col gap-1 p-4 pt-4">
              <p className="text-[14px] font-bold text-primary-navy">{p.name}</p>
              <p className="text-[11px] font-semibold text-primary-red tracking-[0.5px]">
                {p.category}
              </p>
            </div>
          </Link>
        ))}
      </div>
    </section>
  )
}
