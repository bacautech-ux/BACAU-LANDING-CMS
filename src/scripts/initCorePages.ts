import { getPayload } from 'payload'

type PayloadConfig = Parameters<typeof getPayload>[0]['config']
type Locale = 'vi' | 'en'
type AboutSidebarSeedGroup = {
  title: string
  titleHref: string
  items: readonly { label: string; href: string }[]
}
type AboutSectionSeed = {
  id: string
  title: string
  variant: string
  columns?: string
  imagePosition?: string
  body?: string
  paragraphs?: readonly { text?: string }[]
  images?: readonly { imageURL?: string; alt?: string; caption?: string }[]
  cards?: readonly { title?: string; description?: string; icon?: string }[]
  items?: readonly {
    title?: string
    subtitle?: string
    description?: string
    meta?: string
    icon?: string
    imageURL?: string
    alt?: string
    href?: string
    buttonLabel?: string
  }[]
}

const locales: { code: Locale; pages: Record<string, string> }[] = [
  {
    code: 'en',
    pages: {
      about: 'Company profile',
      projects: 'Reference projects',
    },
  },
  {
    code: 'vi',
    pages: {
      about: 'Giới thiệu công ty',
      projects: 'Dự án tham khảo',
    },
  },
]

function richTextFromText(text: string) {
  return {
    root: {
      type: 'root',
      format: '' as const,
      indent: 0,
      version: 1,
      children: [
        {
          type: 'paragraph',
          format: '',
          indent: 0,
          version: 1,
          children: [
            {
              type: 'text',
              detail: 0,
              format: 0,
              mode: 'normal',
              style: '',
              text,
              version: 1,
            },
          ],
        },
      ],
      direction: null,
    },
  }
}

const aboutSidebarByLocale = {
  vi: [
    {
      title: 'Về Bắc Âu',
      titleHref: '/vi/gioi-thieu',
      items: [
        { label: 'Giới thiệu', href: '/vi/gioi-thieu#gioi-thieu' },
        { label: 'Sứ mệnh - Tầm nhìn - Giá trị', href: '/vi/gioi-thieu#su-menh' },
      ],
    },
    {
      title: 'Lĩnh vực kinh doanh',
      titleHref: '/vi/gioi-thieu/linh-vuc',
      items: [
        { label: 'Giải pháp Điện - Tự động hóa', href: '/vi/gioi-thieu#giai-phap-dien' },
        { label: 'Giải pháp Số hóa', href: '/vi/gioi-thieu#so-hoa' },
        { label: 'Giải pháp Đo lường Công nghệ', href: '/vi/gioi-thieu#do-luong' },
        { label: 'Sản phẩm Công nghiệp', href: '/vi/gioi-thieu#san-pham' },
        { label: 'Dịch vụ Công nghiệp', href: '/vi/gioi-thieu#dich-vu' },
      ],
    },
    {
      title: 'Năng lực',
      titleHref: '/vi/gioi-thieu/nang-luc',
      items: [
        { label: 'Trang thiết bị nhà xưởng', href: '/vi/gioi-thieu#nha-xuong' },
        { label: 'Văn phòng đại diện', href: '/vi/gioi-thieu#van-phong' },
      ],
    },
    {
      title: 'ATLĐ & chất lượng',
      titleHref: '/vi/gioi-thieu/an-toan',
      items: [
        { label: 'Chứng chỉ Chất lượng', href: '/vi/gioi-thieu#chung-chi' },
        { label: 'Sức khỏe, An toàn & Môi trường', href: '/vi/gioi-thieu#atld' },
      ],
    },
    {
      title: 'Chứng chỉ & Tài liệu',
      titleHref: '/vi/gioi-thieu/chung-chi',
      items: [
        { label: 'Chứng chỉ & Tài liệu', href: '/vi/gioi-thieu#tai-lieu' },
      ],
    },
  ],
  en: [
    {
      title: 'About BacAu',
      titleHref: '/en/about',
      items: [
        { label: 'Overview', href: '/en/about#gioi-thieu' },
        { label: 'Mission - Vision - Values', href: '/en/about#su-menh' },
      ],
    },
    {
      title: 'Business areas',
      titleHref: '/en/about/business',
      items: [
        { label: 'Electrical & Automation', href: '/en/about#giai-phap-dien' },
        { label: 'Digitalization', href: '/en/about#so-hoa' },
        { label: 'Measurement technology', href: '/en/about#do-luong' },
        { label: 'Industrial products', href: '/en/about#san-pham' },
        { label: 'Industrial services', href: '/en/about#dich-vu' },
      ],
    },
    {
      title: 'Capabilities',
      titleHref: '/en/about/capabilities',
      items: [
        { label: 'Workshop equipment', href: '/en/about#nha-xuong' },
        { label: 'Representative offices', href: '/en/about#van-phong' },
      ],
    },
    {
      title: 'HSE & quality',
      titleHref: '/en/about/hse',
      items: [
        { label: 'Quality certificates', href: '/en/about#chung-chi' },
        { label: 'Health, Safety & Environment', href: '/en/about#atld' },
      ],
    },
    {
      title: 'Certificates & documents',
      titleHref: '/en/about/documents',
      items: [
        { label: 'Certificates & Documents', href: '/en/about#tai-lieu' },
      ],
    },
  ],
} as const

