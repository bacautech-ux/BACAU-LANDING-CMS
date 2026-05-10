import React from 'react'
import { RichText } from '@payloadcms/richtext-lexical/react'
import type { SerializedEditorState } from '@payloadcms/richtext-lexical/lexical'

interface RichContentSectionProps {
  title?: string | null
  content?: SerializedEditorState | null
}

export function RichContentSection({ title, content }: RichContentSectionProps) {
  if (!content) return null

  return (
    <article className="px-4 py-8 md:px-6 md:py-10 xl:px-[60px] xl:py-12">
      <div className="mx-auto max-w-[900px]">
        {title && (
          <h1 className="mb-8 text-[22px] font-bold leading-snug text-text-primary md:text-[26px] xl:text-[30px]">
            {title}
          </h1>
        )}
        <div className="prose prose-sm max-w-none text-text-secondary md:prose-base prose-headings:font-bold prose-headings:text-text-primary prose-h2:mt-8 prose-h2:text-[20px] prose-h3:text-[17px] prose-p:leading-[1.8] prose-a:text-primary-blue prose-strong:text-text-primary prose-img:rounded-[4px] prose-ol:list-decimal prose-ul:list-disc">
          <RichText data={content} />
        </div>
      </div>
    </article>
  )
}
