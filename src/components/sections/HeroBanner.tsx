import React from 'react'
import Image from 'next/image'

interface HeroBannerProps {
  backgroundType?: 'image' | 'video' | string | null
  backgroundImage?: string
  backgroundVideo?: string
  posterImage?: string
  height?: number | null
  overlayOpacity?: number | null
}

export function HeroBanner({
  backgroundType = 'image',
  backgroundImage,
  backgroundVideo,
  posterImage,
  height = 700,
  overlayOpacity = 40,
}: HeroBannerProps) {
  const bannerHeight = height ?? 700
  const opacity = Math.min(100, Math.max(0, overlayOpacity ?? 40)) / 100
  const isVideo = backgroundType === 'video'

  if (isVideo && !backgroundVideo) return null
  if (!isVideo && !backgroundImage) return null

  return (
    <div
      className="relative w-full overflow-hidden"
      style={{ height: `clamp(200px, 40vw, ${bannerHeight}px)` }}
    >
      {isVideo ? (
        <video
          src={backgroundVideo}
          poster={posterImage}
          autoPlay
          loop
          muted
          playsInline
          className="absolute inset-0 h-full w-full object-cover"
        />
      ) : (
        <Image
          src={backgroundImage!}
          alt="Banner"
          fill
          priority
          className="object-cover"
          sizes="100vw"
        />
      )}

      <div
        className="absolute inset-0"
        style={{
          background: `linear-gradient(180deg, rgba(0,0,0,${opacity * 0.8}) 0%, rgba(0,0,0,${opacity * 0.3}) 50%, rgba(0,0,0,${opacity * 0.6}) 100%)`,
        }}
      />
    </div>
  )
}
