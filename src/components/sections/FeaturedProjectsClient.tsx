'use client'

import React, { useState } from 'react'
import Image from 'next/image'
import Link from 'next/link'

export interface FeaturedProjectCard {
  slug: string
  title: string
  description: string
  image: string
  featuredType?: string | null
  badgeColor: string
  badgeLabel: string
}

export interface FeaturedProjectTab {
  label: string
  value: string
}

interface FeaturedProjectsClientProps {
  locale: string
  projects: FeaturedProjectCard[]
  tabs: FeaturedProjectTab[]
  displayLimit: number
  isLight?: boolean
}

function TabButton({
  label,
  isActive,
  isLight,
  onClick,
}: {
  label: string
  isActive: boolean
  isLight?: boolean
  onClick: () => void
}) {
  const [hovered, setHovered] = useState(false)

  let bg: string
  let color: string
  let border: string
  let fontWeight: number

  if (isActive) {
    bg = '#B92C32'
    color = '#fff'
    border = 'none'
    fontWeight = 600
  } else if (hovered) {
    bg = isLight ? '#E5E7EB' : '#FFFFFF33'
    color = isLight ? '#1F2937' : '#FFFFFF'
    border = isLight ? '1px solid #9CA3AF' : '1px solid #FFFFFF50'
    fontWeight = 500
  } else {
    bg = isLight ? '#F3F4F6' : '#FFFFFF15'
    color = isLight ? '#374151' : '#FFFFFFCC'
    border = isLight ? '1px solid #D1D5DB' : '1px solid #FFFFFF30'
    fontWeight = 500
  }

  return (
    <button
      onClick={onClick}
      onMouseEnter={() => setHovered(true)}
      onMouseLeave={() => setHovered(false)}
      className="btn-press shrink-0 cursor-pointer rounded-full px-4 py-2 text-[12px] transition-all duration-200 md:px-6 md:py-2.5 md:text-[13px]"
      style={{ background: bg, color, border, fontWeight }}
    >
      {label}
    </button>
  )
}

export function FeaturedProjectsClient({
  locale,
  projects,
  tabs,
  displayLimit,
  isLight,
}: FeaturedProjectsClientProps) {
  const [active, setActive] = useState(tabs[0]?.value ?? 'all')
  const filtered = projects.filter((project) => project.featuredType === active)
  const displayed = (filtered.length > 0 ? filtered : projects).slice(0, displayLimit)

  return (
    <>
      {tabs.length > 0 && (
        <div className="mb-6 flex items-center gap-2 overflow-x-auto pb-1 md:mb-8 md:flex-wrap md:overflow-visible md:pb-0">
          {tabs.map((tab) => (
            <TabButton
              key={tab.value}
              label={tab.label}
              isActive={active === tab.value}
              isLight={isLight}
              onClick={() => setActive(tab.value)}
            />
          ))}
        </div>
      )}

      <div className="grid grid-cols-1 gap-4 md:grid-cols-2 md:gap-5 xl:gap-6">
        {displayed.map((project) => (
          <ProjectCard key={project.slug} project={project} locale={locale} />
        ))}
      </div>
    </>
  )
}

function ProjectCard({ project, locale }: { project: FeaturedProjectCard; locale: string }) {
  return (
    <Link
      href={`/${locale}/chi-tiet-du-an/${project.slug}`}
      className="group relative flex h-[180px] flex-col justify-between overflow-hidden rounded-lg md:h-[197px] md:rounded-xl xl:h-[280px]"
      style={{ border: '1px solid #FFFFFF20', transition: 'border-color 0.3s ease' }}
    >
      <Image
        src={project.image}
        alt={project.title}
        fill
        className="img-zoom object-cover"
        sizes="(max-width: 767px) 100vw, 50vw"
      />
      <div className="relative z-10 p-3 xl:p-4">
        <span
          className="inline-block rounded-full px-3 py-1 text-[10px] font-semibold text-white xl:text-[11px]"
          style={{ background: project.badgeColor }}
        >
          {project.badgeLabel}
        </span>
      </div>
      <div
        className="relative z-10 flex flex-col gap-1.5 p-3 xl:p-4"
        style={{
          background: 'linear-gradient(180deg, #00000000 0%, #000000BB 40%, #000000DD 100%)',
        }}
      >
        <h3 className="line-clamp-2 text-[14px] font-bold leading-[1.35] text-white xl:text-[15px] xl:leading-[1.4]">
          {project.title}
        </h3>
        <p className="line-clamp-2 text-[12px] leading-[1.35] xl:text-[13px] xl:leading-[1.4]" style={{ color: '#FFFFFFAA' }}>
          {project.description}
        </p>
      </div>
    </Link>
  )
}
