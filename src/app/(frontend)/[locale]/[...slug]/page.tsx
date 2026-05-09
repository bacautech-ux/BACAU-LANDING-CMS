import { notFound } from 'next/navigation'
import { redirect } from 'next/navigation'
import { getPayload } from 'payload'
import config from '@payload-config'
import { setRequestLocale } from 'next-intl/server'
import { RenderBlocks } from '@/components/blocks/RenderBlocks'

export const revalidate = 3600

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
