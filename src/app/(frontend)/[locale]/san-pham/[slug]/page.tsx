import React from 'react'
import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import config from '@payload-config'
import { getPayload } from 'payload'
import { BreadcrumbBar } from '@/components/sections/PageHero'
import { BrandLogos } from '@/components/sections/BrandLogos'
import { ProductDetailHero } from '@/components/sections/ProductDetailHero'
import { RichText } from '@payloadcms/richtext-lexical/react'
import type { SerializedEditorState } from '@payloadcms/richtext-lexical/lexical'

export const revalidate = 3600

export async function generateMetadata({
  params,
}: {
  params: Promise<{ locale: string; slug: string }>
}): Promise<Metadata> {
  const { locale, slug } = await params
  const payload = await getPayload({ config })
  const { docs } = await payload.find({
    collection: 'products',
    where: { slug: { equals: slug } },
    depth: 1,
    limit: 1,
  })
  const product = docs[0]
  if (!product) return {}

  const name = locale === 'en'
    ? ((product.name as { vi?: string; en?: string })?.en || (product.name as { vi?: string })?.vi || '')
    : ((product.name as { vi?: string })?.vi || '')
  const desc = locale === 'en'
    ? ((product.shortDescription as { vi?: string; en?: string })?.en || (product.shortDescription as { vi?: string })?.vi || '')
    : ((product.shortDescription as { vi?: string })?.vi || '')
  const thumb = product.thumbnail && typeof product.thumbnail === 'object'
    ? (product.thumbnail as { url?: string }).url
    : undefined
  const title = `${name} | BắcÂu ESTEC`

  return {
    title,
    description: desc || undefined,
    openGraph: {
      title,
      description: desc || undefined,
      ...(thumb ? { images: [{ url: thumb, width: 1200, height: 630 }] } : {}),
      locale: locale === 'en' ? 'en_US' : 'vi_VN',
      type: 'article',
    },
    twitter: {
      card: 'summary_large_image',
      title,
      description: desc || undefined,
      ...(thumb ? { images: [thumb] } : {}),
    },
  }
}

const locales = ['vi', 'en']

export async function generateStaticParams() {
  const payload = await getPayload({ config })
  const products = await payload.find({ collection: 'products', limit: 200 })
  return products.docs
    .filter((p) => p.slug)
    .flatMap((p) => locales.map((locale) => ({ locale, slug: p.slug as string })))
}

interface MediaValue {
  url?: string | null
  filename?: string | null
}

interface CategoryRef {
  name?: { vi?: string | null; en?: string | null } | null
}

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined
  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`
  return undefined
}

export default async function ProductDetailPage({
  params,
}: {
  params: Promise<{ locale: string; slug: string }>
}) {
  const { locale, slug } = await params
  const payload = await getPayload({ config })
  const { docs } = await payload.find({
    collection: 'products',
    where: { slug: { equals: slug } },
    depth: 2,
    limit: 1,
  })

  const product = docs[0]
  if (!product) notFound()

  const name =
    locale === 'en'
      ? ((product.name as { vi?: string; en?: string })?.en || (product.name as { vi?: string })?.vi || '')
      : ((product.name as { vi?: string })?.vi || '')

  const shortDesc =
    locale === 'en'
      ? ((product.shortDescription as { vi?: string; en?: string })?.en || (product.shortDescription as { vi?: string })?.vi || '')
      : ((product.shortDescription as { vi?: string })?.vi || '')

  const brand = (product.brand as string) || ''

  const thumbnail = getMediaURL(product.thumbnail) || ''
  const galleryImages: string[] = [thumbnail]
  const gallery = product.gallery as { image?: unknown; imageURL?: string | null }[] | null
  if (Array.isArray(gallery)) {
    for (const item of gallery) {
      const url = getMediaURL(item.image) || item.imageURL || ''
      if (url && !galleryImages.includes(url)) galleryImages.push(url)
    }
  }

  const categories = product.productCategories as CategoryRef[] | null
  const categoryName = Array.isArray(categories) && categories.length > 0
    ? (locale === 'en'
        ? (categories[0]?.name?.en || categories[0]?.name?.vi || '')
        : (categories[0]?.name?.vi || ''))
    : ''

  const categorySlug = Array.isArray(product.productCategories) && product.productCategories.length > 0
    ? ((product.productCategories[0] as { slug?: string })?.slug || '')
    : ''

  const richTextContent =
    locale === 'en'
      ? ((product.description as { vi?: unknown; en?: unknown })?.en || (product.description as { vi?: unknown })?.vi)
      : ((product.description as { vi?: unknown })?.vi)

  return (
    <>
      <BreadcrumbBar
        items={[
          { label: 'Trang chủ', href: `/${locale}` },
          { label: 'Thiết bị và Sản phẩm công nghiệp', href: `/${locale}/industry-products` },
          ...(categoryName && categorySlug
            ? [{ label: categoryName, href: `/${locale}/industry-products/${categorySlug}` }]
            : []),
          { label: name },
        ]}
      />

      <ProductDetailHero
        name={name}
        shortDescription={shortDesc}
        brand={brand}
        categoryName={categoryName}
        images={galleryImages}
        locale={locale}
      />

      {/* Chi tiết */}
      {richTextContent && (
        <div className="px-4 py-8 md:px-6 md:py-10 xl:px-[60px] xl:py-12">
          <h2 className="mb-6 text-[22px] font-bold text-[#18181B]">CHI TIẾT</h2>
          <div className="h-[3px] w-10 bg-[#b92c32] mb-6" />
          <div className="prose prose-sm max-w-none text-[#52525B] md:prose-base prose-headings:font-bold prose-headings:text-[#18181B] prose-h2:mt-8 prose-h2:text-[20px] prose-h3:text-[17px] prose-p:leading-[1.8] prose-a:text-[#2b358c] prose-strong:text-[#18181B] prose-img:rounded-[4px]">
            <RichText data={richTextContent as SerializedEditorState} />
          </div>
        </div>
      )}

      <BrandLogos />
    </>
  )
}
