import React from 'react'
import Link from 'next/link'

type Variant = 'primary' | 'secondary' | 'outline' | 'ghost'
type Size = 'sm' | 'md' | 'lg'

interface ButtonProps extends React.ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: Variant
  size?: Size
  href?: string
  external?: boolean
}

const variantClasses: Record<Variant, string> = {
  primary:
    'bg-accent-orange text-white hover:bg-amber-600 active:bg-amber-700',
  secondary:
    'bg-primary-navy text-white hover:bg-primary-dark active:bg-primary-dark/90',
  outline:
    'border border-primary-navy text-primary-navy hover:bg-primary-navy hover:text-white',
  ghost:
    'text-primary-navy hover:bg-primary-navy/10',
}

const sizeClasses: Record<Size, string> = {
  sm: 'px-4 py-2 text-sm',
  md: 'px-6 py-3 text-sm font-medium',
  lg: 'px-8 py-4 text-base font-medium',
}

export function Button({
  variant = 'primary',
  size = 'md',
  href,
  external,
  className = '',
  children,
  ...props
}: ButtonProps) {
  const base =
    'inline-flex items-center justify-center gap-2 rounded-sm font-medium transition-colors duration-200 cursor-pointer whitespace-nowrap'
  const classes = `${base} ${variantClasses[variant]} ${sizeClasses[size]} ${className}`

  if (href) {
    return (
      <Link
        href={href}
        className={classes}
        {...(external ? { target: '_blank', rel: 'noopener noreferrer' } : {})}
      >
        {children}
      </Link>
    )
  }

  return (
    <button className={classes} {...props}>
      {children}
    </button>
  )
}
