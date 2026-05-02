import React from 'react'
import { Button } from '@/components/ui/Button'

interface CTASectionProps {
  title: string
  subtitle?: string
  primaryCTA: { label: string; href: string }
  secondaryCTA?: { label: string; href: string }
}

export function CTASection({ title, subtitle, primaryCTA, secondaryCTA }: CTASectionProps) {
  return (
    <section className="bg-primary-dark py-16">
      <div className="container-site text-center">
        <h2 className="text-2xl md:text-3xl font-bold text-white mb-4">{title}</h2>
        {subtitle && <p className="text-white/70 mb-8 max-w-xl mx-auto">{subtitle}</p>}
        <div className="flex items-center justify-center gap-4 flex-wrap">
          <Button href={primaryCTA.href} variant="primary" size="lg">
            {primaryCTA.label}
          </Button>
          {secondaryCTA && (
            <Button href={secondaryCTA.href} variant="outline" size="lg" className="border-white text-white hover:bg-white hover:text-primary-navy">
              {secondaryCTA.label}
            </Button>
          )}
        </div>
      </div>
    </section>
  )
}
