'use client'

import React, { useState } from 'react'
import Image from 'next/image'

interface ProductDetailHeroProps {
  name: string
  shortDescription: string
  brand: string
  categoryName: string
  images: string[]
  locale: string
}

export function ProductDetailHero({
  name,
  shortDescription,
  brand,
  categoryName,
  images,
  locale,
}: ProductDetailHeroProps) {
  const [activeIndex, setActiveIndex] = useState(0)
  const mainImage = images[activeIndex] || images[0] || ''

  return (
    <div className="bg-white px-4 py-6 md:px-6 md:py-8 xl:px-[60px] xl:py-10">
      <div className="grid grid-cols-1 gap-6 md:grid-cols-2 md:gap-8 xl:gap-10">
        {/* Left: Image gallery */}
        <div className="flex flex-col gap-3">
          {/* Main image */}
          <div className="relative aspect-[4/3] w-full overflow-hidden bg-[#F1F5F9]">
            {mainImage ? (
              <Image
                src={mainImage}
                alt={name}
                fill
                className="object-contain"
                sizes="(max-width: 767px) 100vw, 50vw"
                priority
              />
            ) : (
              <div className="flex h-full items-center justify-center text-sm text-gray-400">
                No image
              </div>
            )}
          </div>

          {/* Thumbnails */}
          {images.length > 1 && (
            <div className="flex gap-2 overflow-x-auto">
              {images.map((img, idx) => (
                <button
                  key={idx}
                  onClick={() => setActiveIndex(idx)}
                  className={`relative h-16 w-16 shrink-0 overflow-hidden border-2 transition-colors ${
                    idx === activeIndex
                      ? 'border-[#2b358c]'
                      : 'border-transparent hover:border-gray-300'
                  }`}
                >
                  <Image
                    src={img}
                    alt={`${name} ${idx + 1}`}
                    fill
                    className="object-cover"
                    sizes="64px"
                  />
                </button>
              ))}
            </div>
          )}
        </div>

        {/* Right: Product info */}
        <div className="flex flex-col gap-4">
          <h1 className="text-lg font-bold leading-snug text-[#18181B] md:text-xl xl:text-[22px]">
            {name}
          </h1>

          {(brand || categoryName) && (
            <div className="flex flex-wrap gap-2">
              {brand && (
                <span className="rounded bg-[#F1F5F9] px-2 py-1 text-xs font-semibold text-[#2b358c]">
                  {brand}
                </span>
              )}
              {categoryName && (
                <span className="rounded bg-[#FEF2F2] px-2 py-1 text-xs font-semibold text-[#b92c32]">
                  {categoryName}
                </span>
              )}
            </div>
          )}

          {shortDescription && (
            <p className="text-sm leading-relaxed text-[#64748B]">
              {shortDescription}
            </p>
          )}

          <a
            href={`/${locale}/lien-he`}
            className="mt-2 inline-flex w-fit items-center gap-2 rounded bg-[#2b358c] px-5 py-2.5 text-sm font-semibold text-white transition-colors hover:bg-[#1e2563]"
          >
            📞 HỖ TRỢ KỸ THUẬT
          </a>
        </div>
      </div>
    </div>
  )
}
