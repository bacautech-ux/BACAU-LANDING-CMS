import React from 'react'

export function RedDivider({ className = '' }: { className?: string }) {
  return <div className={`h-px bg-primary-red w-full ${className}`} />
}
