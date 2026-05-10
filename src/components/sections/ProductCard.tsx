import React from 'react'
import Image from 'next/image'
import Link from 'next/link'

export interface ProductCardData {
  slug: string
  name: string
  category: string
  categoryLabel: string
  thumbnail: string
  thumbnailAlt: string
  brand?: string
}

interface ProductCardProps {
  product: ProductCardData
  locale: string
}

export function ProductCard({ product, locale }: ProductCardProps) {
  const href = `/${locale}/san-pham/${product.slug}`

  return (
    <Link href={href} className="group card-hover block bg-white shadow-sm overflow-hidden">
      <div className="relative aspect-square overflow-hidden bg-gray-50">
        <Image
          src={product.thumbnail}
          alt={product.thumbnailAlt}
          fill
          className="object-contain p-4 group-hover:scale-105 transition-transform duration-500"
          sizes="(max-width: 768px) 50vw, 25vw"
        />
      </div>
      <div className="p-4 border-t border-border">
        <p className="text-xs text-text-secondary mb-1">{product.categoryLabel}</p>
        <h3 className="text-sm font-semibold text-primary-navy line-clamp-2 group-hover:text-primary-blue transition-colors">
          {product.name}
        </h3>
        {product.brand && (
          <p className="mt-1 text-xs text-text-muted">{product.brand}</p>
        )}
      </div>
    </Link>
  )
}
