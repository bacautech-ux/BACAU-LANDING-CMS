import React from 'react'

// Render text có \n (literal từ CMS) thành xuống dòng thật
export function MultilineText({ text, className = '', style }: {
  text: string
  className?: string
  style?: React.CSSProperties
}) {
  const lines = text.replace(/\\n/g, '\n').split('\n')
  return (
    <span className={className} style={style}>
      {lines.map((line, i) => (
        <React.Fragment key={i}>
          {line}
          {i < lines.length - 1 && <br />}
        </React.Fragment>
      ))}
    </span>
  )
}
