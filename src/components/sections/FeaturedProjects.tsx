'use client'

import React, { useState } from 'react'
import Image from 'next/image'
import Link from 'next/link'

interface Project {
  slug: string
  title: string
  description: string
  category: string
  badgeColor: string
  badgeLabel: string
  image: string
}

const projects: Project[] = [
  {
    slug: 'quan-ly-nang-luong-kcn-viet-nam',
    title: 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore',
    description: 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện',
    category: 'energy',
    badgeColor: '#2b358c',
    badgeLabel: 'Năng lượng',
    image: 'https://images.unsplash.com/photo-1760456307112-e69c5ede808d?w=800',
  },
  {
    slug: 'tram-bien-ap-formosa',
    title: 'Trạm biến áp 110kV Nhà máy thép Formosa',
    description: 'Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế',
    category: 'electrical',
    badgeColor: '#B92C32',
    badgeLabel: 'Điện CN',
    image: 'https://images.unsplash.com/photo-1509391111737-9b07f052f6b6?w=800',
  },
  {
    slug: 'tu-dong-hoa-nestle',
    title: 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam',
    description: 'Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói',
    category: 'automation',
    badgeColor: '#2b358c',
    badgeLabel: 'Tự động hóa',
    image: 'https://images.unsplash.com/photo-1735494034604-cab3f6a42683?w=800',
  },
  {
    slug: 'bms-landmark-81',
    title: 'Hệ thống BMS tòa nhà Landmark 81',
    description: 'Triển khai hệ thống quản lý tòa nhà thông minh tích hợp',
    category: 'bms',
    badgeColor: '#6366F1',
    badgeLabel: 'BMS',
    image: 'https://images.unsplash.com/photo-1703355685626-57abd3bfbd95?w=800',
  },
]

const tabs = [
  { label: 'Quản lý năng lượng', value: 'energy' },
  { label: 'Điện công nghiệp', value: 'electrical' },
  { label: 'Tự động hóa', value: 'automation' },
  { label: 'Hệ thống BMS', value: 'bms' },
]

interface FeaturedProjectsProps {
  locale: string
}

export function FeaturedProjects({ locale }: FeaturedProjectsProps) {
  const [active, setActive] = useState('energy')

  // Show all 4 projects always (design shows 4 in 2x2 grid), highlight active tab
  const displayed = projects

  return (
    <section className="bg-primary-navy" style={{ padding: '64px 80px' }}>
      {/* Header */}
      <div className="flex items-center justify-between mb-10">
        <div className="flex items-center gap-3">
          <div className="w-10 h-1 rounded-sm bg-primary-red" />
          <h2 className="text-[28px] font-bold text-white tracking-[1.5px]">
            DỰ ÁN TIÊU BIỂU
          </h2>
        </div>
        <Link
          href={`/${locale}/du-an-tham-khao`}
          className="text-[14px] font-semibold hover:underline"
          style={{ color: '#FFFFFFBB' }}
        >
          Xem tất cả →
        </Link>
      </div>

      {/* Filter tabs — pill style */}
      <div className="flex items-center gap-2 mb-8">
        {tabs.map((tab) => (
          <button
            key={tab.value}
            onClick={() => setActive(tab.value)}
            className="px-6 py-2.5 rounded-full text-[13px] transition-all cursor-pointer"
            style={
              active === tab.value
                ? { background: '#B92C32', color: '#fff', fontWeight: 600 }
                : {
                    background: '#FFFFFF15',
                    color: '#FFFFFFCC',
                    fontWeight: 500,
                    border: '1px solid #FFFFFF30',
                  }
            }
          >
            {tab.label}
          </button>
        ))}
      </div>

      {/* 2×2 grid */}
      <div className="flex flex-col gap-6">
        {/* Row 1 */}
        <div className="grid grid-cols-2 gap-6" style={{ height: 280 }}>
          {displayed.slice(0, 2).map((p) => (
            <ProjectCard key={p.slug} project={p} locale={locale} />
          ))}
        </div>
        {/* Row 2 */}
        <div className="grid grid-cols-2 gap-6" style={{ height: 280 }}>
          {displayed.slice(2, 4).map((p) => (
            <ProjectCard key={p.slug} project={p} locale={locale} />
          ))}
        </div>
      </div>
    </section>
  )
}

function ProjectCard({ project, locale }: { project: Project; locale: string }) {
  return (
    <Link
      href={`/${locale}/chi-tiet-du-an/${project.slug}`}
      className="relative flex flex-col justify-between rounded-xl overflow-hidden h-full"
      style={{ border: '1px solid #FFFFFF20' }}
    >
      <Image
        src={project.image}
        alt={project.title}
        fill
        className="object-cover"
        sizes="50vw"
      />
      {/* Badge top */}
      <div className="relative z-10 p-4">
        <span
          className="inline-block px-3 py-1 rounded-full text-white text-[11px] font-semibold"
          style={{ background: project.badgeColor }}
        >
          {project.badgeLabel}
        </span>
      </div>
      {/* Text overlay bottom */}
      <div
        className="relative z-10 flex flex-col gap-1.5 p-4"
        style={{
          background: 'linear-gradient(180deg, #00000000 0%, #000000BB 40%, #000000DD 100%)',
          paddingTop: 60,
        }}
      >
        <h3 className="text-[15px] font-bold text-white leading-[1.4]">
          {project.title}
        </h3>
        <p className="text-[13px] leading-[1.4]" style={{ color: '#FFFFFFAA' }}>
          {project.description}
        </p>
      </div>
    </Link>
  )
}