const aboutSectionsByLocale = {
  vi: [
    {
      id: 'gioi-thieu',
      title: 'GIỚI THIỆU',
      variant: 'intro',
      imagePosition: 'left',
      paragraphs: [
        {
          text: 'Bắc Âu là nhà cung cấp giải pháp hàng đầu trong lĩnh vực Tự Động Hóa và Số hóa cho các ngành công nghiệp tại Việt Nam. Chúng tôi thực hiện trọn gói từ thiết kế kỹ thuật, lập trình phần mềm, tích hợp hệ thống, cung cấp vật tư thiết bị, thi công, lắp đặt, chạy thử vận hành, đào tạo và chuyển giao công nghệ.',
        },
        {
          text: 'Bắc Âu vinh dự được khách hàng tin tưởng qua năng lực thực hiện dự án, sự am hiểu công nghệ, sự đảm bảo chất lượng cùng với khả năng cung cấp giải pháp sáng tạo và dịch vụ chuyên nghiệp.',
        },
      ],
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1758626038030-96f813504d15?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Giới thiệu về Bắc Âu',
        },
      ],
    },
    {
      id: 'su-menh',
      title: 'SỨ MỆNH - TẦM NHÌN - GIÁ TRỊ',
      variant: 'cards',
      columns: '3',
      items: [
        {
          title: 'Sứ mệnh',
          description:
            'Cung cấp giải pháp công nghệ tiên tiến, đáng tin cậy cho ngành công nghiệp Việt Nam, giúp khách hàng vận hành an toàn, tối ưu và bền vững.',
        },
        {
          title: 'Tầm nhìn',
          description:
            'Trở thành đối tác công nghệ hàng đầu trong lĩnh vực tự động hóa và số hóa công nghiệp tại Việt Nam và khu vực.',
        },
        {
          title: 'Giá trị cốt lõi',
          description:
            'Chất lượng - Sáng tạo - Tận tâm - Hợp tác - Phát triển bền vững là nền tảng cho mọi dự án và dịch vụ của Bắc Âu.',
        },
      ],
    },
    {
      id: 'giai-phap-dien',
      title: 'GIẢI PHÁP ĐIỆN - TỰ ĐỘNG HÓA',
      variant: 'gallery',
      columns: '3',
      body: 'Bắc Âu cung cấp giải pháp toàn diện về hệ thống điện và tự động hóa công nghiệp, từ thiết kế, thi công đến vận hành và bảo trì.',
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1609556273935-f295c9dd95c1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Giải pháp điện và tự động hóa 1',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1571844885558-a9437588b208?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Giải pháp điện và tự động hóa 2',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1648598919229-fe251dba3310?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Giải pháp điện và tự động hóa 3',
        },
      ],
    },
    {
      id: 'so-hoa',
      title: 'GIẢI PHÁP SỐ HÓA',
      variant: 'gallery',
      columns: '2',
      body: 'Chuyển đổi số toàn diện cho doanh nghiệp sản xuất với các giải pháp IoT, AI và phân tích dữ liệu công nghiệp.',
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1751222169753-92b0e1a3f58f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Giải pháp số hóa 1',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1580062329913-969e9f982468?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Giải pháp số hóa 2',
        },
      ],
    },
    {
      id: 'do-luong',
      title: 'GIẢI PHÁP ĐO LƯỜNG CÔNG NGHỆ',
      variant: 'gallery',
      columns: '3',
      body: 'Cung cấp thiết bị và giải pháp đo lường chính xác phục vụ nghiên cứu và sản xuất công nghiệp.',
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1727292485858-588c7652ad69?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Giải pháp đo lường 1',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1655210913810-33acfa96d1e6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Giải pháp đo lường 2',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1651340675491-6fb0bfb5c4ea?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Giải pháp đo lường 3',
        },
      ],
    },
    {
      id: 'san-pham',
      title: 'SẢN PHẨM CÔNG NGHIỆP',
      variant: 'itemGrid',
      columns: '4',
      body: 'Bắc Âu phân phối các thiết bị và sản phẩm công nghiệp chất lượng cao từ các thương hiệu hàng đầu thế giới, phục vụ đa dạng nhu cầu sản xuất.',
      items: [
        {
          title: 'Van công nghiệp',
          description: 'Thiết bị điều khiển lưu chất cho hệ thống công nghệ và dây chuyền sản xuất.',
          imageURL:
            'https://images.unsplash.com/photo-1714058322554-c886245e3aa6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Van công nghiệp',
        },
        {
          title: 'Thiết bị điều khiển',
          description: 'PLC, HMI, biến tần và các giải pháp điều khiển hiện đại cho nhà máy.',
          imageURL:
            'https://images.unsplash.com/photo-1665969083957-e5a17f651f68?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Thiết bị điều khiển',
        },
        {
          title: 'Cảm biến & đo lường',
          description: 'Thiết bị đo, cảm biến và bộ truyền tín hiệu cho dây chuyền công nghiệp.',
          imageURL:
            'https://images.unsplash.com/photo-1637684664858-54ac3521fa5f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Cảm biến và đo lường',
        },
        {
          title: 'Tủ điện công nghiệp',
          description: 'Thiết kế, lắp ráp và kiểm thử tủ điện điều khiển theo yêu cầu dự án.',
          imageURL:
            'https://images.unsplash.com/photo-1656315801331-c9122a0e1937?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Tủ điện công nghiệp',
        },
      ],
    },
    {
      id: 'dich-vu',
      title: 'DỊCH VỤ CÔNG NGHIỆP',
      variant: 'itemGrid',
      columns: '3',
      body: 'Bắc Âu cung cấp dịch vụ kỹ thuật toàn diện từ tư vấn thiết kế, lắp đặt, vận hành đến bảo trì và sửa chữa hệ thống công nghiệp.',
      items: [
        {
          title: 'Thi công & lắp đặt',
          description: 'Triển khai hệ thống điện, tủ điều khiển và tự động hóa tại hiện trường.',
          imageURL:
            'https://images.unsplash.com/photo-1748945668245-7fec6b8782cf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Thi công và lắp đặt',
        },
        {
          title: 'Vận hành & bảo trì',
          description: 'Hỗ trợ chạy thử, tối ưu hệ thống và bảo trì định kỳ cho nhà máy.',
          imageURL:
            'https://images.unsplash.com/photo-1744441571483-12642be89c40?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Vận hành và bảo trì',
        },
        {
          title: 'Tư vấn & thiết kế',
          description: 'Thiết kế giải pháp kỹ thuật phù hợp bài toán sản xuất và chuyển đổi số.',
          imageURL:
            'https://images.unsplash.com/photo-1643290976205-c2e467a65e9c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Tư vấn và thiết kế',
        },
      ],
    },
    {
      id: 'nha-xuong',
      title: 'TRANG THIẾT BỊ NHÀ XƯỞNG',
      variant: 'gallery',
      columns: '3',
      body: 'Hệ thống nhà xưởng và trang thiết bị hiện đại của Bắc Âu đảm bảo năng lực sản xuất, lắp ráp và kiểm tra chất lượng sản phẩm đạt tiêu chuẩn quốc tế.',
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1745921189400-866618539600?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Nhà xưởng 1',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1741176506261-73218298e4d8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Nhà xưởng 2',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1668511237433-3df7d7a2d2ae?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Nhà xưởng 3',
        },
      ],
    },
    {
      id: 'van-phong',
      title: 'VĂN PHÒNG ĐẠI DIỆN',
      variant: 'itemGrid',
      columns: '2',
      body: 'Bắc Âu có mạng lưới văn phòng đại diện tại các khu vực trọng điểm, sẵn sàng hỗ trợ khách hàng trên toàn quốc.',
      items: [
        {
          title: 'TP. Hồ Chí Minh',
          subtitle: 'Văn phòng chính',
          description: 'Lô E2a-7, Đường D1, Khu Công Nghệ Cao, TP. Thủ Đức, TP. Hồ Chí Minh',
          imageURL:
            'https://images.unsplash.com/photo-1653611136862-a457b7646a8a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Văn phòng Hồ Chí Minh',
        },
        {
          title: 'Hà Nội',
          subtitle: 'Văn phòng đại diện',
          description: 'Khu vực trung tâm, hỗ trợ dự án và khách hàng khu vực miền Bắc.',
          imageURL:
            'https://images.unsplash.com/photo-1758691737083-0e7fdbde0f05?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Văn phòng Hà Nội',
        },
      ],
    },
    {
      id: 'chung-chi',
      title: 'CHỨNG CHỈ CHẤT LƯỢNG',
      variant: 'itemGrid',
      columns: '3',
      body: 'Bắc Âu đạt các chứng nhận quốc tế về hệ thống quản lý chất lượng, khẳng định cam kết về tiêu chuẩn sản phẩm và dịch vụ.',
      items: [
        {
          title: 'ISO 9001:2015',
          description: 'Hệ thống quản lý chất lượng trong triển khai dự án và dịch vụ kỹ thuật.',
          imageURL:
            'https://images.unsplash.com/photo-1638636241638-aef5120c5153?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'ISO 9001:2015',
        },
        {
          title: 'ISO 14001',
          description: 'Cam kết kiểm soát tác động môi trường trong hoạt động sản xuất và thi công.',
          imageURL:
            'https://images.unsplash.com/photo-1564676238537-dcac77e39cf1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'ISO 14001',
        },
        {
          title: 'An toàn & tuân thủ',
          description: 'Quy trình kiểm soát chất lượng, nghiệm thu và vận hành an toàn.',
          imageURL:
            'https://images.unsplash.com/photo-1768796372063-4da660e034b8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'An toàn và tuân thủ',
        },
      ],
    },
    {
      id: 'atld',
      title: 'SỨC KHỎE, AN TOÀN & MÔI TRƯỜNG',
      variant: 'splitMedia',
      columns: '2',
      paragraphs: [
        {
          text: 'Bắc Âu cam kết tuân thủ các tiêu chuẩn cao nhất về an toàn lao động, sức khỏe nghề nghiệp và bảo vệ môi trường trong mọi hoạt động sản xuất kinh doanh.',
        },
        {
          text: 'Chính sách HSE của chúng tôi bao gồm: đào tạo an toàn định kỳ cho nhân viên, kiểm tra thiết bị thường xuyên, quản lý chất thải theo quy định, và liên tục cải tiến quy trình để giảm thiểu rủi ro.',
        },
      ],
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1672220262141-bf7119d3081d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Sức khỏe, an toàn và môi trường',
        },
      ],
    },
    {
      id: 'tai-lieu',
      title: 'CHỨNG NHẬN & TÀI LIỆU',
      variant: 'tabbedDocuments',
      tabs: [
        {
          tabTitle: 'CHỨNG NHẬN',
          files: [
            { title: 'CHỨNG CHỈ NĂNG LỰC HOẠT ĐỘNG XÂY DỰNG' },
            { title: 'CHỨNG NHẬN XƯỞNG SỬA CHỮA FLENDER' },
            { title: 'CHỨNG NHẬN ĐỐI TÁC CỦA FLENDER 2025' },
            { title: 'CÁC GIẢI PHÁP TÍCH HỢP CHO TRẠM ĐO MÔI TRƯỜNG' },
          ],
        },
        {
          tabTitle: 'TÀI LIỆU',
          files: [
            { title: 'SITRAM REG TRANSFORMATING REGENERATION INTO SYSTEM RELIABILITY' },
            { title: 'XHQ GIỚI THIỆU' },
            { title: 'COMPANY PROFILE BẮC ÂU' },
          ],
        },
      ],
    },
  ],
  en: [
    {
      id: 'gioi-thieu',
      title: 'OVERVIEW',
      variant: 'intro',
      imagePosition: 'left',
      paragraphs: [
        {
          text: 'Bac Au is a leading solution provider in industrial automation and digitalization in Vietnam. We deliver turnkey scopes from engineering design, software programming and system integration to supply, installation, commissioning, training and technology transfer.',
        },
        {
          text: 'Customers trust Bac Au for our delivery capability, technology expertise, quality assurance and practical, creative service approach.',
        },
      ],
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1758626038030-96f813504d15?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'About Bac Au',
        },
      ],
    },
    {
      id: 'su-menh',
      title: 'MISSION - VISION - VALUES',
      variant: 'cards',
      columns: '3',
      items: [
        {
          title: 'Mission',
          description:
            'Provide advanced, reliable technology solutions for Vietnamese industry with a focus on safe and efficient operations.',
        },
        {
          title: 'Vision',
          description:
            'Become a leading technology partner in automation and industrial digitalization in Vietnam and the region.',
        },
        {
          title: 'Core values',
          description:
            'Quality, creativity, dedication, collaboration and sustainable development drive every engagement.',
        },
      ],
    },
    {
      id: 'giai-phap-dien',
      title: 'ELECTRICAL - AUTOMATION SOLUTIONS',
      variant: 'gallery',
      columns: '3',
      body: 'Bac Au provides complete industrial electrical and automation solutions from design and installation to operation and maintenance.',
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1609556273935-f295c9dd95c1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Electrical and automation 1',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1571844885558-a9437588b208?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Electrical and automation 2',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1648598919229-fe251dba3310?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Electrical and automation 3',
        },
      ],
    },
    {
      id: 'so-hoa',
      title: 'DIGITALIZATION SOLUTIONS',
      variant: 'gallery',
      columns: '2',
      body: 'Comprehensive digital transformation for manufacturing with IoT, AI and industrial analytics solutions.',
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1751222169753-92b0e1a3f58f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Digitalization 1',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1580062329913-969e9f982468?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Digitalization 2',
        },
      ],
    },
    {
      id: 'do-luong',
      title: 'MEASUREMENT TECHNOLOGY',
      variant: 'gallery',
      columns: '3',
      body: 'Instrumentation and precision measurement solutions for industrial production and applied research.',
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1727292485858-588c7652ad69?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Measurement technology 1',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1655210913810-33acfa96d1e6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Measurement technology 2',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1651340675491-6fb0bfb5c4ea?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
          alt: 'Measurement technology 3',
        },
      ],
    },
    {
      id: 'san-pham',
      title: 'INDUSTRIAL PRODUCTS',
      variant: 'itemGrid',
      columns: '4',
      body: 'Bac Au distributes quality industrial products from leading global brands to support diverse manufacturing needs.',
      items: [
        {
          title: 'Industrial valves',
          description: 'Fluid control devices for process systems and industrial lines.',
          imageURL:
            'https://images.unsplash.com/photo-1714058322554-c886245e3aa6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
        {
          title: 'Control devices',
          description: 'PLCs, HMIs, drives and modern control solutions.',
          imageURL:
            'https://images.unsplash.com/photo-1665969083957-e5a17f651f68?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
        {
          title: 'Sensors & instrumentation',
          description: 'Field devices and measurement instruments for plant operations.',
          imageURL:
            'https://images.unsplash.com/photo-1637684664858-54ac3521fa5f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
        {
          title: 'Industrial panels',
          description: 'Engineered and assembled control panels for project requirements.',
          imageURL:
            'https://images.unsplash.com/photo-1656315801331-c9122a0e1937?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
      ],
    },
    {
      id: 'dich-vu',
      title: 'INDUSTRIAL SERVICES',
      variant: 'itemGrid',
      columns: '3',
      body: 'Comprehensive engineering services covering design consulting, installation, commissioning, maintenance and repair.',
      items: [
        {
          title: 'Installation & execution',
          description: 'On-site deployment of power, control and automation systems.',
          imageURL:
            'https://images.unsplash.com/photo-1748945668245-7fec6b8782cf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
        {
          title: 'Operation & maintenance',
          description: 'Commissioning support, optimization and scheduled maintenance.',
          imageURL:
            'https://images.unsplash.com/photo-1744441571483-12642be89c40?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
        {
          title: 'Consulting & design',
          description: 'Application engineering aligned to industrial automation and digitalization goals.',
          imageURL:
            'https://images.unsplash.com/photo-1643290976205-c2e467a65e9c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
      ],
    },
    {
      id: 'nha-xuong',
      title: 'WORKSHOP EQUIPMENT',
      variant: 'gallery',
      columns: '3',
      body: 'Modern workshops and equipment support assembly, production and quality control to international standards.',
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1745921189400-866618539600?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1741176506261-73218298e4d8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
        {
          imageURL:
            'https://images.unsplash.com/photo-1668511237433-3df7d7a2d2ae?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
      ],
    },
    {
      id: 'van-phong',
      title: 'REPRESENTATIVE OFFICES',
      variant: 'itemGrid',
      columns: '2',
      body: 'Bac Au maintains representative offices in key regions to support customers nationwide.',
      items: [
        {
          title: 'Ho Chi Minh City',
          subtitle: 'Head office',
          description: 'E2a-7, D1 Street, Saigon Hi-Tech Park, Thu Duc City, Ho Chi Minh City',
          imageURL:
            'https://images.unsplash.com/photo-1653611136862-a457b7646a8a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
        {
          title: 'Hanoi',
          subtitle: 'Representative office',
          description: 'Regional support point for projects and customers in Northern Vietnam.',
          imageURL:
            'https://images.unsplash.com/photo-1758691737083-0e7fdbde0f05?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
      ],
    },
    {
      id: 'chung-chi',
      title: 'QUALITY CERTIFICATES',
      variant: 'itemGrid',
      columns: '3',
      body: 'Bac Au maintains international certifications that reinforce our commitment to product and service quality.',
      items: [
        {
          title: 'ISO 9001:2015',
          description: 'Quality management system for project delivery and technical services.',
          imageURL:
            'https://images.unsplash.com/photo-1638636241638-aef5120c5153?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
        {
          title: 'ISO 14001',
          description: 'Environmental commitment across production and field execution activities.',
          imageURL:
            'https://images.unsplash.com/photo-1564676238537-dcac77e39cf1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
        {
          title: 'Safety & compliance',
          description: 'Quality control, acceptance and safe commissioning practices.',
          imageURL:
            'https://images.unsplash.com/photo-1768796372063-4da660e034b8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
      ],
    },
    {
      id: 'atld',
      title: 'HEALTH, SAFETY & ENVIRONMENT',
      variant: 'splitMedia',
      columns: '2',
      paragraphs: [
        {
          text: 'Bac Au is committed to the highest standards of occupational safety, worker health and environmental protection across all operations.',
        },
        {
          text: 'Our HSE policy includes periodic safety training, routine equipment inspection, compliant waste management and ongoing process improvement to reduce risk.',
        },
      ],
      images: [
        {
          imageURL:
            'https://images.unsplash.com/photo-1672220262141-bf7119d3081d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080',
        },
      ],
    },
    {
      id: 'tai-lieu',
      title: 'CERTIFICATES & DOCUMENTS',
      variant: 'tabbedDocuments',
      tabs: [
        {
          tabTitle: 'CERTIFICATES',
          files: [
            { title: 'CONSTRUCTION ACTIVITY CAPABILITY CERTIFICATE' },
            { title: 'FLENDER REPAIR WORKSHOP CERTIFICATE' },
            { title: 'FLENDER PARTNER CERTIFICATE 2025' },
            { title: 'INTEGRATED SOLUTIONS FOR ENVIRONMENTAL MEASUREMENT STATIONS' },
          ],
        },
        {
          tabTitle: 'DOCUMENTS',
          files: [
            { title: 'SITRAM REG TRANSFORMATING REGENERATION INTO SYSTEM RELIABILITY' },
            { title: 'XHQ INTRODUCTION' },
            { title: 'BAC AU COMPANY PROFILE' },
          ],
        },
      ],
    },
  ],
} as const

const projectParentCategoriesByLocale = {
  vi: [
    { label: 'GIẢI PHÁP ĐIỆN - TỰ ĐỘNG HÓA', value: 'electrical-automation' },
    { label: 'GIẢI PHÁP SỐ HÓA', value: 'digitalization' },
    { label: 'DỊCH VỤ CÔNG NGHIỆP', value: 'industrial-services' },
    { label: 'GIẢI PHÁP ĐO LƯỜNG CÔNG NGHỆ', value: 'measurement' },
  ],
  en: [
    { label: 'ELECTRICAL - AUTOMATION', value: 'electrical-automation' },
    { label: 'DIGITALIZATION', value: 'digitalization' },
    { label: 'INDUSTRIAL SERVICES', value: 'industrial-services' },
    { label: 'MEASUREMENT TECHNOLOGY', value: 'measurement' },
  ],
} as const

const industryFiltersByLocale = {
  vi: [
    { label: 'Dầu khí', value: 'oil-gas' },
    { label: 'Phân bón & Hóa chất', value: 'fertilizer-chemical' },
    { label: 'Điện', value: 'power' },
    { label: 'Xi măng & Khai khoáng', value: 'cement-mining' },
    { label: 'Thép', value: 'steel' },
    { label: 'Thực phẩm & Đồ uống', value: 'food-beverage' },
    { label: 'Nước & Nước thải', value: 'water' },
    { label: 'Cảng', value: 'port' },
  ],
  en: [
    { label: 'Oil & gas', value: 'oil-gas' },
    { label: 'Fertilizer & chemical', value: 'fertilizer-chemical' },
    { label: 'Power', value: 'power' },
    { label: 'Cement & mining', value: 'cement-mining' },
    { label: 'Steel', value: 'steel' },
    { label: 'Food & beverage', value: 'food-beverage' },
    { label: 'Water & wastewater', value: 'water' },
    { label: 'Port', value: 'port' },
  ],
} as const

function aboutLayout(locale: Locale) {
  return [
    {
      blockType: 'pageHero',
      title: locale === 'vi' ? 'CÔNG TY BẮC ÂU' : 'BAC AU COMPANY',
      breadcrumbLabel: locale === 'vi' ? 'Công ty Bắc Âu' : 'Bac Au company',
      backgroundImageURL:
        'https://images.unsplash.com/photo-1737703121444-c568a9d3bc0e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1600',
    },
    {
      blockType: 'aboutContent',
      sidebarGroups: aboutSidebarByLocale[locale] as readonly AboutSidebarSeedGroup[],
      sections: aboutSectionsByLocale[locale] as readonly AboutSectionSeed[],
    },
    {
      blockType: 'brandLogos',
      title: locale === 'vi' ? 'ĐỐI TÁC CHIẾN LƯỢC' : 'STRATEGIC PARTNERS',
      sourceMode: 'latest',
      count: 6,
    },
  ]
}

function withAboutLocaleContent(layout: unknown, locale: Locale) {
  if (!Array.isArray(layout)) {
    return aboutLayout(locale)
  }

  const sidebarGroups = aboutSidebarByLocale[locale]
  const sections = aboutSectionsByLocale[locale]

  return layout.map((block) => {
    if (!block || typeof block !== 'object') return block

    const currentBlock = block as Record<string, unknown>

    if (currentBlock.blockType === 'pageHero') {
      return {
        ...currentBlock,
        title: locale === 'vi' ? 'CÔNG TY BẮC ÂU' : 'BAC AU COMPANY',
        breadcrumbLabel: locale === 'vi' ? 'Công ty Bắc Âu' : 'Bac Au company',
        backgroundImageURL:
          'https://images.unsplash.com/photo-1737703121444-c568a9d3bc0e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1600',
      }
    }

    if (currentBlock.blockType === 'aboutContent') {
      const existingGroups = Array.isArray(currentBlock.sidebarGroups)
        ? (currentBlock.sidebarGroups as Record<string, unknown>[])
        : []
      const existingSections = Array.isArray(currentBlock.sections)
        ? (currentBlock.sections as Record<string, unknown>[])
        : []

      return {
        ...currentBlock,
        sidebarGroups: existingGroups.map((group, groupIndex) => {
          const sourceGroup = sidebarGroups[groupIndex] as AboutSidebarSeedGroup | undefined
          const existingItems = Array.isArray(group.items) ? (group.items as Record<string, unknown>[]) : []

          return {
            ...group,
            title: sourceGroup?.title ?? group.title,
            titleHref: sourceGroup?.titleHref ?? group.titleHref,
            items: existingItems.map((item, itemIndex) => ({
              ...item,
              label: sourceGroup?.items[itemIndex]?.label ?? item.label,
              href: sourceGroup?.items[itemIndex]?.href ?? item.href,
            })),
          }
        }),
        sections: existingSections.map((section, sectionIndex) => {
          const sourceSection = sections[sectionIndex] as AboutSectionSeed | undefined
          if (!sourceSection) return section

          const existingParagraphs = Array.isArray(section.paragraphs)
            ? (section.paragraphs as Record<string, unknown>[])
            : []
          const existingImages = Array.isArray(section.images)
            ? (section.images as Record<string, unknown>[])
            : []
          const existingCards = Array.isArray(section.cards)
            ? (section.cards as Record<string, unknown>[])
            : []
          const existingItems = Array.isArray(section.items)
            ? (section.items as Record<string, unknown>[])
            : []

          return {
            ...section,
            id: sourceSection.id,
            variant: sourceSection.variant,
            columns: sourceSection.columns,
            imagePosition: sourceSection.imagePosition,
            title: sourceSection.title,
            body: sourceSection.body,
            paragraphs: existingParagraphs.map((paragraph, paragraphIndex) => ({
              ...paragraph,
              text: sourceSection.paragraphs?.[paragraphIndex]?.text ?? paragraph.text,
            })),
            images: existingImages.map((image, imageIndex) => ({
              ...image,
              imageURL: sourceSection.images?.[imageIndex]?.imageURL ?? image.imageURL,
              alt: sourceSection.images?.[imageIndex]?.alt ?? image.alt,
              caption: sourceSection.images?.[imageIndex]?.caption ?? image.caption,
            })),
            cards: existingCards.map((card, cardIndex) => ({
              ...card,
              icon: sourceSection.cards?.[cardIndex]?.icon ?? card.icon,
              title: sourceSection.cards?.[cardIndex]?.title ?? card.title,
              description: sourceSection.cards?.[cardIndex]?.description ?? card.description,
            })),
            items: existingItems.map((item, itemIndex) => ({
              ...item,
              icon: sourceSection.items?.[itemIndex]?.icon ?? item.icon,
              imageURL: sourceSection.items?.[itemIndex]?.imageURL ?? item.imageURL,
              href: sourceSection.items?.[itemIndex]?.href ?? item.href,
              title: sourceSection.items?.[itemIndex]?.title ?? item.title,
              subtitle: sourceSection.items?.[itemIndex]?.subtitle ?? item.subtitle,
              description: sourceSection.items?.[itemIndex]?.description ?? item.description,
              meta: sourceSection.items?.[itemIndex]?.meta ?? item.meta,
              alt: sourceSection.items?.[itemIndex]?.alt ?? item.alt,
              buttonLabel: sourceSection.items?.[itemIndex]?.buttonLabel ?? item.buttonLabel,
            })),
          }
        }),
      }
    }

    if (currentBlock.blockType === 'brandLogos') {
      return {
        ...currentBlock,
        title: locale === 'vi' ? 'ĐỐI TÁC CHIẾN LƯỢC' : 'STRATEGIC PARTNERS',
      }
    }

    return block
  })
}

function projectsLayout(locale: Locale) {
  return [
    {
      blockType: 'pageHero',
      title: locale === 'vi' ? 'DỰ ÁN THAM KHẢO' : 'REFERENCE PROJECTS',
      breadcrumbLabel: locale === 'vi' ? 'Dự án Tham khảo' : 'Reference projects',
      backgroundImageURL: 'https://images.unsplash.com/photo-1655936073069-07b2c9dc2db6?w=1600',
    },
    {
      blockType: 'projectsListing',
      sourceMode: 'latest',
      limit: 24,
      parentCategories: projectParentCategoriesByLocale[locale],
      industryFilters: industryFiltersByLocale[locale],
    },
    { blockType: 'brandLogos', title: locale === 'vi' ? 'ĐỐI TÁC CHIẾN LƯỢC' : 'STRATEGIC PARTNERS', sourceMode: 'latest', count: 6 },
  ]
}

async function upsertPage(payload: Awaited<ReturnType<typeof getPayload>>, slug: string) {
  const existing = await payload.find({ collection: 'pages', where: { slug: { equals: slug } }, limit: 1 })
  let id = existing.docs[0]?.id

  if (slug === 'gioi-thieu') {
    const viData = {
      title: 'Giới thiệu công ty',
      slug,
      template: 'builder',
      layout: aboutLayout('vi'),
    }

    if (!id) {
      const created = await payload.create({
        collection: 'pages',
        locale: 'vi',
        data: viData as never,
      })

      id = created.id
    } else {
      await payload.update({ collection: 'pages', id, locale: 'vi', data: viData as never })
    }

    const viPage = await payload.findByID({
      collection: 'pages',
      id,
      depth: 2,
      locale: 'vi',
      fallbackLocale: false,
    })

    await payload.update({
      collection: 'pages',
      id,
      locale: 'en',
      data: {
        title: 'Company profile',
        slug,
        template: 'builder',
        layout: withAboutLocaleContent(viPage.layout, 'en'),
      } as never,
    })

    return
  }

  const buildData = (locale: (typeof locales)[number]) => {
    const layout = slug === 'gioi-thieu' ? aboutLayout(locale.code) : projectsLayout(locale.code)

    return {
      title: locale.pages[slug === 'gioi-thieu' ? 'about' : 'projects'],
      slug,
      template: 'builder',
      layout,
    }
  }

  if (!id) {
    const created = await payload.create({
      collection: 'pages',
      locale: 'vi',
      data: buildData(locales[0]) as never,
    })
    await payload.update({
      collection: 'pages',
      id: created.id,
      locale: 'en',
      data: buildData(locales[1]) as never,
    })
    return
  }

  for (const locale of locales) {
    const data = buildData(locale)

    await payload.update({ collection: 'pages', id, locale: locale.code, data: data as never })
  }
}

async function enrichProjectDetail(payload: Awaited<ReturnType<typeof getPayload>>) {
  const existing = await payload.find({
    collection: 'projects',
    where: { slug: { equals: 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore' } },
    limit: 1,
  })

  const project = existing.docs[0]
  if (!project) return

  await payload.update({
    collection: 'projects',
    id: project.id,
    locale: 'vi',
    data: {
      customerName: { vi: 'CÔNG TY XI MĂNG VICEM BÚT SƠN', en: 'VICEM But Son Cement Company' },
      customerAddress: 'Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam',
      industry: 'cement-mining',
      location: 'Hà Nam',
      year: 2020,
      intro: {
        vi: richTextFromText('Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.'),
        en: richTextFromText('The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.'),
      },
      solutions: {
        vi: richTextFromText('Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.'),
        en: richTextFromText('Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.'),
      },
      customerReasons: [
        { text: 'Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.' },
        { text: 'Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.' },
        { text: 'Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.' },
      ],
      resultItems: [
        { text: 'Hệ thống vận hành ổn định sau khi bàn giao.' },
        { text: 'Giảm thời gian xử lý sự cố và tăng khả năng giám sát.' },
        { text: 'Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.' },
      ],
    } as never,
  })
}

export async function script(config: PayloadConfig) {
  const payload = await getPayload({ config })

  await upsertPage(payload, 'gioi-thieu')
  await upsertPage(payload, 'du-an-tham-khao')
  await enrichProjectDetail(payload)

  await payload.destroy()
  console.log('[done] Initialized core pages: gioi-thieu, du-an-tham-khao and project detail data')
}
