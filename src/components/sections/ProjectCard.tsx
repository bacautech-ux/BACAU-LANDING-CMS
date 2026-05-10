import React from 'react'
import Image from 'next/image'
import Link from 'next/link'

export interface ProjectCardData {
  slug: string
  title: string
  summary: string
  category: string
  industry?: string | null
  categoryLabel: string
  thumbnail: string
  thumbnailAlt: string
}

interface ProjectCardProps {
  project: ProjectCardData
  locale: string
  variant?: 'list' | 'grid'
}

// variant="list" — dùng trang Dự án Tham Khảo
// Specs: image 200px + title 13px bold + desc 12px + tag blue 11px, border 1px, padding 16
function ListCard({ project, href }: { project: ProjectCardData; href: string }) {
  return (
    <Link href={href} className="group card-hover flex flex-col border border-border bg-white">
      <div className="relative h-[180px] shrink-0 overflow-hidden md:h-[200px]">
        <Image
          src={project.thumbnail}
          alt={project.thumbnailAlt}
          fill
          className="object-cover group-hover:scale-105 transition-transform duration-500"
          sizes="(max-width: 767px) 100vw, (max-width: 1279px) 50vw, 25vw"
        />
      </div>
      <div className="flex flex-col gap-2 p-4">
        <h3
          className="text-text-primary font-bold line-clamp-2 leading-snug"
          style={{ fontSize: 13 }}
        >
          {project.title}
        </h3>
        <p
          className="text-text-secondary line-clamp-2"
          style={{ fontSize: 12, lineHeight: 1.5 }}
        >
          {project.summary}
        </p>
        <span className="text-primary-blue" style={{ fontSize: 11 }}>
          {project.categoryLabel}
        </span>
      </div>
    </Link>
  )
}

// variant="grid" — dùng các nơi khác (cũ)
function GridCard({ project, href }: { project: ProjectCardData; href: string }) {
  return (
    <Link href={href} className="group card-hover block bg-white overflow-hidden shadow-sm">
      <div className="relative aspect-[4/3] overflow-hidden">
        <Image
          src={project.thumbnail}
          alt={project.thumbnailAlt}
          fill
          className="object-cover group-hover:scale-105 transition-transform duration-500"
          sizes="(max-width: 1024px) 50vw, 33vw"
        />
      </div>
      <div className="p-4">
        <span className="inline-block mb-2 px-2 py-0.5 text-[11px] font-semibold text-white bg-primary-red rounded-sm">
          {project.categoryLabel}
        </span>
        <h3 className="text-[13px] font-semibold text-primary-navy leading-snug line-clamp-2 group-hover:text-primary-blue transition-colors">
          {project.title}
        </h3>
        <p className="mt-1.5 text-[12px] text-text-secondary line-clamp-2">{project.summary}</p>
      </div>
    </Link>
  )
}

export function ProjectCard({ project, locale, variant = 'grid' }: ProjectCardProps) {
  const href = `/${locale}/chi-tiet-du-an/${project.slug}`
  return variant === 'list'
    ? <ListCard project={project} href={href} />
    : <GridCard project={project} href={href} />
}
