import React from 'react'
import Image from 'next/image'
import { RedDivider } from '@/components/ui/RedDivider'

interface ArticleSectionProps {
  title: string
  children: React.ReactNode
  dividerAfter?: boolean
  className?: string
}

export function ArticleSection({ title, children, dividerAfter = false, className = '' }: ArticleSectionProps) {
  return (
    <div className={`flex flex-col gap-4 ${className}`}>
      <h2 className="text-lg md:text-xl font-bold text-primary-navy">{title}</h2>
      <div className="text-sm text-text-secondary leading-relaxed">{children}</div>
      {dividerAfter && <RedDivider className="mt-2" />}
    </div>
  )
}

// Bullet list dùng trong article sections
export function BulletList({ items }: { items: string[] }) {
  return (
    <ul className="space-y-2">
      {items.map((item, i) => (
        <li key={i} className="flex gap-2 text-sm text-text-secondary leading-relaxed">
          <span className="text-primary-red mt-1 shrink-0">•</span>
          <span>{item}</span>
        </li>
      ))}
    </ul>
  )
}

// Article image full-width
export function ArticleImage({
  src,
  alt,
  aspectRatio = 'aspect-[16/7]',
}: {
  src: string
  alt: string
  aspectRatio?: string
}) {
  return (
    <div className={`relative w-full overflow-hidden rounded-sm ${aspectRatio}`}>
      <Image src={src} alt={alt} fill className="object-cover" sizes="(max-width: 768px) 100vw, 860px" />
    </div>
  )
}

// Article image pair — 2 ảnh cạnh nhau
export function ArticleImagePair({
  images,
}: {
  images: { src: string; alt: string }[]
}) {
  return (
    <div className="grid grid-cols-2 gap-5">
      {images.map((img, i) => (
        <div key={i} className="relative aspect-[4/3] overflow-hidden rounded-sm">
          <Image src={img.src} alt={img.alt} fill className="object-cover" sizes="50vw" />
        </div>
      ))}
    </div>
  )
}
