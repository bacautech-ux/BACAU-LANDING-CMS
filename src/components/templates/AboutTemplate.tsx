import React from 'react'
import Image from 'next/image'
import { PageHero } from '@/components/sections/PageHero'
import { SidebarMenu, SidebarMenuGroup } from '@/components/layout/SidebarMenu'
import { PageWithSidebar } from '@/components/layout/PageWithSidebar'
import { ContentSection } from '@/components/ui/ContentSection'
import { BrandLogos } from '@/components/sections/BrandLogos'

interface Props {
  locale: string
  heroHeading: string
  heroBgImage: string
  heroBreadcrumbLabel: string
}

export function AboutTemplate({ locale, heroHeading, heroBgImage, heroBreadcrumbLabel }: Props) {
  const sidebarGroups: SidebarMenuGroup[] = [
    {
      title: 'Về Bắc Âu',
      titleHref: `/${locale}/gioi-thieu`,
      items: [
        { label: 'Giới thiệu', href: `/${locale}/gioi-thieu#gioi-thieu` },
        { label: 'Sứ mệnh - Tầm nhìn - Giá trị', href: `/${locale}/gioi-thieu#su-menh` },
      ],
    },
    {
      title: 'Lĩnh vực kinh doanh',
      titleHref: `/${locale}/gioi-thieu/linh-vuc`,
      items: [
        { label: 'Giải pháp Điện - Tự động hóa', href: `/${locale}/gioi-thieu#giai-phap-dien` },
        { label: 'Giải pháp Số hóa', href: `/${locale}/gioi-thieu#so-hoa` },
        { label: 'Giải pháp Đo lường Công nghệ', href: `/${locale}/gioi-thieu#do-luong` },
        { label: 'Sản phẩm Công nghiệp', href: `/${locale}/gioi-thieu#san-pham` },
        { label: 'Dịch vụ Công nghiệp', href: `/${locale}/gioi-thieu#dich-vu` },
      ],
    },
    {
      title: 'Năng lực',
      titleHref: `/${locale}/gioi-thieu/nang-luc`,
      items: [
        { label: 'Trang thiết bị nhà xưởng', href: `/${locale}/gioi-thieu#nha-xuong` },
        { label: 'Văn phòng đại diện', href: `/${locale}/gioi-thieu#van-phong` },
      ],
    },
    {
      title: 'ATLĐ & chất lượng',
      titleHref: `/${locale}/gioi-thieu/an-toan`,
      items: [
        { label: 'Chứng chỉ Chất lượng', href: `/${locale}/gioi-thieu#chung-chi` },
        { label: 'Sức khỏe, An toàn & Môi trường', href: `/${locale}/gioi-thieu#atld` },
      ],
    },
    {
      title: 'Chứng chỉ & Tài liệu',
      titleHref: `/${locale}/gioi-thieu/chung-chi`,
      items: [
        { label: 'Chứng nhận', href: `/${locale}/gioi-thieu#chung-nhan` },
        { label: 'Tài liệu', href: `/${locale}/gioi-thieu#tai-lieu` },
      ],
    },
  ]

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

      <PageWithSidebar sidebar={<SidebarMenu groups={sidebarGroups} />}>
        <div className="flex flex-col gap-12">

          <ContentSection id="gioi-thieu" title="GIỚI THIỆU">
            <div className="flex flex-col gap-6">
              <p className="text-[14px] text-text-secondary leading-[1.6]">
                Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện, thành lập năm 2003.
                Với đội ngũ hơn 150 kỹ sư và chuyên gia giàu kinh nghiệm, chúng tôi cung cấp giải pháp
                toàn diện trong lĩnh vực tự động hóa, quản lý năng lượng và hệ thống điện công nghiệp
                cho các doanh nghiệp trên toàn quốc.
              </p>
              <div className="grid grid-cols-2 gap-4">
                <div className="relative aspect-[4/3] overflow-hidden rounded-sm">
                  <Image src="https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=700" alt="Bắc Âu office" fill className="object-cover" sizes="40vw" />
                </div>
                <div className="relative aspect-[4/3] overflow-hidden rounded-sm">
                  <Image src="https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=700" alt="Bắc Âu team" fill className="object-cover" sizes="40vw" />
                </div>
              </div>
            </div>
          </ContentSection>

          <ContentSection id="su-menh" title="SỨ MỆNH - TẦM NHÌN - GIÁ TRỊ">
            <div className="grid grid-cols-3 gap-5">
              {[
                { icon: '🎯', label: 'Sứ mệnh', text: 'Cung cấp giải pháp tự động hóa và kỹ thuật điện tiên tiến, giúp doanh nghiệp nâng cao năng lực sản xuất và cạnh tranh.' },
                { icon: '🔭', label: 'Tầm nhìn', text: 'Trở thành đối tác tin cậy hàng đầu về tự động hóa và chuyển đổi số cho các khu công nghiệp tại Việt Nam và Đông Nam Á.' },
                { icon: '💎', label: 'Giá trị cốt lõi', text: 'Chuyên nghiệp – Tận tâm – Sáng tạo – Đáng tin cậy. Mọi dự án thực hiện với tiêu chuẩn cao nhất.' },
              ].map((v) => (
                <div key={v.label} className="flex flex-col gap-3 p-5 bg-bg-light rounded-sm">
                  <span className="text-2xl">{v.icon}</span>
                  <p className="text-[14px] font-bold text-primary-navy">{v.label}</p>
                  <p className="text-[13px] text-text-secondary leading-[1.6]">{v.text}</p>
                </div>
              ))}
            </div>
          </ContentSection>

          <ContentSection id="giai-phap-dien" title="GIẢI PHÁP ĐIỆN - TỰ ĐỘNG HÓA">
            <div className="flex flex-col gap-4">
              <p className="text-[14px] text-text-secondary leading-[1.6]">
                Bắc Âu cung cấp giải pháp toàn diện về hệ thống điện và tự động hóa công nghiệp,
                từ thiết kế, thi công đến vận hành và bảo trì.
              </p>
              <div className="grid grid-cols-3 gap-4">
                {[
                  'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=600',
                  'https://images.unsplash.com/photo-1587293852726-70cdb56c2866?w=600',
                  'https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=600',
                ].map((src, i) => (
                  <div key={i} className="relative aspect-[4/3] overflow-hidden rounded-sm">
                    <Image src={src} alt="" fill className="object-cover" sizes="25vw" />
                  </div>
                ))}
              </div>
            </div>
          </ContentSection>

          <ContentSection id="so-hoa" title="GIẢI PHÁP SỐ HÓA">
            <div className="flex flex-col gap-4">
              <p className="text-[14px] text-text-secondary leading-[1.6]">
                Chuyển đổi số toàn diện cho doanh nghiệp sản xuất với các giải pháp IoT, AI và phân tích dữ liệu công nghiệp.
              </p>
              <div className="grid grid-cols-3 gap-4">
                {[
                  'https://images.unsplash.com/photo-1518770660439-4636190af475?w=600',
                  'https://images.unsplash.com/photo-1563198804-b144dfc1661c?w=600',
                  'https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=600',
                ].map((src, i) => (
                  <div key={i} className="relative aspect-[4/3] overflow-hidden rounded-sm">
                    <Image src={src} alt="" fill className="object-cover" sizes="25vw" />
                  </div>
                ))}
              </div>
            </div>
          </ContentSection>

          <ContentSection id="do-luong" title="GIẢI PHÁP ĐO LƯỜNG CÔNG NGHỆ">
            <div className="flex flex-col gap-4">
              <p className="text-[14px] text-text-secondary leading-[1.6]">
                Cung cấp thiết bị và giải pháp đo lường chính xác phục vụ nghiên cứu và sản xuất công nghiệp.
              </p>
              <div className="grid grid-cols-3 gap-4">
                {[
                  'https://images.unsplash.com/photo-1504328345606-18bbc8c9d7d1?w=600',
                  'https://images.unsplash.com/photo-1518770660439-4636190af475?w=600',
                  'https://images.unsplash.com/photo-1596839808531-218de5fbc3b4?w=600',
                ].map((src, i) => (
                  <div key={i} className="relative aspect-[4/3] overflow-hidden rounded-sm">
                    <Image src={src} alt="" fill className="object-cover" sizes="25vw" />
                  </div>
                ))}
              </div>
            </div>
          </ContentSection>

          <ContentSection id="san-pham" title="SẢN PHẨM CÔNG NGHIỆP">
            <div className="flex flex-col gap-4">
              <p className="text-[14px] text-text-secondary leading-[1.6]">
                Bắc Âu phân phối các thiết bị và sản phẩm công nghiệp chất lượng cao từ các thương hiệu hàng đầu thế giới, phục vụ đa dạng nhu cầu sản xuất.
              </p>
              <div className="grid grid-cols-4 gap-4">
                {[
                  { name: 'Van Công Nghiệp', img: 'https://images.unsplash.com/photo-1703668984128-b506579acdd2?w=400' },
                  { name: 'Động Cơ Điện', img: 'https://images.unsplash.com/photo-1637708546408-cc724003a665?w=400' },
                  { name: 'Cảm Biến', img: 'https://images.unsplash.com/photo-1596839808531-218de5fbc3b4?w=400' },
                  { name: 'Tủ Điện Điều Khiển', img: 'https://images.unsplash.com/photo-1669876505507-b79a89b17ae9?w=400' },
                ].map((p) => (
                  <div key={p.name} className="flex flex-col gap-2">
                    <div className="relative aspect-square overflow-hidden rounded-sm">
                      <Image src={p.img} alt={p.name} fill className="object-cover" sizes="20vw" />
                    </div>
                    <p className="text-[13px] font-semibold text-primary-navy">{p.name}</p>
                  </div>
                ))}
              </div>
            </div>
          </ContentSection>

          <ContentSection id="dich-vu" title="DỊCH VỤ CÔNG NGHIỆP">
            <div className="flex flex-col gap-4">
              <p className="text-[14px] text-text-secondary leading-[1.6]">
                Bắc Âu cung cấp dịch vụ kỹ thuật toàn diện từ tư vấn thiết kế, lắp đặt, vận hành đến bảo trì và sửa chữa hệ thống công nghiệp.
              </p>
              <div className="grid grid-cols-3 gap-4">
                {['Thi công & Lắp đặt', 'Vận hành & Bảo trì', 'Tư vấn & Thiết kế'].map((s) => (
                  <div key={s} className="p-4 bg-bg-light rounded-sm border border-border">
                    <p className="text-[13px] font-semibold text-primary-navy">{s}</p>
                  </div>
                ))}
              </div>
            </div>
          </ContentSection>

          <ContentSection id="nha-xuong" title="TRANG THIẾT BỊ NHÀ XƯỞNG">
            <div className="flex flex-col gap-4">
              <p className="text-[14px] text-text-secondary leading-[1.6]">
                Hệ thống nhà xưởng và trang thiết bị hiện đại của Bắc Âu đảm bảo năng lực sản xuất, lắp ráp và kiểm tra chất lượng sản phẩm đạt tiêu chuẩn quốc tế.
              </p>
              <div className="grid grid-cols-2 gap-4">
                {[
                  'https://images.unsplash.com/photo-1486325212027-8081e485255e?w=700',
                  'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=700',
                ].map((src, i) => (
                  <div key={i} className="relative aspect-[16/9] overflow-hidden rounded-sm">
                    <Image src={src} alt="" fill className="object-cover" sizes="40vw" />
                  </div>
                ))}
              </div>
            </div>
          </ContentSection>

          <ContentSection id="van-phong" title="VĂN PHÒNG ĐẠI DIỆN">
            <div className="flex flex-col gap-4">
              <p className="text-[14px] text-text-secondary leading-[1.6]">
                Bắc Âu có mạng lưới văn phòng đại diện tại các khu vực trọng điểm, sẵn sàng hỗ trợ khách hàng trên toàn quốc.
              </p>
              <div className="grid grid-cols-3 gap-4">
                {[
                  { city: 'Hồ Chí Minh (HQ)', address: 'Lô E2a-7, Đường D1, KCN Cao, TP. Thủ Đức' },
                  { city: 'Hà Nội', address: 'Tầng 5, Tòa nhà Peakview, 36 Hoàng Cầu, Đống Đa' },
                  { city: 'Đà Nẵng', address: '120 Nguyễn Văn Linh, Hải Châu, Đà Nẵng' },
                ].map((o) => (
                  <div key={o.city} className="p-4 bg-bg-light rounded-sm border border-border">
                    <p className="text-[13px] font-bold text-primary-navy mb-1">{o.city}</p>
                    <p className="text-[12px] text-text-secondary leading-[1.5]">{o.address}</p>
                  </div>
                ))}
              </div>
            </div>
          </ContentSection>

          <ContentSection id="chung-chi" title="CHỨNG CHỈ CHẤT LƯỢNG">
            <div className="flex flex-col gap-4">
              <p className="text-[14px] text-text-secondary leading-[1.6]">
                Bắc Âu đạt các chứng nhận quốc tế về hệ thống quản lý chất lượng, khẳng định cam kết về tiêu chuẩn sản phẩm và dịch vụ.
              </p>
              <div className="grid grid-cols-4 gap-4">
                {['ISO 9001:2015', 'ISO 14001:2015', 'OHSAS 18001', 'Siemens Partner'].map((cert) => (
                  <div key={cert} className="flex flex-col items-center gap-2 p-4 border border-border rounded-sm bg-bg-light">
                    <span className="text-3xl">🏆</span>
                    <p className="text-[12px] font-semibold text-primary-navy text-center">{cert}</p>
                  </div>
                ))}
              </div>
            </div>
          </ContentSection>

          <ContentSection id="atld" title="SỨC KHỎE, AN TOÀN & MÔI TRƯỜNG">
            <div className="flex flex-col gap-3">
              {[
                'Chứng chỉ OHSAS 18001 về quản lý an toàn và sức khỏe nghề nghiệp',
                '100% nhân viên được đào tạo an toàn lao động định kỳ mỗi quý',
                'Trang bị đầy đủ bảo hộ lao động cho mọi công trường thi công',
                'Quy trình kiểm soát rủi ro và xử lý sự cố khẩn cấp được chuẩn hóa',
              ].map((item) => (
                <div key={item} className="flex gap-2 text-[14px] text-text-secondary leading-[1.6]">
                  <span className="text-primary-red mt-1 shrink-0">•</span>
                  <span>{item}</span>
                </div>
              ))}
            </div>
          </ContentSection>

          <ContentSection id="chung-nhan" title="CHỨNG NHẬN">
            <div className="flex flex-col gap-4">
              <p className="text-[14px] text-text-secondary leading-[1.6]">
                Các chứng nhận và giấy phép hoạt động của Bắc Âu trong lĩnh vực tự động hóa và dịch vụ công nghiệp.
              </p>
              <div className="grid grid-cols-3 gap-4">
                {[
                  { name: 'Giấy phép kinh doanh', desc: 'Giấy phép hoạt động trong lĩnh vực kỹ thuật điện và tự động hóa' },
                  { name: 'Đối tác Siemens', desc: 'Chứng nhận là đối tác chính thức của Siemens tại Việt Nam' },
                  { name: 'ABB Authorized', desc: 'Nhà phân phối và dịch vụ ủy quyền chính thức của ABB' },
                ].map((c) => (
                  <div key={c.name} className="flex flex-col gap-1.5 p-4 border border-border rounded-sm">
                    <p className="text-[13px] font-bold text-primary-navy">{c.name}</p>
                    <p className="text-[12px] text-text-secondary leading-[1.5]">{c.desc}</p>
                  </div>
                ))}
              </div>
            </div>
          </ContentSection>

          <ContentSection id="tai-lieu" title="TÀI LIỆU">
            <div className="flex flex-col gap-4">
              <p className="text-[14px] text-text-secondary leading-[1.6]">
                Tải xuống các tài liệu kỹ thuật, catalogue sản phẩm và thông tin dịch vụ của Bắc Âu.
              </p>
              <div className="flex flex-col gap-3">
                {[
                  'Catalogue Sản phẩm Bắc Âu 2026',
                  'Hồ sơ năng lực công ty',
                  'Danh mục giải pháp tự động hóa',
                  'Quy trình & Tiêu chuẩn thi công',
                ].map((doc) => (
                  <div key={doc} className="flex items-center justify-between p-4 border border-border rounded-sm hover:bg-bg-light transition-colors cursor-pointer">
                    <div className="flex items-center gap-3">
                      <span className="text-primary-red">📄</span>
                      <span className="text-[14px] text-text-primary">{doc}</span>
                    </div>
                    <span className="text-[13px] font-semibold text-primary-blue">Tải xuống ↓</span>
                  </div>
                ))}
              </div>
            </div>
          </ContentSection>

        </div>
      </PageWithSidebar>

      <BrandLogos />
    </>
  )
}
