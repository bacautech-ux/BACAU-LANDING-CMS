'use client'

import React, { useEffect, useRef, useState } from 'react'

interface StatItem {
  value: number
  suffix: string
  label: string
}

interface StatsBarProps {
  stats: StatItem[]
}

function useCountUp(target: number, duration = 2000, started: boolean) {
  const [count, setCount] = useState(0)

  useEffect(() => {
    if (!started) return
    const start = performance.now()
    const tick = (now: number) => {
      const elapsed = now - start
      const progress = Math.min(elapsed / duration, 1)
      setCount(Math.floor(progress * target))
      if (progress < 1) requestAnimationFrame(tick)
    }
    requestAnimationFrame(tick)
  }, [target, duration, started])

  return count
}

function StatItem({ stat, started }: { stat: StatItem; started: boolean }) {
  const count = useCountUp(stat.value, 1800, started)
  return (
    <div className="text-center">
      <div className="text-3xl md:text-4xl font-bold text-white">
        {count}
        <span className="text-accent-orange">{stat.suffix}</span>
      </div>
      <div className="mt-1 text-sm text-white/70">{stat.label}</div>
    </div>
  )
}

export function StatsBar({ stats }: StatsBarProps) {
  const ref = useRef<HTMLDivElement>(null)
  const [started, setStarted] = useState(false)

  useEffect(() => {
    const observer = new IntersectionObserver(
      ([entry]) => { if (entry.isIntersecting) setStarted(true) },
      { threshold: 0.3 },
    )
    if (ref.current) observer.observe(ref.current)
    return () => observer.disconnect()
  }, [])

  return (
    <div ref={ref} className="bg-primary-navy py-10">
      <div className="container-site">
        <div className="grid grid-cols-2 md:grid-cols-4 gap-8">
          {stats.map((stat, i) => (
            <StatItem key={i} stat={stat} started={started} />
          ))}
        </div>
      </div>
    </div>
  )
}
