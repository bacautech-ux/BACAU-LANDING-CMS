import type { Metadata } from 'next'
import React from 'react'

export const metadata: Metadata = {
  title: 'Bắc Âu - Giải pháp Tự động hóa Công nghiệp',
  description: 'Nhà cung cấp giải pháp hàng đầu trong lĩnh vực Tự Động Hóa và Số hóa công nghiệp tại Việt Nam.',
}

export default function RootLayout({ children }: { children: React.ReactNode }) {
  return children
}
