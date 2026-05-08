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
            <button
              key={tab.value}
              onClick={() => setActive(tab.value)}
              className="shrink-0 cursor-pointer rounded-full px-4 py-2 text-[12px] transition-all md:px-6 md:py-2.5 md:text-[13px]"
              style={
                active === tab.value
                  ? { background: '#B92C32', color: '#fff', fontWeight: 600 }
                  : isLight
                    ? { background: '#F3F4F6', color: '#374151', fontWeight: 500, border: '1px solid #D1D5DB' }
                    : { background: '#FFFFFF15', color: '#FFFFFFCC', fontWeight: 500, border: '1px solid #FFFFFF30' }
              }
            >
              {tab.label}
            </button>
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
      className="relative flex h-[180px] flex-col justify-between overflow-hidden rounded-lg md:h-[197px] md:rounded-xl xl:h-[280px]"
      style={{ border: '1px solid #FFFFFF20' }}
    >
      <Image
        src={project.image}
        alt={project.title}
        fill
        className="object-cover"
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
