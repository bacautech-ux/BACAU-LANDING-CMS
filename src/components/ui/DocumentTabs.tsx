'use client'

import React, { useState } from 'react'

interface FileItem {
  title?: string | null
  file?: { url?: string | null; filename?: string | null } | null
  fileURL?: string | null
}

interface Tab {
  tabTitle?: string | null
  files?: FileItem[] | null
}

interface DocumentTabsProps {
  tabs: Tab[]
}

const PAGE_SIZE = 3

function DownloadIcon() {
  return (
    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.2" strokeLinecap="round" strokeLinejoin="round">
      <path d="M12 3v13M7 11l5 5 5-5" />
      <path d="M3 19h18" />
    </svg>
  )
}

export function DocumentTabs({ tabs }: DocumentTabsProps) {
  const [activeTab, setActiveTab] = useState(0)
  const [page, setPage] = useState(0)

  if (!tabs || tabs.length === 0) return null

  const currentTab = tabs[activeTab]
  const files = currentTab?.files ?? []
  const totalPages = Math.ceil(files.length / PAGE_SIZE)
  const visibleFiles = files.slice(page * PAGE_SIZE, (page + 1) * PAGE_SIZE)

  function handleTabChange(idx: number) {
    setActiveTab(idx)
    setPage(0)
  }

  return (
    <div className="flex flex-col gap-5">
      {/* Tab bar */}
      <div className="flex items-center gap-0 border-b border-border pb-3">
        {tabs.map((tab, idx) => (
          <React.Fragment key={idx}>
            {idx > 0 && (
              <span className="mx-3 text-[14px] text-text-muted select-none">|</span>
            )}
            <button
              onClick={() => handleTabChange(idx)}
              className={`text-[13px] tracking-widest uppercase transition-colors cursor-pointer ${
                activeTab === idx
                  ? 'font-bold text-primary-blue'
                  : 'font-medium text-text-muted hover:text-text-secondary'
              }`}
            >
              {tab.tabTitle}
            </button>
          </React.Fragment>
        ))}
      </div>

      {/* File list */}
      <div className="flex flex-col gap-2">
        {visibleFiles.map((fileItem, idx) => {
          const url =
            fileItem.file?.url ??
            (fileItem.file?.filename ? `/api/media/file/${fileItem.file.filename}` : null) ??
            fileItem.fileURL ??
            '#'
          const title = fileItem.title ?? ''
          return (
            <a
              key={idx}
              href={url}
              download
              target="_blank"
              rel="noopener noreferrer"
              className="flex items-center gap-3 border border-border rounded-[2px] p-3 hover:bg-bg-light transition-colors group"
            >
              <div className="flex items-center justify-center w-10 h-10 bg-gray-100 rounded-[2px] shrink-0 text-text-muted group-hover:text-primary-blue transition-colors">
                <DownloadIcon />
              </div>
              <span className="text-[13px] font-semibold text-text-primary uppercase tracking-wide">
                {title}
              </span>
            </a>
          )
        })}
      </div>

      {/* Dot pagination */}
      {totalPages > 1 && (
        <div className="flex justify-center gap-2 pt-1">
          {Array.from({ length: totalPages }).map((_, idx) => (
            <button
              key={idx}
              onClick={() => setPage(idx)}
              className={`w-2.5 h-2.5 rounded-full transition-colors cursor-pointer ${
                page === idx ? 'bg-primary-blue' : 'bg-gray-300'
              }`}
            />
          ))}
        </div>
      )}
    </div>
  )
}
