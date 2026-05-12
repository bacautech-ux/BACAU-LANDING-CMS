const BASE = process.env.PAYLOAD_URL || 'http://localhost:4800'

const productData: Record<string, { nameVi: string; nameEn: string; brand: string; shortDescVi: string }[]> = {
  innomotics: [
    { nameVi: 'Động cơ điện hạ thế SIMOTICS GP', nameEn: 'SIMOTICS GP Low Voltage Motor', brand: 'INNOMOTICS', shortDescVi: 'Động cơ không đồng bộ 3 pha, hiệu suất cao IE3, công suất 0.75-315kW, phù hợp cho các ứng dụng công nghiệp đa dạng.' },
    { nameVi: 'Biến tần SINAMICS G120C', nameEn: 'SINAMICS G120C Drive', brand: 'INNOMOTICS', shortDescVi: 'Biến tần compact tích hợp, công suất 0.55-132kW, dễ lắp đặt và vận hành cho bơm, quạt, băng tải.' },
    { nameVi: 'Động cơ servo SIMOTICS S-1FK7', nameEn: 'SIMOTICS S-1FK7 Servo Motor', brand: 'INNOMOTICS', shortDescVi: 'Động cơ servo hiệu suất cao, mô-men xoắn lớn, phản hồi nhanh cho ứng dụng CNC và robot.' },
    { nameVi: 'Động cơ phòng nổ SIMOTICS XP', nameEn: 'SIMOTICS XP Explosion-proof Motor', brand: 'INNOMOTICS', shortDescVi: 'Động cơ chống cháy nổ tiêu chuẩn ATEX/IECEx, phù hợp môi trường dầu khí, hóa chất.' },
    { nameVi: 'Biến tần SINAMICS G120X', nameEn: 'SINAMICS G120X Infrastructure Drive', brand: 'INNOMOTICS', shortDescVi: 'Biến tần chuyên dụng cho hạ tầng: bơm nước, HVAC, xử lý nước thải, tiết kiệm năng lượng tối ưu.' },
    { nameVi: 'Động cơ SIMOTICS SD', nameEn: 'SIMOTICS SD Severe Duty Motor', brand: 'INNOMOTICS', shortDescVi: 'Động cơ chịu tải nặng, thiết kế cho môi trường khắc nghiệt: mỏ, xi măng, thép.' },
    { nameVi: 'Biến tần SINAMICS S120', nameEn: 'SINAMICS S120 Modular Drive', brand: 'INNOMOTICS', shortDescVi: 'Hệ biến tần modular đa trục, điều khiển chính xác cao cho dây chuyền sản xuất phức tạp.' },
    { nameVi: 'Động cơ SIMOTICS HV', nameEn: 'SIMOTICS HV High Voltage Motor', brand: 'INNOMOTICS', shortDescVi: 'Động cơ trung thế công suất lớn 200kW-70MW, cho nhà máy điện, dầu khí, khai khoáng.' },
    { nameVi: 'Starter mềm SIRIUS 3RW', nameEn: 'SIRIUS 3RW Soft Starter', brand: 'INNOMOTICS', shortDescVi: 'Khởi động mềm giảm dòng khởi động, bảo vệ động cơ, kéo dài tuổi thọ thiết bị.' },
    { nameVi: 'Bộ điều khiển SINAMICS DCP', nameEn: 'SINAMICS DCP DC-DC Converter', brand: 'INNOMOTICS', shortDescVi: 'Bộ chuyển đổi DC/DC cho ứng dụng lưu trữ năng lượng và nguồn điện tái tạo.' },
  ],
  'tu-dong-hoa': [
    { nameVi: 'PLC SIMATIC S7-1500', nameEn: 'SIMATIC S7-1500 PLC', brand: 'Siemens', shortDescVi: 'Bộ điều khiển lập trình tiên tiến, hiệu năng cao, tích hợp bảo mật IT cho nhà máy thông minh.' },
    { nameVi: 'PLC SIMATIC S7-1200', nameEn: 'SIMATIC S7-1200 PLC', brand: 'Siemens', shortDescVi: 'PLC compact cho ứng dụng tự động hóa vừa và nhỏ, dễ lập trình với TIA Portal.' },
    { nameVi: 'HMI SIMATIC TP700 Comfort', nameEn: 'SIMATIC TP700 Comfort Panel', brand: 'Siemens', shortDescVi: 'Màn hình cảm ứng 7 inch, hiển thị sắc nét, kết nối đa giao thức cho giám sát vận hành.' },
    { nameVi: 'Module I/O SIMATIC ET 200SP', nameEn: 'SIMATIC ET 200SP I/O Module', brand: 'Siemens', shortDescVi: 'Trạm I/O phân tán compact, lắp đặt linh hoạt, hỗ trợ PROFINET và PROFIBUS.' },
    { nameVi: 'Bộ nguồn SITOP PSU8200', nameEn: 'SITOP PSU8200 Power Supply', brand: 'Siemens', shortDescVi: 'Nguồn cấp DC 24V ổn định, hiệu suất 95%, chịu tải cao cho tủ điện tự động hóa.' },
    { nameVi: 'Switch SCALANCE XC208', nameEn: 'SCALANCE XC208 Industrial Switch', brand: 'Siemens', shortDescVi: 'Switch công nghiệp 8 port, hỗ trợ PROFINET, thiết kế cho môi trường công nghiệp khắc nghiệt.' },
    { nameVi: 'SCADA WinCC V8', nameEn: 'SIMATIC WinCC V8 SCADA', brand: 'Siemens', shortDescVi: 'Hệ thống SCADA giám sát điều khiển, web-based, mở rộng linh hoạt từ đơn lẻ đến nhà máy lớn.' },
    { nameVi: 'Safety PLC SIMATIC S7-1500F', nameEn: 'SIMATIC S7-1500F Safety PLC', brand: 'Siemens', shortDescVi: 'PLC an toàn SIL3/PLe, tích hợp chức năng safety và standard trong một CPU.' },
    { nameVi: 'Router SCALANCE M876-4', nameEn: 'SCALANCE M876-4 Industrial Router', brand: 'Siemens', shortDescVi: 'Router công nghiệp 4G LTE, VPN bảo mật, truy cập từ xa cho bảo trì thiết bị.' },
    { nameVi: 'Phần mềm TIA Portal V19', nameEn: 'TIA Portal V19 Engineering Software', brand: 'Siemens', shortDescVi: 'Nền tảng lập trình tích hợp cho PLC, HMI, Drive, thống nhất workflow kỹ thuật.' },
  ],
  'do-luong-siemens': [
    { nameVi: 'Lưu lượng kế SITRANS FM MAG 5100W', nameEn: 'SITRANS FM MAG 5100W Flowmeter', brand: 'Siemens', shortDescVi: 'Đo lưu lượng điện từ cho nước và nước thải, độ chính xác ±0.2%, DN15-2400.' },
    { nameVi: 'Cảm biến áp suất SITRANS P320', nameEn: 'SITRANS P320 Pressure Transmitter', brand: 'Siemens', shortDescVi: 'Transmitter áp suất kỹ thuật số, HART protocol, dải đo rộng cho mọi ứng dụng.' },
    { nameVi: 'Đo mức radar SITRANS LR250', nameEn: 'SITRANS LR250 Radar Level', brand: 'Siemens', shortDescVi: 'Radar đo mức phi tiếp xúc 26GHz, đo qua chất rắn và chất lỏng, khoảng cách đến 20m.' },
    { nameVi: 'Đo nhiệt độ SITRANS TS500', nameEn: 'SITRANS TS500 Temperature Sensor', brand: 'Siemens', shortDescVi: 'Cảm biến nhiệt độ RTD/TC, độ chính xác cao, đáp ứng nhanh cho quá trình công nghiệp.' },
    { nameVi: 'Lưu lượng kế siêu âm SITRANS FS230', nameEn: 'SITRANS FS230 Ultrasonic Flowmeter', brand: 'Siemens', shortDescVi: 'Đo lưu lượng siêu âm clamp-on, không cần cắt ống, lắp đặt dễ dàng.' },
    { nameVi: 'Phân tích khí ULTRAMAT 23', nameEn: 'ULTRAMAT 23 Gas Analyzer', brand: 'Siemens', shortDescVi: 'Thiết bị phân tích khí liên tục NDIR/UV, đo CO, CO2, SO2, NO cho khí thải.' },
    { nameVi: 'Cân băng tải MILLTRONICS', nameEn: 'MILLTRONICS Belt Scale', brand: 'Siemens', shortDescVi: 'Cân băng tải chính xác cao, kiểm soát lưu lượng vật liệu rời trong khai khoáng, xi măng.' },
    { nameVi: 'Đo mức siêu âm SITRANS LU240', nameEn: 'SITRANS LU240 Ultrasonic Level', brand: 'Siemens', shortDescVi: 'Đo mức siêu âm cho bồn chứa chất lỏng, khoảng cách đến 12m, dễ cấu hình.' },
    { nameVi: 'Bộ ghi dữ liệu SIREC D', nameEn: 'SIREC D Data Recorder', brand: 'Siemens', shortDescVi: 'Thiết bị ghi dữ liệu quá trình, màn hình cảm ứng, lưu trữ và phân tích trend.' },
    { nameVi: 'Cảm biến oxy OXYMAT 64', nameEn: 'OXYMAT 64 Oxygen Analyzer', brand: 'Siemens', shortDescVi: 'Đo nồng độ oxy chính xác cao bằng phương pháp thuận từ, cho lò đốt và quá trình.' },
  ],
  flender: [
    { nameVi: 'Hộp số FLENDER SIG', nameEn: 'FLENDER SIG Helical Gear Unit', brand: 'FLENDER', shortDescVi: 'Hộp giảm tốc trục song song, mô-men xoắn đến 242,000 Nm, hiệu suất 98% mỗi cấp.' },
    { nameVi: 'Hộp số FLENDER B Series', nameEn: 'FLENDER B Series Bevel-Helical', brand: 'FLENDER', shortDescVi: 'Hộp giảm tốc bánh răng côn-trụ, thiết kế modular, phù hợp băng tải và máy trộn.' },
    { nameVi: 'Khớp nối FLENDER ARPEX', nameEn: 'FLENDER ARPEX Coupling', brand: 'FLENDER', shortDescVi: 'Khớp nối đĩa thép, truyền mô-men không khe hở, không cần bảo dưỡng, tuổi thọ cao.' },
    { nameVi: 'Hộp số tuabin gió FLENDER', nameEn: 'FLENDER Wind Turbine Gearbox', brand: 'FLENDER', shortDescVi: 'Hộp số cho tuabin gió, thiết kế chịu tải trọng biến đổi, công suất đến 6MW.' },
    { nameVi: 'Hộp số FLENDER FZG', nameEn: 'FLENDER FZG Gear Unit', brand: 'FLENDER', shortDescVi: 'Hộp giảm tốc trục vuông góc, lắp chân hoặc treo, ứng dụng cho xi măng, khai khoáng.' },
    { nameVi: 'Khớp nối FLENDER N-EUPEX', nameEn: 'FLENDER N-EUPEX Coupling', brand: 'FLENDER', shortDescVi: 'Khớp nối đàn hồi, giảm chấn rung, dễ lắp đặt, phù hợp bơm và máy nén.' },
    { nameVi: 'Hộp số hành tinh FLENDER P Series', nameEn: 'FLENDER P Series Planetary', brand: 'FLENDER', shortDescVi: 'Hộp giảm tốc hành tinh, mô-men cao, kích thước nhỏ gọn cho không gian hạn chế.' },
    { nameVi: 'Bộ giám sát FLENDER DX500', nameEn: 'FLENDER DX500 Monitoring System', brand: 'FLENDER', shortDescVi: 'Hệ thống giám sát tình trạng hộp số thời gian thực, phát hiện sớm hư hỏng.' },
    { nameVi: 'Hộp số máy nghiền FLENDER KMPS', nameEn: 'FLENDER KMPS Mill Drive', brand: 'FLENDER', shortDescVi: 'Hộp giảm tốc chuyên dụng cho máy nghiền xi măng, mô-men xoắn siêu cao.' },
    { nameVi: 'Khớp nối FLENDER RUPEX', nameEn: 'FLENDER RUPEX Coupling', brand: 'FLENDER', shortDescVi: 'Khớp nối đàn hồi pin, chịu tải va đập, bảo vệ hệ truyền động khỏi quá tải.' },
  ],
  'tokyo-keiki': [
    { nameVi: 'Bơm piston Tokyo Keiki SQP', nameEn: 'Tokyo Keiki SQP Vane Pump', brand: 'Tokyo Keiki', shortDescVi: 'Bơm cánh gạt hiệu suất cao, tiếng ồn thấp, áp suất đến 21MPa cho hệ thủy lực.' },
    { nameVi: 'Van servo Tokyo Keiki DG4V-3', nameEn: 'Tokyo Keiki DG4V-3 Directional Valve', brand: 'Tokyo Keiki', shortDescVi: 'Van điều hướng solenoid 4/3, lưu lượng đến 100L/min, đáp ứng nhanh.' },
    { nameVi: 'Bơm piston Tokyo Keiki P Series', nameEn: 'Tokyo Keiki P Series Piston Pump', brand: 'Tokyo Keiki', shortDescVi: 'Bơm piston hướng trục áp suất cao đến 35MPa, điều khiển lưu lượng chính xác.' },
    { nameVi: 'Van tỉ lệ Tokyo Keiki EPFG', nameEn: 'Tokyo Keiki EPFG Proportional Valve', brand: 'Tokyo Keiki', shortDescVi: 'Van tỉ lệ điều khiển áp suất và lưu lượng liên tục, chính xác cao.' },
    { nameVi: 'Bộ nguồn thủy lực Tokyo Keiki', nameEn: 'Tokyo Keiki Hydraulic Power Unit', brand: 'Tokyo Keiki', shortDescVi: 'Bộ nguồn thủy lực tích hợp, thiết kế compact, sẵn sàng lắp đặt cho máy CNC.' },
    { nameVi: 'Van giảm áp Tokyo Keiki CRG', nameEn: 'Tokyo Keiki CRG Relief Valve', brand: 'Tokyo Keiki', shortDescVi: 'Van giảm áp an toàn, đáp ứng nhanh, áp suất đến 35MPa cho bảo vệ hệ thống.' },
    { nameVi: 'Van tiết lưu Tokyo Keiki FCG', nameEn: 'Tokyo Keiki FCG Flow Control Valve', brand: 'Tokyo Keiki', shortDescVi: 'Van điều khiển lưu lượng có bù áp, duy trì tốc độ ổn định dưới tải thay đổi.' },
    { nameVi: 'Xy lanh thủy lực Tokyo Keiki', nameEn: 'Tokyo Keiki Hydraulic Cylinder', brand: 'Tokyo Keiki', shortDescVi: 'Xy lanh thủy lực tiêu chuẩn JIS, bore 40-200mm, hành trình tùy chỉnh.' },
    { nameVi: 'Van check Tokyo Keiki TCP', nameEn: 'Tokyo Keiki TCP Check Valve', brand: 'Tokyo Keiki', shortDescVi: 'Van một chiều chống rò rỉ, áp suất cracking thấp, lắp đặt inline hoặc modular.' },
    { nameVi: 'Bộ chia dòng Tokyo Keiki', nameEn: 'Tokyo Keiki Flow Divider', brand: 'Tokyo Keiki', shortDescVi: 'Bộ chia dòng thủy lực, chia đều lưu lượng cho nhiều xy lanh đồng bộ.' },
  ],
  horiba: [
    { nameVi: 'Máy phân tích khí ENDA-600ZG', nameEn: 'ENDA-600ZG Gas Analyzer', brand: 'HORIBA', shortDescVi: 'Phân tích khí liên tục đa thành phần: CO, CO2, SO2, NOx, O2 cho giám sát khí thải.' },
    { nameVi: 'Đo pH/ORP HORIBA HE-960', nameEn: 'HORIBA HE-960 pH/ORP Analyzer', brand: 'HORIBA', shortDescVi: 'Thiết bị đo pH/ORP online, tự động bù nhiệt, cho xử lý nước và nước thải.' },
    { nameVi: 'Đo độ đục HORIBA HU-200', nameEn: 'HORIBA HU-200 Turbidity Meter', brand: 'HORIBA', shortDescVi: 'Đo độ đục online theo phương pháp tán xạ ánh sáng, chuẩn EPA, cho nhà máy nước.' },
    { nameVi: 'Đo DO HORIBA HD-960', nameEn: 'HORIBA HD-960 DO Analyzer', brand: 'HORIBA', shortDescVi: 'Đo oxy hòa tan online, màng galvanic, độ chính xác cao cho bể aerotank.' },
    { nameVi: 'Phân tích nước HORIBA U-50', nameEn: 'HORIBA U-50 Water Quality Meter', brand: 'HORIBA', shortDescVi: 'Máy đo chất lượng nước cầm tay đa thông số: pH, DO, EC, độ đục, nhiệt độ.' },
    { nameVi: 'Đo SS HORIBA HS-200', nameEn: 'HORIBA HS-200 SS Monitor', brand: 'HORIBA', shortDescVi: 'Đo chất rắn lơ lửng online bằng phương pháp quang học, cho trạm xử lý nước thải.' },
    { nameVi: 'Phân tích TOC HORIBA TOCV', nameEn: 'HORIBA TOCV TOC Analyzer', brand: 'HORIBA', shortDescVi: 'Đo tổng carbon hữu cơ online, oxy hóa UV-persulfate, cho nước sạch và dược phẩm.' },
    { nameVi: 'Đo độ dẫn HORIBA HE-480', nameEn: 'HORIBA HE-480 Conductivity Meter', brand: 'HORIBA', shortDescVi: 'Đo độ dẫn điện online, bù nhiệt tự động, cho boiler và cooling tower.' },
    { nameVi: 'Phân tích khói HORIBA PG-300', nameEn: 'HORIBA PG-300 Portable Gas Analyzer', brand: 'HORIBA', shortDescVi: 'Máy phân tích khí thải xách tay, đo 5 thành phần, kiểm tra CEMS và tuân thủ.' },
    { nameVi: 'Đo Chlorine HORIBA HC-200', nameEn: 'HORIBA HC-200 Chlorine Monitor', brand: 'HORIBA', shortDescVi: 'Đo clo dư online, phương pháp điện cực, kiểm soát khử trùng nhà máy nước.' },
  ],
  van: [
    { nameVi: 'Van bi điều khiển 3 mảnh', nameEn: '3-Piece Control Ball Valve', brand: 'Bắc Âu', shortDescVi: 'Van bi 3 mảnh SS304/316, điều khiển on-off hoặc tỷ lệ, DN15-DN300, PN16-PN40.' },
    { nameVi: 'Van bướm wafer gang', nameEn: 'Wafer Butterfly Valve', brand: 'Bắc Âu', shortDescVi: 'Van bướm kiểu kẹp, thân gang, đĩa inox, seat EPDM, áp lực PN10/PN16, DN50-DN1200.' },
    { nameVi: 'Van cổng mặt bích', nameEn: 'Flanged Gate Valve', brand: 'Bắc Âu', shortDescVi: 'Van cổng mặt bích gang/thép, full bore, áp lực PN10-PN40, cho nước và hơi nước.' },
    { nameVi: 'Van cầu điều khiển khí nén', nameEn: 'Pneumatic Globe Control Valve', brand: 'Bắc Âu', shortDescVi: 'Van cầu điều khiển tỷ lệ với actuator khí nén, positioner thông minh HART.' },
    { nameVi: 'Van an toàn lò hơi', nameEn: 'Boiler Safety Valve', brand: 'Bắc Âu', shortDescVi: 'Van an toàn cho lò hơi và bình áp lực, certified theo ASME/API, xả nhanh bảo vệ hệ thống.' },
    { nameVi: 'Van một chiều đĩa đôi', nameEn: 'Dual Plate Check Valve', brand: 'Bắc Âu', shortDescVi: 'Van check đĩa đôi wafer, chống búa nước, gọn nhẹ, DN50-DN600.' },
    { nameVi: 'Actuator điện đa vòng', nameEn: 'Multi-turn Electric Actuator', brand: 'Bắc Âu', shortDescVi: 'Actuator điện cho van cổng/van cầu, mô-men đến 2000Nm, IP67, điều khiển 4-20mA.' },
    { nameVi: 'Van giảm áp tự động', nameEn: 'Self-operated Pressure Reducing Valve', brand: 'Bắc Âu', shortDescVi: 'Van giảm áp tự lực, không cần nguồn ngoài, cho hệ thống hơi và khí nén.' },
    { nameVi: 'Van điện từ solenoid', nameEn: 'Solenoid Valve', brand: 'Bắc Âu', shortDescVi: 'Van điện từ 2/2 và 3/2, đáp ứng nhanh <50ms, cho khí, nước, dầu, DN6-DN50.' },
    { nameVi: 'Bộ định vị van thông minh', nameEn: 'Smart Valve Positioner', brand: 'Bắc Âu', shortDescVi: 'Positioner thông minh HART/Foundation Fieldbus, tự chuẩn, chẩn đoán valve online.' },
  ],
  'dong-co-giam-toc': [
    { nameVi: 'Động cơ giảm tốc trục vít SEW', nameEn: 'SEW Worm Gear Motor', brand: 'SEW-EURODRIVE', shortDescVi: 'Hộp giảm tốc trục vít, tỉ số truyền cao, self-locking, công suất 0.12-15kW.' },
    { nameVi: 'Động cơ giảm tốc bánh răng côn NORD', nameEn: 'NORD Bevel Gear Motor', brand: 'NORD', shortDescVi: 'Giảm tốc bánh răng côn 2 cấp, hiệu suất 97%, lắp chân/treo/flange, IP55.' },
    { nameVi: 'Động cơ giảm tốc hành tinh Bonfiglioli', nameEn: 'Bonfiglioli Planetary Gear Motor', brand: 'Bonfiglioli', shortDescVi: 'Giảm tốc hành tinh inline, mô-men cao, kích thước nhỏ, cho băng tải và cần trục.' },
    { nameVi: 'Giảm tốc trục song song SEW R Series', nameEn: 'SEW R Series Helical Gear Motor', brand: 'SEW-EURODRIVE', shortDescVi: 'Giảm tốc trục song song, tiếng ồn thấp, bảo dưỡng ít, 0.12-200kW.' },
    { nameVi: 'Động cơ giảm tốc Cyclo Sumitomo', nameEn: 'Sumitomo Cyclo Drive', brand: 'Sumitomo', shortDescVi: 'Giảm tốc Cycloidal, chịu tải va đập, tuổi thọ dài, cho máy ép nhựa và đóng gói.' },
    { nameVi: 'Giảm tốc trục vuông góc NORD SK', nameEn: 'NORD SK Right Angle Gear Motor', brand: 'NORD', shortDescVi: 'Giảm tốc trục vuông góc, hollow shaft, lắp trực tiếp lên trục băng tải.' },
    { nameVi: 'Biến tần tích hợp SEW MOVIGEAR', nameEn: 'SEW MOVIGEAR Mechatronic Drive', brand: 'SEW-EURODRIVE', shortDescVi: 'Hệ dẫn động cơ điện tử tích hợp motor + giảm tốc + biến tần, IE5 ultra premium.' },
    { nameVi: 'Giảm tốc Bevel Helical Bonfiglioli A', nameEn: 'Bonfiglioli A Series Bevel Helical', brand: 'Bonfiglioli', shortDescVi: 'Giảm tốc côn-trụ 2-3 cấp, mô-men đến 18,000Nm, cho mixer và agitator.' },
    { nameVi: 'Động cơ giảm tốc phẳng SEW F Series', nameEn: 'SEW F Series Flat Gear Motor', brand: 'SEW-EURODRIVE', shortDescVi: 'Giảm tốc trục song song dạng phẳng, tiết kiệm không gian cho băng tải và cầu trục.' },
    { nameVi: 'Hộp số hành tinh Sumitomo PX', nameEn: 'Sumitomo PX Planetary Gearbox', brand: 'Sumitomo', shortDescVi: 'Hộp giảm tốc hành tinh compact, tỉ số truyền đến 1:1000, cho servo và robot.' },
  ],
}

