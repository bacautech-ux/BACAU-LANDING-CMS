import React from 'react'
import Image from 'next/image'
import { notFound } from 'next/navigation'
import { BreadcrumbBar } from '@/components/sections/PageHero'
import { ContentSection } from '@/components/ui/ContentSection'
import { BulletList } from '@/components/sections/ArticleSection'
import { BrandLogos } from '@/components/sections/BrandLogos'

// TODO: thay bằng fetch từ Payload CMS theo slug
const projectsData: Record<string, ProjectDetail> = {
  'nang-cap-s5-sang-s7-but-son': {
    slug: 'nang-cap-s5-sang-s7-but-son',
    title: 'DỰ ÁN NÂNG CẤP PHẦN CỨNG S5 SANG S7 CHO CÁC TRẠM IP71, IP72',
    categoryLabel: 'Tự động hóa',
    heroImage: 'https://images.unsplash.com/photo-1758272024360-a95be2abe403?w=1200',
    customer: 'CÔNG TY XI MĂNG VICEM BÚT SƠN',
    address: 'Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam',
    industry: 'Xi Măng',
    location: 'Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam',
    year: '2020',
    intro: {
      text: 'Trạm nghiền Xi Măng của nhà máy sử dụng Simatic S5 của Siemens, hệ thống hiện hữu đã cũ, không còn duy trì được hoạt động bình thường vì lý kỹ thuật, liên quan trực tiếp tới việc thay thế. Bắc Âu đã cung cấp giải pháp nâng cấp, thay thế hệ thống sử dụng S7/TIA của Siemens sử dụng mới, tiên tiến hơn, gọn, dễ vận hành.',
      image: 'https://images.unsplash.com/photo-1600683729960-0b586e23ec3b?w=1200',
    },
    work: [
      'Khảo sát, phân tích và thiết kế hệ thống điều khiển Trạm Nghiền Đá cho hai trạm IP71, IP72 sử dụng Simatic S7-1500 thay thế cho hệ thống S5 cũ',
      'Thiết kế và cung cấp tủ điện PLC S7-1500F mới, bao gồm các module I/O và mạng truyền thông Profinet',
      'Lập trình hệ thống sử dụng TIA Portal V16 bao gồm lập trình PLC, thiết kế giao diện HMI và cấu hình mạng truyền thông',
      'Lắp đặt hệ thống tại hiện trường, kết nối với các thiết bị hiện hữu và hệ thống SCADA',
      'Chạy thử, hiệu chỉnh và bàn giao hệ thống cho khách hàng',
    ],
    customerReason: [
      'Do hệ thống cũ đã ngừng sản xuất hơn 40 năm và đang ở giai đoạn cuối vòng đời sử dụng, cần thay thế gấp.',
      'Đội ngũ Bắc Âu mang kinh nghiệm trải qua rất nhiều dự án tương tự, đảm bảo khách hàng yên tâm về phương án kỹ thuật.',
      'Ban quản lý nhà xưởng chủ động xin ý kiến và nhận được đánh giá tốt, thực tế nhận thấy năng lực công nghệ hệ thống.',
      'Bên cạnh đó, trường hợp một số khách hàng của Bắc Âu cũng ảnh hưởng quyết định chọn lựa Bắc Âu.',
    ],
    results: [
      'Chất lượng sản phẩm trộn phối kết tinh hoàn hảo.',
      'Hệ thống lắp đặt, chạy thử, bảo hành hệ thống vận hành linh hoạt nhiều năm hoạt động ổn định.',
      'Hệ thống chạy nhịp nhàng với các cơ cấu, dây chuyền thi công xây lắp đạt yêu cầu.',
      'Những yêu cầu phát sinh từ nhà máy được Bắc Âu đáp ứng kịp thời và không ảnh hưởng tới lịch vận hành dự án.',
    ],
    bottomImages: [
      { src: 'https://images.unsplash.com/photo-1701414591696-73b1ac066175?w=800', alt: 'Hiện trường thi công 1' },
      { src: 'https://images.unsplash.com/photo-1733337990042-f8bb451b2393?w=800', alt: 'Hiện trường thi công 2' },
    ],
  },
  'bms-landmark-81': {
    slug: 'bms-landmark-81',
    title: 'HỆ THỐNG BMS TÒA NHÀ LANDMARK 81',
    categoryLabel: 'Hệ thống BMS',
    heroImage: 'https://images.unsplash.com/photo-1486325212027-8081e485255e?w=1200',
    customer: 'VINHOMES CENTRAL PARK',
    address: 'Bình Thạnh, TP. Hồ Chí Minh',
    industry: 'Bất động sản – Tòa nhà thông minh',
    location: 'TP. Hồ Chí Minh',
    year: '2019',
    intro: {
      text: 'Landmark 81 là tòa nhà cao nhất Việt Nam với 81 tầng. Bắc Âu triển khai hệ thống BMS (Building Management System) tích hợp điều hòa không khí, chiếu sáng, PCCC và hệ thống an ninh cho toàn bộ tòa nhà.',
      image: 'https://images.unsplash.com/photo-1497366216548-37526070297c?w=1200',
    },
    work: [
      'Thiết kế và triển khai hệ thống BMS tích hợp HVAC, chiếu sáng, PCCC, an ninh',
      'Lắp đặt hơn 5.000 điểm giám sát và điều khiển trên toàn tòa nhà',
      'Phát triển giao diện SCADA trực quan cho đội ngũ vận hành',
      'Tích hợp hệ thống quản lý năng lượng (EMS) giúp tiết kiệm 30% điện năng',
      'Đào tạo đội ngũ vận hành và cung cấp dịch vụ bảo trì dài hạn',
    ],
    customerReason: [
      'Landmark 81 yêu cầu nhà thầu có kinh nghiệm về BMS cho tòa nhà cao tầng quy mô lớn.',
      'Bắc Âu đã hoàn thành nhiều dự án BMS tương tự với kết quả xuất sắc.',
      'Khả năng tích hợp đa hệ thống và hỗ trợ kỹ thuật 24/7 là yếu tố quyết định.',
    ],
    results: [
      'Hệ thống BMS vận hành ổn định và hiệu quả từ khi đưa vào hoạt động.',
      'Tiết kiệm 30% chi phí điện năng so với trước khi triển khai.',
      'Thời gian phản hồi sự cố giảm từ 30 phút xuống còn 5 phút.',
      'Được đánh giá là hệ thống BMS tiên tiến nhất tại Việt Nam thời điểm hoàn thành.',
    ],
    bottomImages: [
      { src: 'https://images.unsplash.com/photo-1497366216548-37526070297c?w=800', alt: 'BMS control room' },
      { src: 'https://images.unsplash.com/photo-1504328345606-18bbc8c9d7d1?w=800', alt: 'Thiết bị điều khiển' },
    ],
  },
}

