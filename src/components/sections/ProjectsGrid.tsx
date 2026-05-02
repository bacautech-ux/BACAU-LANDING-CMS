'use client'

import React, { useState } from 'react'
import { FilterTabs, FilterOption } from '@/components/ui/FilterTabs'
import { ProjectCard, ProjectCardData } from './ProjectCard'

interface ProjectsGridProps {
  projects: ProjectCardData[]
  filterOptions: FilterOption[]
  locale: string
  allLabel?: string
}

export function ProjectsGrid({ projects, filterOptions, locale, allLabel = 'Tất cả' }: ProjectsGridProps) {
  const [active, setActive] = useState('all')

  const options: FilterOption[] = [{ label: allLabel, value: 'all' }, ...filterOptions]

  const filtered =
    active === 'all' ? projects : projects.filter((p) => p.category === active)

  return (
    <div>
      <FilterTabs options={options} active={active} onChange={setActive} className="mb-8" />
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
        {filtered.map((project) => (
          <ProjectCard key={project.slug} project={project} locale={locale} />
        ))}
      </div>
    </div>
  )
}
