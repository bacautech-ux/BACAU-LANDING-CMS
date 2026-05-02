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
    return matchParent
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

      <div style={{ padding: '40px 60px' }}>
        {filtered.length > 0 ? (
          <div className="grid grid-cols-4 gap-6">
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
