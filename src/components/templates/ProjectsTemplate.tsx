import React from 'react'
import { PageHero } from '@/components/sections/PageHero'
import { ProjectsPageClient } from '@/components/sections/ProjectsPageClient'
import { BrandLogos } from '@/components/sections/BrandLogos'
import type { ParentCategory, SubCategory } from '@/components/sections/ProjectFilterBar'
import type { ProjectCardData } from '@/components/sections/ProjectCard'

const parentCategories: ParentCategory[] = [
  { label: 'GIẢI PHÁP ĐIỆN - TỰ ĐỘNG HÓA', value: 'dien-tu-dong' },
  { label: 'GIẢI PHÁP SỐ HÓA', value: 'so-hoa' },
  { label: 'DỊCH VỤ CÔNG NGHIỆP', value: 'dich-vu' },
  { label: 'GIẢI PHÁP ĐO LƯỜNG CÔNG NGHỆ', value: 'do-luong' },
]

const subCategories: SubCategory[] = [
  { label: 'Dầu khí', value: 'dau-khi' },
  { label: 'Phân bón & Hóa chất', value: 'phan-bon' },
  { label: 'Điện', value: 'dien' },
  { label: 'Xi măng & Khai khoáng', value: 'xi-mang' },
  { label: 'Thép', value: 'thep' },
  { label: 'Hàng tiêu dùng', value: 'tieu-dung' },
  { label: 'Thực phẩm & Đồ uống', value: 'thuc-pham' },
  { label: 'Đường', value: 'duong' },
  { label: 'Nước & Nước thải', value: 'nuoc' },
  { label: 'Cảng', value: 'cang' },
]

