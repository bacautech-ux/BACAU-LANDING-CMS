import React from 'react'
import Image from 'next/image'
import Link from 'next/link'
import config from '@payload-config'
import { getPayload } from 'payload'

interface MediaValue {
  url?: string | null
  filename?: string | null
}

interface ProductDocument {
  slug?: string | null
  name?: {
    vi?: string | null
    en?: string | null
  } | null
  displayCategory?: string | { vi?: string | null; en?: string | null } | null
  category?: string | null
  thumbnail?: MediaValue | null
}

interface ProductCard {
  slug: string
  name: string
  category: string
  image: string
}

interface ProductsSectionProps {
  locale: string
  title?: string
  subtitle?: string
  sourceMode?: 'latest' | 'manual' | string | null
  count?: number | null
  featuredProducts?: unknown
}

const categoryLabels: Record<string, string> = {
  automation: 'Automation Device',
  measurement: 'Measurement Device',
  'industrial-valve': 'Valve & Actuator',
  electrical: 'Electrical Device',
  motor: 'Motor & Drive',
  sensor: 'Sensor & Instrument',
}

const defaultProductImage = 'https://images.unsplash.com/photo-1703668984128-b506579acdd2?w=600'

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined
  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`
  return undefined
}

function getLocalizedText(
  value: string | { vi?: string | null; en?: string | null } | null | undefined,
  locale: string,
) {
  if (typeof value === 'string') return value
  if (!value || typeof value !== 'object') return undefined
  const typedLocale = locale === 'en' ? 'en' : 'vi'
  const fallbackLocale = typedLocale === 'en' ? 'vi' : 'en'
  return value[typedLocale] ?? value[fallbackLocale] ?? undefined
}

function isProductDocument(value: unknown): value is ProductDocument {
  return Boolean(value && typeof value === 'object' && 'slug' in value)
}

function normalizeProduct(doc: ProductDocument, locale: string): ProductCard | null {
  if (!doc.slug) return null
  const typedLocale = locale === 'en' ? 'en' : 'vi'
  const fallbackLocale = typedLocale === 'en' ? 'vi' : 'en'
  const name = doc.name?.[typedLocale] ?? doc.name?.[fallbackLocale]
  if (!name) return null

  return {
    slug: doc.slug,
    name,
    category:
      getLocalizedText(doc.displayCategory, locale) ??
      categoryLabels[doc.category ?? ''] ??
      doc.category ??
      '',
    image: getMediaURL(doc.thumbnail) ?? defaultProductImage,
  }
}

function normalizeSelectedProducts(value: unknown, locale: string) {
  if (!Array.isArray(value)) return []
  return value
    .filter(isProductDocument)
    .map((doc) => normalizeProduct(doc, locale))
    .filter((item): item is ProductCard => Boolean(item))
}

async function getLatestProducts(locale: string, count: number) {
  try {
    const payload = await getPayload({ config })
    const data = await payload.find({
      collection: 'products',
      where: {
        and: [{ _status: { equals: 'published' } }, { featured: { equals: true } }],
      },
      sort: '-updatedAt',
      depth: 2,
      limit: count,
      locale: locale === 'en' ? 'en' : 'vi',
      fallbackLocale: 'vi',
    })
    return data.docs
      .map((doc) => normalizeProduct(doc as ProductDocument, locale))
      .filter((item): item is ProductCard => Boolean(item))
  } catch {
    return []
  }
}

export async function ProductsSection({
  locale,
  title = 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP',
  subtitle = 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới',
  sourceMode = 'latest',
  count = 5,
  featuredProducts,
}: ProductsSectionProps) {
  const latestProducts = await getLatestProducts(locale, count ?? 5)
  const selectedProducts =
    sourceMode === 'manual' ? normalizeSelectedProducts(featuredProducts, locale) : []
  const products = [...selectedProducts, ...latestProducts].slice(0, count ?? 5)

  if (products.length === 0) return null

  return (
    <section className="bg-white px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-16">
      <div className="mb-8 flex flex-col gap-2 md:mb-8 xl:mb-12">
        <div className="h-1 w-10 rounded-sm bg-primary-red md:w-12" />
        <h2 className="text-[24px] font-extrabold tracking-wide text-primary-navy md:text-[28px]">
          {title}
        </h2>
        <p className="text-[14px] leading-relaxed text-text-secondary md:text-[15px]">{subtitle}</p>
      </div>

      <div className="grid grid-cols-1 gap-4 md:grid-cols-3 md:gap-5 xl:grid-cols-5 xl:gap-6">
        {products.map((product) => (
          <Link
            key={product.slug}
            href={`/${locale}/san-pham/${product.slug}`}
            className="flex flex-col overflow-hidden rounded-lg border border-border bg-white transition-shadow hover:shadow-md md:rounded-xl"
            style={{ boxShadow: '0 4px 16px #0000000A' }}
          >
            <div className="relative h-[170px] overflow-hidden md:h-[160px] xl:h-[200px]">
              <Image
                src={product.image}
                alt={product.name}
                fill
                className="object-cover hover:scale-105 transition-transform duration-500"
                sizes="(max-width: 767px) 100vw, (max-width: 1279px) 33vw, 20vw"
              />
            </div>
            <div className="flex flex-col gap-1 p-4">
              <p className="text-[14px] font-bold text-primary-navy">{product.name}</p>
              <p className="text-[11px] font-semibold tracking-[0.5px] text-primary-red">
                {product.category}
              </p>
            </div>
          </Link>
        ))}
      </div>
    </section>
  )
}