interface ProjectDetail {
  slug: string
  title: string
  categoryLabel: string
  heroImage: string
  customer: string
  address: string
  industry: string
  location: string
  year: string
  intro: { text: string; image: string }
  work: string[]
  customerReason: string[]
  results: string[]
  bottomImages: { src: string; alt: string }[]
}

const infoRows = (p: ProjectDetail) => [
  { label: 'Tên khách hàng', value: p.customer },
  { label: 'Địa chỉ khách hàng', value: p.address },
  { label: 'Ngành công nghiệp', value: p.industry },
  { label: 'Địa điểm thực hiện dự án', value: p.location },
  { label: 'Thời gian thực hiện dự án', value: p.year },
]

export default async function ProjectDetailPage({
  params,
}: {
  params: Promise<{ locale: string; slug: string }>
}) {
  const { locale, slug } = await params
  const project = projectsData[slug]

  if (!project) notFound()

  return (
    <>
      {/* Breadcrumb — $primary-blue bg, padding [12, 60] */}
      <BreadcrumbBar
        items={[
          { label: 'Trang chủ', href: `/${locale}` },
          { label: 'Dự án Tham Khảo', href: `/${locale}/du-an-tham-khao` },
          { label: project.title },
        ]}
      />

      {/* Hero — padding [40, 60], gap 40, 2 cột */}
      <div style={{ padding: '40px 60px' }}>
        <div className="grid grid-cols-2 gap-10">
          {/* Ảnh dự án — height 400, cornerRadius 4 */}
          <div className="relative overflow-hidden rounded-[4px]" style={{ height: 400 }}>
            <Image
              src={project.heroImage}
              alt={project.title}
              fill
              className="object-cover"
              sizes="50vw"
              priority
            />
          </div>

          {/* Project info */}
          <div className="flex flex-col gap-5">
            <h1
              className="font-bold text-text-primary leading-snug"
              style={{ fontSize: 22 }}
            >
              {project.title}
            </h1>

            {/* Category tag — pill nhỏ */}
            <span
              className="self-start px-3 py-1 rounded-full text-white bg-primary-blue"
              style={{ fontSize: 12, fontWeight: 600 }}
            >
              {project.categoryLabel}
            </span>

            {/* Red divider */}
            <div className="h-px w-full bg-primary-red" />

            {/* Info table — gap 12, 14px */}
            <dl className="flex flex-col gap-3">
              {infoRows(project).map((row) => (
                <div key={row.label} className="flex gap-2" style={{ fontSize: 14 }}>
                  <dt className="font-semibold text-text-primary shrink-0" style={{ width: 200 }}>
                    {row.label}:
                  </dt>
                  <dd className="text-text-secondary">{row.value}</dd>
                </div>
              ))}
            </dl>
          </div>
        </div>
      </div>

      {/* Article body — padding [40, 60], gap 40 */}
      <div className="flex flex-col gap-10" style={{ padding: '40px 60px' }}>

        {/* Info repeat ở đầu article */}
        <dl className="flex flex-col gap-4">
          {infoRows(project).map((row) => (
            <div key={row.label} style={{ fontSize: 14 }}>
              <span className="font-semibold text-text-primary">{row.label}: </span>
              <span className="text-text-secondary">{row.value}</span>
            </div>
          ))}
        </dl>

        <div className="h-px w-full bg-primary-red" />

        <ContentSection title="Giới thiệu về dự án">
          <div className="flex flex-col gap-5">
            <p className="text-text-secondary leading-[1.7]" style={{ fontSize: 14 }}>
              {project.intro.text}
            </p>
            <div className="relative w-full overflow-hidden rounded-[4px]" style={{ height: 360 }}>
              <Image
                src={project.intro.image}
                alt="Ảnh dự án"
                fill
                className="object-cover"
                sizes="(max-width: 1440px) 100vw"
              />
            </div>
          </div>
        </ContentSection>

        <ContentSection title="Các công việc, giải pháp, sản phẩm mà Bắc Âu đáp ứng">
          <BulletList items={project.work} />
        </ContentSection>

        <div className="h-px w-full bg-primary-red" />

        <ContentSection title="Lý giải của khách hàng">
          <BulletList items={project.customerReason} />
        </ContentSection>

        <div className="h-px w-full bg-primary-red" />

        <ContentSection title="Kết quả đạt được">
          <BulletList items={project.results} />
        </ContentSection>

        {/* Bottom images — 2 ảnh cạnh nhau, height 280, cornerRadius 4 */}
        <div className="grid grid-cols-2 gap-5">
          {project.bottomImages.map((img, i) => (
            <div
              key={i}
              className="relative overflow-hidden rounded-[4px]"
              style={{ height: 280 }}
            >
              <Image
                src={img.src}
                alt={img.alt}
                fill
                className="object-cover"
                sizes="50vw"
              />
            </div>
          ))}
        </div>
      </div>

      <BrandLogos />
    </>
  )
}
