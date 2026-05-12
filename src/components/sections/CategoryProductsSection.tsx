import React from 'react'
import Image from 'next/image'
import Link from 'next/link'
import config from '@payload-config'
import { getPayload } from 'payload'

interface MediaValue {
  url?: string | null
  filename?: string | null
}

interface CategoryDoc {
  id: number
  name?: { vi?: string | null; en?: string | null } | null
}

interface ProductDoc {
  slug?: string | null
  name?: { vi?: string | null; en?: string | null } | null
  thumbnail?: MediaValue | null
}

interface ProductCard {
  slug: string
  name: string
  image: string
}

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined
  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`
  return undefined
}

interface CategoryProductsSectionProps {
  locale: string
  category?: unknown
}

export async function CategoryProductsSection({
  locale,
  category,
}: CategoryProductsSectionProps) {
  if (!category || typeof category !== 'object') return null
  const cat = category as CategoryDoc
  const categoryId = cat.id
  const categoryName =
    locale === 'en'
      ? (cat.name?.en || cat.name?.vi || '')
      : (cat.name?.vi || '')

  const payload = await getPayload({ config })
  const result = await payload.find({
    collection: 'products',
    where: {
      and: [
        { _status: { equals: 'published' } },
        { productCategories: { contains: categoryId } },
      ],
    },
    sort: '-updatedAt',
    depth: 2,
    limit: 50,
  })

  const products: ProductCard[] = result.docs
    .map((doc) => {
      const d = doc as unknown as ProductDoc
      if (!d.slug) return null
      const name =
        locale === 'en'
          ? (d.name?.en || d.name?.vi || '')
          : (d.name?.vi || '')
      if (!name) return null
      return {
        slug: d.slug,
        name,
        image: getMediaURL(d.thumbnail) || '',
      }
    })
    .filter((p): p is ProductCard => p !== null)

  return (
    <section className="bg-[#F8FAFC] px-4 py-6 md:px-8 md:py-8 xl:px-20 xl:py-12">
      <div className="border border-[#E4E4E7] bg-white p-5 md:px-6 md:py-7 xl:p-10">
        <h2 className="mb-5 text-lg font-bold text-[#18181B] md:mb-6 xl:mb-8 xl:text-[22px]">
          {categoryName}
        </h2>

        {products.length > 0 ? (
          <div className="grid grid-cols-1 gap-4 sm:grid-cols-2 md:grid-cols-3 md:gap-6 xl:grid-cols-4 xl:gap-8">
            {products.map((product) => (
              <Link
                key={product.slug}
                href={`/${locale}/san-pham/${product.slug}`}
                className="group flex flex-col overflow-hidden border border-[#E4E4E7] bg-white"
                style={{ boxShadow: '0 4px 20px rgba(0, 0, 0, 0.08)' }}
              >
                <div className="relative aspect-[4/3] w-full overflow-hidden">
                  {product.image ? (
                    <Image
                      src={product.image}
                      alt={product.name}
                      fill
                      className="object-cover transition-transform duration-500 group-hover:scale-105"
                      sizes="(max-width: 639px) 100vw, (max-width: 767px) 50vw, (max-width: 1279px) 33vw, 25vw"
                    />
                  ) : (
                    <div className="h-full w-full bg-[#F1F5F9]" />
                  )}
                  <div className="absolute inset-0 flex items-center justify-center bg-[#0F172A]/60 opacity-0 transition-opacity duration-300 group-hover:opacity-100">
                    <span className="border-2 border-white px-6 py-2 text-sm font-bold tracking-wider text-white">
                      {locale === 'en' ? 'VIEW DETAILS' : 'XEM CHI TIẾT'}
                    </span>
                  </div>
                </div>
                <div className="px-3 pt-3 pb-3">
                  <p className="text-[13px] font-bold leading-[1.4] text-[#18181B]">
                    {product.name}
                  </p>
                </div>
              </Link>
            ))}
          </div>
        ) : (
          <p className="text-sm text-[#71717A]">Chưa có sản phẩm trong danh mục này.</p>
        )}
      </div>
    </section>
  )
}
