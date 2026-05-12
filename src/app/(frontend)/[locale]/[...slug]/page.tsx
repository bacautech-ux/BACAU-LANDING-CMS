import type { Metadata } from 'next'
import { notFound } from 'next/navigation'
import { redirect } from 'next/navigation'
import { getPayload } from 'payload'
import config from '@payload-config'
import { setRequestLocale } from 'next-intl/server'
import { RenderBlocks } from '@/components/blocks/RenderBlocks'

export const revalidate = 3600

interface MediaValue { url?: string | null; filename?: string | null }

function getOgImageUrl(media: unknown): string | undefined {
  if (!media || typeof media !== 'object') return undefined
  const m = media as MediaValue
  return m.url || undefined
}

export async function generateMetadata({
  params,
}: {
  params: Promise<{ locale: string; slug: string[] }>
}): Promise<Metadata> {
  const { locale, slug } = await params
  const slugStr = slug.join('/')
  if (slugStr === 'home') return {}

  const payload = await getPayload({ config })
  const { docs } = await payload.find({
    collection: 'pages',
    where: { slug: { equals: slugStr } },
    depth: 1,
    locale: locale === 'en' ? 'en' : 'vi',
    fallbackLocale: 'vi',
    limit: 1,
  })
  const page = docs[0]
  if (!page) return {}

  const seo = page.seo as { title?: string | null; description?: string | null; image?: unknown } | undefined
  const title = seo?.title || page.title || ''
  const description = seo?.description || ''
  const ogImage = getOgImageUrl(seo?.image)

  return {
    title,
    description: description || undefined,
    openGraph: {
      title,
      description: description || undefined,
      ...(ogImage ? { images: [{ url: ogImage, width: 1200, height: 630 }] } : {}),
      locale: locale === 'en' ? 'en_US' : 'vi_VN',
      type: 'website',
    },
    twitter: {
      card: 'summary_large_image',
      title,
      description: description || undefined,
      ...(ogImage ? { images: [ogImage] } : {}),
    },
  }
}

const locales = ['vi', 'en']

export async function generateStaticParams() {
  const payload = await getPayload({ config })
  const pages = await payload.find({ collection: 'pages', limit: 200 })
  return pages.docs
    .filter((p) => p.slug && p.slug !== 'home')
    .flatMap((p) => locales.map((locale) => ({ locale, slug: [p.slug as string] })))
}

type Locale = 'vi' | 'en'

export default async function DynamicPage({
  params,
}: {
  params: Promise<{ locale: string; slug: string[] }>
}) {
  const { locale, slug } = await params
  setRequestLocale(locale)
  const slugStr = slug.join('/')
  const typedLocale = locale === 'en' ? 'en' : 'vi' as Locale

  if (slugStr === 'home') {
    redirect(`/${locale}`)
  }

  const payload = await getPayload({ config })
  const { docs } = await payload.find({
    collection: 'pages',
    where: { slug: { equals: slugStr } },
    depth: 2,
    locale: typedLocale,
    fallbackLocale: 'vi',
    limit: 1,
  })

  const page = docs[0]
  if (!page) notFound()

  if (Array.isArray(page.layout) && page.layout.length > 0) {
    return <RenderBlocks blocks={page.layout} locale={locale} />
  }

  notFound()
}
