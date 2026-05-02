import React from 'react'
import Image from 'next/image'

export interface PartnerLogo {
  name: string
  logo: string
  website?: string
}

interface PartnerLogosProps {
  partners: PartnerLogo[]
  title?: string
}

export function PartnerLogos({ partners, title }: PartnerLogosProps) {
  return (
    <section className="bg-primary-navy py-12">
      <div className="container-site">
        {title && (
          <h2 className="text-center text-lg font-semibold text-white/80 mb-8 uppercase tracking-widest">
            {title}
          </h2>
        )}
        <div className="flex items-center justify-center gap-8 md:gap-12 flex-wrap">
          {partners.map((partner) => (
            <div key={partner.name} className="relative h-8 w-24 md:h-10 md:w-28 opacity-60 hover:opacity-100 transition-opacity duration-200">
              <Image
                src={partner.logo}
                alt={partner.name}
                fill
                className="object-contain filter brightness-0 invert"
                sizes="112px"
              />
            </div>
          ))}
        </div>
      </div>
    </section>
  )
}
