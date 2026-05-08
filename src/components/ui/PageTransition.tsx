'use client'

import { usePathname } from 'next/navigation'
import { useEffect, useRef, useState } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import Image from 'next/image'

const THRESHOLD_MS = 150

export function PageTransition() {
  const pathname = usePathname()
  const [show, setShow] = useState(false)
  const timer = useRef<ReturnType<typeof setTimeout> | null>(null)
  const pending = useRef(false)

  // Listen for link clicks → start timer
  useEffect(() => {
    const handleClick = (e: MouseEvent) => {
      const anchor = (e.target as Element).closest('a')
      if (!anchor) return
      const href = anchor.getAttribute('href')
      if (!href || !href.startsWith('/') || href === pathname) return

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
    pending.current = false
    if (timer.current) clearTimeout(timer.current)
    setShow(false)
  }, [pathname])

  return (
    <AnimatePresence>
      {show && (
        <motion.div
          className="fixed inset-0 z-[9999] flex items-center justify-center pointer-events-none"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          exit={{ opacity: 0 }}
          transition={{ duration: 0.15 }}
        >
          <motion.div
            animate={{ rotate: 360 }}
            transition={{ duration: 1, repeat: Infinity, ease: 'linear' }}
          >
            <Image src="/logo-mini.png" alt="" width={48} height={48} priority />
          </motion.div>
        </motion.div>
      )}
    </AnimatePresence>
  )
}
