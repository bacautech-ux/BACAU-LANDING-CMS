import React from 'react'
import Image from 'next/image'

interface MediaValue {
  url?: string | null
  filename?: string | null
}

interface PartnerMosaicImage {
  alt?: string | null
  image?: MediaValue | null
  imageURL?: string | null
}

interface PartnersMosaicProps {
  title?: string
  subtitle?: string
  backgroundColor?: string | null
  images?: PartnerMosaicImage[]
}

const fallbackImages: Required<PartnerMosaicImage>[] = [
  {
    alt: 'Đối tác công nghiệp',
    image: null,
    imageURL: 'https://images.unsplash.com/photo-1758599543129-5269a8f29e68?w=600',
  },
  {
    alt: 'Dây chuyền đối tác',
    image: null,
    imageURL: 'https://images.unsplash.com/photo-1762028892701-692dc360db08?w=600',
  },
  {
    alt: 'Thiết bị đối tác',
    image: null,
    imageURL: 'https://images.unsplash.com/photo-1632910121591-29e2484c0259?w=600',
  },
  {
    alt: 'Nhà máy đối tác',
    image: null,
    imageURL: 'https://images.unsplash.com/photo-1752412145493-e11fec9ac951?w=600',
  },
]

function getMediaURL(value: unknown): string | undefined {
  if (!value || typeof value !== 'object') return undefined
  const media = value as MediaValue
  if (media.url) return media.url
  if (media.filename) return `/api/media/file/${media.filename}`
  return undefined
}

function getImageSource(item: PartnerMosaicImage, fallback: PartnerMosaicImage) {
  return getMediaURL(item.image) ?? item.imageURL ?? getMediaURL(fallback.image) ?? fallback.imageURL ?? ''
}

export function PartnersMosaic({
  title = 'ĐỐI TÁC',
  subtitle = 'Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa',
  backgroundColor = '#0B1221',
  images,
}: PartnersMosaicProps) {
  const visibleImages = fallbackImages.map((fallback, index) => images?.[index] ?? fallback)

  return (
    <section
      className="px-4 py-8 md:px-6 md:py-12 xl:px-[60px] xl:py-16"
      style={{ background: backgroundColor ?? '#0B1221' }}
    >
      <div className="flex flex-col gap-8 xl:gap-12">
        <div className="flex flex-col gap-2">
          <div className="h-1 w-10 rounded-sm bg-primary-red md:w-12" />
          <h2 className="text-[24px] font-extrabold tracking-wide text-white md:text-[28px]">{title}</h2>
        </div>

        <p className="text-[14px] leading-[1.6] md:text-[15px]" style={{ color: '#B8C0D0' }}>
          {subtitle}
        </p>

        <div className="grid grid-cols-1 gap-4 md:h-[200px] md:grid-cols-[1fr_1fr_1fr] md:gap-5 xl:h-[280px] xl:gap-6">
          <MosaicImage item={visibleImages[0]} fallback={fallbackImages[0]} size="33vw" />
          <div className="flex flex-col gap-4 md:h-full md:gap-5 xl:gap-6">
            <MosaicImage item={visibleImages[1]} fallback={fallbackImages[1]} size="20vw" />
            <MosaicImage item={visibleImages[2]} fallback={fallbackImages[2]} size="20vw" />
          </div>
          <MosaicImage item={visibleImages[3]} fallback={fallbackImages[3]} size="33vw" />
        </div>
      </div>
    </section>
  )
}

function MosaicImage({
  item,
  fallback,
  size,
}: {
  item: PartnerMosaicImage
  fallback: PartnerMosaicImage
  size: string
}) {
  return (
    <div
      className="group relative h-[170px] flex-1 overflow-hidden rounded-lg md:h-full md:min-h-0"
      style={{ boxShadow: '0 2px 12px #00000033' }}
    >
      <Image
        src={getImageSource(item, fallback)}
        alt={item.alt ?? fallback.alt ?? 'Partner image'}
        fill
        className="img-zoom object-cover"
        sizes={size}
      />
      <div className="absolute inset-0 bg-black/0 transition-colors duration-300 group-hover:bg-black/10" />
    </div>
  )
}