async function getCategoryId(slug: string): Promise<number | null> {
  const res = await fetch(`${BASE}/api/product-categories?where[slug][equals]=${slug}&limit=1`)
  const data = await res.json()
  return data.docs?.[0]?.id ?? null
}

async function getExistingMediaId(): Promise<number | null> {
  const res = await fetch(`${BASE}/api/media?limit=1`)
  const data = await res.json()
  return data.docs?.[0]?.id ?? null
}

async function createProduct(
  product: { nameVi: string; nameEn: string; brand: string; shortDescVi: string },
  categoryId: number,
  thumbnailId: number,
  index: number,
  categorySlug: string,
) {
  const slug = `${categorySlug}-${index + 1}`

  const res = await fetch(`${BASE}/api/products`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({
      name: { vi: product.nameVi, en: product.nameEn },
      slug,
      productCategories: [categoryId],
      thumbnail: thumbnailId,
      brand: product.brand,
      shortDescription: { vi: product.shortDescVi, en: '' },
      featured: index < 3,
      _status: 'published',
    }),
  })

  const data = await res.json()
  if (data.doc) {
    return true
  } else {
    console.log(`  ERROR: ${slug}`, data.errors?.[0]?.message ?? '')
    return false
  }
}

async function main() {
  const mediaId = await getExistingMediaId()
  if (!mediaId) {
    console.log('ERROR: No media found. Upload at least 1 image first.')
    return
  }

  let total = 0
  for (const [catSlug, products] of Object.entries(productData)) {
    const catId = await getCategoryId(catSlug)
    if (!catId) {
      console.log(`SKIP: category ${catSlug} not found`)
      continue
    }
    console.log(`\nSeeding ${catSlug} (category ID=${catId})...`)
    for (let i = 0; i < products.length; i++) {
      const ok = await createProduct(products[i], catId, mediaId, i, catSlug)
      if (ok) total++
      process.stdout.write('.')
    }
    console.log(` done`)
  }
  console.log(`\nTotal: ${total} products created`)
}

main()
