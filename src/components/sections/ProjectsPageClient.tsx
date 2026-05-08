'use client'

import React, { useState } from 'react'
import { ProjectFilterBar, ParentCategory, SubCategory } from './ProjectFilterBar'
import { ProjectCard, ProjectCardData } from './ProjectCard'

interface ProjectsPageClientProps {
  locale: string
  projects: ProjectCardData[]
  parents: ParentCategory[]
  subs: SubCategory[]
}

// Grid: 4 cột, padding [40,60], row-gap 32, col-gap 24 (theo design)
export function ProjectsPageClient({ locale, projects, parents, subs }: ProjectsPageClientProps) {
  const [activeParent, setActiveParent] = useState(parents[0]?.value ?? '')
  const [activeSub, setActiveSub] = useState('all')

  const filtered = projects.filter((p) => {
    const matchParent = p.category === activeParent
    const matchSub = activeSub === 'all' || p.industry === activeSub
    return matchParent && matchSub
  })

  return (
    <>
      <ProjectFilterBar
        parents={parents}
        subs={subs}
        activeParent={activeParent}
        activeSub={activeSub}
        onParentChange={setActiveParent}
        onSubChange={setActiveSub}
      />

      <div className="px-4 py-6 md:px-6 md:py-6 xl:px-[60px] xl:py-10">
        {filtered.length > 0 ? (
          <div className="grid grid-cols-1 gap-4 md:grid-cols-2 md:gap-6 xl:grid-cols-4">
            {filtered.map((project) => (
              <ProjectCard
                key={project.slug}
                project={project}
                locale={locale}
                variant="list"
              />
            ))}
          </div>
        ) : (
          <div className="py-24 text-center text-text-secondary text-sm">
            Chưa có dự án trong danh mục này.
          </div>
        )}
      </div>
    </>
  )
}