const allProjects: ProjectCardData[] = [
  { slug: 'scada-xi-mang-nghi-son', title: 'HỆ THỐNG SCADA NHÀ MÁY XI MĂNG NGHI SƠN', summary: 'Giám sát và điều khiển toàn bộ quy trình sản xuất xi măng', category: 'dien-tu-dong', categoryLabel: 'Tự động hóa', thumbnail: 'https://images.unsplash.com/photo-1718091289341-7ef5d938d0fc?w=600', thumbnailAlt: 'SCADA xi măng' },
  { slug: 'tu-dong-hoa-formosa', title: 'GIẢI PHÁP TỰ ĐỘNG HÓA CHO NHÀ MÁY THÉP FORMOSA', summary: 'Tích hợp hệ thống PLC, SCADA cho dây chuyền cán thép', category: 'dien-tu-dong', categoryLabel: 'Tự động hóa & Điện', thumbnail: 'https://images.unsplash.com/photo-1687791517181-53ef2e3378b3?w=600', thumbnailAlt: 'Formosa' },
  { slug: 'he-thong-dieu-khien-loc-dau', title: 'HỆ THỐNG ĐIỀU KHIỂN NHÀ MÁY LỌC DẦU DUNG QUẤT', summary: 'Triển khai hệ thống DCS cho quá trình lọc hóa dầu', category: 'dien-tu-dong', categoryLabel: 'Điện - Tự động hóa', thumbnail: 'https://images.unsplash.com/photo-1589814976776-04ca6d1daaf8?w=600', thumbnailAlt: 'Lọc dầu Dung Quất' },
  { slug: 'plc-nha-may-mia-duong', title: 'LẮP ĐẶT HỆ THỐNG PLC NHÀ MÁY MÍA ĐƯỜNG TTC', summary: 'Tự động hóa toàn bộ dây chuyền sản xuất đường tinh luyện', category: 'dien-tu-dong', categoryLabel: 'Tự động hóa', thumbnail: 'https://images.unsplash.com/photo-1742281694689-f40f0941ce68?w=600', thumbnailAlt: 'Nhà máy mía đường' },
  { slug: 'tu-dong-hoa-nestle', title: 'TỰ ĐỘNG HÓA DÂY CHUYỀN SẢN XUẤT NESTLÉ VIỆT NAM', summary: 'Lập trình PLC và tích hợp SCADA cho dây chuyền đóng gói', category: 'dien-tu-dong', categoryLabel: 'Tự động hóa', thumbnail: 'https://images.unsplash.com/photo-1762524916982-dbdd9d4551d9?w=600', thumbnailAlt: 'Nestlé' },
  { slug: 'nang-cap-s5-sang-s7-but-son', title: 'NÂNG CẤP PHẦN CỨNG S5 SANG S7 CHO CÁC TRẠM IP71, IP72', summary: 'Thay thế hệ thống Simatic S5 cũ bằng S7-1500 cho xi măng Bút Sơn', category: 'dien-tu-dong', categoryLabel: 'Tự động hóa', thumbnail: 'https://images.unsplash.com/photo-1709060912378-abc334fbcfa0?w=600', thumbnailAlt: 'Nâng cấp S7' },
  { slug: 'tram-bien-ap-formosa', title: 'TRẠM BIẾN ÁP 110KV NHÀ MÁY THÉP FORMOSA', summary: 'Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế', category: 'dien-tu-dong', categoryLabel: 'Điện công nghiệp', thumbnail: 'https://images.unsplash.com/photo-1658758904121-ee49fc5e205c?w=600', thumbnailAlt: 'Trạm biến áp' },
  { slug: 'he-thong-phong-bien-loc-nuoc', title: 'HỆ THỐNG ĐIỆN NHÀ MÁY LỌC NƯỚC THỦY CỤC', summary: 'Thiết kế và thi công hệ thống điện nhà máy xử lý nước', category: 'dien-tu-dong', categoryLabel: 'Điện công nghiệp', thumbnail: 'https://images.unsplash.com/photo-1732305829048-f0be49290d62?w=600', thumbnailAlt: 'Nhà máy nước' },
  { slug: 'ems-samsung-sdi', title: 'HỆ THỐNG QUẢN LÝ NĂNG LƯỢNG SAMSUNG SDI', summary: 'Giải pháp giám sát và tối ưu tiêu thụ điện năng', category: 'so-hoa', categoryLabel: 'Đo lường Công nghệ', thumbnail: 'https://images.unsplash.com/photo-1716198712583-788204ed2349?w=600', thumbnailAlt: 'Samsung SDI' },
  { slug: 'mes-vinamilk', title: 'HỆ THỐNG MES QUẢN LÝ SẢN XUẤT VINAMILK', summary: 'Triển khai hệ thống MES tích hợp dây chuyền sản xuất sữa', category: 'so-hoa', categoryLabel: 'Số hóa', thumbnail: 'https://images.unsplash.com/photo-1667123113124-0980f3214baa?w=600', thumbnailAlt: 'MES Vinamilk' },
  { slug: 'scada-cloud-kcn', title: 'SCADA CLOUD GIÁM SÁT KCN VIỆT NAM - SINGAPORE', summary: 'Hệ thống SCADA trên nền tảng cloud cho khu công nghiệp', category: 'so-hoa', categoryLabel: 'Số hóa & IoT', thumbnail: 'https://images.unsplash.com/photo-1714475099702-d8312928df29?w=600', thumbnailAlt: 'SCADA Cloud' },
  { slug: 'iot-nha-may-giay', title: 'GIẢI PHÁP IOT NHÀ MÁY GIẤY BÌNH DƯƠNG', summary: 'Kết nối thiết bị IoT công nghiệp cho hệ thống giám sát thời gian thực', category: 'so-hoa', categoryLabel: 'IoT Công nghiệp', thumbnail: 'https://images.unsplash.com/photo-1580983230786-ce385a434707?w=600', thumbnailAlt: 'IoT nhà máy giấy' },
  { slug: 'bao-tri-bms-landmark', title: 'BẢO TRÌ HỆ THỐNG BMS TÒA NHÀ LANDMARK 81', summary: 'Dịch vụ bảo trì định kỳ và vận hành hệ thống BMS', category: 'dich-vu', categoryLabel: 'Dịch vụ BMS', thumbnail: 'https://images.unsplash.com/photo-1765897569589-effcccec14d4?w=600', thumbnailAlt: 'Bảo trì BMS' },
  { slug: 'bao-tri-scada-loc-dau', title: 'DỊCH VỤ BẢO TRÌ SCADA NHÀ MÁY LỌC HÓA DẦU', summary: 'Hợp đồng bảo trì dài hạn hệ thống điều khiển DCS/SCADA', category: 'dich-vu', categoryLabel: 'Dịch vụ Bảo trì', thumbnail: 'https://images.unsplash.com/photo-1684932586095-6f4d998d0b12?w=600', thumbnailAlt: 'Bảo trì SCADA' },
  { slug: 'van-hanh-tram-bien-ap', title: 'DỊCH VỤ VẬN HÀNH TRẠM BIẾN ÁP KCN LONG HẬU', summary: 'Cung cấp đội ngũ kỹ thuật vận hành trạm điện 24/7', category: 'dich-vu', categoryLabel: 'Dịch vụ Vận hành', thumbnail: 'https://images.unsplash.com/photo-1741176504815-75b0b79dc3c6?w=600', thumbnailAlt: 'Vận hành trạm' },
  { slug: 'sua-chua-may-bien-ap', title: 'SỬA CHỮA VÀ PHỤC HỒI MÁY BIẾN ÁP ĐIỆN LỰC', summary: 'Dịch vụ sửa chữa, tái chế và kiểm định máy biến áp công suất lớn', category: 'dich-vu', categoryLabel: 'Dịch vụ Sửa chữa', thumbnail: 'https://images.unsplash.com/photo-1768564206500-5cddb1fea679?w=600', thumbnailAlt: 'Sửa chữa máy biến áp' },
  { slug: 'thiet-bi-do-luong-phan-bon', title: 'CUNG CẤP THIẾT BỊ ĐO LƯỜNG NHÀ MÁY PHÂN BÓN', summary: 'Phân phối và lắp đặt cảm biến đo lưu lượng, áp suất, nhiệt độ', category: 'do-luong', categoryLabel: 'Đo lường & Cảm biến', thumbnail: 'https://images.unsplash.com/photo-1537613493180-8f414e0a24c1?w=600', thumbnailAlt: 'Thiết bị đo lường' },
  { slug: 'cam-bien-khi-loc-hoa-dau', title: 'HỆ THỐNG CẢM BIẾN KHÍ NHÀ MÁY LỌC HÓA DẦU', summary: 'Cung cấp và hiệu chuẩn thiết bị phân tích khí công nghiệp', category: 'do-luong', categoryLabel: 'Đo lường Công nghệ', thumbnail: 'https://images.unsplash.com/photo-1562664514-7b70de45a61b?w=600', thumbnailAlt: 'Cảm biến khí' },
  { slug: 'ems-kcn-binh-duong', title: 'HỆ THỐNG EMS KHU CÔNG NGHIỆP VSIP BÌNH DƯƠNG', summary: 'Quản lý và tối ưu năng lượng toàn bộ khu công nghiệp', category: 'do-luong', categoryLabel: 'Quản lý Năng lượng', thumbnail: 'https://images.unsplash.com/photo-1711959239909-8124a2bb7078?w=600', thumbnailAlt: 'EMS Bình Dương' },
  { slug: 'hieu-chuan-thiet-bi-do', title: 'DỊCH VỤ HIỆU CHUẨN THIẾT BỊ ĐO LƯỜNG CÔNG NGHIỆP', summary: 'Hiệu chuẩn và chứng nhận thiết bị đo theo tiêu chuẩn ISO', category: 'do-luong', categoryLabel: 'Hiệu chuẩn', thumbnail: 'https://images.unsplash.com/photo-1760894852056-c62d3b884793?w=600', thumbnailAlt: 'Hiệu chuẩn thiết bị' },
]

interface Props {
  locale: string
  heroHeading: string
  heroBgImage: string
  heroBreadcrumbLabel: string
}

export function ProjectsTemplate({ locale, heroHeading, heroBgImage, heroBreadcrumbLabel }: Props) {
  return (
    <>
      <PageHero
        title={heroHeading}
        backgroundImage={heroBgImage}
        breadcrumbs={[
          { label: 'Trang chủ', href: `/${locale}` },
          { label: heroBreadcrumbLabel },
        ]}
      />

      <ProjectsPageClient
        locale={locale}
        projects={allProjects}
        parents={parentCategories}
        subs={subCategories}
      />

      <BrandLogos />
    </>
  )
}
