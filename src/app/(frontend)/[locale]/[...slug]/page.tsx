import { notFound } from 'next/navigation'
import { redirect } from 'next/navigation'
import { getPayload } from 'payload'
import config from '@payload-config'
import { RenderBlocks } from '@/components/blocks/RenderBlocks'

type Locale = 'vi' | 'en'

export default async function DynamicPage({
  params,
}: {
  params: Promise<{ locale: string; slug: string[] }>
}) {
  const { locale, slug } = await params
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
