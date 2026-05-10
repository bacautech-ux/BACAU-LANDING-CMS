import React from 'react'
import Image from 'next/image'
import config from '@payload-config'
import { getPayload } from 'payload'

interface MediaValue {
  url?: string | null
  filename?: string | null
}

interface PartnerDocument {
  name?: string | null
  logo?: MediaValue | null
}

interface BrandLogosProps {
  title?: string
  sourceMode?: 'latest' | 'manual' | string | null
  count?: number | null
  partners?: unknown
  fallbackBrands?: { name?: string | null }[]
}

interface BrandItem {
  name: string
  logo?: string
}

const defaultBrands: BrandItem[] = ['ABB', 'Intel', 'Mitsubishi', 'PSCL', 'KEIHIN', 'Siemens'].map(
  (name) => ({ name }),
)

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined
  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`
  return undefined
}

function isPartnerDocument(value: unknown): value is PartnerDocument {
  return Boolean(value && typeof value === 'object' && 'name' in value)
}

function normalizePartner(value: PartnerDocument): BrandItem | null {
  if (!value.name) return null
  return { name: value.name, logo: getMediaURL(value.logo) }
}

function normalizeSelectedPartners(value: unknown) {
  if (!Array.isArray(value)) return []
  return value
    .filter(isPartnerDocument)
    .map(normalizePartner)
    .filter((item): item is BrandItem => Boolean(item))
}

async function getLatestPartners(count: number) {
  try {
    const payload = await getPayload({ config })
    const data = await payload.find({
      collection: 'partners',
      sort: 'order',
      depth: 2,
      limit: count,
    })
    return data.docs
      .map((doc) => normalizePartner(doc as PartnerDocument))
      .filter((item): item is BrandItem => Boolean(item))
  } catch {
    return []
  }
}

export async function BrandLogos({
  title = 'ĐỐI TÁC CHIẾN LƯỢC',
  sourceMode = 'latest',
  count = 6,
  partners,
  fallbackBrands,
}: BrandLogosProps) {
  const latestPartners = await getLatestPartners(count ?? 6)
  const selectedPartners = sourceMode === 'manual' ? normalizeSelectedPartners(partners) : []
  const fallback: BrandItem[] =
    fallbackBrands
      ?.map((brand) => ({ name: brand.name ?? '' }))
      .filter((brand): brand is BrandItem => Boolean(brand.name)) ?? defaultBrands
  const brands = [...selectedPartners, ...latestPartners, ...fallback].slice(0, count ?? 6)

  return (
    <section
      className="flex flex-col items-center gap-4 bg-bg-light px-4 py-8 md:gap-5 md:px-6 md:py-12 xl:gap-6 xl:px-[60px] xl:py-16"
    >
      <p
        className="text-center text-[11px] font-semibold tracking-[3px] uppercase md:text-[12px] md:tracking-[4px]"
        style={{ color: '#64748B' }}
      >
        {title}
      </p>

      <div className="grid w-full grid-cols-2 items-center justify-items-center gap-x-6 gap-y-4 md:grid-cols-6 md:px-6 xl:px-10">
        {brands.map((brand) => (
          brand.logo ? (
            <div key={brand.name} className="brand-hover relative h-7 w-28 opacity-50 md:h-8 md:w-24 xl:w-32">
              <Image src={brand.logo} alt={brand.name} fill className="object-contain" sizes="128px" />
            </div>
          ) : (
            <span
              key={brand.name}
              className="brand-hover text-[18px] font-extrabold tracking-[2px] md:text-[18px] xl:text-[22px]"
              style={{ color: '#0F172A', opacity: 0.35 }}
            >
              {brand.name}
            </span>
          )
        ))}
      </div>
    </section>
  )
}
