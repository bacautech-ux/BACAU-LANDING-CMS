'use client'

import { usePathname } from 'next/navigation'
import { useEffect, useRef, useState } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import Image from 'next/image'

const THRESHOLD_MS = 150

export function PageTransition() {
  const pathname = usePathname()
  const [show, setShow] = useState(false)
  const [phase, setPhase] = useState<'enter' | 'idle'>('enter')
  const timer = useRef<ReturnType<typeof setTimeout> | null>(null)
  const idleTimer = useRef<ReturnType<typeof setTimeout> | null>(null)
  const pending = useRef(false)
  const mounted = useRef(false)

  // After entry animation completes, switch to idle loop
  useEffect(() => {
    if (show) {
      setPhase('enter')
      idleTimer.current = setTimeout(() => setPhase('idle'), 450)
    }
    return () => { if (idleTimer.current) clearTimeout(idleTimer.current) }
  }, [show])

  // Listen for link clicks → start timer
  useEffect(() => {
    const handleClick = (e: MouseEvent) => {
      const anchor = (e.target as Element).closest('a')
      if (!anchor) return
      const href = anchor.getAttribute('href')
      if (!href || !href.startsWith('/') || href === pathname) return
      // Ignore hash-only navigation (same page anchor)
      const hrefPath = href.split('#')[0]
      if (!hrefPath || hrefPath === pathname) return

      pending.current = true
      timer.current = setTimeout(() => {
        if (pending.current) setShow(true)
      }, THRESHOLD_MS)
    }

    document.addEventListener('click', handleClick)
    return () => document.removeEventListener('click', handleClick)
  }, [pathname])

  // Pathname changed → navigation done, hide spinner
  useEffect(() => {
    if (!mounted.current) { mounted.current = true; return }
    pending.current = false
    if (timer.current) clearTimeout(timer.current)
    setShow(false)
  }, [pathname])

  // logo-mini.png is 796×1150 — actual gap: vertical at 38.4%, horizontal at 30%
  const W = 72
  const H = Math.round(72 * 1150 / 796) // ≈ 104
  const gapX = (387 / 796) * 100  // 48.6% from left
  const gapY = (750 / 1150) * 100 // 65.2% from top

  const pieces = [
    { clip: `inset(0 ${100 - gapX}% ${100 - gapY}% 0)`,       x: -60, y: -60 }, // TL
    { clip: `inset(0 0 ${100 - gapY}% ${gapX}%)`,              x:  60, y: -60 }, // TR
    { clip: `inset(${gapY}% ${100 - gapX}% 0 0)`,              x: -60, y:  60 }, // BL
    { clip: `inset(${gapY}% 0 0 ${gapX}%)`,                    x:  60, y:  60 }, // BR
  ]
  // Center the cross-gap of logo at screen center
  const mL = -(W * gapX / 100)
  const mT = -(H * gapY / 100)

  return (
    <AnimatePresence>
      {show && (
        <motion.div
          key="page-transition"
          className="fixed inset-0 z-[9998] bg-white pointer-events-none"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          transition={{ duration: 0.25 }}
        >
          {pieces.map((p, i) => (
            <motion.div
              key={i}
              className="absolute"
              style={{
                left: '50%',
                top: '50%',
                marginLeft: mL,
                marginTop: mT,
                width: W,
                height: H,
                clipPath: p.clip,
              }}
              animate={
                phase === 'enter'
                  ? { x: 0, y: 0 }
                  : { x: [0, p.x * 0.22, 0], y: [0, p.y * 0.22, 0] }
              }
              initial={{ x: p.x, y: p.y }}
              transition={
                phase === 'enter'
                  ? { duration: 0.35, delay: i * 0.05, ease: 'easeInOut' }
                  : { duration: 1.4, repeat: Infinity, ease: 'easeInOut', delay: i * 0.08 }
              }
            >
              <Image
                src="/logo-mini.png"
                alt=""
                width={W}
                height={H}
                style={{ width: W, height: H }}
                priority
              />
            </motion.div>
          ))}
        </motion.div>
      )}
    </AnimatePresence>
  )
}
