'use client'

import React, { useState } from 'react'
import Image from 'next/image'
import Link from 'next/link'
import { FilterTabs } from '@/components/ui/FilterTabs'
import { SectionTitle } from '@/components/ui/SectionTitle'
import { Button } from '@/components/ui/Button'

interface Project {
  slug: string
  title: string
  summary: string
  category: string
  categoryLabel: string
  thumbnail: string
  thumbnailAlt: string
}

interface FeaturedProjectsSectionProps {
  locale: string
  projects: Project[]
  categories: { label: string; value: string }[]
}

function ProjectLargeCard({ project, locale }: { project: Project; locale: string }) {
  return (
    <Link
      href={`/${locale}/chi-tiet-du-an/${project.slug}`}
      className="group block relative overflow-hidden bg-white shadow-sm hover:shadow-md transition-shadow duration-300"
    >
      <div className="relative aspect-[16/10] overflow-hidden">
        <Image
          src={project.thumbnail}
          alt={project.thumbnailAlt}
          fill
          className="object-cover group-hover:scale-105 transition-transform duration-500"
          sizes="(max-width: 768px) 100vw, 50vw"
        />
        <div className="absolute inset-0 bg-gradient-to-t from-primary-navy/80 via-transparent to-transparent" />
        <h3 className="absolute bottom-0 left-0 right-0 px-5 py-4 text-sm md:text-base font-semibold text-white leading-snug">
          {project.title}
        </h3>
      </div>
      <p className="px-5 py-3 text-xs text-text-secondary line-clamp-2">{project.summary}</p>
    </Link>
  )
}

export function FeaturedProjectsSection({ locale, projects, categories }: FeaturedProjectsSectionProps) {
  const [active, setActive] = useState(categories[0]?.value ?? 'all')

  const filtered = active === 'all'
    ? projects
    : projects.filter((p) => p.category === active)

  return (
    <section className="py-16 bg-bg-light">
      <div className="container-site">
        <SectionTitle
          title="DỰ ÁN TIÊU BIỂU"
          action={<Button href={`/${locale}/du-an-tham-khao`} variant="outline" size="sm">Xem tất cả</Button>}
        />
        <FilterTabs
          options={categories}
          active={active}
          onChange={setActive}
          className="mb-8"
        />
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {filtered.slice(0, 4).map((project) => (
            <ProjectLargeCard key={project.slug} project={project} locale={locale} />
          ))}
        </div>
      </div>
    </section>
  )
}
