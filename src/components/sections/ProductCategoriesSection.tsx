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
  slug?: string | null
  name?: { vi?: string | null; en?: string | null } | null
  image?: MediaValue | number | null
  imageURL?: string | null
  visible?: boolean | null
  order?: number | null
}

interface CategoryCard {
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

function normalizeCategory(doc: CategoryDoc, locale: string): CategoryCard | null {
  const slug = doc.slug
  if (!slug) return null

  const name = locale === 'en' ? (doc.name?.en || doc.name?.vi || '') : (doc.name?.vi || '')
  const image = getMediaURL(doc.image) || doc.imageURL || ''

  if (!name) return null
  return { slug, name, image }
}

function normalizeSelectedCategories(raw: unknown, locale: string): CategoryCard[] {
  if (!Array.isArray(raw)) return []
  const cards: CategoryCard[] = []
  for (const item of raw) {
    if (!item || typeof item !== 'object') continue
    const card = normalizeCategory(item as CategoryDoc, locale)
    if (card) cards.push(card)
  }
  return cards
}

interface ProductCategoryListingSectionProps {
  locale: string
  sourceMode?: string | null
  categories?: unknown
}

export async function ProductCategoryListingSection({
  locale,
  sourceMode,
  categories,
}: ProductCategoryListingSectionProps) {
  let cards: CategoryCard[] = []

  if (sourceMode === 'manual') {
    cards = normalizeSelectedCategories(categories, locale)
  } else {
    const payload = await getPayload({ config })
    const result = await payload.find({
      collection: 'product-categories',
      where: { visible: { equals: true } },
      sort: 'order',
      limit: 50,
    })
    cards = result.docs
      .map((doc) => normalizeCategory(doc as unknown as CategoryDoc, locale))
      .filter((c): c is CategoryCard => c !== null)
  }

  if (cards.length === 0) return null

  return (
    <section className="bg-[#F8FAFC] px-4 py-6 md:px-8 md:py-8 xl:px-20 xl:py-12">
      <div className="border border-[#E4E4E7] bg-white p-5 md:p-6 xl:p-10">
        <div className="grid grid-cols-1 gap-4 md:grid-cols-5 md:gap-6">
          {cards.map((cat) => (
            <Link
              key={cat.slug}
              href={`/${locale}/industry-products/${cat.slug}`}
              className="group flex flex-col overflow-hidden"
            >
              <div className="relative h-[220px] md:h-[144px] xl:h-[184px] overflow-hidden">
                {cat.image ? (
                  <Image
                    src={cat.image}
                    alt={cat.name}
                    fill
                    className="object-cover transition-transform duration-500 group-hover:scale-105"
                    sizes="(max-width: 767px) 100vw, 20vw"
                  />
                ) : (
                  <div className="h-full w-full bg-gray-200" />
                )}
              </div>
              <div className="flex items-center bg-[#0F172A] px-3" style={{ height: 36 }}>
                <span className="truncate text-[13px] font-medium text-white">
                  {cat.name}
                </span>
              </div>
            </Link>
          ))}
        </div>
      </div>
    </section>
  )
}
