import { notFound } from 'next/navigation'
import { getPayload } from 'payload'
import config from '@payload-config'
import { AboutTemplate } from '@/components/templates/AboutTemplate'
import { ProjectsTemplate } from '@/components/templates/ProjectsTemplate'

type Locale = 'vi' | 'en'

interface MediaObj {
  url?: string | null
  filename?: string | null
}

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined
  const m = value as MediaObj
  if (m.url) return m.url
  if (m.filename) return `/api/media/file/${m.filename}`
  return undefined
}

export default async function DynamicPage({
  params,
}: {
  params: Promise<{ locale: string; slug: string[] }>
}) {
  const { locale, slug } = await params
  const slugStr = slug.join('/')
  const typedLocale = locale === 'en' ? 'en' : 'vi' as Locale

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

  const hero = page.hero as { heading?: string; breadcrumbLabel?: string; backgroundImage?: unknown } | undefined

  const heroHeading = hero?.heading ?? ''
  const heroBreadcrumbLabel = hero?.breadcrumbLabel ?? heroHeading
  const heroBgImage = getMediaURL(hero?.backgroundImage) ?? ''

  switch (page.template) {
    case 'about':
      return (
        <AboutTemplate
          locale={locale}
          heroHeading={heroHeading}
          heroBgImage={heroBgImage}
          heroBreadcrumbLabel={heroBreadcrumbLabel}
        />
      )
    case 'projects':
      return (
        <ProjectsTemplate
          locale={locale}
          heroHeading={heroHeading}
          heroBgImage={heroBgImage}
          heroBreadcrumbLabel={heroBreadcrumbLabel}
        />
      )
    default:
      notFound()
  }
}
