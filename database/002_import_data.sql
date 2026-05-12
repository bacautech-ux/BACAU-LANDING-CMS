SET session_replication_role = replica;

TRUNCATE TABLE public._news_v, public._news_v_version_tags, public._products_v, public._products_v_locales, public._projects_v, public._projects_v_locales, public._projects_v_version_customer_reasons, public._projects_v_version_customer_reasons_locales, public._projects_v_version_result_items, public._projects_v_version_result_items_locales, public.home_page, public.home_page_blocks_brand_logos, public.home_page_blocks_cta_banner, public.home_page_blocks_cta_banner_locales, public.home_page_blocks_featured_projects, public.home_page_blocks_hero, public.home_page_blocks_hero_locales, public.home_page_blocks_news, public.home_page_blocks_partners, public.home_page_blocks_partners_locales, public.home_page_blocks_products, public.home_page_blocks_products_locales, public.home_page_blocks_services, public.home_page_blocks_services_locales, public.media, public.news, public.news_tags, public.pages, public.pages_blocks_about_content, public.pages_blocks_about_content_sections, public.pages_blocks_about_content_sections_images, public.pages_blocks_about_content_sections_images_locales, public.pages_blocks_about_content_sections_items, public.pages_blocks_about_content_sections_items_locales, public.pages_blocks_about_content_sections_locales, public.pages_blocks_about_content_sections_paragraphs, public.pages_blocks_about_content_sections_paragraphs_locales, public.pages_blocks_about_content_sidebar_groups, public.pages_blocks_about_content_sidebar_groups_items, public.pages_blocks_about_content_sidebar_groups_items_locales, public.pages_blocks_about_content_sidebar_groups_locales, public.pages_blocks_brand_logos, public.pages_blocks_brand_logos_fallback_brands, public.pages_blocks_brand_logos_locales, public.pages_blocks_cta_banner, public.pages_blocks_cta_banner_locales, public.pages_blocks_featured_projects, public.pages_blocks_featured_projects_locales, public.pages_blocks_featured_projects_tabs, public.pages_blocks_featured_projects_tabs_locales, public.pages_blocks_hero, public.pages_blocks_hero_banner, public.pages_blocks_hero_locales, public.pages_blocks_hero_stats, public.pages_blocks_hero_stats_locales, public.pages_blocks_news, public.pages_blocks_news_locales, public.pages_blocks_page_hero, public.pages_blocks_page_hero_locales, public.pages_blocks_partners, public.pages_blocks_partners_images, public.pages_blocks_partners_images_locales, public.pages_blocks_partners_locales, public.pages_blocks_products, public.pages_blocks_products_locales, public.pages_blocks_projects_listing, public.pages_blocks_projects_listing_industry_filters, public.pages_blocks_projects_listing_industry_filters_locales, public.pages_blocks_projects_listing_parent_categories, public.pages_blocks_projects_listing_parent_categories_locales, public.pages_blocks_services, public.pages_blocks_services_cards, public.pages_blocks_services_cards_locales, public.pages_blocks_services_locales, public.pages_blocks_welcome_intro, public.pages_blocks_welcome_intro_images, public.pages_blocks_welcome_intro_images_locales, public.pages_blocks_welcome_intro_locales, public.pages_locales, public.partners, public.payload_locked_documents, public.payload_locked_documents_rels, public.payload_migrations, public.payload_preferences, public.payload_preferences_rels, public.products, public.products_locales, public.projects, public.projects_customer_reasons, public.projects_customer_reasons_locales, public.projects_locales, public.projects_result_items, public.projects_result_items_locales, public.site_settings, public.site_settings_footer_columns, public.site_settings_footer_columns_links, public.site_settings_footer_columns_links_locales, public.site_settings_footer_columns_locales, public.site_settings_header_nav_items, public.site_settings_header_nav_items_children, public.site_settings_header_nav_items_children_locales, public.site_settings_header_nav_items_locales, public.site_settings_locales, public.users, public.users_sessions RESTART IDENTITY CASCADE;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.13
-- Dumped by pg_dump version 15.13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.media VALUES (1, NULL, NULL, '2026-04-24 04:41:30.774+00', '2026-04-24 04:41:30.774+00', '/api/media/file/bitrate_compressed_video.mp4', NULL, 'bitrate_compressed_video.mp4', 'video/mp4', 2941504, NULL, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (2, 'Nhà máy trong sương với hệ thống tự động hóa công nghiệp', 'Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương', '2026-05-02 09:18:04.326+00', '2026-05-02 09:18:04.324+00', '/api/media/file/news-factory-automation-binh-duong.png', NULL, 'news-factory-automation-binh-duong.png', 'image/png', 32642, 1200, 800, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (3, 'Mái nhà công nghiệp lắp đặt pin mặt trời', 'Hội thảo giải pháp quản lý năng lượng thông minh 2026', '2026-05-02 09:18:04.429+00', '2026-05-02 09:18:04.429+00', '/api/media/file/news-smart-energy-management.png', NULL, 'news-smart-energy-management.png', 'image/png', 34220, 1200, 800, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (4, 'Bàn kỹ thuật với dụng cụ và thiết bị tự động hóa', 'Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản', '2026-05-02 09:18:04.501+00', '2026-05-02 09:18:04.501+00', '/api/media/file/news-japan-strategic-partnership.png', NULL, 'news-japan-strategic-partnership.png', 'image/png', 38773, 1200, 800, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (5, 'Tòa nhà công nghiệp trong sương với hệ thống quản lý năng lượng', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', '2026-05-02 09:29:48.545+00', '2026-05-02 09:29:48.544+00', '/api/media/file/project-energy-management-vsip.png', NULL, 'project-energy-management-vsip.png', 'image/png', 24000, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (6, 'Trạm biến áp công nghiệp vào ban đêm', 'Trạm biến áp 110kV Nhà máy thép Formosa', '2026-05-02 09:29:48.651+00', '2026-05-02 09:29:48.651+00', '/api/media/file/project-formosa-substation.png', NULL, 'project-formosa-substation.png', 'image/png', 32374, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (7, 'Dây chuyền sản xuất tự động hóa trong nhà máy', 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', '2026-05-02 09:29:48.75+00', '2026-05-02 09:29:48.749+00', '/api/media/file/project-nestle-automation.png', NULL, 'project-nestle-automation.png', 'image/png', 37060, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (8, 'Không gian tòa nhà hiện đại với hệ thống quản lý BMS', 'Hệ thống BMS tòa nhà Landmark 81', '2026-05-02 09:29:48.814+00', '2026-05-02 09:29:48.813+00', '/api/media/file/project-landmark-bms.png', NULL, 'project-landmark-bms.png', 'image/png', 29632, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (9, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore thumbnail', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', '2026-05-02 13:57:22.19+00', '2026-05-02 13:57:22.188+00', '/api/media/file/project-energy-1-hero-v2.png', NULL, 'project-energy-1-hero-v2.png', 'image/png', 175876, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (10, 'Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh thumbnail', 'Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh', '2026-05-02 13:57:22.451+00', '2026-05-02 13:57:22.451+00', '/api/media/file/project-energy-2-hero-v2.png', NULL, 'project-energy-2-hero-v2.png', 'image/png', 175317, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (11, 'Giải pháp tối ưu năng lượng cho KCN Long Hậu thumbnail', 'Giải pháp tối ưu năng lượng cho KCN Long Hậu', '2026-05-02 13:57:22.641+00', '2026-05-02 13:57:22.641+00', '/api/media/file/project-energy-3-hero-v2.png', NULL, 'project-energy-3-hero-v2.png', 'image/png', 175511, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (12, 'Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar thumbnail', 'Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar', '2026-05-02 13:57:22.783+00', '2026-05-02 13:57:22.783+00', '/api/media/file/project-energy-4-hero-v2.png', NULL, 'project-energy-4-hero-v2.png', 'image/png', 176237, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (13, 'Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái thumbnail', 'Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái', '2026-05-02 13:57:22.966+00', '2026-05-02 13:57:22.966+00', '/api/media/file/project-energy-5-hero-v2.png', NULL, 'project-energy-5-hero-v2.png', 'image/png', 176013, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (14, 'Trạm biến áp 110kV Nhà máy thép Formosa thumbnail', 'Trạm biến áp 110kV Nhà máy thép Formosa', '2026-05-02 13:57:23.072+00', '2026-05-02 13:57:23.072+00', '/api/media/file/project-electrical-1-hero-v2.png', NULL, 'project-electrical-1-hero-v2.png', 'image/png', 131240, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (15, 'Tủ điện trung thế dây chuyền xi măng Hà Tiên thumbnail', 'Tủ điện trung thế dây chuyền xi măng Hà Tiên', '2026-05-02 13:57:23.185+00', '2026-05-02 13:57:23.185+00', '/api/media/file/project-electrical-2-hero-v2.png', NULL, 'project-electrical-2-hero-v2.png', 'image/png', 130831, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (16, 'Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến thumbnail', 'Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến', '2026-05-02 13:57:23.355+00', '2026-05-02 13:57:23.355+00', '/api/media/file/project-electrical-3-hero-v2.png', NULL, 'project-electrical-3-hero-v2.png', 'image/png', 132518, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (17, 'Hệ thống điện động lực cảng container Cái Mép thumbnail', 'Hệ thống điện động lực cảng container Cái Mép', '2026-05-02 13:57:23.459+00', '2026-05-02 13:57:23.459+00', '/api/media/file/project-electrical-4-hero-v2.png', NULL, 'project-electrical-4-hero-v2.png', 'image/png', 131882, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (18, 'Cải tạo trạm điện nhà máy nước Thủ Đức thumbnail', 'Cải tạo trạm điện nhà máy nước Thủ Đức', '2026-05-02 13:57:23.637+00', '2026-05-02 13:57:23.637+00', '/api/media/file/project-electrical-5-hero-v2.png', NULL, 'project-electrical-5-hero-v2.png', 'image/png', 131302, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (19, 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam thumbnail', 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', '2026-05-02 13:57:23.815+00', '2026-05-02 13:57:23.815+00', '/api/media/file/project-automation-1-hero-v2.png', NULL, 'project-automation-1-hero-v2.png', 'image/png', 161373, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (20, 'Hệ thống SCADA dây chuyền chiết rót Vinamilk thumbnail', 'Hệ thống SCADA dây chuyền chiết rót Vinamilk', '2026-05-02 13:57:23.936+00', '2026-05-02 13:57:23.936+00', '/api/media/file/project-automation-2-hero-v2.png', NULL, 'project-automation-2-hero-v2.png', 'image/png', 161622, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (21, 'Robot gắp sản phẩm cho nhà máy điện tử VSIP thumbnail', 'Robot gắp sản phẩm cho nhà máy điện tử VSIP', '2026-05-02 13:57:24.045+00', '2026-05-02 13:57:24.045+00', '/api/media/file/project-automation-3-hero-v2.png', NULL, 'project-automation-3-hero-v2.png', 'image/png', 161689, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (22, 'Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi thumbnail', 'Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi', '2026-05-02 13:57:24.159+00', '2026-05-02 13:57:24.159+00', '/api/media/file/project-automation-4-hero-v2.png', NULL, 'project-automation-4-hero-v2.png', 'image/png', 160921, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (23, 'Nâng cấp PLC dây chuyền đóng gói Masan thumbnail', 'Nâng cấp PLC dây chuyền đóng gói Masan', '2026-05-02 13:57:24.32+00', '2026-05-02 13:57:24.32+00', '/api/media/file/project-automation-5-hero-v2.png', NULL, 'project-automation-5-hero-v2.png', 'image/png', 161998, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (24, 'Hệ thống BMS tòa nhà Landmark 81 thumbnail', 'Hệ thống BMS tòa nhà Landmark 81', '2026-05-02 13:57:24.418+00', '2026-05-02 13:57:24.418+00', '/api/media/file/project-bms-1-hero-v2.png', NULL, 'project-bms-1-hero-v2.png', 'image/png', 140308, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (25, 'BMS khu văn phòng Techcombank Tower thumbnail', 'BMS khu văn phòng Techcombank Tower', '2026-05-02 13:57:24.591+00', '2026-05-02 13:57:24.591+00', '/api/media/file/project-bms-2-hero-v2.png', NULL, 'project-bms-2-hero-v2.png', 'image/png', 141199, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (26, 'Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc thumbnail', 'Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc', '2026-05-02 13:57:24.735+00', '2026-05-02 13:57:24.735+00', '/api/media/file/project-bms-3-hero-v2.png', NULL, 'project-bms-3-hero-v2.png', 'image/png', 140445, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (27, 'BMS khách sạn nghỉ dưỡng Phú Quốc thumbnail', 'BMS khách sạn nghỉ dưỡng Phú Quốc', '2026-05-02 13:57:24.839+00', '2026-05-02 13:57:24.839+00', '/api/media/file/project-bms-4-hero-v2.png', NULL, 'project-bms-4-hero-v2.png', 'image/png', 141542, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (28, 'Nâng cấp BMS trung tâm thương mại Saigon Centre thumbnail', 'Nâng cấp BMS trung tâm thương mại Saigon Centre', '2026-05-02 13:57:24.947+00', '2026-05-02 13:57:24.947+00', '/api/media/file/project-bms-5-hero-v2.png', NULL, 'project-bms-5-hero-v2.png', 'image/png', 141280, 1200, 700, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (29, 'Van công nghiệp điều khiển tự động', 'Van công nghiệp điều khiển tự động', '2026-05-02 14:23:35.541+00', '2026-05-02 14:23:35.538+00', '/api/media/file/product-industrial-valve.png', NULL, 'product-industrial-valve.png', 'image/png', 81005, 900, 1120, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (30, 'Động cơ điện và biến tần công nghiệp', 'Động cơ điện và biến tần công nghiệp', '2026-05-02 14:23:35.814+00', '2026-05-02 14:23:35.813+00', '/api/media/file/product-motor-drive.png', NULL, 'product-motor-drive.png', 'image/png', 80676, 900, 1120, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (31, 'Cảm biến công nghiệp và thiết bị đo', 'Cảm biến công nghiệp và thiết bị đo', '2026-05-02 14:23:36.032+00', '2026-05-02 14:23:36.032+00', '/api/media/file/product-industrial-sensor.png', NULL, 'product-industrial-sensor.png', 'image/png', 78648, 900, 1120, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (32, 'Tủ điện điều khiển công nghiệp', 'Tủ điện điều khiển công nghiệp', '2026-05-02 14:23:36.251+00', '2026-05-02 14:23:36.251+00', '/api/media/file/product-control-cabinet.png', NULL, 'product-control-cabinet.png', 'image/png', 78946, 900, 1120, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (33, 'Thiết bị đo lường công nghiệp', 'Thiết bị đo lường công nghiệp', '2026-05-02 14:23:36.385+00', '2026-05-02 14:23:36.384+00', '/api/media/file/product-measurement-device.png', NULL, 'product-measurement-device.png', 'image/png', 75604, 900, 1120, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (34, 'ABB logo', 'ABB logo', '2026-05-02 14:23:36.545+00', '2026-05-02 14:23:36.545+00', '/api/media/file/partner-abb.png', NULL, 'partner-abb.png', 'image/png', 7742, 520, 220, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (35, 'Intel logo', 'Intel logo', '2026-05-02 14:23:36.678+00', '2026-05-02 14:23:36.678+00', '/api/media/file/partner-intel.png', NULL, 'partner-intel.png', 'image/png', 7508, 520, 220, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (36, 'Mitsubishi logo', 'Mitsubishi logo', '2026-05-02 14:23:36.817+00', '2026-05-02 14:23:36.816+00', '/api/media/file/partner-mitsubishi.png', NULL, 'partner-mitsubishi.png', 'image/png', 9350, 520, 220, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (37, 'PSCL logo', 'PSCL logo', '2026-05-02 14:23:36.852+00', '2026-05-02 14:23:36.852+00', '/api/media/file/partner-pscl.png', NULL, 'partner-pscl.png', 'image/png', 8540, 520, 220, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (38, 'KEIHIN logo', 'KEIHIN logo', '2026-05-02 14:23:36.888+00', '2026-05-02 14:23:36.888+00', '/api/media/file/partner-keihin.png', NULL, 'partner-keihin.png', 'image/png', 7615, 520, 220, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (39, 'Siemens logo', 'Siemens logo', '2026-05-02 14:23:36.935+00', '2026-05-02 14:23:36.935+00', '/api/media/file/partner-siemens.png', NULL, 'partner-siemens.png', 'image/png', 9753, 520, 220, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (40, NULL, NULL, '2026-05-03 09:03:15.177+00', '2026-05-03 09:03:15.177+00', '/api/media/file/Screenshot%20at%20Apr%2007%2018-43-15.png', NULL, 'Screenshot at Apr 07 18-43-15.png', 'image/png', 341661, 3316, 1178, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (41, NULL, NULL, '2026-05-04 02:02:50.428+00', '2026-05-04 02:02:50.427+00', '/api/media/file/LOGO-01.png', NULL, 'LOGO-01.png', 'image/png', 127964, 3750, 3750, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (42, NULL, NULL, '2026-05-04 02:06:51.748+00', '2026-05-04 02:06:51.748+00', '/api/media/file/LOGO-2.png', NULL, 'LOGO-2.png', 'image/png', 178401, 3412, 1202, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (43, NULL, NULL, '2026-05-04 02:07:43.564+00', '2026-05-04 02:07:43.564+00', '/api/media/file/LOGO-02.png', NULL, 'LOGO-02.png', 'image/png', 166040, 3425, 1219, 50, 50) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (44, NULL, NULL, '2026-05-04 03:13:45.904+00', '2026-05-04 03:13:45.903+00', '/api/media/file/bitrate_compressed_video-1.mp4', NULL, 'bitrate_compressed_video-1.mp4', 'video/mp4', 2941504, NULL, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.media VALUES (45, NULL, NULL, '2026-05-08 12:53:11.179+00', '2026-05-08 12:53:07.299+00', '/api/media/file/LOGO-3.png', NULL, 'LOGO-3.png', 'image/png', 178401, 3412, 1202, 50, 50) ON CONFLICT DO NOTHING;


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.news VALUES (1, 'Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương', 'Bac Au completes factory automation project in Binh Duong', 'du-an-tu-dong-hoa-nha-may-binh-duong-2026', '2026-03-20 02:00:00+00', 2, 'Dự án triển khai hệ thống SCADA và PLC cho nhà máy sản xuất quy mô lớn, giúp tăng khả năng giám sát và vận hành ổn định.', 'The project delivered SCADA and PLC systems for a large-scale factory, improving monitoring capability and operational stability.', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã hoàn thành dự án tự động hóa cho một nhà máy sản xuất tại Bình Dương, bao gồm thiết kế tủ điều khiển, lập trình PLC, tích hợp SCADA và nghiệm thu vận hành tại hiện trường. Giải pháp giúp đội ngũ kỹ thuật theo dõi trạng thái thiết bị theo thời gian thực, giảm thao tác thủ công và chuẩn hóa quy trình cảnh báo sự cố.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has completed an automation project for a manufacturing plant in Binh Duong, covering control cabinet design, PLC programming, SCADA integration and site commissioning. The solution helps the technical team monitor equipment status in real time, reduce manual tasks and standardize alarm handling.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '2026-05-02 09:34:48.508+00', '2026-05-02 09:18:04.36+00', 'published', 'Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương') ON CONFLICT DO NOTHING;
INSERT INTO public.news VALUES (3, 'Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản', 'Bac Au signs strategic partnership with Japanese partner', 'bac-au-ky-ket-hop-tac-chien-luoc-voi-doi-tac-nhat-ban', '2026-03-05 02:00:00+00', 4, 'Thỏa thuận hợp tác tập trung vào cung cấp thiết bị, chuyển giao công nghệ và nâng cao năng lực triển khai giải pháp tự động hóa.', 'The partnership focuses on equipment supply, technology transfer and stronger delivery capabilities for automation solutions.', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã ký kết thỏa thuận hợp tác chiến lược với một đối tác Nhật Bản trong lĩnh vực thiết bị và công nghệ tự động hóa. Hai bên sẽ phối hợp trong tư vấn kỹ thuật, cung ứng thiết bị, đào tạo đội ngũ và triển khai các dự án nâng cấp hệ thống điều khiển cho khách hàng công nghiệp.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has signed a strategic partnership with a Japanese partner in automation equipment and technology. The two sides will collaborate on technical consulting, equipment supply, team training and control system upgrade projects for industrial customers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '2026-05-02 09:34:48.638+00', '2026-05-02 09:18:04.518+00', 'published', 'Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản') ON CONFLICT DO NOTHING;
INSERT INTO public.news VALUES (2, 'Hội thảo giải pháp quản lý năng lượng thông minh 2026', 'Smart energy management solutions seminar 2026', 'hoi-thao-giai-phap-quan-ly-nang-luong-thong-minh-2026', '2026-03-15 02:00:00+00', 3, 'Bắc Âu đồng tổ chức hội thảo về các giải pháp tiết kiệm năng lượng cho khu công nghiệp và nhà máy sản xuất.', 'Bac Au co-hosted a seminar on energy-saving solutions for industrial parks and manufacturing facilities.', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Tại hội thảo, đội ngũ Bắc Âu giới thiệu các giải pháp đo lường, giám sát và tối ưu tiêu thụ năng lượng theo thời gian thực. Các nội dung chính bao gồm hệ thống thu thập dữ liệu điện năng, dashboard quản lý năng lượng, cảnh báo bất thường và lộ trình cải thiện hiệu suất vận hành cho nhà máy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "At the seminar, Bac Au introduced real-time energy metering, monitoring and optimization solutions. Key topics included power data acquisition systems, energy management dashboards, anomaly alerts and operational efficiency improvement roadmaps for factories.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '2026-05-02 09:34:48.586+00', '2026-05-02 09:18:04.443+00', 'published', 'Hội thảo giải pháp quản lý năng lượng thông minh 2026') ON CONFLICT DO NOTHING;


--
-- Data for Name: _news_v; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._news_v VALUES (4, 1, 'Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương', 'Bac Au completes factory automation project in Binh Duong', 'du-an-tu-dong-hoa-nha-may-binh-duong-2026', '2026-03-20 02:00:00+00', 2, 'Dự án triển khai hệ thống SCADA và PLC cho nhà máy sản xuất quy mô lớn, giúp tăng khả năng giám sát và vận hành ổn định.', 'The project delivered SCADA and PLC systems for a large-scale factory, improving monitoring capability and operational stability.', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã hoàn thành dự án tự động hóa cho một nhà máy sản xuất tại Bình Dương, bao gồm thiết kế tủ điều khiển, lập trình PLC, tích hợp SCADA và nghiệm thu vận hành tại hiện trường. Giải pháp giúp đội ngũ kỹ thuật theo dõi trạng thái thiết bị theo thời gian thực, giảm thao tác thủ công và chuẩn hóa quy trình cảnh báo sự cố.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has completed an automation project for a manufacturing plant in Binh Duong, covering control cabinet design, PLC programming, SCADA integration and site commissioning. The solution helps the technical team monitor equipment status in real time, reduce manual tasks and standardize alarm handling.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '2026-05-02 09:34:48.508+00', '2026-05-02 09:18:04.36+00', 'published', '2026-05-02 09:34:48.526+00', '2026-05-02 09:34:48.526+00', true, NULL, NULL, 'Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương') ON CONFLICT DO NOTHING;
INSERT INTO public._news_v VALUES (1, 1, 'Bắc Âu hoàn thành dự án tự động hóa nhà máy tại Bình Dương', 'Bac Au completes factory automation project in Binh Duong', 'du-an-tu-dong-hoa-nha-may-binh-duong-2026', '2026-03-20 02:00:00+00', 2, 'Dự án triển khai hệ thống SCADA và PLC cho nhà máy sản xuất quy mô lớn, giúp tăng khả năng giám sát và vận hành ổn định.', 'The project delivered SCADA and PLC systems for a large-scale factory, improving monitoring capability and operational stability.', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã hoàn thành dự án tự động hóa cho một nhà máy sản xuất tại Bình Dương, bao gồm thiết kế tủ điều khiển, lập trình PLC, tích hợp SCADA và nghiệm thu vận hành tại hiện trường. Giải pháp giúp đội ngũ kỹ thuật theo dõi trạng thái thiết bị theo thời gian thực, giảm thao tác thủ công và chuẩn hóa quy trình cảnh báo sự cố.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has completed an automation project for a manufacturing plant in Binh Duong, covering control cabinet design, PLC programming, SCADA integration and site commissioning. The solution helps the technical team monitor equipment status in real time, reduce manual tasks and standardize alarm handling.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '2026-05-02 09:18:04.36+00', '2026-05-02 09:18:04.36+00', 'published', '2026-05-02 09:18:04.375+00', '2026-05-02 09:18:04.375+00', false, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v VALUES (3, 3, 'Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản', 'Bac Au signs strategic partnership with Japanese partner', 'bac-au-ky-ket-hop-tac-chien-luoc-voi-doi-tac-nhat-ban', '2026-03-05 02:00:00+00', 4, 'Thỏa thuận hợp tác tập trung vào cung cấp thiết bị, chuyển giao công nghệ và nâng cao năng lực triển khai giải pháp tự động hóa.', 'The partnership focuses on equipment supply, technology transfer and stronger delivery capabilities for automation solutions.', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã ký kết thỏa thuận hợp tác chiến lược với một đối tác Nhật Bản trong lĩnh vực thiết bị và công nghệ tự động hóa. Hai bên sẽ phối hợp trong tư vấn kỹ thuật, cung ứng thiết bị, đào tạo đội ngũ và triển khai các dự án nâng cấp hệ thống điều khiển cho khách hàng công nghiệp.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has signed a strategic partnership with a Japanese partner in automation equipment and technology. The two sides will collaborate on technical consulting, equipment supply, team training and control system upgrade projects for industrial customers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '2026-05-02 09:18:04.518+00', '2026-05-02 09:18:04.518+00', 'published', '2026-05-02 09:18:04.527+00', '2026-05-02 09:18:04.527+00', false, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v VALUES (5, 2, 'Hội thảo giải pháp quản lý năng lượng thông minh 2026', 'Smart energy management solutions seminar 2026', 'hoi-thao-giai-phap-quan-ly-nang-luong-thong-minh-2026', '2026-03-15 02:00:00+00', 3, 'Bắc Âu đồng tổ chức hội thảo về các giải pháp tiết kiệm năng lượng cho khu công nghiệp và nhà máy sản xuất.', 'Bac Au co-hosted a seminar on energy-saving solutions for industrial parks and manufacturing facilities.', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Tại hội thảo, đội ngũ Bắc Âu giới thiệu các giải pháp đo lường, giám sát và tối ưu tiêu thụ năng lượng theo thời gian thực. Các nội dung chính bao gồm hệ thống thu thập dữ liệu điện năng, dashboard quản lý năng lượng, cảnh báo bất thường và lộ trình cải thiện hiệu suất vận hành cho nhà máy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "At the seminar, Bac Au introduced real-time energy metering, monitoring and optimization solutions. Key topics included power data acquisition systems, energy management dashboards, anomaly alerts and operational efficiency improvement roadmaps for factories.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '2026-05-02 09:34:48.586+00', '2026-05-02 09:18:04.443+00', 'published', '2026-05-02 09:34:48.598+00', '2026-05-02 09:34:48.598+00', true, NULL, NULL, 'Hội thảo giải pháp quản lý năng lượng thông minh 2026') ON CONFLICT DO NOTHING;
INSERT INTO public._news_v VALUES (2, 2, 'Hội thảo giải pháp quản lý năng lượng thông minh 2026', 'Smart energy management solutions seminar 2026', 'hoi-thao-giai-phap-quan-ly-nang-luong-thong-minh-2026', '2026-03-15 02:00:00+00', 3, 'Bắc Âu đồng tổ chức hội thảo về các giải pháp tiết kiệm năng lượng cho khu công nghiệp và nhà máy sản xuất.', 'Bac Au co-hosted a seminar on energy-saving solutions for industrial parks and manufacturing facilities.', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Tại hội thảo, đội ngũ Bắc Âu giới thiệu các giải pháp đo lường, giám sát và tối ưu tiêu thụ năng lượng theo thời gian thực. Các nội dung chính bao gồm hệ thống thu thập dữ liệu điện năng, dashboard quản lý năng lượng, cảnh báo bất thường và lộ trình cải thiện hiệu suất vận hành cho nhà máy.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "At the seminar, Bac Au introduced real-time energy metering, monitoring and optimization solutions. Key topics included power data acquisition systems, energy management dashboards, anomaly alerts and operational efficiency improvement roadmaps for factories.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '2026-05-02 09:18:04.444+00', '2026-05-02 09:18:04.443+00', 'published', '2026-05-02 09:18:04.451+00', '2026-05-02 09:18:04.451+00', false, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v VALUES (6, 3, 'Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản', 'Bac Au signs strategic partnership with Japanese partner', 'bac-au-ky-ket-hop-tac-chien-luoc-voi-doi-tac-nhat-ban', '2026-03-05 02:00:00+00', 4, 'Thỏa thuận hợp tác tập trung vào cung cấp thiết bị, chuyển giao công nghệ và nâng cao năng lực triển khai giải pháp tự động hóa.', 'The partnership focuses on equipment supply, technology transfer and stronger delivery capabilities for automation solutions.', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bắc Âu đã ký kết thỏa thuận hợp tác chiến lược với một đối tác Nhật Bản trong lĩnh vực thiết bị và công nghệ tự động hóa. Hai bên sẽ phối hợp trong tư vấn kỹ thuật, cung ứng thiết bị, đào tạo đội ngũ và triển khai các dự án nâng cấp hệ thống điều khiển cho khách hàng công nghiệp.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Bac Au has signed a strategic partnership with a Japanese partner in automation equipment and technology. The two sides will collaborate on technical consulting, equipment supply, team training and control system upgrade projects for industrial customers.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '2026-05-02 09:34:48.638+00', '2026-05-02 09:18:04.518+00', 'published', '2026-05-02 09:34:48.652+00', '2026-05-02 09:34:48.652+00', true, NULL, NULL, 'Bắc Âu ký kết hợp tác chiến lược với đối tác Nhật Bản') ON CONFLICT DO NOTHING;


--
-- Data for Name: _news_v_version_tags; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._news_v_version_tags VALUES (1, 1, 'Tin tức', 1) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v_version_tags VALUES (1, 2, 'Hội thảo', 2) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v_version_tags VALUES (2, 2, 'Sự kiện', 3) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v_version_tags VALUES (1, 3, 'Tin tức', 4) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v_version_tags VALUES (2, 3, 'Thông cáo', 5) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v_version_tags VALUES (1, 4, 'Tin tức', 6) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v_version_tags VALUES (1, 5, 'Hội thảo', 7) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v_version_tags VALUES (2, 5, 'Sự kiện', 8) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v_version_tags VALUES (1, 6, 'Tin tức', 9) ON CONFLICT DO NOTHING;
INSERT INTO public._news_v_version_tags VALUES (2, 6, 'Thông cáo', 10) ON CONFLICT DO NOTHING;


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.products VALUES (1, 'Van Công Nghiệp', 'Industrial Valve', 'van-cong-nghiep-dieu-khien-tu-dong', 'industrial-valve', 29, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:35.639+00', '2026-05-02 14:23:35.578+00', 'published', 'Van Công Nghiệp') ON CONFLICT DO NOTHING;
INSERT INTO public.products VALUES (2, 'Động Cơ Điện', 'Electric Motor', 'dong-co-dien-va-bien-tan', 'motor', 30, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:35.866+00', '2026-05-02 14:23:35.832+00', 'published', 'Động Cơ Điện') ON CONFLICT DO NOTHING;
INSERT INTO public.products VALUES (3, 'Cảm Biến', 'Industrial Sensor', 'cam-bien-cong-nghiep', 'sensor', 31, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:36.081+00', '2026-05-02 14:23:36.046+00', 'published', 'Cảm Biến') ON CONFLICT DO NOTHING;
INSERT INTO public.products VALUES (4, 'Tủ Điện Điều Khiển', 'Control Cabinet', 'tu-dien-dieu-khien', 'electrical', 32, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:36.305+00', '2026-05-02 14:23:36.266+00', 'published', 'Tủ Điện Điều Khiển') ON CONFLICT DO NOTHING;
INSERT INTO public.products VALUES (5, 'Thiết Bị Đo Lường', 'Measuring Device', 'thiet-bi-do-luong-cong-nghiep', 'measurement', 33, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:36.432+00', '2026-05-02 14:23:36.398+00', 'published', 'Thiết Bị Đo Lường') ON CONFLICT DO NOTHING;


--
-- Data for Name: _products_v; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._products_v VALUES (2, 1, 'Van Công Nghiệp', 'Industrial Valve', 'van-cong-nghiep-dieu-khien-tu-dong', 'industrial-valve', 29, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:35.639+00', '2026-05-02 14:23:35.578+00', 'published', '2026-05-02 14:23:35.648+00', '2026-05-02 14:23:35.648+00', true, NULL, NULL, 'Van Công Nghiệp') ON CONFLICT DO NOTHING;
INSERT INTO public._products_v VALUES (1, 1, 'Van Công Nghiệp', 'Industrial Valve', 'van-cong-nghiep-dieu-khien-tu-dong', 'industrial-valve', 29, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:35.579+00', '2026-05-02 14:23:35.578+00', 'published', '2026-05-02 14:23:35.594+00', '2026-05-02 14:23:35.594+00', false, NULL, NULL, 'Van Công Nghiệp') ON CONFLICT DO NOTHING;
INSERT INTO public._products_v VALUES (4, 2, 'Động Cơ Điện', 'Electric Motor', 'dong-co-dien-va-bien-tan', 'motor', 30, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:35.866+00', '2026-05-02 14:23:35.832+00', 'published', '2026-05-02 14:23:35.876+00', '2026-05-02 14:23:35.876+00', true, NULL, NULL, 'Động Cơ Điện') ON CONFLICT DO NOTHING;
INSERT INTO public._products_v VALUES (3, 2, 'Động Cơ Điện', 'Electric Motor', 'dong-co-dien-va-bien-tan', 'motor', 30, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:35.832+00', '2026-05-02 14:23:35.832+00', 'published', '2026-05-02 14:23:35.841+00', '2026-05-02 14:23:35.841+00', false, NULL, NULL, 'Động Cơ Điện') ON CONFLICT DO NOTHING;
INSERT INTO public._products_v VALUES (6, 3, 'Cảm Biến', 'Industrial Sensor', 'cam-bien-cong-nghiep', 'sensor', 31, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:36.081+00', '2026-05-02 14:23:36.046+00', 'published', '2026-05-02 14:23:36.089+00', '2026-05-02 14:23:36.089+00', true, NULL, NULL, 'Cảm Biến') ON CONFLICT DO NOTHING;
INSERT INTO public._products_v VALUES (5, 3, 'Cảm Biến', 'Industrial Sensor', 'cam-bien-cong-nghiep', 'sensor', 31, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:36.046+00', '2026-05-02 14:23:36.046+00', 'published', '2026-05-02 14:23:36.053+00', '2026-05-02 14:23:36.053+00', false, NULL, NULL, 'Cảm Biến') ON CONFLICT DO NOTHING;
INSERT INTO public._products_v VALUES (8, 4, 'Tủ Điện Điều Khiển', 'Control Cabinet', 'tu-dien-dieu-khien', 'electrical', 32, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:36.305+00', '2026-05-02 14:23:36.266+00', 'published', '2026-05-02 14:23:36.317+00', '2026-05-02 14:23:36.317+00', true, NULL, NULL, 'Tủ Điện Điều Khiển') ON CONFLICT DO NOTHING;
INSERT INTO public._products_v VALUES (7, 4, 'Tủ Điện Điều Khiển', 'Control Cabinet', 'tu-dien-dieu-khien', 'electrical', 32, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:36.266+00', '2026-05-02 14:23:36.266+00', 'published', '2026-05-02 14:23:36.274+00', '2026-05-02 14:23:36.274+00', false, NULL, NULL, 'Tủ Điện Điều Khiển') ON CONFLICT DO NOTHING;
INSERT INTO public._products_v VALUES (10, 5, 'Thiết Bị Đo Lường', 'Measuring Device', 'thiet-bi-do-luong-cong-nghiep', 'measurement', 33, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:36.432+00', '2026-05-02 14:23:36.398+00', 'published', '2026-05-02 14:23:36.44+00', '2026-05-02 14:23:36.44+00', true, NULL, NULL, 'Thiết Bị Đo Lường') ON CONFLICT DO NOTHING;
INSERT INTO public._products_v VALUES (9, 5, 'Thiết Bị Đo Lường', 'Measuring Device', 'thiet-bi-do-luong-cong-nghiep', 'measurement', 33, NULL, NULL, 'ESTEC', true, '2026-05-02 14:23:36.398+00', '2026-05-02 14:23:36.398+00', 'published', '2026-05-02 14:23:36.409+00', '2026-05-02 14:23:36.409+00', false, NULL, NULL, 'Thiết Bị Đo Lường') ON CONFLICT DO NOTHING;


--
-- Data for Name: _products_v_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._products_v_locales VALUES ('Valve & Actuator', 1, 'vi', 1) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Valve & Actuator', 2, 'vi', 2) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Valve & Actuator', 3, 'en', 2) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Motor & Drive', 4, 'vi', 3) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Motor & Drive', 5, 'vi', 4) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Motor & Drive', 6, 'en', 4) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Sensor & Instrument', 7, 'vi', 5) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Sensor & Instrument', 8, 'vi', 6) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Sensor & Instrument', 9, 'en', 6) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Control Cabinet', 10, 'vi', 7) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Control Cabinet', 11, 'vi', 8) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Control Cabinet', 12, 'en', 8) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Measurement Device', 13, 'vi', 9) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Measurement Device', 14, 'vi', 10) ON CONFLICT DO NOTHING;
INSERT INTO public._products_v_locales VALUES ('Measurement Device', 15, 'en', 10) ON CONFLICT DO NOTHING;


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.projects VALUES (5, 'Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh', 'Power monitoring center for Samsung Bac Ninh factory', 'trung-tam-giam-sat-dien-nang-nha-may-samsung-bac-ninh', 'measurement', NULL, 10, NULL, NULL, NULL, NULL, 2026, 'Tích hợp công tơ thông minh, dashboard cảnh báo và báo cáo tiêu thụ theo ca', 'Integration of smart meters, alert dashboards and shift-based consumption reports', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.502+00', '2026-05-02 13:57:22.468+00', 'published', 'energy', '#2b358c', 'Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (6, 'Giải pháp tối ưu năng lượng cho KCN Long Hậu', 'Energy optimization solution for Long Hau industrial park', 'giai-phap-toi-uu-nang-luong-cho-kcn-long-hau', 'measurement', NULL, 11, NULL, NULL, NULL, NULL, 2026, 'Triển khai hệ thống đo đếm đa điểm và phân tích phụ tải theo thời gian thực', 'Deployment of multi-point metering and real-time load profile analytics', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.701+00', '2026-05-02 13:57:22.657+00', 'published', 'energy', '#2b358c', 'Giải pháp tối ưu năng lượng cho KCN Long Hậu', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (7, 'Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar', 'EMS upgrade for Mekophar pharmaceutical plant', 'nang-cap-he-thong-ems-cho-nha-may-duoc-pham-mekophar', 'measurement', NULL, 12, NULL, NULL, NULL, NULL, 2025, 'Chuẩn hóa dữ liệu điện năng, cảnh báo bất thường và báo cáo KPI năng lượng', 'Standardized power data, anomaly alerts and energy KPI reporting', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.828+00', '2026-05-02 13:57:22.796+00', 'published', 'energy', '#2b358c', 'Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (8, 'Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái', 'Energy metering system for Cat Lai logistics complex', 'he-thong-do-luong-nang-luong-khu-phuc-hop-logistics-cat-lai', 'measurement', NULL, 13, NULL, NULL, NULL, NULL, 2025, 'Kết nối thiết bị đo, lưu trữ dữ liệu và trực quan hóa chi phí vận hành', 'Connected meters, stored operating data and visualized energy costs', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.006+00', '2026-05-02 13:57:22.977+00', 'published', 'energy', '#2b358c', 'Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (2, 'Trạm biến áp 110kV Nhà máy thép Formosa', '110kV substation for Formosa steel factory', 'tram-bien-ap-110kv-nha-may-thep-formosa', 'electrical-automation', NULL, 14, NULL, NULL, NULL, NULL, 2026, 'Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế', 'Supply and installation of medium and low voltage electrical systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.123+00', '2026-05-02 09:29:48.678+00', 'published', 'electrical', '#B92C32', 'Trạm biến áp 110kV Nhà máy thép Formosa', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (9, 'Tủ điện trung thế dây chuyền xi măng Hà Tiên', 'Medium-voltage switchgear for Ha Tien cement line', 'tu-dien-trung-the-day-chuyen-xi-mang-ha-tien', 'electrical-automation', NULL, 15, NULL, NULL, NULL, NULL, 2026, 'Thiết kế, lắp đặt và nghiệm thu hệ thống phân phối điện cho dây chuyền nghiền', 'Design, installation and commissioning of power distribution for a grinding line', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.224+00', '2026-05-02 13:57:23.198+00', 'published', 'electrical', '#B92C32', 'Tủ điện trung thế dây chuyền xi măng Hà Tiên', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (10, 'Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến', 'Electrical system upgrade for Tan Tien packaging factory', 'nang-cap-he-thong-dien-nha-may-bao-bi-tan-tien', 'electrical-automation', NULL, 16, NULL, NULL, NULL, NULL, 2026, 'Thay thế tủ phân phối, cân bằng tải và bổ sung hệ thống bảo vệ an toàn', 'Replaced distribution cabinets, balanced loads and added safety protection systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.397+00', '2026-05-02 13:57:23.369+00', 'published', 'electrical', '#B92C32', 'Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (11, 'Hệ thống điện động lực cảng container Cái Mép', 'Power system for Cai Mep container port', 'he-thong-dien-dong-luc-cang-container-cai-mep', 'electrical-automation', NULL, 17, NULL, NULL, NULL, NULL, 2025, 'Thi công cấp nguồn cho thiết bị nâng hạ và hệ thống chiếu sáng khu bãi', 'Installed power supply for lifting equipment and yard lighting systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.503+00', '2026-05-02 13:57:23.471+00', 'published', 'electrical', '#B92C32', 'Hệ thống điện động lực cảng container Cái Mép', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (12, 'Cải tạo trạm điện nhà máy nước Thủ Đức', 'Substation renovation for Thu Duc water plant', 'cai-tao-tram-dien-nha-may-nuoc-thu-duc', 'electrical-automation', NULL, 18, NULL, NULL, NULL, NULL, 2025, 'Nâng cấp thiết bị đóng cắt, đo lường và giám sát vận hành trạm', 'Upgraded switching, metering and operational monitoring equipment', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.674+00', '2026-05-02 13:57:23.652+00', 'published', 'electrical', '#B92C32', 'Cải tạo trạm điện nhà máy nước Thủ Đức', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (3, 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', 'Nestle Vietnam production line automation', 'tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam', 'electrical-automation', NULL, 19, NULL, NULL, NULL, NULL, 2026, 'Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói', 'PLC programming and SCADA integration for a packaging line', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.872+00', '2026-05-02 09:29:48.766+00', 'published', 'automation', '#2b358c', 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (13, 'Hệ thống SCADA dây chuyền chiết rót Vinamilk', 'SCADA system for Vinamilk filling line', 'he-thong-scada-day-chuyen-chiet-rot-vinamilk', 'electrical-automation', NULL, 20, NULL, NULL, NULL, NULL, 2026, 'Điều khiển tập trung, thu thập dữ liệu sản xuất và cảnh báo lỗi thiết bị', 'Centralized control, production data acquisition and equipment fault alerts', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.972+00', '2026-05-02 13:57:23.946+00', 'published', 'automation', '#2b358c', 'Hệ thống SCADA dây chuyền chiết rót Vinamilk', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (14, 'Robot gắp sản phẩm cho nhà máy điện tử VSIP', 'Product handling robot for VSIP electronics factory', 'robot-gap-san-pham-cho-nha-may-dien-tu-vsip', 'electrical-automation', NULL, 21, NULL, NULL, NULL, NULL, 2026, 'Tích hợp robot công nghiệp, cảm biến thị giác và băng tải phân loại', 'Integrated industrial robots, vision sensors and sorting conveyors', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.089+00', '2026-05-02 13:57:24.058+00', 'published', 'automation', '#2b358c', 'Robot gắp sản phẩm cho nhà máy điện tử VSIP', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (15, 'Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi', 'Raw material warehouse automation for feed plant', 'tu-dong-hoa-kho-nguyen-lieu-nha-may-thuc-an-chan-nuoi', 'electrical-automation', NULL, 22, NULL, NULL, NULL, NULL, 2025, 'Điều khiển silo, cân định lượng và truy xuất dữ liệu nhập xuất nguyên liệu', 'Controlled silos, dosing scales and material movement traceability', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.194+00', '2026-05-02 13:57:24.17+00', 'published', 'automation', '#2b358c', 'Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (16, 'Nâng cấp PLC dây chuyền đóng gói Masan', 'PLC upgrade for Masan packaging line', 'nang-cap-plc-day-chuyen-dong-goi-masan', 'electrical-automation', NULL, 23, NULL, NULL, NULL, NULL, 2025, 'Chuyển đổi hệ điều khiển, tối ưu chu kỳ máy và giảm thời gian dừng chuyền', 'Migrated control systems, optimized machine cycles and reduced line downtime', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.356+00', '2026-05-02 13:57:24.332+00', 'published', 'automation', '#2b358c', 'Nâng cấp PLC dây chuyền đóng gói Masan', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (4, 'Hệ thống BMS tòa nhà Landmark 81', 'Landmark 81 building management system', 'he-thong-bms-toa-nha-landmark-81', 'digitalization', NULL, 24, NULL, NULL, NULL, NULL, 2026, 'Triển khai hệ thống quản lý tòa nhà thông minh tích hợp', 'Deployment of an integrated intelligent building management system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.47+00', '2026-05-02 09:29:48.826+00', 'published', 'bms', '#6366F1', 'Hệ thống BMS tòa nhà Landmark 81', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (17, 'BMS khu văn phòng Techcombank Tower', 'BMS for Techcombank Tower office complex', 'bms-khu-van-phong-techcombank-tower', 'digitalization', NULL, 25, NULL, NULL, NULL, NULL, 2026, 'Kết nối HVAC, chiếu sáng, an ninh và giám sát năng lượng trên cùng nền tảng', 'Connected HVAC, lighting, security and energy monitoring on one platform', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.631+00', '2026-05-02 13:57:24.606+00', 'published', 'bms', '#6366F1', 'BMS khu văn phòng Techcombank Tower', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (18, 'Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc', 'Building management system for Hanh Phuc international hospital', 'he-thong-quan-ly-toa-nha-benh-vien-quoc-te-hanh-phuc', 'digitalization', NULL, 26, NULL, NULL, NULL, NULL, 2026, 'Giám sát phòng kỹ thuật, cảnh báo môi trường và vận hành thiết bị nền', 'Monitored technical rooms, environmental alerts and base equipment operations', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.773+00', '2026-05-02 13:57:24.745+00', 'published', 'bms', '#6366F1', 'Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (19, 'BMS khách sạn nghỉ dưỡng Phú Quốc', 'BMS for Phu Quoc resort hotel', 'bms-khach-san-nghi-duong-phu-quoc', 'digitalization', NULL, 27, NULL, NULL, NULL, NULL, 2025, 'Tối ưu điều hòa, chiếu sáng khu công cộng và lịch vận hành theo công suất phòng', 'Optimized HVAC, public lighting and operating schedules based on room occupancy', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.875+00', '2026-05-02 13:57:24.85+00', 'published', 'bms', '#6366F1', 'BMS khách sạn nghỉ dưỡng Phú Quốc', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (20, 'Nâng cấp BMS trung tâm thương mại Saigon Centre', 'BMS upgrade for Saigon Centre commercial complex', 'nang-cap-bms-trung-tam-thuong-mai-saigon-centre', 'digitalization', NULL, 28, NULL, NULL, NULL, NULL, 2025, 'Tích hợp lại thiết bị hiện hữu và xây dựng dashboard vận hành tập trung', 'Re-integrated existing equipment and built centralized operations dashboards', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.982+00', '2026-05-02 13:57:24.961+00', 'published', 'bms', '#6366F1', 'Nâng cấp BMS trung tâm thương mại Saigon Centre', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.projects VALUES (1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', 'cement-mining', 9, 'CÔNG TY XI MĂNG VICEM BÚT SƠN', 'VICEM But Son Cement Company', 'Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam', 'Hà Nam', 2020, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', NULL, NULL, true, '2026-05-03 08:53:25.645+00', '2026-05-02 09:29:48.586+00', 'published', 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: _projects_v; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._projects_v VALUES (60, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', 'cement-mining', 9, 'CÔNG TY XI MĂNG VICEM BÚT SƠN', 'VICEM But Son Cement Company', 'Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam', 'Hà Nam', 2020, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', NULL, NULL, true, '2026-05-03 08:36:57.264+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-03 08:36:57.282+00', '2026-05-03 08:36:57.282+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (1, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', NULL, 5, NULL, NULL, NULL, NULL, 2026, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 09:29:48.587+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-02 09:29:48.601+00', '2026-05-02 09:29:48.601+00', false, NULL, NULL, 'energy', '#2b358c', NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (9, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', NULL, 5, NULL, NULL, NULL, NULL, 2026, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:47:03.812+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-02 13:47:03.831+00', '2026-05-02 13:47:03.831+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (3, 3, 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', 'Nestle Vietnam production line automation', 'tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam', 'electrical-automation', NULL, 7, NULL, NULL, NULL, NULL, 2026, 'Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói', 'PLC programming and SCADA integration for a packaging line', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 09:29:48.766+00', '2026-05-02 09:29:48.766+00', 'published', '2026-05-02 09:29:48.773+00', '2026-05-02 09:29:48.773+00', false, NULL, NULL, 'automation', '#2b358c', NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (7, 3, 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', 'Nestle Vietnam production line automation', 'tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam', 'electrical-automation', NULL, 7, NULL, NULL, NULL, NULL, 2026, 'Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói', 'PLC programming and SCADA integration for a packaging line', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 09:34:32.641+00', '2026-05-02 09:29:48.766+00', 'published', '2026-05-02 09:34:32.659+00', '2026-05-02 09:34:32.659+00', false, NULL, NULL, 'automation', '#2b358c', 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (4, 4, 'Hệ thống BMS tòa nhà Landmark 81', 'Landmark 81 building management system', 'he-thong-bms-toa-nha-landmark-81', 'digitalization', NULL, 8, NULL, NULL, NULL, NULL, 2026, 'Triển khai hệ thống quản lý tòa nhà thông minh tích hợp', 'Deployment of an integrated intelligent building management system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 09:29:48.826+00', '2026-05-02 09:29:48.826+00', 'published', '2026-05-02 09:29:48.834+00', '2026-05-02 09:29:48.834+00', false, NULL, NULL, 'bms', '#6366F1', NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (8, 4, 'Hệ thống BMS tòa nhà Landmark 81', 'Landmark 81 building management system', 'he-thong-bms-toa-nha-landmark-81', 'digitalization', NULL, 8, NULL, NULL, NULL, NULL, 2026, 'Triển khai hệ thống quản lý tòa nhà thông minh tích hợp', 'Deployment of an integrated intelligent building management system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 09:34:32.707+00', '2026-05-02 09:29:48.826+00', 'published', '2026-05-02 09:34:32.716+00', '2026-05-02 09:34:32.716+00', false, NULL, NULL, 'bms', '#6366F1', 'Hệ thống BMS tòa nhà Landmark 81', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (2, 2, 'Trạm biến áp 110kV Nhà máy thép Formosa', '110kV substation for Formosa steel factory', 'tram-bien-ap-110kv-nha-may-thep-formosa', 'electrical-automation', NULL, 6, NULL, NULL, NULL, NULL, 2026, 'Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế', 'Supply and installation of medium and low voltage electrical systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 09:29:48.678+00', '2026-05-02 09:29:48.678+00', 'published', '2026-05-02 09:29:48.692+00', '2026-05-02 09:29:48.692+00', false, NULL, NULL, 'electrical', '#B92C32', NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (6, 2, 'Trạm biến áp 110kV Nhà máy thép Formosa', '110kV substation for Formosa steel factory', 'tram-bien-ap-110kv-nha-may-thep-formosa', 'electrical-automation', NULL, 6, NULL, NULL, NULL, NULL, 2026, 'Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế', 'Supply and installation of medium and low voltage electrical systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 09:34:32.564+00', '2026-05-02 09:29:48.678+00', 'published', '2026-05-02 09:34:32.574+00', '2026-05-02 09:34:32.574+00', false, NULL, NULL, 'electrical', '#B92C32', 'Trạm biến áp 110kV Nhà máy thép Formosa', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (57, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', 'cement-mining', 9, 'CÔNG TY XI MĂNG VICEM BÚT SƠN', 'VICEM But Son Cement Company', 'Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam', 'Hà Nam', 2020, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', NULL, NULL, true, '2026-05-02 15:32:00.737+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-02 15:32:00.752+00', '2026-05-02 15:32:00.752+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (15, 4, 'Hệ thống BMS tòa nhà Landmark 81', 'Landmark 81 building management system', 'he-thong-bms-toa-nha-landmark-81', 'digitalization', NULL, 8, NULL, NULL, NULL, NULL, 2026, 'Triển khai hệ thống quản lý tòa nhà thông minh tích hợp', 'Deployment of an integrated intelligent building management system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:47:04.112+00', '2026-05-02 09:29:48.826+00', 'published', '2026-05-02 13:47:04.12+00', '2026-05-02 13:47:04.12+00', false, NULL, NULL, 'bms', '#6366F1', 'Hệ thống BMS tòa nhà Landmark 81', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (11, 2, 'Trạm biến áp 110kV Nhà máy thép Formosa', '110kV substation for Formosa steel factory', 'tram-bien-ap-110kv-nha-may-thep-formosa', 'electrical-automation', NULL, 6, NULL, NULL, NULL, NULL, 2026, 'Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế', 'Supply and installation of medium and low voltage electrical systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:47:03.916+00', '2026-05-02 09:29:48.678+00', 'published', '2026-05-02 13:47:03.925+00', '2026-05-02 13:47:03.925+00', false, NULL, NULL, 'electrical', '#B92C32', 'Trạm biến áp 110kV Nhà máy thép Formosa', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (12, 2, 'Trạm biến áp 110kV Nhà máy thép Formosa', '110kV substation for Formosa steel factory', 'tram-bien-ap-110kv-nha-may-thep-formosa', 'electrical-automation', NULL, 6, NULL, NULL, NULL, NULL, 2026, 'Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế', 'Supply and installation of medium and low voltage electrical systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:47:03.955+00', '2026-05-02 09:29:48.678+00', 'published', '2026-05-02 13:47:03.968+00', '2026-05-02 13:47:03.968+00', false, NULL, NULL, 'electrical', '#B92C32', 'Trạm biến áp 110kV Nhà máy thép Formosa', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (16, 4, 'Hệ thống BMS tòa nhà Landmark 81', 'Landmark 81 building management system', 'he-thong-bms-toa-nha-landmark-81', 'digitalization', NULL, 8, NULL, NULL, NULL, NULL, 2026, 'Triển khai hệ thống quản lý tòa nhà thông minh tích hợp', 'Deployment of an integrated intelligent building management system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:47:04.141+00', '2026-05-02 09:29:48.826+00', 'published', '2026-05-02 13:47:04.151+00', '2026-05-02 13:47:04.151+00', false, NULL, NULL, 'bms', '#6366F1', 'Hệ thống BMS tòa nhà Landmark 81', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (13, 3, 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', 'Nestle Vietnam production line automation', 'tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam', 'electrical-automation', NULL, 7, NULL, NULL, NULL, NULL, 2026, 'Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói', 'PLC programming and SCADA integration for a packaging line', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:47:04.023+00', '2026-05-02 09:29:48.766+00', 'published', '2026-05-02 13:47:04.034+00', '2026-05-02 13:47:04.034+00', false, NULL, NULL, 'automation', '#2b358c', 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (14, 3, 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', 'Nestle Vietnam production line automation', 'tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam', 'electrical-automation', NULL, 7, NULL, NULL, NULL, NULL, 2026, 'Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói', 'PLC programming and SCADA integration for a packaging line', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:47:04.072+00', '2026-05-02 09:29:48.766+00', 'published', '2026-05-02 13:47:04.081+00', '2026-05-02 13:47:04.081+00', false, NULL, NULL, 'automation', '#2b358c', 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (20, 5, 'Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh', 'Power monitoring center for Samsung Bac Ninh factory', 'trung-tam-giam-sat-dien-nang-nha-may-samsung-bac-ninh', 'measurement', NULL, 10, NULL, NULL, NULL, NULL, 2026, 'Tích hợp công tơ thông minh, dashboard cảnh báo và báo cáo tiêu thụ theo ca', 'Integration of smart meters, alert dashboards and shift-based consumption reports', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.502+00', '2026-05-02 13:57:22.468+00', 'published', '2026-05-02 13:57:22.512+00', '2026-05-02 13:57:22.512+00', true, NULL, NULL, 'energy', '#2b358c', 'Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (19, 5, 'Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh', 'Power monitoring center for Samsung Bac Ninh factory', 'trung-tam-giam-sat-dien-nang-nha-may-samsung-bac-ninh', 'measurement', NULL, 10, NULL, NULL, NULL, NULL, 2026, 'Tích hợp công tơ thông minh, dashboard cảnh báo và báo cáo tiêu thụ theo ca', 'Integration of smart meters, alert dashboards and shift-based consumption reports', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.469+00', '2026-05-02 13:57:22.468+00', 'published', '2026-05-02 13:57:22.476+00', '2026-05-02 13:57:22.476+00', false, NULL, NULL, 'energy', '#2b358c', 'Trung tâm giám sát điện năng Nhà máy Samsung Bắc Ninh', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (22, 6, 'Giải pháp tối ưu năng lượng cho KCN Long Hậu', 'Energy optimization solution for Long Hau industrial park', 'giai-phap-toi-uu-nang-luong-cho-kcn-long-hau', 'measurement', NULL, 11, NULL, NULL, NULL, NULL, 2026, 'Triển khai hệ thống đo đếm đa điểm và phân tích phụ tải theo thời gian thực', 'Deployment of multi-point metering and real-time load profile analytics', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.701+00', '2026-05-02 13:57:22.657+00', 'published', '2026-05-02 13:57:22.718+00', '2026-05-02 13:57:22.718+00', true, NULL, NULL, 'energy', '#2b358c', 'Giải pháp tối ưu năng lượng cho KCN Long Hậu', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (21, 6, 'Giải pháp tối ưu năng lượng cho KCN Long Hậu', 'Energy optimization solution for Long Hau industrial park', 'giai-phap-toi-uu-nang-luong-cho-kcn-long-hau', 'measurement', NULL, 11, NULL, NULL, NULL, NULL, 2026, 'Triển khai hệ thống đo đếm đa điểm và phân tích phụ tải theo thời gian thực', 'Deployment of multi-point metering and real-time load profile analytics', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.658+00', '2026-05-02 13:57:22.657+00', 'published', '2026-05-02 13:57:22.669+00', '2026-05-02 13:57:22.669+00', false, NULL, NULL, 'energy', '#2b358c', 'Giải pháp tối ưu năng lượng cho KCN Long Hậu', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (24, 7, 'Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar', 'EMS upgrade for Mekophar pharmaceutical plant', 'nang-cap-he-thong-ems-cho-nha-may-duoc-pham-mekophar', 'measurement', NULL, 12, NULL, NULL, NULL, NULL, 2025, 'Chuẩn hóa dữ liệu điện năng, cảnh báo bất thường và báo cáo KPI năng lượng', 'Standardized power data, anomaly alerts and energy KPI reporting', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.828+00', '2026-05-02 13:57:22.796+00', 'published', '2026-05-02 13:57:22.836+00', '2026-05-02 13:57:22.836+00', true, NULL, NULL, 'energy', '#2b358c', 'Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (23, 7, 'Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar', 'EMS upgrade for Mekophar pharmaceutical plant', 'nang-cap-he-thong-ems-cho-nha-may-duoc-pham-mekophar', 'measurement', NULL, 12, NULL, NULL, NULL, NULL, 2025, 'Chuẩn hóa dữ liệu điện năng, cảnh báo bất thường và báo cáo KPI năng lượng', 'Standardized power data, anomaly alerts and energy KPI reporting', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.797+00', '2026-05-02 13:57:22.796+00', 'published', '2026-05-02 13:57:22.804+00', '2026-05-02 13:57:22.804+00', false, NULL, NULL, 'energy', '#2b358c', 'Nâng cấp hệ thống EMS cho nhà máy dược phẩm Mekophar', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (18, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', NULL, 9, NULL, NULL, NULL, NULL, 2026, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.306+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-02 13:57:22.317+00', '2026-05-02 13:57:22.317+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (26, 8, 'Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái', 'Energy metering system for Cat Lai logistics complex', 'he-thong-do-luong-nang-luong-khu-phuc-hop-logistics-cat-lai', 'measurement', NULL, 13, NULL, NULL, NULL, NULL, 2025, 'Kết nối thiết bị đo, lưu trữ dữ liệu và trực quan hóa chi phí vận hành', 'Connected meters, stored operating data and visualized energy costs', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.006+00', '2026-05-02 13:57:22.977+00', 'published', '2026-05-02 13:57:23.016+00', '2026-05-02 13:57:23.016+00', true, NULL, NULL, 'energy', '#2b358c', 'Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (25, 8, 'Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái', 'Energy metering system for Cat Lai logistics complex', 'he-thong-do-luong-nang-luong-khu-phuc-hop-logistics-cat-lai', 'measurement', NULL, 13, NULL, NULL, NULL, NULL, 2025, 'Kết nối thiết bị đo, lưu trữ dữ liệu và trực quan hóa chi phí vận hành', 'Connected meters, stored operating data and visualized energy costs', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.977+00', '2026-05-02 13:57:22.977+00', 'published', '2026-05-02 13:57:22.984+00', '2026-05-02 13:57:22.984+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống đo lường năng lượng khu phức hợp logistics Cát Lái', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (28, 2, 'Trạm biến áp 110kV Nhà máy thép Formosa', '110kV substation for Formosa steel factory', 'tram-bien-ap-110kv-nha-may-thep-formosa', 'electrical-automation', NULL, 14, NULL, NULL, NULL, NULL, 2026, 'Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế', 'Supply and installation of medium and low voltage electrical systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.123+00', '2026-05-02 09:29:48.678+00', 'published', '2026-05-02 13:57:23.13+00', '2026-05-02 13:57:23.13+00', true, NULL, NULL, 'electrical', '#B92C32', 'Trạm biến áp 110kV Nhà máy thép Formosa', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (27, 2, 'Trạm biến áp 110kV Nhà máy thép Formosa', '110kV substation for Formosa steel factory', 'tram-bien-ap-110kv-nha-may-thep-formosa', 'electrical-automation', NULL, 14, NULL, NULL, NULL, NULL, 2026, 'Cung cấp và lắp đặt hệ thống điện trung thế và hạ thế', 'Supply and installation of medium and low voltage electrical systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.093+00', '2026-05-02 09:29:48.678+00', 'published', '2026-05-02 13:57:23.101+00', '2026-05-02 13:57:23.101+00', false, NULL, NULL, 'electrical', '#B92C32', 'Trạm biến áp 110kV Nhà máy thép Formosa', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (30, 9, 'Tủ điện trung thế dây chuyền xi măng Hà Tiên', 'Medium-voltage switchgear for Ha Tien cement line', 'tu-dien-trung-the-day-chuyen-xi-mang-ha-tien', 'electrical-automation', NULL, 15, NULL, NULL, NULL, NULL, 2026, 'Thiết kế, lắp đặt và nghiệm thu hệ thống phân phối điện cho dây chuyền nghiền', 'Design, installation and commissioning of power distribution for a grinding line', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.224+00', '2026-05-02 13:57:23.198+00', 'published', '2026-05-02 13:57:23.232+00', '2026-05-02 13:57:23.232+00', true, NULL, NULL, 'electrical', '#B92C32', 'Tủ điện trung thế dây chuyền xi măng Hà Tiên', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (29, 9, 'Tủ điện trung thế dây chuyền xi măng Hà Tiên', 'Medium-voltage switchgear for Ha Tien cement line', 'tu-dien-trung-the-day-chuyen-xi-mang-ha-tien', 'electrical-automation', NULL, 15, NULL, NULL, NULL, NULL, 2026, 'Thiết kế, lắp đặt và nghiệm thu hệ thống phân phối điện cho dây chuyền nghiền', 'Design, installation and commissioning of power distribution for a grinding line', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.199+00', '2026-05-02 13:57:23.198+00', 'published', '2026-05-02 13:57:23.204+00', '2026-05-02 13:57:23.204+00', false, NULL, NULL, 'electrical', '#B92C32', 'Tủ điện trung thế dây chuyền xi măng Hà Tiên', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (32, 10, 'Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến', 'Electrical system upgrade for Tan Tien packaging factory', 'nang-cap-he-thong-dien-nha-may-bao-bi-tan-tien', 'electrical-automation', NULL, 16, NULL, NULL, NULL, NULL, 2026, 'Thay thế tủ phân phối, cân bằng tải và bổ sung hệ thống bảo vệ an toàn', 'Replaced distribution cabinets, balanced loads and added safety protection systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.397+00', '2026-05-02 13:57:23.369+00', 'published', '2026-05-02 13:57:23.406+00', '2026-05-02 13:57:23.406+00', true, NULL, NULL, 'electrical', '#B92C32', 'Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (31, 10, 'Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến', 'Electrical system upgrade for Tan Tien packaging factory', 'nang-cap-he-thong-dien-nha-may-bao-bi-tan-tien', 'electrical-automation', NULL, 16, NULL, NULL, NULL, NULL, 2026, 'Thay thế tủ phân phối, cân bằng tải và bổ sung hệ thống bảo vệ an toàn', 'Replaced distribution cabinets, balanced loads and added safety protection systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.37+00', '2026-05-02 13:57:23.369+00', 'published', '2026-05-02 13:57:23.375+00', '2026-05-02 13:57:23.375+00', false, NULL, NULL, 'electrical', '#B92C32', 'Nâng cấp hệ thống điện nhà máy bao bì Tân Tiến', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (34, 11, 'Hệ thống điện động lực cảng container Cái Mép', 'Power system for Cai Mep container port', 'he-thong-dien-dong-luc-cang-container-cai-mep', 'electrical-automation', NULL, 17, NULL, NULL, NULL, NULL, 2025, 'Thi công cấp nguồn cho thiết bị nâng hạ và hệ thống chiếu sáng khu bãi', 'Installed power supply for lifting equipment and yard lighting systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.503+00', '2026-05-02 13:57:23.471+00', 'published', '2026-05-02 13:57:23.51+00', '2026-05-02 13:57:23.51+00', true, NULL, NULL, 'electrical', '#B92C32', 'Hệ thống điện động lực cảng container Cái Mép', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (33, 11, 'Hệ thống điện động lực cảng container Cái Mép', 'Power system for Cai Mep container port', 'he-thong-dien-dong-luc-cang-container-cai-mep', 'electrical-automation', NULL, 17, NULL, NULL, NULL, NULL, 2025, 'Thi công cấp nguồn cho thiết bị nâng hạ và hệ thống chiếu sáng khu bãi', 'Installed power supply for lifting equipment and yard lighting systems', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.471+00', '2026-05-02 13:57:23.471+00', 'published', '2026-05-02 13:57:23.48+00', '2026-05-02 13:57:23.48+00', false, NULL, NULL, 'electrical', '#B92C32', 'Hệ thống điện động lực cảng container Cái Mép', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (36, 12, 'Cải tạo trạm điện nhà máy nước Thủ Đức', 'Substation renovation for Thu Duc water plant', 'cai-tao-tram-dien-nha-may-nuoc-thu-duc', 'electrical-automation', NULL, 18, NULL, NULL, NULL, NULL, 2025, 'Nâng cấp thiết bị đóng cắt, đo lường và giám sát vận hành trạm', 'Upgraded switching, metering and operational monitoring equipment', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.674+00', '2026-05-02 13:57:23.652+00', 'published', '2026-05-02 13:57:23.681+00', '2026-05-02 13:57:23.681+00', true, NULL, NULL, 'electrical', '#B92C32', 'Cải tạo trạm điện nhà máy nước Thủ Đức', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (35, 12, 'Cải tạo trạm điện nhà máy nước Thủ Đức', 'Substation renovation for Thu Duc water plant', 'cai-tao-tram-dien-nha-may-nuoc-thu-duc', 'electrical-automation', NULL, 18, NULL, NULL, NULL, NULL, 2025, 'Nâng cấp thiết bị đóng cắt, đo lường và giám sát vận hành trạm', 'Upgraded switching, metering and operational monitoring equipment', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.652+00', '2026-05-02 13:57:23.652+00', 'published', '2026-05-02 13:57:23.657+00', '2026-05-02 13:57:23.657+00', false, NULL, NULL, 'electrical', '#B92C32', 'Cải tạo trạm điện nhà máy nước Thủ Đức', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (38, 3, 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', 'Nestle Vietnam production line automation', 'tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam', 'electrical-automation', NULL, 19, NULL, NULL, NULL, NULL, 2026, 'Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói', 'PLC programming and SCADA integration for a packaging line', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.872+00', '2026-05-02 09:29:48.766+00', 'published', '2026-05-02 13:57:23.88+00', '2026-05-02 13:57:23.88+00', true, NULL, NULL, 'automation', '#2b358c', 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (37, 3, 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', 'Nestle Vietnam production line automation', 'tu-dong-hoa-day-chuyen-san-xuat-nestle-viet-nam', 'electrical-automation', NULL, 19, NULL, NULL, NULL, NULL, 2026, 'Lập trình PLC và tích hợp hệ thống SCADA cho dây chuyền đóng gói', 'PLC programming and SCADA integration for a packaging line', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.836+00', '2026-05-02 09:29:48.766+00', 'published', '2026-05-02 13:57:23.848+00', '2026-05-02 13:57:23.848+00', false, NULL, NULL, 'automation', '#2b358c', 'Tự động hóa dây chuyền sản xuất Nestlé Việt Nam', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (40, 13, 'Hệ thống SCADA dây chuyền chiết rót Vinamilk', 'SCADA system for Vinamilk filling line', 'he-thong-scada-day-chuyen-chiet-rot-vinamilk', 'electrical-automation', NULL, 20, NULL, NULL, NULL, NULL, 2026, 'Điều khiển tập trung, thu thập dữ liệu sản xuất và cảnh báo lỗi thiết bị', 'Centralized control, production data acquisition and equipment fault alerts', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.972+00', '2026-05-02 13:57:23.946+00', 'published', '2026-05-02 13:57:23.981+00', '2026-05-02 13:57:23.981+00', true, NULL, NULL, 'automation', '#2b358c', 'Hệ thống SCADA dây chuyền chiết rót Vinamilk', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (39, 13, 'Hệ thống SCADA dây chuyền chiết rót Vinamilk', 'SCADA system for Vinamilk filling line', 'he-thong-scada-day-chuyen-chiet-rot-vinamilk', 'electrical-automation', NULL, 20, NULL, NULL, NULL, NULL, 2026, 'Điều khiển tập trung, thu thập dữ liệu sản xuất và cảnh báo lỗi thiết bị', 'Centralized control, production data acquisition and equipment fault alerts', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:23.946+00', '2026-05-02 13:57:23.946+00', 'published', '2026-05-02 13:57:23.954+00', '2026-05-02 13:57:23.954+00', false, NULL, NULL, 'automation', '#2b358c', 'Hệ thống SCADA dây chuyền chiết rót Vinamilk', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (42, 14, 'Robot gắp sản phẩm cho nhà máy điện tử VSIP', 'Product handling robot for VSIP electronics factory', 'robot-gap-san-pham-cho-nha-may-dien-tu-vsip', 'electrical-automation', NULL, 21, NULL, NULL, NULL, NULL, 2026, 'Tích hợp robot công nghiệp, cảm biến thị giác và băng tải phân loại', 'Integrated industrial robots, vision sensors and sorting conveyors', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.089+00', '2026-05-02 13:57:24.058+00', 'published', '2026-05-02 13:57:24.097+00', '2026-05-02 13:57:24.097+00', true, NULL, NULL, 'automation', '#2b358c', 'Robot gắp sản phẩm cho nhà máy điện tử VSIP', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (41, 14, 'Robot gắp sản phẩm cho nhà máy điện tử VSIP', 'Product handling robot for VSIP electronics factory', 'robot-gap-san-pham-cho-nha-may-dien-tu-vsip', 'electrical-automation', NULL, 21, NULL, NULL, NULL, NULL, 2026, 'Tích hợp robot công nghiệp, cảm biến thị giác và băng tải phân loại', 'Integrated industrial robots, vision sensors and sorting conveyors', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.058+00', '2026-05-02 13:57:24.058+00', 'published', '2026-05-02 13:57:24.066+00', '2026-05-02 13:57:24.066+00', false, NULL, NULL, 'automation', '#2b358c', 'Robot gắp sản phẩm cho nhà máy điện tử VSIP', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (44, 15, 'Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi', 'Raw material warehouse automation for feed plant', 'tu-dong-hoa-kho-nguyen-lieu-nha-may-thuc-an-chan-nuoi', 'electrical-automation', NULL, 22, NULL, NULL, NULL, NULL, 2025, 'Điều khiển silo, cân định lượng và truy xuất dữ liệu nhập xuất nguyên liệu', 'Controlled silos, dosing scales and material movement traceability', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.194+00', '2026-05-02 13:57:24.17+00', 'published', '2026-05-02 13:57:24.202+00', '2026-05-02 13:57:24.202+00', true, NULL, NULL, 'automation', '#2b358c', 'Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (43, 15, 'Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi', 'Raw material warehouse automation for feed plant', 'tu-dong-hoa-kho-nguyen-lieu-nha-may-thuc-an-chan-nuoi', 'electrical-automation', NULL, 22, NULL, NULL, NULL, NULL, 2025, 'Điều khiển silo, cân định lượng và truy xuất dữ liệu nhập xuất nguyên liệu', 'Controlled silos, dosing scales and material movement traceability', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.17+00', '2026-05-02 13:57:24.17+00', 'published', '2026-05-02 13:57:24.176+00', '2026-05-02 13:57:24.176+00', false, NULL, NULL, 'automation', '#2b358c', 'Tự động hóa kho nguyên liệu nhà máy thức ăn chăn nuôi', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (46, 16, 'Nâng cấp PLC dây chuyền đóng gói Masan', 'PLC upgrade for Masan packaging line', 'nang-cap-plc-day-chuyen-dong-goi-masan', 'electrical-automation', NULL, 23, NULL, NULL, NULL, NULL, 2025, 'Chuyển đổi hệ điều khiển, tối ưu chu kỳ máy và giảm thời gian dừng chuyền', 'Migrated control systems, optimized machine cycles and reduced line downtime', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.356+00', '2026-05-02 13:57:24.332+00', 'published', '2026-05-02 13:57:24.363+00', '2026-05-02 13:57:24.363+00', true, NULL, NULL, 'automation', '#2b358c', 'Nâng cấp PLC dây chuyền đóng gói Masan', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (45, 16, 'Nâng cấp PLC dây chuyền đóng gói Masan', 'PLC upgrade for Masan packaging line', 'nang-cap-plc-day-chuyen-dong-goi-masan', 'electrical-automation', NULL, 23, NULL, NULL, NULL, NULL, 2025, 'Chuyển đổi hệ điều khiển, tối ưu chu kỳ máy và giảm thời gian dừng chuyền', 'Migrated control systems, optimized machine cycles and reduced line downtime', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.333+00', '2026-05-02 13:57:24.332+00', 'published', '2026-05-02 13:57:24.339+00', '2026-05-02 13:57:24.339+00', false, NULL, NULL, 'automation', '#2b358c', 'Nâng cấp PLC dây chuyền đóng gói Masan', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (48, 4, 'Hệ thống BMS tòa nhà Landmark 81', 'Landmark 81 building management system', 'he-thong-bms-toa-nha-landmark-81', 'digitalization', NULL, 24, NULL, NULL, NULL, NULL, 2026, 'Triển khai hệ thống quản lý tòa nhà thông minh tích hợp', 'Deployment of an integrated intelligent building management system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.47+00', '2026-05-02 09:29:48.826+00', 'published', '2026-05-02 13:57:24.477+00', '2026-05-02 13:57:24.477+00', true, NULL, NULL, 'bms', '#6366F1', 'Hệ thống BMS tòa nhà Landmark 81', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (47, 4, 'Hệ thống BMS tòa nhà Landmark 81', 'Landmark 81 building management system', 'he-thong-bms-toa-nha-landmark-81', 'digitalization', NULL, 24, NULL, NULL, NULL, NULL, 2026, 'Triển khai hệ thống quản lý tòa nhà thông minh tích hợp', 'Deployment of an integrated intelligent building management system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.44+00', '2026-05-02 09:29:48.826+00', 'published', '2026-05-02 13:57:24.448+00', '2026-05-02 13:57:24.448+00', false, NULL, NULL, 'bms', '#6366F1', 'Hệ thống BMS tòa nhà Landmark 81', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (50, 17, 'BMS khu văn phòng Techcombank Tower', 'BMS for Techcombank Tower office complex', 'bms-khu-van-phong-techcombank-tower', 'digitalization', NULL, 25, NULL, NULL, NULL, NULL, 2026, 'Kết nối HVAC, chiếu sáng, an ninh và giám sát năng lượng trên cùng nền tảng', 'Connected HVAC, lighting, security and energy monitoring on one platform', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.631+00', '2026-05-02 13:57:24.606+00', 'published', '2026-05-02 13:57:24.64+00', '2026-05-02 13:57:24.64+00', true, NULL, NULL, 'bms', '#6366F1', 'BMS khu văn phòng Techcombank Tower', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (49, 17, 'BMS khu văn phòng Techcombank Tower', 'BMS for Techcombank Tower office complex', 'bms-khu-van-phong-techcombank-tower', 'digitalization', NULL, 25, NULL, NULL, NULL, NULL, 2026, 'Kết nối HVAC, chiếu sáng, an ninh và giám sát năng lượng trên cùng nền tảng', 'Connected HVAC, lighting, security and energy monitoring on one platform', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.606+00', '2026-05-02 13:57:24.606+00', 'published', '2026-05-02 13:57:24.612+00', '2026-05-02 13:57:24.612+00', false, NULL, NULL, 'bms', '#6366F1', 'BMS khu văn phòng Techcombank Tower', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (52, 18, 'Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc', 'Building management system for Hanh Phuc international hospital', 'he-thong-quan-ly-toa-nha-benh-vien-quoc-te-hanh-phuc', 'digitalization', NULL, 26, NULL, NULL, NULL, NULL, 2026, 'Giám sát phòng kỹ thuật, cảnh báo môi trường và vận hành thiết bị nền', 'Monitored technical rooms, environmental alerts and base equipment operations', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.773+00', '2026-05-02 13:57:24.745+00', 'published', '2026-05-02 13:57:24.782+00', '2026-05-02 13:57:24.782+00', true, NULL, NULL, 'bms', '#6366F1', 'Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (51, 18, 'Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc', 'Building management system for Hanh Phuc international hospital', 'he-thong-quan-ly-toa-nha-benh-vien-quoc-te-hanh-phuc', 'digitalization', NULL, 26, NULL, NULL, NULL, NULL, 2026, 'Giám sát phòng kỹ thuật, cảnh báo môi trường và vận hành thiết bị nền', 'Monitored technical rooms, environmental alerts and base equipment operations', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.745+00', '2026-05-02 13:57:24.745+00', 'published', '2026-05-02 13:57:24.752+00', '2026-05-02 13:57:24.752+00', false, NULL, NULL, 'bms', '#6366F1', 'Hệ thống quản lý tòa nhà bệnh viện quốc tế Hạnh Phúc', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (54, 19, 'BMS khách sạn nghỉ dưỡng Phú Quốc', 'BMS for Phu Quoc resort hotel', 'bms-khach-san-nghi-duong-phu-quoc', 'digitalization', NULL, 27, NULL, NULL, NULL, NULL, 2025, 'Tối ưu điều hòa, chiếu sáng khu công cộng và lịch vận hành theo công suất phòng', 'Optimized HVAC, public lighting and operating schedules based on room occupancy', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.875+00', '2026-05-02 13:57:24.85+00', 'published', '2026-05-02 13:57:24.883+00', '2026-05-02 13:57:24.883+00', true, NULL, NULL, 'bms', '#6366F1', 'BMS khách sạn nghỉ dưỡng Phú Quốc', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (53, 19, 'BMS khách sạn nghỉ dưỡng Phú Quốc', 'BMS for Phu Quoc resort hotel', 'bms-khach-san-nghi-duong-phu-quoc', 'digitalization', NULL, 27, NULL, NULL, NULL, NULL, 2025, 'Tối ưu điều hòa, chiếu sáng khu công cộng và lịch vận hành theo công suất phòng', 'Optimized HVAC, public lighting and operating schedules based on room occupancy', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.85+00', '2026-05-02 13:57:24.85+00', 'published', '2026-05-02 13:57:24.857+00', '2026-05-02 13:57:24.857+00', false, NULL, NULL, 'bms', '#6366F1', 'BMS khách sạn nghỉ dưỡng Phú Quốc', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (56, 20, 'Nâng cấp BMS trung tâm thương mại Saigon Centre', 'BMS upgrade for Saigon Centre commercial complex', 'nang-cap-bms-trung-tam-thuong-mai-saigon-centre', 'digitalization', NULL, 28, NULL, NULL, NULL, NULL, 2025, 'Tích hợp lại thiết bị hiện hữu và xây dựng dashboard vận hành tập trung', 'Re-integrated existing equipment and built centralized operations dashboards', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.982+00', '2026-05-02 13:57:24.961+00', 'published', '2026-05-02 13:57:24.989+00', '2026-05-02 13:57:24.989+00', true, NULL, NULL, 'bms', '#6366F1', 'Nâng cấp BMS trung tâm thương mại Saigon Centre', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (55, 20, 'Nâng cấp BMS trung tâm thương mại Saigon Centre', 'BMS upgrade for Saigon Centre commercial complex', 'nang-cap-bms-trung-tam-thuong-mai-saigon-centre', 'digitalization', NULL, 28, NULL, NULL, NULL, NULL, 2025, 'Tích hợp lại thiết bị hiện hữu và xây dựng dashboard vận hành tập trung', 'Re-integrated existing equipment and built centralized operations dashboards', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:24.961+00', '2026-05-02 13:57:24.961+00', 'published', '2026-05-02 13:57:24.966+00', '2026-05-02 13:57:24.966+00', false, NULL, NULL, 'bms', '#6366F1', 'Nâng cấp BMS trung tâm thương mại Saigon Centre', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (62, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', 'cement-mining', 9, 'CÔNG TY XI MĂNG VICEM BÚT SƠN', 'VICEM But Son Cement Company', 'Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam', 'Hà Nam', 2020, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', NULL, NULL, true, '2026-05-03 08:50:26.269+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-03 08:50:26.294+00', '2026-05-03 08:50:26.294+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (5, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', NULL, 5, NULL, NULL, NULL, NULL, 2026, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 09:34:32.48+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-02 09:34:32.507+00', '2026-05-02 09:34:32.507+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (17, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', NULL, 9, NULL, NULL, NULL, NULL, 2026, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:57:22.259+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-02 13:57:22.272+00', '2026-05-02 13:57:22.272+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (63, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', 'cement-mining', 9, 'CÔNG TY XI MĂNG VICEM BÚT SƠN', 'VICEM But Son Cement Company', 'Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam', 'Hà Nam', 2020, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', NULL, NULL, true, '2026-05-03 08:53:25.645+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-03 08:53:25.683+00', '2026-05-03 08:53:25.683+00', true, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (10, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', NULL, 5, NULL, NULL, NULL, NULL, 2026, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', NULL, NULL, NULL, NULL, NULL, NULL, true, '2026-05-02 13:47:03.87+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-02 13:47:03.879+00', '2026-05-02 13:47:03.879+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (61, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', 'cement-mining', 9, 'CÔNG TY XI MĂNG VICEM BÚT SƠN', 'VICEM But Son Cement Company', 'Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam', 'Hà Nam', 2020, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', NULL, NULL, true, '2026-05-03 08:49:02.103+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-03 08:49:02.133+00', '2026-05-03 08:49:02.133+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (58, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', 'cement-mining', 9, 'CÔNG TY XI MĂNG VICEM BÚT SƠN', 'VICEM But Son Cement Company', 'Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam', 'Hà Nam', 2020, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', NULL, NULL, true, '2026-05-03 00:39:49.945+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-03 00:39:49.974+00', '2026-05-03 00:39:49.974+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v VALUES (59, 1, 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', 'Vietnam - Singapore industrial park energy management system', 'he-thong-quan-ly-nang-luong-kcn-viet-nam-singapore', 'measurement', 'cement-mining', 9, 'CÔNG TY XI MĂNG VICEM BÚT SƠN', 'VICEM But Son Cement Company', 'Xã Thanh Sơn, Huyện Kim Bảng, tỉnh Hà Nam', 'Hà Nam', 2020, 'Thiết kế và thi công hệ thống giám sát năng lượng toàn diện', 'Design and deployment of a comprehensive energy monitoring system', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Trạm nghiền xi măng sử dụng hệ điều khiển Simatic S5 đã cũ và khó duy trì vận hành ổn định. Bắc Âu cung cấp giải pháp nâng cấp lên nền tảng S7/TIA mới, gọn hơn, dễ vận hành và có khả năng mở rộng tốt hơn.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "The cement grinding station used an aging Simatic S5 control system that was difficult to maintain reliably. Bac Au provided an upgrade to a modern S7/TIA platform that is more compact, easier to operate and more scalable.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Khảo sát hệ thống hiện hữu; thiết kế tủ PLC S7-1500F; lập trình PLC/HMI; cấu hình truyền thông Profinet; lắp đặt tại hiện trường; chạy thử và bàn giao vận hành.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', '{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Surveyed the existing system; designed S7-1500F PLC cabinets; programmed PLC/HMI; configured Profinet communication; installed on site; commissioned and handed over for operation.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}]}], "direction": null}}', NULL, NULL, true, '2026-05-03 08:29:55.144+00', '2026-05-02 09:29:48.586+00', 'published', '2026-05-03 08:29:55.166+00', '2026-05-03 08:29:55.166+00', false, NULL, NULL, 'energy', '#2b358c', 'Hệ thống quản lý năng lượng KCN Việt Nam - Singapore', NULL, NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: _projects_v_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._projects_v_locales VALUES ('{"vi":"Năng lượng","en":"Energy"}', 1, 'vi', 1) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('{"vi":"Điện CN","en":"Industrial power"}', 2, 'vi', 2) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('{"vi":"Tự động hóa","en":"Automation"}', 3, 'vi', 3) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('{"vi":"BMS","en":"BMS"}', 4, 'vi', 4) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('{"vi":"Năng lượng","en":"Energy"}', 5, 'vi', 5) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('{"vi":"Điện CN","en":"Industrial power"}', 6, 'vi', 6) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('{"vi":"Tự động hóa","en":"Automation"}', 7, 'vi', 7) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('{"vi":"BMS","en":"BMS"}', 8, 'vi', 8) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 9, 'vi', 9) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 10, 'vi', 10) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 11, 'en', 10) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 12, 'vi', 11) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 13, 'vi', 12) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Industrial power', 14, 'en', 12) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 15, 'vi', 13) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 16, 'vi', 14) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Automation', 17, 'en', 14) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 18, 'vi', 15) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 19, 'vi', 16) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 20, 'en', 16) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 21, 'vi', 17) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 22, 'en', 17) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 23, 'vi', 18) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 24, 'en', 18) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 25, 'vi', 19) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 26, 'vi', 20) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 27, 'en', 20) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 28, 'vi', 21) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 29, 'vi', 22) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 30, 'en', 22) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 31, 'vi', 23) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 32, 'vi', 24) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 33, 'en', 24) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 34, 'vi', 25) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 35, 'vi', 26) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 36, 'en', 26) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 37, 'vi', 27) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Industrial power', 38, 'en', 27) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 39, 'vi', 28) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Industrial power', 40, 'en', 28) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 41, 'vi', 29) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 42, 'vi', 30) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Industrial power', 43, 'en', 30) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 44, 'vi', 31) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 45, 'vi', 32) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Industrial power', 46, 'en', 32) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 47, 'vi', 33) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 48, 'vi', 34) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Industrial power', 49, 'en', 34) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 50, 'vi', 35) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Điện CN', 51, 'vi', 36) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Industrial power', 52, 'en', 36) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 53, 'vi', 37) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Automation', 54, 'en', 37) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 55, 'vi', 38) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Automation', 56, 'en', 38) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 57, 'vi', 39) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 58, 'vi', 40) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Automation', 59, 'en', 40) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 60, 'vi', 41) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 61, 'vi', 42) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Automation', 62, 'en', 42) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 63, 'vi', 43) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 64, 'vi', 44) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Automation', 65, 'en', 44) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 66, 'vi', 45) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Tự động hóa', 67, 'vi', 46) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Automation', 68, 'en', 46) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 69, 'vi', 47) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 70, 'en', 47) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 71, 'vi', 48) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 72, 'en', 48) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 73, 'vi', 49) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 74, 'vi', 50) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 75, 'en', 50) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 76, 'vi', 51) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 77, 'vi', 52) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 78, 'en', 52) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 79, 'vi', 53) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 80, 'vi', 54) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 81, 'en', 54) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 82, 'vi', 55) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 83, 'vi', 56) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('BMS', 84, 'en', 56) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 85, 'vi', 57) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 86, 'en', 57) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 87, 'vi', 58) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 88, 'en', 58) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 89, 'vi', 59) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 90, 'en', 59) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 91, 'vi', 60) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 92, 'en', 60) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 93, 'vi', 61) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 94, 'en', 61) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 95, 'vi', 62) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 96, 'en', 62) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Năng lượng', 97, 'vi', 63) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_locales VALUES ('Energy', 98, 'en', 63) ON CONFLICT DO NOTHING;


--
-- Data for Name: _projects_v_version_customer_reasons; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._projects_v_version_customer_reasons VALUES (1, 57, 1, '69f618f0f7da914c9d4e9640') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (2, 57, 2, '69f618f0f7da914c9d4e9641') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (3, 57, 3, '69f618f0f7da914c9d4e9642') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (1, 58, 4, '69f69955944ff49d4af67c6a') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (2, 58, 5, '69f69955944ff49d4af67c6b') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (3, 58, 6, '69f69955944ff49d4af67c6c') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (1, 59, 7, '69f7078343bf97e6a550fe1d') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (2, 59, 8, '69f7078343bf97e6a550fe1e') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (3, 59, 9, '69f7078343bf97e6a550fe1f') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (1, 60, 10, '69f709294de9b3f05b430dcf') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (2, 60, 11, '69f709294de9b3f05b430dd0') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (3, 60, 12, '69f709294de9b3f05b430dd1') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (1, 61, 13, '69f70bfeef99a4f908680426') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (2, 61, 14, '69f70bfeef99a4f908680427') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (3, 61, 15, '69f70bfeef99a4f908680428') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (1, 62, 16, '69f70c52431d72fb04b96121') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (2, 62, 17, '69f70c52431d72fb04b96122') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (3, 62, 18, '69f70c52431d72fb04b96123') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (1, 63, 19, '69f70d05597c80fcdc476062') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (2, 63, 20, '69f70d05597c80fcdc476063') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons VALUES (3, 63, 21, '69f70d05597c80fcdc476064') ON CONFLICT DO NOTHING;


--
-- Data for Name: _projects_v_version_customer_reasons_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.', 1, 'vi', 1) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.', 2, 'vi', 2) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.', 3, 'vi', 3) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.', 4, 'vi', 4) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.', 5, 'vi', 5) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.', 6, 'vi', 6) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.', 7, 'vi', 7) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.', 8, 'vi', 8) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.', 9, 'vi', 9) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.', 10, 'vi', 10) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.', 11, 'vi', 11) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.', 12, 'vi', 12) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.', 13, 'vi', 13) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.', 14, 'vi', 14) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.', 15, 'vi', 15) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.', 16, 'vi', 16) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.', 17, 'vi', 17) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.', 18, 'vi', 18) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.', 19, 'vi', 19) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.', 20, 'vi', 20) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_customer_reasons_locales VALUES ('Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.', 21, 'vi', 21) ON CONFLICT DO NOTHING;


--
-- Data for Name: _projects_v_version_images; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _projects_v_version_result_items; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._projects_v_version_result_items VALUES (1, 57, 1, '69f618f0f7da914c9d4e9643') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (2, 57, 2, '69f618f0f7da914c9d4e9644') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (3, 57, 3, '69f618f0f7da914c9d4e9645') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (1, 58, 4, '69f69955944ff49d4af67c6d') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (2, 58, 5, '69f69955944ff49d4af67c6e') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (3, 58, 6, '69f69955944ff49d4af67c6f') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (1, 59, 7, '69f7078343bf97e6a550fe20') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (2, 59, 8, '69f7078343bf97e6a550fe21') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (3, 59, 9, '69f7078343bf97e6a550fe22') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (1, 60, 10, '69f709294de9b3f05b430dd2') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (2, 60, 11, '69f709294de9b3f05b430dd3') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (3, 60, 12, '69f709294de9b3f05b430dd4') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (1, 61, 13, '69f70bfeef99a4f908680429') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (2, 61, 14, '69f70bfeef99a4f90868042a') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (3, 61, 15, '69f70bfeef99a4f90868042b') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (1, 62, 16, '69f70c52431d72fb04b96124') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (2, 62, 17, '69f70c52431d72fb04b96125') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (3, 62, 18, '69f70c52431d72fb04b96126') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (1, 63, 19, '69f70d05597c80fcdc476065') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (2, 63, 20, '69f70d05597c80fcdc476066') ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items VALUES (3, 63, 21, '69f70d05597c80fcdc476067') ON CONFLICT DO NOTHING;


--
-- Data for Name: _projects_v_version_result_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._projects_v_version_result_items_locales VALUES ('Hệ thống vận hành ổn định sau khi bàn giao.', 1, 'vi', 1) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Giảm thời gian xử lý sự cố và tăng khả năng giám sát.', 2, 'vi', 2) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.', 3, 'vi', 3) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Hệ thống vận hành ổn định sau khi bàn giao.', 4, 'vi', 4) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Giảm thời gian xử lý sự cố và tăng khả năng giám sát.', 5, 'vi', 5) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.', 6, 'vi', 6) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Hệ thống vận hành ổn định sau khi bàn giao.', 7, 'vi', 7) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Giảm thời gian xử lý sự cố và tăng khả năng giám sát.', 8, 'vi', 8) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.', 9, 'vi', 9) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Hệ thống vận hành ổn định sau khi bàn giao.', 10, 'vi', 10) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Giảm thời gian xử lý sự cố và tăng khả năng giám sát.', 11, 'vi', 11) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.', 12, 'vi', 12) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Hệ thống vận hành ổn định sau khi bàn giao.', 13, 'vi', 13) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Giảm thời gian xử lý sự cố và tăng khả năng giám sát.', 14, 'vi', 14) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.', 15, 'vi', 15) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Hệ thống vận hành ổn định sau khi bàn giao.', 16, 'vi', 16) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Giảm thời gian xử lý sự cố và tăng khả năng giám sát.', 17, 'vi', 17) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.', 18, 'vi', 18) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Hệ thống vận hành ổn định sau khi bàn giao.', 19, 'vi', 19) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Giảm thời gian xử lý sự cố và tăng khả năng giám sát.', 20, 'vi', 20) ON CONFLICT DO NOTHING;
INSERT INTO public._projects_v_version_result_items_locales VALUES ('Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.', 21, 'vi', 21) ON CONFLICT DO NOTHING;


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: _services_v; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page VALUES (1, '2026-04-24 01:25:14.759+00', '2026-04-24 01:25:14.759+00') ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_brand_logos; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_brand_logos VALUES (8, 1, 'layout', '69eae59dcf6a07796609bb18', NULL, 'latest', 6) ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_brand_logos_fallback_brands; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_brand_logos_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_cta_banner; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_cta_banner VALUES (7, 1, 'layout', '69eae59dcf6a07796609bb17', '/contact', '/services', NULL, '#0F172A', '#B92C32', '#2b358c', '#0F172A', '#B92C32') ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_cta_banner_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_cta_banner_locales VALUES ('Bắt đầu Dự án của bạn ngay hôm nay', 'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp', 'Liên hệ Ngay', 'Xem Dịch vụ', 19, 'vi', '69eae59dcf6a07796609bb17') ON CONFLICT DO NOTHING;
INSERT INTO public.home_page_blocks_cta_banner_locales VALUES ('Start Your Project Today', 'Contact our team of experts for optimal solution consulting for your business', 'Contact Now', 'View Services', 20, 'en', '69eae59dcf6a07796609bb17') ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_featured_projects; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_featured_projects VALUES (4, 1, 'layout', '69eae59dcf6a07796609bb14', NULL, '#0B1221', '/du-an-tham-khao', 'latest', 4, 'dark', 'grid') ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_featured_projects_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_featured_projects_tabs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_featured_projects_tabs_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_hero; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_hero VALUES (1, 1, 'layout', '69eae59dcf6a07796609bb11', NULL, '/services', '/contact', 'Tiêu đề', 'video', 1, 'corporate', NULL, NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_hero_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_hero_locales VALUES ('Giải pháp Tự động hóa \n Công nghiệp Toàn diện ', 'Đối tác tin cậy trong lĩnh vực tự động hóa, quản lý năng lượng \n và hệ thống điện công nghiệp cho doanh nghiệp toàn quốc', 'Khám phá Dịch vụ', 'Liên hệ Tư vấn', 19, 'vi', '69eae59dcf6a07796609bb11', 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU') ON CONFLICT DO NOTHING;
INSERT INTO public.home_page_blocks_hero_locales VALUES ('Comprehensive Industrial
Automation Solutions', 'Your trusted partner in industrial automation, energy management and electrical systems for enterprises nationwide', 'Explore Services', 'Contact Us', 20, 'en', '69eae59dcf6a07796609bb11', 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU') ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_hero_stats; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_hero_stats_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_hero_trust_partners; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_news; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_news VALUES (3, 1, 'layout', '69eae59dcf6a07796609bb13', 3, NULL, '/tin-tuc', 'latest', NULL, 'featured') ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_news_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_partners; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_partners VALUES (5, 1, 'layout', '69eae59dcf6a07796609bb15', NULL, '#0B1221') ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_partners_images; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_partners_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_partners_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_partners_locales VALUES ('Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa', 19, 'vi', '69eae59dcf6a07796609bb15', 'ĐỐI TÁC') ON CONFLICT DO NOTHING;
INSERT INTO public.home_page_blocks_partners_locales VALUES ('We partner with leading companies in the industrial and automation sectors', 20, 'en', '69eae59dcf6a07796609bb15', 'ĐỐI TÁC') ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_products; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_products VALUES (6, 1, 'layout', '69eae59dcf6a07796609bb16', NULL, 'latest', 5) ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_products_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_products_locales VALUES ('Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới', 19, 'vi', '69eae59dcf6a07796609bb16', 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP') ON CONFLICT DO NOTHING;
INSERT INTO public.home_page_blocks_products_locales VALUES ('Distributing genuine industrial equipment from world-leading brands', 20, 'en', '69eae59dcf6a07796609bb16', 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP') ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_services; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_services VALUES (2, 1, 'layout', '69eae59dcf6a07796609bb12', NULL, 'cards') ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_blocks_services_cards; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_services_cards_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: home_page_blocks_services_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.home_page_blocks_services_locales VALUES ('Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng', 19, 'vi', '69eae59dcf6a07796609bb12', 'LĨNH VỰC HOẠT ĐỘNG') ON CONFLICT DO NOTHING;
INSERT INTO public.home_page_blocks_services_locales VALUES ('Comprehensive services in industrial and civil sectors', 20, 'en', '69eae59dcf6a07796609bb12', 'LĨNH VỰC HOẠT ĐỘNG') ON CONFLICT DO NOTHING;


--
-- Data for Name: partners; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.partners VALUES (1, 'ABB', 34, 'https://global.abb', 1, '2026-05-02 14:23:36.558+00', '2026-05-02 14:23:36.558+00') ON CONFLICT DO NOTHING;
INSERT INTO public.partners VALUES (2, 'Intel', 35, 'https://www.intel.com', 2, '2026-05-02 14:23:36.688+00', '2026-05-02 14:23:36.688+00') ON CONFLICT DO NOTHING;
INSERT INTO public.partners VALUES (3, 'Mitsubishi', 36, 'https://www.mitsubishielectric.com', 3, '2026-05-02 14:23:36.828+00', '2026-05-02 14:23:36.828+00') ON CONFLICT DO NOTHING;
INSERT INTO public.partners VALUES (4, 'PSCL', 37, 'https://www.pscl.com', 4, '2026-05-02 14:23:36.862+00', '2026-05-02 14:23:36.862+00') ON CONFLICT DO NOTHING;
INSERT INTO public.partners VALUES (5, 'KEIHIN', 38, 'https://www.hitachiastemo.com', 5, '2026-05-02 14:23:36.915+00', '2026-05-02 14:23:36.914+00') ON CONFLICT DO NOTHING;
INSERT INTO public.partners VALUES (6, 'Siemens', 39, 'https://www.siemens.com', 6, '2026-05-02 14:23:36.945+00', '2026-05-02 14:23:36.945+00') ON CONFLICT DO NOTHING;


--
-- Data for Name: home_page_rels; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: news_tags; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.news_tags VALUES (1, 1, 'Tin tức', 6) ON CONFLICT DO NOTHING;
INSERT INTO public.news_tags VALUES (1, 2, 'Hội thảo', 7) ON CONFLICT DO NOTHING;
INSERT INTO public.news_tags VALUES (2, 2, 'Sự kiện', 8) ON CONFLICT DO NOTHING;
INSERT INTO public.news_tags VALUES (1, 3, 'Tin tức', 9) ON CONFLICT DO NOTHING;
INSERT INTO public.news_tags VALUES (2, 3, 'Thông cáo', 10) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages VALUES (3, 'du-an-tham-khao', 'builder', '2026-05-03 08:53:25.484+00', '2026-05-02 15:29:39.269+00', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages VALUES (2, 'gioi-thieu', 'builder', '2026-05-03 09:18:27.524+00', '2026-05-02 15:29:39.079+00', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages VALUES (1, 'home', 'home', '2026-05-04 02:18:25.164+00', '2026-05-02 02:32:48.104+00', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages VALUES (4, 'home_v2', 'builder', '2026-05-04 03:28:11.961+00', '2026-05-04 03:01:31.251+00', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages VALUES (5, 'home-modern-split', 'builder', '2026-05-05 07:25:41.249+00', '2026-05-05 07:25:41.244+00', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages VALUES (6, 'home-data-grid', 'builder', '2026-05-05 07:26:45.898+00', '2026-05-05 07:26:45.893+00', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages VALUES (7, 'home-modern-rounded', 'builder', '2026-05-05 07:26:46.028+00', '2026-05-05 07:26:46.027+00', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages VALUES (8, 'home-ultra-modern', 'builder', '2026-05-05 07:26:46.129+00', '2026-05-05 07:26:46.128+00', NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content VALUES (2, 2, 'layout', '69f70d04597c80fcdc476042', NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sections; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sections VALUES (1, '69f70d04597c80fcdc476042', 'gioi-thieu', 'intro', '3', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (2, '69f70d04597c80fcdc476042', 'su-menh', 'cards', '3', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (3, '69f70d04597c80fcdc476042', 'giai-phap-dien', 'gallery', '3', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (4, '69f70d04597c80fcdc476042', 'so-hoa', 'gallery', '2', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (5, '69f70d04597c80fcdc476042', 'do-luong', 'gallery', '3', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (6, '69f70d04597c80fcdc476042', 'san-pham', 'itemGrid', '4', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (7, '69f70d04597c80fcdc476042', 'dich-vu', 'itemGrid', '3', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (8, '69f70d04597c80fcdc476042', 'nha-xuong', 'gallery', '3', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (9, '69f70d04597c80fcdc476042', 'van-phong', 'itemGrid', '2', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (10, '69f70d04597c80fcdc476042', 'chung-chi', 'itemGrid', '3', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (11, '69f70d04597c80fcdc476042', 'atld', 'splitMedia', '2', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (12, '69f70d04597c80fcdc476042', 'chung-nhan', 'gallery', '3', 'left') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections VALUES (13, '69f70d04597c80fcdc476042', 'tai-lieu', 'documentList', '3', 'left') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sections_images; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sections_images VALUES (1, 'gioi-thieu', '69f70d04597c80fcdc47601e', NULL, 'https://images.unsplash.com/photo-1758626038030-96f813504d15?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (1, 'su-menh', '69f70f3d2642f0c01bc1a6f1', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (1, 'giai-phap-dien', '69f70d04597c80fcdc476022', NULL, 'https://images.unsplash.com/photo-1609556273935-f295c9dd95c1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (2, 'giai-phap-dien', '69f70d04597c80fcdc476023', NULL, 'https://images.unsplash.com/photo-1571844885558-a9437588b208?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (3, 'giai-phap-dien', '69f70d04597c80fcdc476024', NULL, 'https://images.unsplash.com/photo-1648598919229-fe251dba3310?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (1, 'so-hoa', '69f70d04597c80fcdc476025', NULL, 'https://images.unsplash.com/photo-1751222169753-92b0e1a3f58f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (2, 'so-hoa', '69f70d04597c80fcdc476026', NULL, 'https://images.unsplash.com/photo-1580062329913-969e9f982468?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (1, 'do-luong', '69f70d04597c80fcdc476027', NULL, 'https://images.unsplash.com/photo-1727292485858-588c7652ad69?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (2, 'do-luong', '69f70d04597c80fcdc476028', NULL, 'https://images.unsplash.com/photo-1655210913810-33acfa96d1e6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (3, 'do-luong', '69f70d04597c80fcdc476029', NULL, 'https://images.unsplash.com/photo-1651340675491-6fb0bfb5c4ea?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (1, 'nha-xuong', '69f70d04597c80fcdc476031', NULL, 'https://images.unsplash.com/photo-1745921189400-866618539600?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (2, 'nha-xuong', '69f70d04597c80fcdc476032', NULL, 'https://images.unsplash.com/photo-1741176506261-73218298e4d8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (3, 'nha-xuong', '69f70d04597c80fcdc476033', NULL, 'https://images.unsplash.com/photo-1668511237433-3df7d7a2d2ae?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (1, 'atld', '69f70d04597c80fcdc47603b', NULL, 'https://images.unsplash.com/photo-1672220262141-bf7119d3081d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (1, 'chung-nhan', '69f70d04597c80fcdc47603c', NULL, 'https://images.unsplash.com/photo-1602629978879-e7ed887988d1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (2, 'chung-nhan', '69f70d04597c80fcdc47603d', NULL, 'https://images.unsplash.com/photo-1704584592182-ed995ac89ddb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images VALUES (3, 'chung-nhan', '69f70d04597c80fcdc47603e', NULL, 'https://images.unsplash.com/photo-1624365169806-1517fcb873d7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sections_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Giới thiệu về Bắc Âu', 749, 'vi', '69f70d04597c80fcdc47601e', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('About Bac Au', 750, 'en', '69f70d04597c80fcdc47601e', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Giải pháp điện và tự động hóa 1', 751, 'vi', '69f70d04597c80fcdc476022', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Electrical and automation 1', 752, 'en', '69f70d04597c80fcdc476022', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Giải pháp điện và tự động hóa 2', 753, 'vi', '69f70d04597c80fcdc476023', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Electrical and automation 2', 754, 'en', '69f70d04597c80fcdc476023', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Giải pháp điện và tự động hóa 3', 755, 'vi', '69f70d04597c80fcdc476024', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Electrical and automation 3', 756, 'en', '69f70d04597c80fcdc476024', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Giải pháp số hóa 1', 757, 'vi', '69f70d04597c80fcdc476025', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Digitalization 1', 758, 'en', '69f70d04597c80fcdc476025', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Giải pháp số hóa 2', 759, 'vi', '69f70d04597c80fcdc476026', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Digitalization 2', 760, 'en', '69f70d04597c80fcdc476026', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Giải pháp đo lường 1', 761, 'vi', '69f70d04597c80fcdc476027', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Measurement technology 1', 762, 'en', '69f70d04597c80fcdc476027', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Giải pháp đo lường 2', 763, 'vi', '69f70d04597c80fcdc476028', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Measurement technology 2', 764, 'en', '69f70d04597c80fcdc476028', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Giải pháp đo lường 3', 765, 'vi', '69f70d04597c80fcdc476029', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Measurement technology 3', 766, 'en', '69f70d04597c80fcdc476029', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Nhà xưởng 1', 767, 'vi', '69f70d04597c80fcdc476031', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Nhà xưởng 1', 768, 'en', '69f70d04597c80fcdc476031', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Nhà xưởng 2', 769, 'vi', '69f70d04597c80fcdc476032', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Nhà xưởng 2', 770, 'en', '69f70d04597c80fcdc476032', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Nhà xưởng 3', 771, 'vi', '69f70d04597c80fcdc476033', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Nhà xưởng 3', 772, 'en', '69f70d04597c80fcdc476033', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Sức khỏe, an toàn và môi trường', 773, 'vi', '69f70d04597c80fcdc47603b', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Sức khỏe, an toàn và môi trường', 774, 'en', '69f70d04597c80fcdc47603b', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Chứng nhận 1', 775, 'vi', '69f70d04597c80fcdc47603c', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Chứng nhận 1', 776, 'en', '69f70d04597c80fcdc47603c', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Chứng nhận 2', 777, 'vi', '69f70d04597c80fcdc47603d', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Chứng nhận 2', 778, 'en', '69f70d04597c80fcdc47603d', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Chứng nhận 3', 779, 'vi', '69f70d04597c80fcdc47603e', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_images_locales VALUES ('Chứng nhận 3', 780, 'en', '69f70d04597c80fcdc47603e', NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sections_items; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sections_items VALUES (1, 'su-menh', '69f70d04597c80fcdc47601f', NULL, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (2, 'su-menh', '69f70d04597c80fcdc476020', NULL, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (3, 'su-menh', '69f70d04597c80fcdc476021', NULL, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (1, 'san-pham', '69f70d04597c80fcdc47602a', NULL, NULL, 'https://images.unsplash.com/photo-1714058322554-c886245e3aa6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (2, 'san-pham', '69f70d04597c80fcdc47602b', NULL, NULL, 'https://images.unsplash.com/photo-1665969083957-e5a17f651f68?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (3, 'san-pham', '69f70d04597c80fcdc47602c', NULL, NULL, 'https://images.unsplash.com/photo-1637684664858-54ac3521fa5f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (4, 'san-pham', '69f70d04597c80fcdc47602d', NULL, NULL, 'https://images.unsplash.com/photo-1656315801331-c9122a0e1937?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (1, 'dich-vu', '69f70d04597c80fcdc47602e', NULL, NULL, 'https://images.unsplash.com/photo-1748945668245-7fec6b8782cf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (2, 'dich-vu', '69f70d04597c80fcdc47602f', NULL, NULL, 'https://images.unsplash.com/photo-1744441571483-12642be89c40?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (3, 'dich-vu', '69f70d04597c80fcdc476030', NULL, NULL, 'https://images.unsplash.com/photo-1643290976205-c2e467a65e9c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (1, 'van-phong', '69f70d04597c80fcdc476034', NULL, NULL, 'https://images.unsplash.com/photo-1653611136862-a457b7646a8a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (2, 'van-phong', '69f70d04597c80fcdc476035', NULL, NULL, 'https://images.unsplash.com/photo-1758691737083-0e7fdbde0f05?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (1, 'chung-chi', '69f70d04597c80fcdc476036', NULL, NULL, 'https://images.unsplash.com/photo-1638636241638-aef5120c5153?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (2, 'chung-chi', '69f70d04597c80fcdc476037', NULL, NULL, 'https://images.unsplash.com/photo-1564676238537-dcac77e39cf1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (3, 'chung-chi', '69f70d04597c80fcdc476038', NULL, NULL, 'https://images.unsplash.com/photo-1768796372063-4da660e034b8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1080', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (1, 'tai-lieu', '69f70d04597c80fcdc47603f', NULL, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (2, 'tai-lieu', '69f70d04597c80fcdc476040', NULL, NULL, NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items VALUES (3, 'tai-lieu', '69f70d04597c80fcdc476041', NULL, NULL, NULL, NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sections_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Sứ mệnh', NULL, 'Cung cấp giải pháp công nghệ tiên tiến, đáng tin cậy cho ngành công nghiệp Việt Nam, giúp khách hàng vận hành an toàn, tối ưu và bền vững.', NULL, NULL, NULL, 847, 'vi', '69f70d04597c80fcdc47601f') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Mission', NULL, 'Provide advanced, reliable technology solutions for Vietnamese industry with a focus on safe and efficient operations.', NULL, NULL, NULL, 848, 'en', '69f70d04597c80fcdc47601f') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Tầm nhìn', NULL, 'Trở thành đối tác công nghệ hàng đầu trong lĩnh vực tự động hóa và số hóa công nghiệp tại Việt Nam và khu vực.', NULL, NULL, NULL, 849, 'vi', '69f70d04597c80fcdc476020') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Vision', NULL, 'Become a leading technology partner in automation and industrial digitalization in Vietnam and the region.', NULL, NULL, NULL, 850, 'en', '69f70d04597c80fcdc476020') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Giá trị cốt lõi', NULL, 'Chất lượng - Sáng tạo - Tận tâm - Hợp tác - Phát triển bền vững là nền tảng cho mọi dự án và dịch vụ của Bắc Âu.', NULL, NULL, NULL, 851, 'vi', '69f70d04597c80fcdc476021') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Core values', NULL, 'Quality, creativity, dedication, collaboration and sustainable development drive every engagement.', NULL, NULL, NULL, 852, 'en', '69f70d04597c80fcdc476021') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Van công nghiệp', NULL, 'Thiết bị điều khiển lưu chất cho hệ thống công nghệ và dây chuyền sản xuất.', NULL, 'Van công nghiệp', NULL, 853, 'vi', '69f70d04597c80fcdc47602a') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Industrial valves', NULL, 'Fluid control devices for process systems and industrial lines.', NULL, 'Van công nghiệp', NULL, 854, 'en', '69f70d04597c80fcdc47602a') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Thiết bị điều khiển', NULL, 'PLC, HMI, biến tần và các giải pháp điều khiển hiện đại cho nhà máy.', NULL, 'Thiết bị điều khiển', NULL, 855, 'vi', '69f70d04597c80fcdc47602b') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Control devices', NULL, 'PLCs, HMIs, drives and modern control solutions.', NULL, 'Thiết bị điều khiển', NULL, 856, 'en', '69f70d04597c80fcdc47602b') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Cảm biến & đo lường', NULL, 'Thiết bị đo, cảm biến và bộ truyền tín hiệu cho dây chuyền công nghiệp.', NULL, 'Cảm biến và đo lường', NULL, 857, 'vi', '69f70d04597c80fcdc47602c') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Sensors & instrumentation', NULL, 'Field devices and measurement instruments for plant operations.', NULL, 'Cảm biến và đo lường', NULL, 858, 'en', '69f70d04597c80fcdc47602c') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Tủ điện công nghiệp', NULL, 'Thiết kế, lắp ráp và kiểm thử tủ điện điều khiển theo yêu cầu dự án.', NULL, 'Tủ điện công nghiệp', NULL, 859, 'vi', '69f70d04597c80fcdc47602d') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Industrial panels', NULL, 'Engineered and assembled control panels for project requirements.', NULL, 'Tủ điện công nghiệp', NULL, 860, 'en', '69f70d04597c80fcdc47602d') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Thi công & lắp đặt', NULL, 'Triển khai hệ thống điện, tủ điều khiển và tự động hóa tại hiện trường.', NULL, 'Thi công và lắp đặt', NULL, 861, 'vi', '69f70d04597c80fcdc47602e') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Installation & execution', NULL, 'On-site deployment of power, control and automation systems.', NULL, 'Thi công và lắp đặt', NULL, 862, 'en', '69f70d04597c80fcdc47602e') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Vận hành & bảo trì', NULL, 'Hỗ trợ chạy thử, tối ưu hệ thống và bảo trì định kỳ cho nhà máy.', NULL, 'Vận hành và bảo trì', NULL, 863, 'vi', '69f70d04597c80fcdc47602f') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Operation & maintenance', NULL, 'Commissioning support, optimization and scheduled maintenance.', NULL, 'Vận hành và bảo trì', NULL, 864, 'en', '69f70d04597c80fcdc47602f') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Tư vấn & thiết kế', NULL, 'Thiết kế giải pháp kỹ thuật phù hợp bài toán sản xuất và chuyển đổi số.', NULL, 'Tư vấn và thiết kế', NULL, 865, 'vi', '69f70d04597c80fcdc476030') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Consulting & design', NULL, 'Application engineering aligned to industrial automation and digitalization goals.', NULL, 'Tư vấn và thiết kế', NULL, 866, 'en', '69f70d04597c80fcdc476030') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('TP. Hồ Chí Minh', 'Văn phòng chính', 'Lô E2a-7, Đường D1, Khu Công Nghệ Cao, TP. Thủ Đức, TP. Hồ Chí Minh', NULL, 'Văn phòng Hồ Chí Minh', NULL, 867, 'vi', '69f70d04597c80fcdc476034') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Ho Chi Minh City', 'Head office', 'E2a-7, D1 Street, Saigon Hi-Tech Park, Thu Duc City, Ho Chi Minh City', NULL, 'Văn phòng Hồ Chí Minh', NULL, 868, 'en', '69f70d04597c80fcdc476034') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Hà Nội', 'Văn phòng đại diện', 'Khu vực trung tâm, hỗ trợ dự án và khách hàng khu vực miền Bắc.', NULL, 'Văn phòng Hà Nội', NULL, 869, 'vi', '69f70d04597c80fcdc476035') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Hanoi', 'Representative office', 'Regional support point for projects and customers in Northern Vietnam.', NULL, 'Văn phòng Hà Nội', NULL, 870, 'en', '69f70d04597c80fcdc476035') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('ISO 9001:2015', NULL, 'Hệ thống quản lý chất lượng trong triển khai dự án và dịch vụ kỹ thuật.', NULL, 'ISO 9001:2015', NULL, 871, 'vi', '69f70d04597c80fcdc476036') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('ISO 9001:2015', NULL, 'Quality management system for project delivery and technical services.', NULL, 'ISO 9001:2015', NULL, 872, 'en', '69f70d04597c80fcdc476036') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('ISO 14001', NULL, 'Cam kết kiểm soát tác động môi trường trong hoạt động sản xuất và thi công.', NULL, 'ISO 14001', NULL, 873, 'vi', '69f70d04597c80fcdc476037') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('ISO 14001', NULL, 'Environmental commitment across production and field execution activities.', NULL, 'ISO 14001', NULL, 874, 'en', '69f70d04597c80fcdc476037') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('An toàn & tuân thủ', NULL, 'Quy trình kiểm soát chất lượng, nghiệm thu và vận hành an toàn.', NULL, 'An toàn và tuân thủ', NULL, 875, 'vi', '69f70d04597c80fcdc476038') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Safety & compliance', NULL, 'Quality control, acceptance and safe commissioning practices.', NULL, 'An toàn và tuân thủ', NULL, 876, 'en', '69f70d04597c80fcdc476038') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Company Profile Bắc Âu', '', 'Giới thiệu doanh nghiệp, năng lực triển khai và danh mục giải pháp chính.', NULL, NULL, NULL, 877, 'vi', '69f70d04597c80fcdc47603f') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Bac Au company profile', 'PDF / 12 MB', 'Overview of company capabilities, project delivery and core solutions.', NULL, NULL, NULL, 878, 'en', '69f70d04597c80fcdc47603f') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Catalogue thiết bị công nghiệp', 'PDF / 24 MB', 'Tổng hợp các dòng sản phẩm, thương hiệu và thông số kỹ thuật tiêu biểu.', NULL, NULL, NULL, 879, 'vi', '69f70d04597c80fcdc476040') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Industrial products catalogue', 'PDF / 24 MB', 'Selected product lines, brands and technical information.', NULL, NULL, NULL, 880, 'en', '69f70d04597c80fcdc476040') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Tài liệu dịch vụ kỹ thuật', 'PDF / 8 MB', 'Mô tả phạm vi dịch vụ: thiết kế, thi công, chạy thử, bảo trì và đào tạo.', NULL, NULL, NULL, 881, 'vi', '69f70d04597c80fcdc476041') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_items_locales VALUES ('Technical services brochure', 'PDF / 8 MB', 'Scope of services including design, installation, commissioning and maintenance.', NULL, NULL, NULL, 882, 'en', '69f70d04597c80fcdc476041') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sections_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('GIỚI THIỆU', '', 632, 'vi', 'gioi-thieu') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('OVERVIEW', NULL, 633, 'en', 'gioi-thieu') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('SỨ MỆNH - TẦM NHÌN - GIÁ TRỊ', NULL, 634, 'vi', 'su-menh') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('MISSION - VISION - VALUES', NULL, 635, 'en', 'su-menh') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('GIẢI PHÁP ĐIỆN - TỰ ĐỘNG HÓA', 'Bắc Âu cung cấp giải pháp toàn diện về hệ thống điện và tự động hóa công nghiệp, từ thiết kế, thi công đến vận hành và bảo trì.', 636, 'vi', 'giai-phap-dien') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('ELECTRICAL - AUTOMATION SOLUTIONS', 'Bac Au provides complete industrial electrical and automation solutions from design and installation to operation and maintenance.', 637, 'en', 'giai-phap-dien') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('GIẢI PHÁP SỐ HÓA', 'Chuyển đổi số toàn diện cho doanh nghiệp sản xuất với các giải pháp IoT, AI và phân tích dữ liệu công nghiệp.', 638, 'vi', 'so-hoa') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('DIGITALIZATION SOLUTIONS', 'Comprehensive digital transformation for manufacturing with IoT, AI and industrial analytics solutions.', 639, 'en', 'so-hoa') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('GIẢI PHÁP ĐO LƯỜNG CÔNG NGHỆ', 'Cung cấp thiết bị và giải pháp đo lường chính xác phục vụ nghiên cứu và sản xuất công nghiệp.', 640, 'vi', 'do-luong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('MEASUREMENT TECHNOLOGY', 'Instrumentation and precision measurement solutions for industrial production and applied research.', 641, 'en', 'do-luong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('SẢN PHẨM CÔNG NGHIỆP', 'Bắc Âu phân phối các thiết bị và sản phẩm công nghiệp chất lượng cao từ các thương hiệu hàng đầu thế giới, phục vụ đa dạng nhu cầu sản xuất.', 642, 'vi', 'san-pham') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('INDUSTRIAL PRODUCTS', 'Bac Au distributes quality industrial products from leading global brands to support diverse manufacturing needs.', 643, 'en', 'san-pham') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('DỊCH VỤ CÔNG NGHIỆP', 'Bắc Âu cung cấp dịch vụ kỹ thuật toàn diện từ tư vấn thiết kế, lắp đặt, vận hành đến bảo trì và sửa chữa hệ thống công nghiệp.', 644, 'vi', 'dich-vu') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('INDUSTRIAL SERVICES', 'Comprehensive engineering services covering design consulting, installation, commissioning, maintenance and repair.', 645, 'en', 'dich-vu') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('TRANG THIẾT BỊ NHÀ XƯỞNG', 'Hệ thống nhà xưởng và trang thiết bị hiện đại của Bắc Âu đảm bảo năng lực sản xuất, lắp ráp và kiểm tra chất lượng sản phẩm đạt tiêu chuẩn quốc tế.', 646, 'vi', 'nha-xuong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('WORKSHOP EQUIPMENT', 'Modern workshops and equipment support assembly, production and quality control to international standards.', 647, 'en', 'nha-xuong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('VĂN PHÒNG ĐẠI DIỆN', 'Bắc Âu có mạng lưới văn phòng đại diện tại các khu vực trọng điểm, sẵn sàng hỗ trợ khách hàng trên toàn quốc.', 648, 'vi', 'van-phong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('REPRESENTATIVE OFFICES', 'Bac Au maintains representative offices in key regions to support customers nationwide.', 649, 'en', 'van-phong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('CHỨNG CHỈ CHẤT LƯỢNG', 'Bắc Âu đạt các chứng nhận quốc tế về hệ thống quản lý chất lượng, khẳng định cam kết về tiêu chuẩn sản phẩm và dịch vụ.', 650, 'vi', 'chung-chi') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('QUALITY CERTIFICATES', 'Bac Au maintains international certifications that reinforce our commitment to product and service quality.', 651, 'en', 'chung-chi') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('SỨC KHỎE, AN TOÀN & MÔI TRƯỜNG', NULL, 652, 'vi', 'atld') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('HEALTH, SAFETY & ENVIRONMENT', NULL, 653, 'en', 'atld') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('CHỨNG NHẬN', 'Các chứng nhận và giấy phép hoạt động của Bắc Âu trong lĩnh vực tự động hóa và dịch vụ công nghiệp.', 654, 'vi', 'chung-nhan') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('CERTIFICATES', 'Licenses and certificates supporting Bac Au in industrial automation and service delivery.', 655, 'en', 'chung-nhan') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('TÀI LIỆU', 'Tải xuống các tài liệu kỹ thuật, catalogue sản phẩm và thông tin dịch vụ của Bắc Âu.', 656, 'vi', 'tai-lieu') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_locales VALUES ('DOCUMENTS', 'Download technical documents, product catalogues and service information from Bac Au.', 657, 'en', 'tai-lieu') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sections_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sections_paragraphs VALUES (1, 'gioi-thieu', '69f70d04597c80fcdc47601c') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_paragraphs VALUES (2, 'gioi-thieu', '69f70d04597c80fcdc47601d') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_paragraphs VALUES (1, 'atld', '69f70d04597c80fcdc476039') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_paragraphs VALUES (2, 'atld', '69f70d04597c80fcdc47603a') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sections_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sections_paragraphs_locales VALUES ('Bắc Âu là nhà cung cấp giải pháp hàng đầu trong lĩnh vực Tự Động Hóa và Số hóa cho các ngành công nghiệp tại Việt Nam. Chúng tôi thực hiện trọn gói từ thiết kế kỹ thuật, lập trình phần mềm, tích hợp hệ thống, cung cấp vật tư thiết bị, thi công, lắp đặt, chạy thử vận hành, đào tạo và chuyển giao công nghệ.', 190, 'vi', '69f70d04597c80fcdc47601c') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_paragraphs_locales VALUES ('Bac Au is a leading solution provider in industrial automation and digitalization in Vietnam. We deliver turnkey scopes from engineering design, software programming and system integration to supply, installation, commissioning, training and technology transfer.', 191, 'en', '69f70d04597c80fcdc47601c') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_paragraphs_locales VALUES ('Bắc Âu vinh dự được khách hàng tin tưởng qua năng lực thực hiện dự án, sự am hiểu công nghệ, sự đảm bảo chất lượng cùng với khả năng cung cấp giải pháp sáng tạo và dịch vụ chuyên nghiệp.', 192, 'vi', '69f70d04597c80fcdc47601d') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_paragraphs_locales VALUES ('Customers trust Bac Au for our delivery capability, technology expertise, quality assurance and practical, creative service approach.', 193, 'en', '69f70d04597c80fcdc47601d') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_paragraphs_locales VALUES ('Bắc Âu cam kết tuân thủ các tiêu chuẩn cao nhất về an toàn lao động, sức khỏe nghề nghiệp và bảo vệ môi trường trong mọi hoạt động sản xuất kinh doanh.', 194, 'vi', '69f70d04597c80fcdc476039') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_paragraphs_locales VALUES ('Bac Au is committed to the highest standards of occupational safety, worker health and environmental protection across all operations.', 195, 'en', '69f70d04597c80fcdc476039') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_paragraphs_locales VALUES ('Chính sách HSE của chúng tôi bao gồm: đào tạo an toàn định kỳ cho nhân viên, kiểm tra thiết bị thường xuyên, quản lý chất thải theo quy định, và liên tục cải tiến quy trình để giảm thiểu rủi ro.', 196, 'vi', '69f70d04597c80fcdc47603a') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sections_paragraphs_locales VALUES ('Our HSE policy includes periodic safety training, routine equipment inspection, compliant waste management and ongoing process improvement to reduce risk.', 197, 'en', '69f70d04597c80fcdc47603a') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sidebar_groups; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sidebar_groups VALUES (1, '69f70d04597c80fcdc476042', '69f70d04597c80fcdc47600c') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups VALUES (2, '69f70d04597c80fcdc476042', '69f70d04597c80fcdc476012') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups VALUES (3, '69f70d04597c80fcdc476042', '69f70d04597c80fcdc476015') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups VALUES (4, '69f70d04597c80fcdc476042', '69f70d04597c80fcdc476018') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups VALUES (5, '69f70d04597c80fcdc476042', '69f70d04597c80fcdc47601b') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sidebar_groups_items; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (1, '69f70d04597c80fcdc47600c', '69f70d04597c80fcdc47600a') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (2, '69f70d04597c80fcdc47600c', '69f70d04597c80fcdc47600b') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (1, '69f70d04597c80fcdc476012', '69f70d04597c80fcdc47600d') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (2, '69f70d04597c80fcdc476012', '69f70d04597c80fcdc47600e') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (3, '69f70d04597c80fcdc476012', '69f70d04597c80fcdc47600f') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (4, '69f70d04597c80fcdc476012', '69f70d04597c80fcdc476010') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (5, '69f70d04597c80fcdc476012', '69f70d04597c80fcdc476011') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (1, '69f70d04597c80fcdc476015', '69f70d04597c80fcdc476013') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (2, '69f70d04597c80fcdc476015', '69f70d04597c80fcdc476014') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (1, '69f70d04597c80fcdc476018', '69f70d04597c80fcdc476016') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (2, '69f70d04597c80fcdc476018', '69f70d04597c80fcdc476017') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (1, '69f70d04597c80fcdc47601b', '69f70d04597c80fcdc476019') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items VALUES (2, '69f70d04597c80fcdc47601b', '69f70d04597c80fcdc47601a') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sidebar_groups_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Giới thiệu', 648, 'vi', '69f70d04597c80fcdc47600a', '/vi/gioi-thieu#gioi-thieu') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Overview', 649, 'en', '69f70d04597c80fcdc47600a', '/en/about#gioi-thieu') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Sứ mệnh - Tầm nhìn - Giá trị', 650, 'vi', '69f70d04597c80fcdc47600b', '/vi/gioi-thieu#su-menh') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Mission - Vision - Values', 651, 'en', '69f70d04597c80fcdc47600b', '/en/about#su-menh') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Giải pháp Điện - Tự động hóa', 652, 'vi', '69f70d04597c80fcdc47600d', '/vi/gioi-thieu#giai-phap-dien') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Electrical & Automation', 653, 'en', '69f70d04597c80fcdc47600d', '/en/about#giai-phap-dien') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Giải pháp Số hóa', 654, 'vi', '69f70d04597c80fcdc47600e', '/vi/gioi-thieu#so-hoa') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Digitalization', 655, 'en', '69f70d04597c80fcdc47600e', '/en/about#so-hoa') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Giải pháp Đo lường Công nghệ', 656, 'vi', '69f70d04597c80fcdc47600f', '/vi/gioi-thieu#do-luong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Measurement technology', 657, 'en', '69f70d04597c80fcdc47600f', '/en/about#do-luong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Sản phẩm Công nghiệp', 658, 'vi', '69f70d04597c80fcdc476010', '/vi/gioi-thieu#san-pham') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Industrial products', 659, 'en', '69f70d04597c80fcdc476010', '/en/about#san-pham') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Dịch vụ Công nghiệp', 660, 'vi', '69f70d04597c80fcdc476011', '/vi/gioi-thieu#dich-vu') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Industrial services', 661, 'en', '69f70d04597c80fcdc476011', '/en/about#dich-vu') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Trang thiết bị nhà xưởng', 662, 'vi', '69f70d04597c80fcdc476013', '/vi/gioi-thieu#nha-xuong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Workshop equipment', 663, 'en', '69f70d04597c80fcdc476013', '/en/about#nha-xuong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Văn phòng đại diện', 664, 'vi', '69f70d04597c80fcdc476014', '/vi/gioi-thieu#van-phong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Representative offices', 665, 'en', '69f70d04597c80fcdc476014', '/en/about#van-phong') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Chứng chỉ Chất lượng', 666, 'vi', '69f70d04597c80fcdc476016', '/vi/gioi-thieu#chung-chi') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Quality certificates', 667, 'en', '69f70d04597c80fcdc476016', '/en/about#chung-chi') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Sức khỏe, An toàn & Môi trường', 668, 'vi', '69f70d04597c80fcdc476017', '/vi/gioi-thieu#atld') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Health, Safety & Environment', 669, 'en', '69f70d04597c80fcdc476017', '/en/about#atld') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Chứng nhận', 670, 'vi', '69f70d04597c80fcdc476019', '/vi/gioi-thieu#chung-nhan') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Certificates', 671, 'en', '69f70d04597c80fcdc476019', '/en/about#chung-nhan') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Tài liệu', 672, 'vi', '69f70d04597c80fcdc47601a', '/vi/gioi-thieu#tai-lieu') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_items_locales VALUES ('Documents', 673, 'en', '69f70d04597c80fcdc47601a', '/en/about#tai-lieu') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_about_content_sidebar_groups_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_about_content_sidebar_groups_locales VALUES ('Về BắcÂu', 248, 'vi', '69f70d04597c80fcdc47600c', '/vi/gioi-thieu') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_locales VALUES ('About BacAu', 249, 'en', '69f70d04597c80fcdc47600c', '/en/about') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_locales VALUES ('Lĩnh vực kinh doanh', 250, 'vi', '69f70d04597c80fcdc476012', '/vi/gioi-thieu/linh-vuc') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_locales VALUES ('Business areas', 251, 'en', '69f70d04597c80fcdc476012', '/en/about/business') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_locales VALUES ('Năng lực', 252, 'vi', '69f70d04597c80fcdc476015', '/vi/gioi-thieu/nang-luc') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_locales VALUES ('Capabilities', 253, 'en', '69f70d04597c80fcdc476015', '/en/about/capabilities') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_locales VALUES ('ATLĐ & chất lượng', 254, 'vi', '69f70d04597c80fcdc476018', '/vi/gioi-thieu/an-toan') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_locales VALUES ('HSE & quality', 255, 'en', '69f70d04597c80fcdc476018', '/en/about/hse') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_locales VALUES ('Chứng chỉ & Tài liệu', 256, 'vi', '69f70d04597c80fcdc47601b', '/vi/gioi-thieu/chung-chi') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_about_content_sidebar_groups_locales VALUES ('Certificates & documents', 257, 'en', '69f70d04597c80fcdc47601b', '/en/about/documents') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_brand_logos; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_brand_logos VALUES (3, 3, 'layout', '69f70d05597c80fcdc476061', NULL, 'latest', 6) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos VALUES (3, 2, 'layout', '69f70d04597c80fcdc476043', NULL, 'latest', 6) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos VALUES (8, 1, 'layout', '69eae59dcf6a07796609bb18', NULL, 'latest', 6) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos VALUES (8, 4, 'layout', '69f80c0bd7e33b0ef3bd17b8', NULL, 'latest', 6) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos VALUES (8, 5, 'layout', '69f99b75b422b5d4d32f9566', NULL, 'latest', 6) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos VALUES (8, 6, 'layout', '69f99bb5db5626d58420dffb', NULL, 'latest', 6) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos VALUES (8, 7, 'layout', '69f99bb6db5626d58420e010', NULL, 'latest', 6) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos VALUES (6, 8, 'layout', '69f99bb6db5626d58420e01f', NULL, 'latest', 6) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_brand_logos_fallback_brands; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (1, '69eae59dcf6a07796609bb18', '69f8009b5886e77ee3189856', 'ABB') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (2, '69eae59dcf6a07796609bb18', '69f8009b5886e77ee3189857', 'Intel') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (3, '69eae59dcf6a07796609bb18', '69f8009b5886e77ee3189858', 'Mitsubishi') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (4, '69eae59dcf6a07796609bb18', '69f8009b5886e77ee3189859', 'PSCL') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (5, '69eae59dcf6a07796609bb18', '69f8009b5886e77ee318985a', 'KEIHIN') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (6, '69eae59dcf6a07796609bb18', '69f8009b5886e77ee318985b', 'Siemens') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (1, '69f80c0bd7e33b0ef3bd17b8', '69f80c0bd7e33b0ef3bd17b2', 'ABB') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (2, '69f80c0bd7e33b0ef3bd17b8', '69f80c0bd7e33b0ef3bd17b3', 'Intel') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (3, '69f80c0bd7e33b0ef3bd17b8', '69f80c0bd7e33b0ef3bd17b4', 'Mitsubishi') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (4, '69f80c0bd7e33b0ef3bd17b8', '69f80c0bd7e33b0ef3bd17b5', 'PSCL') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (5, '69f80c0bd7e33b0ef3bd17b8', '69f80c0bd7e33b0ef3bd17b6', 'KEIHIN') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_fallback_brands VALUES (6, '69f80c0bd7e33b0ef3bd17b8', '69f80c0bd7e33b0ef3bd17b7', 'Siemens') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_brand_logos_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_brand_logos_locales VALUES ('ĐỐI TÁC CHIẾN LƯỢC', 91, 'vi', '69f70d04597c80fcdc476043') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_locales VALUES ('STRATEGIC PARTNERS', 92, 'en', '69f70d04597c80fcdc476043') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_locales VALUES ('ĐỐI TÁC CHIẾN LƯỢC', 99, 'vi', '69eae59dcf6a07796609bb18') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_locales VALUES ('ĐỐI TÁC CHIẾN LƯỢC', 100, 'en', '69eae59dcf6a07796609bb18') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_locales VALUES ('ĐỐI TÁC CHIẾN LƯỢC', 103, 'vi', '69f80c0bd7e33b0ef3bd17b8') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_locales VALUES ('ĐỐI TÁC CHIẾN LƯỢC', 104, 'vi', '69f99b75b422b5d4d32f9566') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_locales VALUES ('ĐỐI TÁC CHIẾN LƯỢC', 105, 'vi', '69f99bb5db5626d58420dffb') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_locales VALUES ('ĐỐI TÁC CHIẾN LƯỢC', 106, 'vi', '69f99bb6db5626d58420e010') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_locales VALUES ('ĐỐI TÁC CHIẾN LƯỢC', 107, 'vi', '69f99bb6db5626d58420e01f') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_brand_logos_locales VALUES ('ĐỐI TÁC CHIẾN LƯỢC', 56, 'vi', '69f70d05597c80fcdc476061') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_content_intro; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_content_intro_images; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_content_intro_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_content_intro_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_content_intro_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_content_intro_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_cta_banner; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_cta_banner VALUES (7, 1, 'layout', '69eae59dcf6a07796609bb17', '/contact', '/services', NULL, '#0F172A', '#B92C32', '#2b358c', '#0F172A', '#B92C32') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_cta_banner VALUES (7, 5, 'layout', '69f99b75b422b5d4d32f9565', '/lien-he', '/dich-vu', NULL, '#0F172A', '#B92C32', '#2b358c', '#0F172A', '#B92C32') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_cta_banner VALUES (6, 7, 'layout', '69f99bb6db5626d58420e00e', '/lien-he', '/dich-vu', NULL, '#0F172A', '#B92C32', '#2b358c', '#0F172A', '#B92C32') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_cta_banner VALUES (8, 8, 'layout', '69f99bb6db5626d58420e021', '/lien-he', '/dich-vu', NULL, '#0F172A', '#B92C32', '#2b358c', '#0F172A', '#B92C32') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_cta_banner_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_cta_banner_locales VALUES ('Bắt đầu Dự án của bạn ngay hôm nay', 'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp', 'Liên hệ Ngay', 'Xem Dịch vụ', 80, 'vi', '69eae59dcf6a07796609bb17') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_cta_banner_locales VALUES ('Start Your Project Today', 'Contact our team of experts for optimal solution consulting for your business', 'Contact Now', 'View Services', 81, 'en', '69eae59dcf6a07796609bb17') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_cta_banner_locales VALUES ('Bắt đầu Dự án của bạn ngay hôm nay', 'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp', 'Liên hệ Ngay', 'Xem Dịch vụ', 82, 'vi', '69f99b75b422b5d4d32f9565') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_cta_banner_locales VALUES ('Bắt đầu Dự án của bạn ngay hôm nay', 'Liên hệ với đội ngũ chuyên gia để được tư vấn giải pháp tối ưu cho doanh nghiệp', 'Liên hệ Ngay', 'Xem Dịch vụ', 83, 'vi', '69f99bb6db5626d58420e00e') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_cta_banner_locales VALUES ('Sẵn sàng bắt đầu dự án?', 'Liên hệ với đội ngũ chuyên gia của chúng tôi ngay hôm nay', 'Liên hệ Ngay', 'Xem Dịch vụ', 84, 'vi', '69f99bb6db5626d58420e021') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_document_list; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_document_list_items; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_document_list_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_document_list_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_document_list_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_document_list_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_feature_cards; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_feature_cards_items; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_feature_cards_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_feature_cards_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_feature_cards_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_feature_cards_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_featured_projects; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_featured_projects VALUES (4, 1, 'layout', '69eae59dcf6a07796609bb14', NULL, '#0B1221', '/du-an-tham-khao', 'latest', 4, 'dark', 'grid') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects VALUES (4, 4, 'layout', '69f80c0bd7e33b0ef3bd17a7', NULL, '#FFFFFF', '/du-an-tham-khao', 'latest', 4, 'light', 'grid') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects VALUES (5, 5, 'layout', '69f99b75b422b5d4d32f9563', NULL, '#0B1221', '/du-an-tham-khao', 'latest', 4, 'dark', 'alternating') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects VALUES (5, 6, 'layout', '69f99bb5db5626d58420dff4', NULL, '#0B1221', '/du-an-tham-khao', 'latest', 4, 'dark', 'grid') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects VALUES (5, 7, 'layout', '69f99bb6db5626d58420e00d', NULL, '#0B1221', '/du-an-tham-khao', 'latest', 4, 'dark', 'grid') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects VALUES (5, 8, 'layout', '69f99bb6db5626d58420e01e', NULL, '#0B1221', '/du-an-tham-khao', 'latest', 4, 'dark', 'list') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_featured_projects_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_featured_projects_locales VALUES ('DỰ ÁN TIÊU BIỂU', 'Xem tất cả →', 40, 'vi', '69eae59dcf6a07796609bb14') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_locales VALUES ('DỰ ÁN TIÊU BIỂU', 'Xem tất cả →', 41, 'en', '69eae59dcf6a07796609bb14') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_locales VALUES ('DỰ ÁN TIÊU BIỂU', 'Xem tất cả →', 44, 'vi', '69f80c0bd7e33b0ef3bd17a7') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_locales VALUES ('DỰ ÁN TIÊU BIỂU', 'Xem tất cả →', 45, 'vi', '69f99b75b422b5d4d32f9563') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_locales VALUES ('DỰ ÁN TIÊU BIỂU', 'Xem tất cả →', 46, 'vi', '69f99bb5db5626d58420dff4') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_locales VALUES ('DỰ ÁN TIÊU BIỂU', 'Xem tất cả →', 47, 'vi', '69f99bb6db5626d58420e00d') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_locales VALUES ('DỰ ÁN TIÊU BIỂU', 'Xem tất cả →', 48, 'vi', '69f99bb6db5626d58420e01e') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_featured_projects_tabs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (1, '69eae59dcf6a07796609bb14', '69f8009b5886e77ee318984e', 'energy') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (2, '69eae59dcf6a07796609bb14', '69f8009b5886e77ee318984f', 'electrical') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (3, '69eae59dcf6a07796609bb14', '69f8009b5886e77ee3189850', 'automation') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (4, '69eae59dcf6a07796609bb14', '69f8009b5886e77ee3189851', 'bms') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (1, '69f80c0bd7e33b0ef3bd17a7', '69f80c0bd7e33b0ef3bd17a3', 'energy') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (2, '69f80c0bd7e33b0ef3bd17a7', '69f80c0bd7e33b0ef3bd17a4', 'electrical') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (3, '69f80c0bd7e33b0ef3bd17a7', '69f80c0bd7e33b0ef3bd17a5', 'automation') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (4, '69f80c0bd7e33b0ef3bd17a7', '69f80c0bd7e33b0ef3bd17a6', 'bms') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (1, '69f99bb5db5626d58420dff4', '69f99bb5db5626d58420dff0', 'energy') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (2, '69f99bb5db5626d58420dff4', '69f99bb5db5626d58420dff1', 'electrical') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (3, '69f99bb5db5626d58420dff4', '69f99bb5db5626d58420dff2', 'automation') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (4, '69f99bb5db5626d58420dff4', '69f99bb5db5626d58420dff3', 'bms') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (1, '69f99bb6db5626d58420e00d', '69f99bb6db5626d58420e009', 'energy') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (2, '69f99bb6db5626d58420e00d', '69f99bb6db5626d58420e00a', 'electrical') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (3, '69f99bb6db5626d58420e00d', '69f99bb6db5626d58420e00b', 'automation') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs VALUES (4, '69f99bb6db5626d58420e00d', '69f99bb6db5626d58420e00c', 'bms') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_featured_projects_tabs_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Quản lý năng lượng', 81, 'vi', '69f8009b5886e77ee318984e') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Điện công nghiệp', 82, 'vi', '69f8009b5886e77ee318984f') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Tự động hóa', 83, 'vi', '69f8009b5886e77ee3189850') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Hệ thống BMS', 84, 'vi', '69f8009b5886e77ee3189851') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Quản lý năng lượng', 93, 'vi', '69f80c0bd7e33b0ef3bd17a3') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Điện công nghiệp', 94, 'vi', '69f80c0bd7e33b0ef3bd17a4') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Tự động hóa', 95, 'vi', '69f80c0bd7e33b0ef3bd17a5') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Hệ thống BMS', 96, 'vi', '69f80c0bd7e33b0ef3bd17a6') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Quản lý năng lượng', 97, 'vi', '69f99bb5db5626d58420dff0') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Điện công nghiệp', 98, 'vi', '69f99bb5db5626d58420dff1') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Tự động hóa', 99, 'vi', '69f99bb5db5626d58420dff2') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Hệ thống BMS', 100, 'vi', '69f99bb5db5626d58420dff3') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Quản lý năng lượng', 101, 'vi', '69f99bb6db5626d58420e009') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Điện công nghiệp', 102, 'vi', '69f99bb6db5626d58420e00a') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Tự động hóa', 103, 'vi', '69f99bb6db5626d58420e00b') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_featured_projects_tabs_locales VALUES ('Hệ thống BMS', 104, 'vi', '69f99bb6db5626d58420e00c') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_hero; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_hero VALUES (1, 1, 'layout', '69eae59dcf6a07796609bb11', 'video', NULL, 1, '/services', '/contact', 'Tiêu đề', 'corporate', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero VALUES (1, 5, 'layout', '69f99b75b422b5d4d32f9558', 'image', NULL, NULL, '/dich-vu', '/du-an-tham-khao', NULL, 'modernSplit', NULL, 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=1400&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero VALUES (1, 6, 'layout', '69f99bb5db5626d58420dfe8', 'image', NULL, NULL, '/dich-vu', '/lien-he', NULL, 'dataGrid', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero VALUES (1, 7, 'layout', '69f99bb6db5626d58420e000', 'image', NULL, NULL, '/dich-vu', '/du-an-tham-khao', NULL, 'modernRounded', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero VALUES (1, 8, 'layout', '69f99bb6db5626d58420e015', 'image', NULL, NULL, '/dich-vu', '/lien-he', NULL, 'ultraModern', NULL, NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_hero_banner; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_hero_banner VALUES (1, 4, 'layout', '69f80c0bd7e33b0ef3bd179e', NULL, 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=1600&fit=crop', 700, 40, NULL, 'video', 44, 44) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_hero_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_hero_locales VALUES ('Giải pháp Tự động hóa \n Công nghiệp Toàn diện ', 'Đối tác tin cậy trong lĩnh vực tự động hóa, quản lý năng lượng \n và hệ thống điện công nghiệp cho doanh nghiệp toàn quốc', 'Khám phá Dịch vụ', 'Liên hệ Tư vấn', 80, 'vi', '69eae59dcf6a07796609bb11', 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_locales VALUES ('Comprehensive Industrial
Automation Solutions', 'Your trusted partner in industrial automation, energy management and electrical systems for enterprises nationwide', 'Explore Services', 'Contact Us', 81, 'en', '69eae59dcf6a07796609bb11', 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_locales VALUES ('Giải Pháp Tự Động Hóa
Toàn Diện', 'Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm cho doanh nghiệp trên toàn quốc.', 'Khám phá dịch vụ', 'Xem dự án', 82, 'vi', '69f99b75b422b5d4d32f9558', 'GIẢI PHÁP CÔNG NGHIỆP HÀNG ĐẦU') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_locales VALUES ('GIẢI PHÁP TỰ ĐỘNG HÓA &
KỸ THUẬT ĐIỆN CÔNG NGHIỆP', 'Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm.', 'Khám Phá Giải Pháp', 'Liên hệ Tư vấn', 83, 'vi', '69f99bb5db5626d58420dfe8', 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_locales VALUES ('GIẢI PHÁP TỰ ĐỘNG HÓA
TOÀN DIỆN', 'Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm.', 'Khám Phá Giải Pháp', 'Xem dự án', 84, 'vi', '69f99bb6db5626d58420e000', 'GIẢI PHÁP CÔNG NGHIỆP HÀNG ĐẦU') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_locales VALUES ('Kiến Tạo Tương Lai
Công Nghiệp Số', 'Đối tác tin cậy trong lĩnh vực kỹ thuật điện & tự động hóa công nghiệp với hơn 15 năm kinh nghiệm.', 'Khám Phá Giải Pháp', 'Liên Hệ Tư Vấn', 85, 'vi', '69f99bb6db5626d58420e015', 'GIẢI PHÁP CÔNG NGHIỆP HÀNG ĐẦU') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_hero_stats; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_hero_stats VALUES (1, '69eae59dcf6a07796609bb11', '69f5b9bf7bbcb7e759613fa2', 15, '+', '#B92C32') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (2, '69eae59dcf6a07796609bb11', '69f5b9bf7bbcb7e759613fa3', 500, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (3, '69eae59dcf6a07796609bb11', '69f5b9bf7bbcb7e759613fa4', 200, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (4, '69eae59dcf6a07796609bb11', '69f5b9bf7bbcb7e759613fa5', 50, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (1, '69f99b75b422b5d4d32f9558', '69f99b75b422b5d4d32f9554', 15, '+', '#B92C32') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (2, '69f99b75b422b5d4d32f9558', '69f99b75b422b5d4d32f9555', 500, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (3, '69f99b75b422b5d4d32f9558', '69f99b75b422b5d4d32f9556', 50, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (4, '69f99b75b422b5d4d32f9558', '69f99b75b422b5d4d32f9557', 100, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (1, '69f99bb5db5626d58420dfe8', '69f99bb5db5626d58420dfe4', 15, '+', '#B92C32') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (2, '69f99bb5db5626d58420dfe8', '69f99bb5db5626d58420dfe5', 500, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (3, '69f99bb5db5626d58420dfe8', '69f99bb5db5626d58420dfe6', 50, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (4, '69f99bb5db5626d58420dfe8', '69f99bb5db5626d58420dfe7', 100, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (1, '69f99bb6db5626d58420e000', '69f99bb6db5626d58420dffc', 15, '+', '#B92C32') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (2, '69f99bb6db5626d58420e000', '69f99bb6db5626d58420dffd', 500, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (3, '69f99bb6db5626d58420e000', '69f99bb6db5626d58420dffe', 50, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (4, '69f99bb6db5626d58420e000', '69f99bb6db5626d58420dfff', 100, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (1, '69f99bb6db5626d58420e015', '69f99bb6db5626d58420e011', 15, '+', '#B92C32') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (2, '69f99bb6db5626d58420e015', '69f99bb6db5626d58420e012', 500, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (3, '69f99bb6db5626d58420e015', '69f99bb6db5626d58420e013', 50, '+', '#FFFFFF') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats VALUES (4, '69f99bb6db5626d58420e015', '69f99bb6db5626d58420e014', 100, '+', '#FFFFFF') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_hero_stats_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('NĂM', 'Kinh Nghiệm', 265, 'vi', '69f5b9bf7bbcb7e759613fa2') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('NĂM', 'Kinh Nghiệm', 266, 'en', '69f5b9bf7bbcb7e759613fa2') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('DỰ ÁN', 'Hoàn Thành', 267, 'vi', '69f5b9bf7bbcb7e759613fa3') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('DỰ ÁN', 'Hoàn Thành', 268, 'en', '69f5b9bf7bbcb7e759613fa3') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('KHÁCH HÀNG', 'Tin Tưởng', 269, 'vi', '69f5b9bf7bbcb7e759613fa4') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('KHÁCH HÀNG', 'Tin Tưởng', 270, 'en', '69f5b9bf7bbcb7e759613fa4') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('ĐỐI TÁC', 'Chiến Lược', 271, 'vi', '69f5b9bf7bbcb7e759613fa5') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('ĐỐI TÁC', 'Chiến Lược', 272, 'en', '69f5b9bf7bbcb7e759613fa5') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('NĂM', 'Kinh Nghiệm', 273, 'vi', '69f99b75b422b5d4d32f9554') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('DỰ ÁN', 'Hoàn Thành', 274, 'vi', '69f99b75b422b5d4d32f9555') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('ĐỐI TÁC', 'Chiến Lược', 275, 'vi', '69f99b75b422b5d4d32f9556') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('KỸ SƯ', 'Chuyên Nghiệp', 276, 'vi', '69f99b75b422b5d4d32f9557') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('NĂM', 'Kinh Nghiệm', 277, 'vi', '69f99bb5db5626d58420dfe4') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('DỰ ÁN', 'Hoàn Thành', 278, 'vi', '69f99bb5db5626d58420dfe5') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('ĐỐI TÁC', 'Chiến Lược', 279, 'vi', '69f99bb5db5626d58420dfe6') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('KỸ SƯ', 'Chuyên Nghiệp', 280, 'vi', '69f99bb5db5626d58420dfe7') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('NĂM', 'Kinh Nghiệm', 281, 'vi', '69f99bb6db5626d58420dffc') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('DỰ ÁN', 'Hoàn Thành', 282, 'vi', '69f99bb6db5626d58420dffd') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('ĐỐI TÁC', 'Chiến Lược', 283, 'vi', '69f99bb6db5626d58420dffe') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('KỸ SƯ', 'Chuyên Nghiệp', 284, 'vi', '69f99bb6db5626d58420dfff') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('NĂM', 'Kinh Nghiệm', 285, 'vi', '69f99bb6db5626d58420e011') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('DỰ ÁN', 'Hoàn Thành', 286, 'vi', '69f99bb6db5626d58420e012') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('ĐỐI TÁC', 'Chiến Lược', 287, 'vi', '69f99bb6db5626d58420e013') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_hero_stats_locales VALUES ('KỸ SƯ', 'Chuyên Nghiệp', 288, 'vi', '69f99bb6db5626d58420e014') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_hero_trust_partners; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_image_gallery; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_image_gallery_images; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_image_gallery_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_image_gallery_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_image_gallery_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_image_gallery_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_info_grid; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_info_grid_items; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_info_grid_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_info_grid_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_info_grid_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_info_grid_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_media_text_split; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_media_text_split_images; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_media_text_split_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_media_text_split_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_media_text_split_paragraphs; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_media_text_split_paragraphs_locales; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: pages_blocks_news; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_news VALUES (3, 1, 'layout', '69eae59dcf6a07796609bb13', 3, NULL, '/tin-tuc', 'latest', NULL, 'featured') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_news VALUES (3, 4, 'layout', '69f80c0bd7e33b0ef3bd17a2', 3, NULL, '/tin-tuc', 'latest', NULL, 'grid') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_news VALUES (4, 5, 'layout', '69f99b75b422b5d4d32f9562', 3, NULL, '/tin-tuc', 'latest', NULL, 'featured') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_news VALUES (4, 6, 'layout', '69f99bb5db5626d58420dfef', 3, NULL, '/tin-tuc', 'latest', NULL, 'grid') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_news VALUES (4, 7, 'layout', '69f99bb6db5626d58420e008', 3, NULL, '/tin-tuc', 'latest', NULL, 'grid') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_news VALUES (4, 8, 'layout', '69f99bb6db5626d58420e01d', 3, NULL, '/tin-tuc', 'latest', NULL, 'featured') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_news_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_news_locales VALUES ('TIN TỨC & SỰ KIỆN', 'Xem tất cả →', 45, 'vi', '69eae59dcf6a07796609bb13') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_news_locales VALUES ('TIN TỨC & SỰ KIỆN', 'Xem tất cả →', 46, 'en', '69eae59dcf6a07796609bb13') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_news_locales VALUES ('TIN TỨC & SỰ KIỆN', 'Xem tất cả →', 49, 'vi', '69f80c0bd7e33b0ef3bd17a2') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_news_locales VALUES ('TIN TỨC & SỰ KIỆN', 'Xem tất cả →', 50, 'vi', '69f99b75b422b5d4d32f9562') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_news_locales VALUES ('TIN TỨC & SỰ KIỆN', 'Xem tất cả →', 51, 'vi', '69f99bb5db5626d58420dfef') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_news_locales VALUES ('TIN TỨC & SỰ KIỆN', 'Xem tất cả →', 52, 'vi', '69f99bb6db5626d58420e008') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_news_locales VALUES ('TIN TỨC & SỰ KIỆN', 'Xem tất cả →', 53, 'vi', '69f99bb6db5626d58420e01d') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_page_hero; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_page_hero VALUES (1, 3, 'layout', '69f70d05597c80fcdc476053', NULL, 'https://images.unsplash.com/photo-1655936073069-07b2c9dc2db6?w=1600', NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_page_hero VALUES (1, 2, 'layout', '69f70d04597c80fcdc476009', NULL, 'https://images.unsplash.com/photo-1737703121444-c568a9d3bc0e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&q=80&w=1600', NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_page_hero_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_page_hero_locales VALUES ('CÔNG TY BẮC ÂU', 'Công ty BắcÂu', 68, 'vi', '69f70d04597c80fcdc476009') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_page_hero_locales VALUES ('BAC AU COMPANY', 'Bac Au company', 69, 'en', '69f70d04597c80fcdc476009') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_page_hero_locales VALUES ('DỰ ÁN THAM KHẢO', 'Dự án Tham khảo', 33, 'vi', '69f70d05597c80fcdc476053') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_partners; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_partners VALUES (5, 1, 'layout', '69eae59dcf6a07796609bb15', NULL, '#0B1221') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners VALUES (6, 4, 'layout', '69f80c0bd7e33b0ef3bd17b0', NULL, '#0B1221') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners VALUES (6, 6, 'layout', '69f99bb5db5626d58420dff9', NULL, '#0B1221') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_partners_images; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_partners_images VALUES (1, '69eae59dcf6a07796609bb15', '69f8009b5886e77ee3189852', NULL, 'https://images.unsplash.com/photo-1758599543129-5269a8f29e68?w=600') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images VALUES (2, '69eae59dcf6a07796609bb15', '69f8009b5886e77ee3189853', NULL, 'https://images.unsplash.com/photo-1762028892701-692dc360db08?w=600') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images VALUES (3, '69eae59dcf6a07796609bb15', '69f8009b5886e77ee3189854', NULL, 'https://images.unsplash.com/photo-1632910121591-29e2484c0259?w=600') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images VALUES (4, '69eae59dcf6a07796609bb15', '69f8009b5886e77ee3189855', NULL, 'https://images.unsplash.com/photo-1752412145493-e11fec9ac951?w=600') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images VALUES (1, '69f80c0bd7e33b0ef3bd17b0', '69f80c0bd7e33b0ef3bd17ac', NULL, 'https://images.unsplash.com/photo-1521791136064-7986c2920216?w=600&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images VALUES (2, '69f80c0bd7e33b0ef3bd17b0', '69f80c0bd7e33b0ef3bd17ad', NULL, 'https://images.unsplash.com/photo-1556761175-b413da4baf72?w=600&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images VALUES (3, '69f80c0bd7e33b0ef3bd17b0', '69f80c0bd7e33b0ef3bd17ae', NULL, 'https://images.unsplash.com/photo-1600880292203-757bb62b4baf?w=600&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images VALUES (4, '69f80c0bd7e33b0ef3bd17b0', '69f80c0bd7e33b0ef3bd17af', NULL, 'https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=600&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images VALUES (1, '69f99bb5db5626d58420dff9', '69f99bb5db5626d58420dff5', NULL, 'https://images.unsplash.com/photo-1521791136064-7986c2920216?w=600&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images VALUES (2, '69f99bb5db5626d58420dff9', '69f99bb5db5626d58420dff6', NULL, 'https://images.unsplash.com/photo-1556761175-b413da4baf72?w=600&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images VALUES (3, '69f99bb5db5626d58420dff9', '69f99bb5db5626d58420dff7', NULL, 'https://images.unsplash.com/photo-1600880292203-757bb62b4baf?w=600&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images VALUES (4, '69f99bb5db5626d58420dff9', '69f99bb5db5626d58420dff8', NULL, 'https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=600&fit=crop') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_partners_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Đối tác công nghiệp', 61, 'vi', '69f8009b5886e77ee3189852') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Dây chuyền đối tác', 62, 'vi', '69f8009b5886e77ee3189853') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Thiết bị đối tác', 63, 'vi', '69f8009b5886e77ee3189854') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Nhà máy đối tác', 64, 'vi', '69f8009b5886e77ee3189855') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Đối tác 1', 73, 'vi', '69f80c0bd7e33b0ef3bd17ac') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Đối tác 2', 74, 'vi', '69f80c0bd7e33b0ef3bd17ad') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Đối tác 3', 75, 'vi', '69f80c0bd7e33b0ef3bd17ae') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Đối tác 4', 76, 'vi', '69f80c0bd7e33b0ef3bd17af') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Đối tác 1', 77, 'vi', '69f99bb5db5626d58420dff5') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Đối tác 2', 78, 'vi', '69f99bb5db5626d58420dff6') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Đối tác 3', 79, 'vi', '69f99bb5db5626d58420dff7') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_images_locales VALUES ('Đối tác 4', 80, 'vi', '69f99bb5db5626d58420dff8') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_partners_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_partners_locales VALUES ('Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa', 80, 'vi', '69eae59dcf6a07796609bb15', 'ĐỐI TÁC') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_locales VALUES ('We partner with leading companies in the industrial and automation sectors', 81, 'en', '69eae59dcf6a07796609bb15', 'ĐỐI TÁC') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_locales VALUES ('Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa', 84, 'vi', '69f80c0bd7e33b0ef3bd17b0', 'ĐỐI TÁC') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_partners_locales VALUES ('Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa', 85, 'vi', '69f99bb5db5626d58420dff9', 'ĐỐI TÁC') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_products; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_products VALUES (6, 1, 'layout', '69eae59dcf6a07796609bb16', NULL, 'latest', 5) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_products VALUES (7, 4, 'layout', '69f80c0bd7e33b0ef3bd17b1', NULL, 'latest', 5) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_products VALUES (6, 5, 'layout', '69f99b75b422b5d4d32f9564', NULL, 'latest', 5) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_products VALUES (7, 6, 'layout', '69f99bb5db5626d58420dffa', NULL, 'latest', 5) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_products VALUES (7, 7, 'layout', '69f99bb6db5626d58420e00f', NULL, 'latest', 5) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_products VALUES (7, 8, 'layout', '69f99bb6db5626d58420e020', NULL, 'latest', 5) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_products_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_products_locales VALUES ('Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới', 80, 'vi', '69eae59dcf6a07796609bb16', 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_products_locales VALUES ('Distributing genuine industrial equipment from world-leading brands', 81, 'en', '69eae59dcf6a07796609bb16', 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_products_locales VALUES ('Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới', 84, 'vi', '69f80c0bd7e33b0ef3bd17b1', 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_products_locales VALUES ('Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới', 85, 'vi', '69f99b75b422b5d4d32f9564', 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_products_locales VALUES ('Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới', 86, 'vi', '69f99bb5db5626d58420dffa', 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_products_locales VALUES ('Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới', 87, 'vi', '69f99bb6db5626d58420e00f', 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_products_locales VALUES ('Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới', 88, 'vi', '69f99bb6db5626d58420e020', 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_projects_listing; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_projects_listing VALUES (2, 3, 'layout', '69f70d05597c80fcdc476060', 'latest', 24, NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_projects_listing_industry_filters; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_projects_listing_industry_filters VALUES (1, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc476058', 'oil-gas') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters VALUES (2, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc476059', 'fertilizer-chemical') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters VALUES (3, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc47605a', 'power') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters VALUES (4, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc47605b', 'cement-mining') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters VALUES (5, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc47605c', 'steel') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters VALUES (6, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc47605d', 'food-beverage') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters VALUES (7, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc47605e', 'water') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters VALUES (8, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc47605f', 'port') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_projects_listing_industry_filters_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_projects_listing_industry_filters_locales VALUES ('Dầu khí', 121, 'vi', '69f70d05597c80fcdc476058') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters_locales VALUES ('Phân bón & Hóa chất', 122, 'vi', '69f70d05597c80fcdc476059') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters_locales VALUES ('Điện', 123, 'vi', '69f70d05597c80fcdc47605a') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters_locales VALUES ('Xi măng & Khai khoáng', 124, 'vi', '69f70d05597c80fcdc47605b') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters_locales VALUES ('Thép', 125, 'vi', '69f70d05597c80fcdc47605c') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters_locales VALUES ('Thực phẩm & Đồ uống', 126, 'vi', '69f70d05597c80fcdc47605d') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters_locales VALUES ('Nước & Nước thải', 127, 'vi', '69f70d05597c80fcdc47605e') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_industry_filters_locales VALUES ('Cảng', 128, 'vi', '69f70d05597c80fcdc47605f') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_projects_listing_parent_categories; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_projects_listing_parent_categories VALUES (1, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc476054', 'electrical-automation') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_parent_categories VALUES (2, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc476055', 'digitalization') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_parent_categories VALUES (3, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc476056', 'industrial-services') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_parent_categories VALUES (4, '69f70d05597c80fcdc476060', '69f70d05597c80fcdc476057', 'measurement') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_projects_listing_parent_categories_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_projects_listing_parent_categories_locales VALUES ('GIẢI PHÁP ĐIỆN - TỰ ĐỘNG HÓA', 61, 'vi', '69f70d05597c80fcdc476054') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_parent_categories_locales VALUES ('GIẢI PHÁP SỐ HÓA', 62, 'vi', '69f70d05597c80fcdc476055') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_parent_categories_locales VALUES ('DỊCH VỤ CÔNG NGHIỆP', 63, 'vi', '69f70d05597c80fcdc476056') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_projects_listing_parent_categories_locales VALUES ('GIẢI PHÁP ĐO LƯỜNG CÔNG NGHỆ', 64, 'vi', '69f70d05597c80fcdc476057') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_services; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_services VALUES (2, 1, 'layout', '69eae59dcf6a07796609bb12', NULL, 'cards') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services VALUES (5, 4, 'layout', '69f80c0bd7e33b0ef3bd17ab', NULL, 'cards') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services VALUES (3, 5, 'layout', '69f99b75b422b5d4d32f9561', NULL, 'bento') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services VALUES (3, 6, 'layout', '69f99bb5db5626d58420dfee', NULL, 'cards') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services VALUES (3, 7, 'layout', '69f99bb6db5626d58420e007', NULL, 'cards') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services VALUES (3, 8, 'layout', '69f99bb6db5626d58420e01c', NULL, 'alternating') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_services_cards; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_services_cards VALUES (1, '69eae59dcf6a07796609bb12', '69f5bb89cf94a5f06a6d60b5', NULL, '/dich-vu/thi-cong', 'https://images.unsplash.com/photo-1664022447173-062a8edb226a?w=800') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (2, '69eae59dcf6a07796609bb12', '69f5bb89cf94a5f06a6d60b6', NULL, '/dich-vu/cong-nghiep', 'https://images.unsplash.com/photo-1727373203588-82996710c2af?w=800') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (3, '69eae59dcf6a07796609bb12', '69f5bb89cf94a5f06a6d60b7', NULL, '/dich-vu/dan-dung', 'https://images.unsplash.com/photo-1613155898540-76dee366fc0d?w=800') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (1, '69f80c0bd7e33b0ef3bd17ab', '69f80c0bd7e33b0ef3bd17a8', NULL, '/dich-vu/thi-cong', 'https://images.unsplash.com/photo-1504307651254-35680f356dfd?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (2, '69f80c0bd7e33b0ef3bd17ab', '69f80c0bd7e33b0ef3bd17a9', NULL, '/dich-vu/cong-nghiep', 'https://images.unsplash.com/photo-1565793298595-6a879b1d9492?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (3, '69f80c0bd7e33b0ef3bd17ab', '69f80c0bd7e33b0ef3bd17aa', NULL, '/dich-vu/dan-dung', 'https://images.unsplash.com/photo-1581092160562-40aa08e78837?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (1, '69f99b75b422b5d4d32f9561', '69f99b75b422b5d4d32f955c', NULL, '/dich-vu/tu-dong-hoa', 'https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (2, '69f99b75b422b5d4d32f9561', '69f99b75b422b5d4d32f955d', NULL, '/dich-vu/he-thong-dien', 'https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (3, '69f99b75b422b5d4d32f9561', '69f99b75b422b5d4d32f955e', NULL, '/dich-vu/so-hoa', 'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (4, '69f99b75b422b5d4d32f9561', '69f99b75b422b5d4d32f955f', NULL, '/dich-vu/bms', 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (5, '69f99b75b422b5d4d32f9561', '69f99b75b422b5d4d32f9560', NULL, '/dich-vu/dan-dung', 'https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (1, '69f99bb5db5626d58420dfee', '69f99bb5db5626d58420dfeb', NULL, '/dich-vu/tu-dong-hoa', 'https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (2, '69f99bb5db5626d58420dfee', '69f99bb5db5626d58420dfec', NULL, '/dich-vu/he-thong-dien', 'https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (3, '69f99bb5db5626d58420dfee', '69f99bb5db5626d58420dfed', NULL, '/dich-vu/so-hoa', 'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (1, '69f99bb6db5626d58420e007', '69f99bb6db5626d58420e004', NULL, '/dich-vu/tu-dong-hoa', 'https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (2, '69f99bb6db5626d58420e007', '69f99bb6db5626d58420e005', NULL, '/dich-vu/he-thong-dien', 'https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (3, '69f99bb6db5626d58420e007', '69f99bb6db5626d58420e006', NULL, '/dich-vu/so-hoa', 'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (1, '69f99bb6db5626d58420e01c', '69f99bb6db5626d58420e019', NULL, '/dich-vu/tu-dong-hoa', 'https://images.unsplash.com/photo-1537462715879-360eeb61a0ad?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (2, '69f99bb6db5626d58420e01c', '69f99bb6db5626d58420e01a', NULL, '/dich-vu/he-thong-dien', 'https://images.unsplash.com/photo-1581092580497-e0d23cbdf1dc?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards VALUES (3, '69f99bb6db5626d58420e01c', '69f99bb6db5626d58420e01b', NULL, '/dich-vu/so-hoa', 'https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=800&fit=crop') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_services_cards_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_services_cards_locales VALUES ('LĨNH VỰC THI CÔNG 1', 'Thi công hệ thống điện, tự động hóa, HVAC và các công trình công nghiệp', 'Xem thêm', 160, 'vi', '69f5bb89cf94a5f06a6d60b5') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('LĨNH VỰC THI CÔNG 1', 'Thi công hệ thống điện, tự động hóa, HVAC và các công trình công nghiệp', 'Xem thêm', 161, 'en', '69f5bb89cf94a5f06a6d60b5') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('DỊCH VỤ CÔNG NGHIỆP', 'Cung cấp giải pháp bảo trì, sửa chữa và nâng cấp hệ thống tự động hóa công nghiệp', 'Xem thêm', 162, 'vi', '69f5bb89cf94a5f06a6d60b6') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('DỊCH VỤ CÔNG NGHIỆP', 'Cung cấp giải pháp bảo trì, sửa chữa và nâng cấp hệ thống tự động hóa công nghiệp', 'Xem thêm', 163, 'en', '69f5bb89cf94a5f06a6d60b6') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('DỊCH VỤ DÂN DỤNG', 'Thiết kế, lắp đặt hệ thống điện dân dụng, điều hòa không khí và an ninh', 'Xem thêm', 164, 'vi', '69f5bb89cf94a5f06a6d60b7') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('DỊCH VỤ DÂN DỤNG', 'Thiết kế, lắp đặt hệ thống điện dân dụng, điều hòa không khí và an ninh', 'Xem thêm', 165, 'en', '69f5bb89cf94a5f06a6d60b7') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('LĨNH VỰC THI CÔNG', 'Thi công hệ thống điện, tủ động hóa, HVAC và các công trình công nghiệp.', 'Xem thêm', 172, 'vi', '69f80c0bd7e33b0ef3bd17a8') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('DỊCH VỤ CÔNG NGHIỆP', 'Cung cấp giải pháp bảo trì, sửa chữa và nâng cấp hệ thống tự động hóa công nghiệp.', 'Xem thêm', 173, 'vi', '69f80c0bd7e33b0ef3bd17a9') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('DỊCH VỤ DÂN DỤNG', 'Thiết kế, lắp đặt hệ thống điện dân dụng, điều hòa không khí và an ninh.', 'Xem thêm', 174, 'vi', '69f80c0bd7e33b0ef3bd17aa') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Tự Động Hóa Công Nghiệp', 'Cung cấp giải pháp tự động hóa toàn diện cho nhà máy và dây chuyền sản xuất, tích hợp PLC, SCADA, HMI và hệ thống điều khiển phân tán.', 'Tìm hiểu thêm', 175, 'vi', '69f99b75b422b5d4d32f955c') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Hệ Thống Điện Công Nghiệp', 'Thiết kế, thi công và bảo trì hệ thống điện cho các công trình công nghiệp. Giải pháp quản lý năng lượng tiên tiến và tiết kiệm.', 'Tìm hiểu thêm', 176, 'vi', '69f99b75b422b5d4d32f955d') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Số Hóa Công Nghiệp', 'Chuyển đổi số và giám sát thông minh cho các doanh nghiệp, tích hợp IoT, cloud và phân tích dữ liệu thời gian thực.', 'Tìm hiểu thêm', 177, 'vi', '69f99b75b422b5d4d32f955e') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Hệ Thống BMS', 'Giải pháp quản lý tòa nhà thông minh (BMS): tích hợp điều hòa, chiếu sáng, an ninh và năng lượng trên một nền tảng.', 'Tìm hiểu thêm', 178, 'vi', '69f99b75b422b5d4d32f955f') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Điện Tử Dân Dụng', 'Cung cấp, lắp đặt và bảo trì hệ thống điện dân dụng, điều hòa không khí và các thiết bị tiêu dùng.', 'Tìm hiểu thêm', 179, 'vi', '69f99b75b422b5d4d32f9560') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Tự Động Hóa Công Nghiệp', 'Cung cấp giải pháp tự động hóa toàn diện cho nhà máy và dây chuyền sản xuất, tích hợp PLC, SCADA, HMI và hệ thống điều khiển phân tán.', 'Tìm hiểu thêm', 180, 'vi', '69f99bb5db5626d58420dfeb') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Hệ Thống Điện Công Nghiệp', 'Thiết kế, thi công và bảo trì hệ thống điện cho các công trình công nghiệp. Giải pháp quản lý năng lượng tiên tiến và tiết kiệm.', 'Tìm hiểu thêm', 181, 'vi', '69f99bb5db5626d58420dfec') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Số Hóa Công Nghiệp', 'Chuyển đổi số và giám sát thông minh cho các doanh nghiệp, tích hợp IoT, cloud và phân tích dữ liệu thời gian thực.', 'Tìm hiểu thêm', 182, 'vi', '69f99bb5db5626d58420dfed') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Tự Động Hóa Công Nghiệp', 'Cung cấp giải pháp tự động hóa toàn diện cho nhà máy và dây chuyền sản xuất, tích hợp PLC, SCADA, HMI và hệ thống điều khiển phân tán.', 'Tìm hiểu thêm', 183, 'vi', '69f99bb6db5626d58420e004') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Hệ Thống Điện Công Nghiệp', 'Thiết kế, thi công và bảo trì hệ thống điện cho các công trình công nghiệp. Giải pháp quản lý năng lượng tiên tiến và tiết kiệm.', 'Tìm hiểu thêm', 184, 'vi', '69f99bb6db5626d58420e005') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Số Hóa Công Nghiệp', 'Chuyển đổi số và giám sát thông minh cho các doanh nghiệp, tích hợp IoT, cloud và phân tích dữ liệu thời gian thực.', 'Tìm hiểu thêm', 185, 'vi', '69f99bb6db5626d58420e006') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Tự Động Hóa Công Nghiệp', 'Cung cấp giải pháp tự động hóa toàn diện cho nhà máy và dây chuyền sản xuất, tích hợp PLC, SCADA, HMI và hệ thống điều khiển phân tán.', 'Tìm hiểu thêm', 186, 'vi', '69f99bb6db5626d58420e019') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Hệ Thống Điện Công Nghiệp', 'Thiết kế, thi công và bảo trì hệ thống điện cho các công trình công nghiệp. Giải pháp quản lý năng lượng tiên tiến và tiết kiệm.', 'Tìm hiểu thêm', 187, 'vi', '69f99bb6db5626d58420e01a') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_cards_locales VALUES ('Số Hóa Công Nghiệp', 'Chuyển đổi số và giám sát thông minh cho các doanh nghiệp, tích hợp IoT, cloud và phân tích dữ liệu thời gian thực.', 'Tìm hiểu thêm', 188, 'vi', '69f99bb6db5626d58420e01b') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_services_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_services_locales VALUES ('Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng', 80, 'vi', '69eae59dcf6a07796609bb12', 'LĨNH VỰC HOẠT ĐỘNG') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_locales VALUES ('Comprehensive services in industrial and civil sectors', 81, 'en', '69eae59dcf6a07796609bb12', 'LĨNH VỰC HOẠT ĐỘNG') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_locales VALUES ('Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng', 84, 'vi', '69f80c0bd7e33b0ef3bd17ab', 'LĨNH VỰC HOẠT ĐỘNG') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_locales VALUES ('Chúng tôi cung cấp các giải pháp toàn diện cho doanh nghiệp', 85, 'vi', '69f99b75b422b5d4d32f9561', 'LĨNH VỰC HOẠT ĐỘNG') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_locales VALUES ('Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp', 86, 'vi', '69f99bb5db5626d58420dfee', 'LĨNH VỰC HOẠT ĐỘNG') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_locales VALUES ('Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng', 87, 'vi', '69f99bb6db5626d58420e007', 'LĨNH VỰC HOẠT ĐỘNG') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_services_locales VALUES ('Cung cấp các giải pháp công nghiệp toàn diện', 88, 'vi', '69f99bb6db5626d58420e01c', 'LĨNH VỰC HOẠT ĐỘNG') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_welcome_intro; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_welcome_intro VALUES (2, 4, 'layout', '69f80c0bd7e33b0ef3bd17a1', '/gioi-thieu', NULL, true, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro VALUES (2, 5, 'layout', '69f99b75b422b5d4d32f955b', '/gioi-thieu', NULL, true, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro VALUES (2, 6, 'layout', '69f99bb5db5626d58420dfea', '/gioi-thieu', NULL, true, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro VALUES (2, 7, 'layout', '69f99bb6db5626d58420e003', '/gioi-thieu', NULL, true, 4) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro VALUES (2, 8, 'layout', '69f99bb6db5626d58420e018', '/gioi-thieu', NULL, true, 4) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_welcome_intro_images; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_welcome_intro_images VALUES (1, '69f80c0bd7e33b0ef3bd17a1', '69f80c0bd7e33b0ef3bd179f', NULL, 'https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images VALUES (2, '69f80c0bd7e33b0ef3bd17a1', '69f80c0bd7e33b0ef3bd17a0', NULL, 'https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images VALUES (1, '69f99b75b422b5d4d32f955b', '69f99b75b422b5d4d32f9559', NULL, 'https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images VALUES (2, '69f99b75b422b5d4d32f955b', '69f99b75b422b5d4d32f955a', NULL, 'https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images VALUES (1, '69f99bb5db5626d58420dfea', '69f99bb5db5626d58420dfe9', NULL, 'https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images VALUES (1, '69f99bb6db5626d58420e003', '69f99bb6db5626d58420e001', NULL, 'https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images VALUES (2, '69f99bb6db5626d58420e003', '69f99bb6db5626d58420e002', NULL, 'https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images VALUES (1, '69f99bb6db5626d58420e018', '69f99bb6db5626d58420e016', NULL, 'https://images.unsplash.com/photo-1735494033576-9c882e80504c?w=800&fit=crop') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images VALUES (2, '69f99bb6db5626d58420e018', '69f99bb6db5626d58420e017', NULL, 'https://images.unsplash.com/photo-1564164494009-3876b2d197f1?w=800&fit=crop') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_welcome_intro_images_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_welcome_intro_images_locales VALUES ('Hệ thống tự động hóa công nghiệp', 5, 'vi', '69f80c0bd7e33b0ef3bd179f') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images_locales VALUES ('Kỹ thuật điện công nghiệp', 6, 'vi', '69f80c0bd7e33b0ef3bd17a0') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images_locales VALUES ('Hệ thống tự động hóa', 7, 'vi', '69f99b75b422b5d4d32f9559') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images_locales VALUES ('Kỹ thuật điện công nghiệp', 8, 'vi', '69f99b75b422b5d4d32f955a') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images_locales VALUES ('Hệ thống tự động hóa', 9, 'vi', '69f99bb5db5626d58420dfe9') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images_locales VALUES ('Hệ thống tự động hóa', 10, 'vi', '69f99bb6db5626d58420e001') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images_locales VALUES ('Kỹ thuật điện công nghiệp', 11, 'vi', '69f99bb6db5626d58420e002') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images_locales VALUES ('Hệ thống tự động hóa', 12, 'vi', '69f99bb6db5626d58420e016') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_images_locales VALUES ('Kỹ thuật điện công nghiệp', 13, 'vi', '69f99bb6db5626d58420e017') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_blocks_welcome_intro_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_blocks_welcome_intro_locales VALUES ('CHÀO MỪNG', 'Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Với đội ngũ kỹ sư giàu kinh nghiệm, chúng tôi cung cấp các giải pháp toàn diện trong lĩnh vực tự động hóa, quản lý năng lượng và hệ thống điện công nghiệp cho các doanh nghiệp trên toàn quốc.', 'Xem thêm', 3, 'vi', '69f80c0bd7e33b0ef3bd17a1') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_locales VALUES ('VỀ CHÚNG TÔI', 'ESTEC là đơn vị hàng đầu trong lĩnh vực tự động hóa công nghiệp tại Việt Nam. Với hơn 15 năm kinh nghiệm, chúng tôi cung cấp các giải pháp điện kỹ thuật, tự động hóa và số hóa, giúp khách hàng tối ưu hóa quy trình và nâng cao năng suất.', 'Tìm hiểu thêm →', 4, 'vi', '69f99b75b422b5d4d32f955b') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_locales VALUES ('VỀ CHÚNG TÔI', 'Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Với đội ngũ kỹ sư giàu kinh nghiệm, chúng tôi cung cấp các giải pháp toàn diện cho doanh nghiệp.', 'Xem thêm →', 5, 'vi', '69f99bb5db5626d58420dfea') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_locales VALUES ('GIỚI THIỆU CÔNG TY', 'Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Chúng tôi cung cấp giải pháp toàn diện từ thiết kế, thi công đến vận hành cho các doanh nghiệp.', 'Xem thêm →', 6, 'vi', '69f99bb6db5626d58420e003') ON CONFLICT DO NOTHING;
INSERT INTO public.pages_blocks_welcome_intro_locales VALUES ('VỀ CHÚNG TÔI', 'Bắc Âu là công ty chuyên về tự động hóa công nghiệp và kỹ thuật điện. Với đội ngũ kỹ sư giàu kinh nghiệm, chúng tôi cung cấp các giải pháp toàn diện giúp doanh nghiệp vận hành tối ưu và bền vững.', 'Xem thêm →', 7, 'vi', '69f99bb6db5626d58420e018') ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.pages_locales VALUES (178, 'vi', 2, 'Giới thiệu công ty', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_locales VALUES (179, 'en', 2, 'Company profile', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_locales VALUES (186, 'vi', 1, 'Trang chủ', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_locales VALUES (187, 'en', 1, 'Home', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_locales VALUES (190, 'vi', 4, 'Trang Chủ V2', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_locales VALUES (191, 'vi', 5, 'Trang Chủ V2 — Modern Split', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_locales VALUES (192, 'vi', 6, 'Trang Chủ V3 — Data Grid', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_locales VALUES (193, 'vi', 7, 'Trang Chủ V4 — Modern Rounded', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_locales VALUES (142, 'vi', 3, 'Dự án tham khảo', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_locales VALUES (143, 'en', 3, 'Reference projects', NULL, NULL) ON CONFLICT DO NOTHING;
INSERT INTO public.pages_locales VALUES (194, 'vi', 8, 'Trang Chủ V5 — Ultra Modern', NULL, NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: pages_rels; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: payload_kv; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.payload_locked_documents VALUES (57, 'site-settings', '2026-05-08 12:55:17.988+00', '2026-05-08 12:54:34.946+00') ON CONFLICT DO NOTHING;


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (1, 'Nam', 'admin', '2026-04-27 00:23:32.856+00', '2026-04-23 15:05:04.299+00', 'namth3979@gmail.com', NULL, NULL, '2ba26df51d5fe2bebea1dc8189949fca7b26bb57a39d78d2ddcd2a3b31e919bd', '6f16788d5e3df2bd9df833184128f7d295e1e0373cf5ccc7e8487a3b72786b5f24cc67917dd6a98164a56268d0f8f99c8e6376ef3860086daed188aa5d4dcbcd91af8e3b4a9f79713cb371adb66ab82fda18201f2e9bf6d097ebfaf319fd57c9a9895809d18f540d59462d48e2e83a0731c1dfb2491f946e9d354519b70397a0a739f2f0fd72dfcc316157364c27816ccd9412187e1d27ae35e48868efdc7db2f8cc71a12b9efe3693de03dda9f95e4a9d3d4a5384df2f4e7f905bd052a19e4bdc7bd0e8bcabfa5c59c30cd6fd7306fd73772658b62ce7761f4c38ed49973425b0f7f2a242e8a130f4b63e12c4d51d9432df42294ede53a7ca7a83f6f3a68282c1475ec7e4d9bd6352a11fc6517b36dd425a669f006e4f0e8bce72ea272834caa24efeb1fe4169cd91ba0bc2f0733cfe2962ea634cf81c6e6ecf781868aa6e5cf178e217a4fa4c8dcd64dfdc3cef2732b0bafcbd5daa26ddff2b4e5ee41aaf1a03b0f68f57af0e8298db247b7f53a039ef84b3b1a270b9ca1eb9ebafcc2b34478ac80892bcf5f34179341e33461a244bf9dc92505b7ed839237ac99771d57b8e707016d5c724a72fce6fa77d49318c171c5a088b4b23af46864deba64640f95fda43b314640f2b51a110261dcb2c227d266ff5a8067ea9676eb5e1c49a5ee07819271c40765961484ba51b11e4e4a9e54ce80e3138a2b3efe5f2a5d436ef8c78', 0, NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.payload_locked_documents_rels VALUES (94, NULL, 57, 'user', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.payload_migrations VALUES (1, 'dev', -1, '2026-05-08 12:52:04.992+00', '2026-04-23 05:43:54.558+00') ON CONFLICT DO NOTHING;


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.payload_preferences VALUES (1, 'collection-products', '{}', '2026-04-23 15:19:19.766+00', '2026-04-23 15:19:19.765+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (2, 'collection-users', '{}', '2026-04-23 15:37:40.478+00', '2026-04-23 15:37:40.477+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (9, 'locale', '"vi"', '2026-05-03 08:44:50.377+00', '2026-04-24 01:30:02.768+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (5, 'collection-services', '{"limit": 10}', '2026-04-23 15:38:45.926+00', '2026-04-23 15:37:50.099+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (3, 'collection-news', '{"limit": 10}', '2026-05-02 09:14:27.682+00', '2026-04-23 15:37:44.778+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (4, 'collection-projects', '{"limit": 10, "editViewType": "default"}', '2026-05-02 13:55:24.32+00', '2026-04-23 15:37:48.04+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (14, 'global-site-settings', '{"fields": {"header.navItems": {"collapsed": ["69f7fc7cd07cfd70569bdd40", "69f7fc7cd07cfd70569bdd41", "69f7fc7cd07cfd70569bdd46", "69f7fc7cd07cfd70569bdd47", "69f7fc7cd07cfd70569bdd48", "69f7fc7cd07cfd70569bdd49"]}, "header.navItems.0.children": {"collapsed": []}}, "editViewType": "default"}', '2026-05-04 02:07:09.345+00', '2026-05-02 15:01:54.253+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (8, 'global-home-page', '{"fields": {"layout": {"collapsed": ["69eae59dcf6a07796609bb11", "69eae59dcf6a07796609bb12", "69eae59dcf6a07796609bb13", "69eae59dcf6a07796609bb14", "69eae59dcf6a07796609bb15", "69eae59dcf6a07796609bb16", "69eae59dcf6a07796609bb17", "69eae59dcf6a07796609bb18"]}, "layout.0.trustPartners": {"collapsed": []}}, "editViewType": "default"}', '2026-04-27 00:23:51.755+00', '2026-04-24 01:16:32.309+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (11, 'collection-pages-3', '{"fields": {"layout": {"collapsed": ["69eae59dcf6a07796609bb11", "69eae59dcf6a07796609bb13", "69eae59dcf6a07796609bb14", "69eae59dcf6a07796609bb15", "69eae59dcf6a07796609bb16", "69eae59dcf6a07796609bb17", "69eae59dcf6a07796609bb18"]}}}', '2026-05-02 08:22:22.881+00', '2026-05-02 02:37:28.743+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (7, 'collection-media', '{"editViewType": "default"}', '2026-04-24 01:29:27.993+00', '2026-04-23 15:39:47.952+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (13, 'collection-pages-1', '{"fields": {"layout": {"collapsed": ["69eae59dcf6a07796609bb11", "69eae59dcf6a07796609bb12", "69eae59dcf6a07796609bb13", "69eae59dcf6a07796609bb14", "69eae59dcf6a07796609bb15", "69eae59dcf6a07796609bb16", "69eae59dcf6a07796609bb17", "69eae59dcf6a07796609bb18"]}, "layout.0.stats": {"collapsed": ["69f5b98085c7e6e640bb1f58", "69f5b98085c7e6e640bb1f59", "69f5b98085c7e6e640bb1f5a", "69f5b98085c7e6e640bb1f5b"]}, "layout.1.cards": {"collapsed": ["69f5bb89cf94a5f06a6d60b5", "69f5bb89cf94a5f06a6d60b6", "69f5bb89cf94a5f06a6d60b7"]}, "layout.4.images": {"collapsed": ["69f609e8a61ac580d406243a", "69f609e8a61ac580d406243b", "69f609e8a61ac580d406243c", "69f609e8a61ac580d406243d"]}, "layout.7.fallbackBrands": {"collapsed": ["69f609e8a61ac580d406243e", "69f609e8a61ac580d406243f", "69f609e8a61ac580d4062440", "69f609e8a61ac580d4062441"]}}}', '2026-05-04 03:01:16.404+00', '2026-05-02 08:33:32.322+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (17, 'collection-pages-4', '{"fields": {"layout": {"collapsed": ["69f80c0bd7e33b0ef3bd179e", "69f80c0bd7e33b0ef3bd17a1", "69f80c0bd7e33b0ef3bd17a2", "69f80c0bd7e33b0ef3bd17ab", "69f80c0bd7e33b0ef3bd17b0", "69f80c0bd7e33b0ef3bd17b1", "69f80c0bd7e33b0ef3bd17b8"]}}}', '2026-05-04 03:28:01.117+00', '2026-05-04 03:09:08.158+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (6, 'nav', '{"open": true, "groups": {"Collections": {"open": true}, "Cấu hình Website": {"open": true}, "Cấu hình chung (globals)": {"open": true}}}', '2026-05-05 07:54:24.461+00', '2026-04-23 15:37:52.118+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (12, 'collection-partners', '{"limit": 10}', '2026-05-02 15:08:58.814+00', '2026-05-02 03:00:35.32+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (16, 'collection-block-library', '{}', '2026-05-02 23:26:55.105+00', '2026-05-02 23:26:55.104+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (10, 'collection-pages', '{"limit": 25, "editViewType": "default"}', '2026-05-02 23:52:27.174+00', '2026-04-24 11:25:45.191+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (18, 'collection-pages-8', '{"fields": {"layout": {"collapsed": ["69f99bb6db5626d58420e015", "69f99bb6db5626d58420e018", "69f99bb6db5626d58420e01c", "69f99bb6db5626d58420e01d", "69f99bb6db5626d58420e01e", "69f99bb6db5626d58420e01f", "69f99bb6db5626d58420e020", "69f99bb6db5626d58420e021"]}}}', '2026-05-05 07:45:59.489+00', '2026-05-05 07:45:59.489+00') ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences VALUES (15, 'collection-pages-2', '{"fields": {"layout": {"collapsed": ["69f70d04597c80fcdc476009", "69f70d04597c80fcdc476043"]}, "layout.1.sections": {"collapsed": ["gioi-thieu", "su-menh", "giai-phap-dien", "so-hoa", "do-luong", "san-pham", "dich-vu", "nha-xuong", "chung-chi", "atld", "chung-nhan"]}, "layout.1.sidebarGroups": {"collapsed": ["69f70d04597c80fcdc47600c", "69f70d04597c80fcdc476012", "69f70d04597c80fcdc476015", "69f70d04597c80fcdc476018", "69f70d04597c80fcdc47601b"]}, "layout.1.sections.1.cards": {"collapsed": []}, "layout.1.sections.1.items": {"collapsed": ["69f70d04597c80fcdc47601f", "69f70d04597c80fcdc476020", "69f70d04597c80fcdc476021"]}, "layout.1.sections.0.images": {"collapsed": ["69f70d04597c80fcdc47601e"]}, "layout.1.sections.1.images": {"collapsed": ["69f70f3d2642f0c01bc1a6f1"]}}}', '2026-05-03 09:18:07.88+00', '2026-05-02 15:33:38.157+00') ON CONFLICT DO NOTHING;


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.payload_preferences_rels VALUES (1, NULL, 1, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (2, NULL, 2, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (183, NULL, 9, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (7, NULL, 5, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (128, NULL, 3, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (133, NULL, 4, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (247, NULL, 14, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (76, NULL, 8, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (85, NULL, 11, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (29, NULL, 7, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (255, NULL, 13, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (259, NULL, 17, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (260, NULL, 18, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (262, NULL, 6, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (152, NULL, 12, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (153, NULL, 12, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (161, NULL, 16, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (162, NULL, 10, 'user', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.payload_preferences_rels VALUES (235, NULL, 15, 'user', 1) ON CONFLICT DO NOTHING;


--
-- Data for Name: products_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.products_locales VALUES ('Valve & Actuator', 2, 'vi', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.products_locales VALUES ('Valve & Actuator', 3, 'en', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.products_locales VALUES ('Motor & Drive', 5, 'vi', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.products_locales VALUES ('Motor & Drive', 6, 'en', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.products_locales VALUES ('Sensor & Instrument', 8, 'vi', 3) ON CONFLICT DO NOTHING;
INSERT INTO public.products_locales VALUES ('Sensor & Instrument', 9, 'en', 3) ON CONFLICT DO NOTHING;
INSERT INTO public.products_locales VALUES ('Control Cabinet', 11, 'vi', 4) ON CONFLICT DO NOTHING;
INSERT INTO public.products_locales VALUES ('Control Cabinet', 12, 'en', 4) ON CONFLICT DO NOTHING;
INSERT INTO public.products_locales VALUES ('Measurement Device', 14, 'vi', 5) ON CONFLICT DO NOTHING;
INSERT INTO public.products_locales VALUES ('Measurement Device', 15, 'en', 5) ON CONFLICT DO NOTHING;


--
-- Data for Name: projects_customer_reasons; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.projects_customer_reasons VALUES (1, 1, '69f70d05597c80fcdc476062') ON CONFLICT DO NOTHING;
INSERT INTO public.projects_customer_reasons VALUES (2, 1, '69f70d05597c80fcdc476063') ON CONFLICT DO NOTHING;
INSERT INTO public.projects_customer_reasons VALUES (3, 1, '69f70d05597c80fcdc476064') ON CONFLICT DO NOTHING;


--
-- Data for Name: projects_customer_reasons_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.projects_customer_reasons_locales VALUES ('Hệ thống cũ đã ở cuối vòng đời sử dụng và cần thay thế gấp.', 19, 'vi', '69f70d05597c80fcdc476062') ON CONFLICT DO NOTHING;
INSERT INTO public.projects_customer_reasons_locales VALUES ('Đội ngũ Bắc Âu có kinh nghiệm với nhiều dự án nâng cấp hệ điều khiển tương tự.', 20, 'vi', '69f70d05597c80fcdc476063') ON CONFLICT DO NOTHING;
INSERT INTO public.projects_customer_reasons_locales VALUES ('Phương án kỹ thuật đảm bảo giảm rủi ro dừng chuyền và dễ bảo trì dài hạn.', 21, 'vi', '69f70d05597c80fcdc476064') ON CONFLICT DO NOTHING;


--
-- Data for Name: projects_images; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: projects_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.projects_locales VALUES ('Năng lượng', 26, 'vi', 5) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Energy', 27, 'en', 5) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Năng lượng', 29, 'vi', 6) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Energy', 30, 'en', 6) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Năng lượng', 32, 'vi', 7) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Energy', 33, 'en', 7) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Năng lượng', 35, 'vi', 8) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Energy', 36, 'en', 8) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Điện CN', 39, 'vi', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Industrial power', 40, 'en', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Điện CN', 42, 'vi', 9) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Industrial power', 43, 'en', 9) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Điện CN', 45, 'vi', 10) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Industrial power', 46, 'en', 10) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Điện CN', 48, 'vi', 11) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Industrial power', 49, 'en', 11) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Điện CN', 51, 'vi', 12) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Industrial power', 52, 'en', 12) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Tự động hóa', 55, 'vi', 3) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Automation', 56, 'en', 3) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Tự động hóa', 58, 'vi', 13) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Automation', 59, 'en', 13) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Tự động hóa', 61, 'vi', 14) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Automation', 62, 'en', 14) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Tự động hóa', 64, 'vi', 15) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Automation', 65, 'en', 15) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Tự động hóa', 67, 'vi', 16) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Automation', 68, 'en', 16) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('BMS', 71, 'vi', 4) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('BMS', 72, 'en', 4) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('BMS', 74, 'vi', 17) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('BMS', 75, 'en', 17) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('BMS', 77, 'vi', 18) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('BMS', 78, 'en', 18) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('BMS', 80, 'vi', 19) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('BMS', 81, 'en', 19) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('BMS', 83, 'vi', 20) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('BMS', 84, 'en', 20) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Năng lượng', 97, 'vi', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.projects_locales VALUES ('Energy', 98, 'en', 1) ON CONFLICT DO NOTHING;


--
-- Data for Name: projects_result_items; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.projects_result_items VALUES (1, 1, '69f70d05597c80fcdc476065') ON CONFLICT DO NOTHING;
INSERT INTO public.projects_result_items VALUES (2, 1, '69f70d05597c80fcdc476066') ON CONFLICT DO NOTHING;
INSERT INTO public.projects_result_items VALUES (3, 1, '69f70d05597c80fcdc476067') ON CONFLICT DO NOTHING;


--
-- Data for Name: projects_result_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.projects_result_items_locales VALUES ('Hệ thống vận hành ổn định sau khi bàn giao.', 19, 'vi', '69f70d05597c80fcdc476065') ON CONFLICT DO NOTHING;
INSERT INTO public.projects_result_items_locales VALUES ('Giảm thời gian xử lý sự cố và tăng khả năng giám sát.', 20, 'vi', '69f70d05597c80fcdc476066') ON CONFLICT DO NOTHING;
INSERT INTO public.projects_result_items_locales VALUES ('Nền tảng mới sẵn sàng cho các bước mở rộng trong tương lai.', 21, 'vi', '69f70d05597c80fcdc476067') ON CONFLICT DO NOTHING;


--
-- Data for Name: site_settings; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.site_settings VALUES (1, '(028) 3636 9936', 'info@bacau.com.vn', '#0F172A', '#B92C32', '2026-05-08 12:53:15.105+00', '2026-05-04 01:57:35.053+00', 45, 43) ON CONFLICT DO NOTHING;


--
-- Data for Name: site_settings_footer_columns; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.site_settings_footer_columns VALUES (1, 1, '69f7fc7cd07cfd70569bdd4f') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns VALUES (2, 1, '69f7fc7cd07cfd70569bdd53') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns VALUES (3, 1, '69f7fc7cd07cfd70569bdd58') ON CONFLICT DO NOTHING;


--
-- Data for Name: site_settings_footer_columns_links; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.site_settings_footer_columns_links VALUES (1, '69f7fc7cd07cfd70569bdd4f', '69f7fc7cd07cfd70569bdd4a', '/') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links VALUES (2, '69f7fc7cd07cfd70569bdd4f', '69f7fc7cd07cfd70569bdd4b', '/gioi-thieu') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links VALUES (3, '69f7fc7cd07cfd70569bdd4f', '69f7fc7cd07cfd70569bdd4c', '/dich-vu') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links VALUES (4, '69f7fc7cd07cfd70569bdd4f', '69f7fc7cd07cfd70569bdd4d', '/du-an-tham-khao') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links VALUES (5, '69f7fc7cd07cfd70569bdd4f', '69f7fc7cd07cfd70569bdd4e', '/lien-he') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links VALUES (1, '69f7fc7cd07cfd70569bdd53', '69f7fc7cd07cfd70569bdd50', '') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links VALUES (2, '69f7fc7cd07cfd70569bdd53', '69f7fc7cd07cfd70569bdd51', 'tel:02836369936') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links VALUES (3, '69f7fc7cd07cfd70569bdd53', '69f7fc7cd07cfd70569bdd52', 'mailto:info@bacau.com.vn') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links VALUES (1, '69f7fc7cd07cfd70569bdd58', '69f7fc7cd07cfd70569bdd54', '/giai-phap/dien-tu-dong-hoa') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links VALUES (2, '69f7fc7cd07cfd70569bdd58', '69f7fc7cd07cfd70569bdd55', '/giai-phap/dien-tu-dong-hoa') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links VALUES (3, '69f7fc7cd07cfd70569bdd58', '69f7fc7cd07cfd70569bdd56', '/giai-phap/dich-vu') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links VALUES (4, '69f7fc7cd07cfd70569bdd58', '69f7fc7cd07cfd70569bdd57', '/giai-phap/do-luong') ON CONFLICT DO NOTHING;


--
-- Data for Name: site_settings_footer_columns_links_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Trang Chủ', 49, 'vi', '69f7fc7cd07cfd70569bdd4a') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Giới Thiệu', 50, 'vi', '69f7fc7cd07cfd70569bdd4b') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Dịch Vụ', 51, 'vi', '69f7fc7cd07cfd70569bdd4c') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Dự Án', 52, 'vi', '69f7fc7cd07cfd70569bdd4d') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Liên Hệ', 53, 'vi', '69f7fc7cd07cfd70569bdd4e') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Lô E2a-7, Đường D1, Khu Công Nghệ Cao, TP. Thủ Đức, TP. Hồ Chí Minh', 54, 'vi', '69f7fc7cd07cfd70569bdd50') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Tel: (028) 3636 9936', 55, 'vi', '69f7fc7cd07cfd70569bdd51') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Email: info@bacau.com.vn', 56, 'vi', '69f7fc7cd07cfd70569bdd52') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Tự Động Hóa', 57, 'vi', '69f7fc7cd07cfd70569bdd54') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Điện Công Nghiệp', 58, 'vi', '69f7fc7cd07cfd70569bdd55') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Bảo Trì & Sửa Chữa', 59, 'vi', '69f7fc7cd07cfd70569bdd56') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_links_locales VALUES ('Thiết Bị Đo Lường', 60, 'vi', '69f7fc7cd07cfd70569bdd57') ON CONFLICT DO NOTHING;


--
-- Data for Name: site_settings_footer_columns_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.site_settings_footer_columns_locales VALUES ('LIÊN KẾT', 13, 'vi', '69f7fc7cd07cfd70569bdd4f') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_locales VALUES ('LIÊN HỆ', 14, 'vi', '69f7fc7cd07cfd70569bdd53') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_footer_columns_locales VALUES ('DỊCH VỤ', 15, 'vi', '69f7fc7cd07cfd70569bdd58') ON CONFLICT DO NOTHING;


--
-- Data for Name: site_settings_header_nav_items; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.site_settings_header_nav_items VALUES (1, 1, '69f7fc7cd07cfd70569bdd40', '/gioi-thieu') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items VALUES (2, 1, '69f7fc7cd07cfd70569bdd41', '/du-an-tham-khao') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items VALUES (3, 1, '69f7fc7cd07cfd70569bdd46', '/giai-phap') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items VALUES (4, 1, '69f7fc7cd07cfd70569bdd47', '/san-pham') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items VALUES (5, 1, '69f7fc7cd07cfd70569bdd48', '/tin-tuc') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items VALUES (6, 1, '69f7fc7cd07cfd70569bdd49', '/tuyen-dung') ON CONFLICT DO NOTHING;


--
-- Data for Name: site_settings_header_nav_items_children; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.site_settings_header_nav_items_children VALUES (1, '69f7fc7cd07cfd70569bdd46', '69f7fc7cd07cfd70569bdd42', '/giai-phap/dien-tu-dong-hoa') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items_children VALUES (2, '69f7fc7cd07cfd70569bdd46', '69f7fc7cd07cfd70569bdd43', '/giai-phap/so-hoa') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items_children VALUES (3, '69f7fc7cd07cfd70569bdd46', '69f7fc7cd07cfd70569bdd44', '/giai-phap/do-luong') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items_children VALUES (4, '69f7fc7cd07cfd70569bdd46', '69f7fc7cd07cfd70569bdd45', '/giai-phap/dich-vu') ON CONFLICT DO NOTHING;


--
-- Data for Name: site_settings_header_nav_items_children_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.site_settings_header_nav_items_children_locales VALUES ('Giải pháp Điện & Tự động hóa', 17, 'vi', '69f7fc7cd07cfd70569bdd42') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items_children_locales VALUES ('Giải pháp Số hóa', 18, 'vi', '69f7fc7cd07cfd70569bdd43') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items_children_locales VALUES ('Giải pháp Đo lường', 19, 'vi', '69f7fc7cd07cfd70569bdd44') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items_children_locales VALUES ('Dịch vụ Công nghiệp', 20, 'vi', '69f7fc7cd07cfd70569bdd45') ON CONFLICT DO NOTHING;


--
-- Data for Name: site_settings_header_nav_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.site_settings_header_nav_items_locales VALUES ('Công ty Bắc Âu', 25, 'vi', '69f7fc7cd07cfd70569bdd40') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items_locales VALUES ('Dự án', 26, 'vi', '69f7fc7cd07cfd70569bdd41') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items_locales VALUES ('Giải pháp', 27, 'vi', '69f7fc7cd07cfd70569bdd46') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items_locales VALUES ('Sản phẩm', 28, 'vi', '69f7fc7cd07cfd70569bdd47') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items_locales VALUES ('Tin tức', 29, 'vi', '69f7fc7cd07cfd70569bdd48') ON CONFLICT DO NOTHING;
INSERT INTO public.site_settings_header_nav_items_locales VALUES ('Tuyển dụng', 30, 'vi', '69f7fc7cd07cfd70569bdd49') ON CONFLICT DO NOTHING;


--
-- Data for Name: site_settings_locales; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.site_settings_locales VALUES ('BắcÂu', 'BắcÂu', 'Công ty TNHH Kỹ thuật & Dịch vụ Bắc Âu chuyên cung cấp giải pháp tự động hóa, thiết bị công nghiệp và dịch vụ kỹ thuật.', '© 2024 BắcÂu. All rights reserved.', 'Designed by BắcÂu Technology', 5, 'vi', 1, NULL, NULL) ON CONFLICT DO NOTHING;


--
-- Data for Name: users_sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users_sessions VALUES (1, 1, '20944570-ed0a-417b-aca2-f656c4b908b8', '2026-05-08 12:52:14.274+00', '2026-05-08 14:52:14.274+00') ON CONFLICT DO NOTHING;


--
-- Name: _news_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._news_v_id_seq', 6, true);


--
-- Name: _news_v_version_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._news_v_version_tags_id_seq', 10, true);


--
-- Name: _products_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_id_seq', 10, true);


--
-- Name: _products_v_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._products_v_locales_id_seq', 15, true);


--
-- Name: _projects_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_id_seq', 63, true);


--
-- Name: _projects_v_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_locales_id_seq', 98, true);


--
-- Name: _projects_v_version_customer_reasons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_version_customer_reasons_id_seq', 21, true);


--
-- Name: _projects_v_version_customer_reasons_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_version_customer_reasons_locales_id_seq', 21, true);


--
-- Name: _projects_v_version_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_version_images_id_seq', 1, false);


--
-- Name: _projects_v_version_result_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_version_result_items_id_seq', 21, true);


--
-- Name: _projects_v_version_result_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._projects_v_version_result_items_locales_id_seq', 21, true);


--
-- Name: _services_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public._services_v_id_seq', 1, false);


--
-- Name: home_page_blocks_brand_logos_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_brand_logos_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_cta_banner_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_cta_banner_locales_id_seq', 20, true);


--
-- Name: home_page_blocks_featured_projects_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_featured_projects_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_featured_projects_tabs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_featured_projects_tabs_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_hero_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_hero_locales_id_seq', 20, true);


--
-- Name: home_page_blocks_hero_stats_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_hero_stats_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_news_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_news_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_partners_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_partners_images_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_partners_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_partners_locales_id_seq', 20, true);


--
-- Name: home_page_blocks_products_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_products_locales_id_seq', 20, true);


--
-- Name: home_page_blocks_services_cards_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_services_cards_locales_id_seq', 1, false);


--
-- Name: home_page_blocks_services_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_blocks_services_locales_id_seq', 20, true);


--
-- Name: home_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_id_seq', 1, true);


--
-- Name: home_page_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.home_page_rels_id_seq', 1, false);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.media_id_seq', 45, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.news_id_seq', 3, true);


--
-- Name: news_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.news_tags_id_seq', 10, true);


--
-- Name: pages_blocks_about_content_sections_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sections_images_locales_id_seq', 780, true);


--
-- Name: pages_blocks_about_content_sections_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sections_items_locales_id_seq', 882, true);


--
-- Name: pages_blocks_about_content_sections_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sections_locales_id_seq', 657, true);


--
-- Name: pages_blocks_about_content_sections_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sections_paragraphs_locales_id_seq', 197, true);


--
-- Name: pages_blocks_about_content_sidebar_groups_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sidebar_groups_items_locales_id_seq', 673, true);


--
-- Name: pages_blocks_about_content_sidebar_groups_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_about_content_sidebar_groups_locales_id_seq', 257, true);


--
-- Name: pages_blocks_brand_logos_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_brand_logos_locales_id_seq', 107, true);


--
-- Name: pages_blocks_content_intro_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_content_intro_images_locales_id_seq', 1, false);


--
-- Name: pages_blocks_content_intro_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_content_intro_locales_id_seq', 1, false);


--
-- Name: pages_blocks_content_intro_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_content_intro_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_cta_banner_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_cta_banner_locales_id_seq', 84, true);


--
-- Name: pages_blocks_document_list_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_document_list_items_locales_id_seq', 1, false);


--
-- Name: pages_blocks_document_list_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_document_list_locales_id_seq', 1, false);


--
-- Name: pages_blocks_document_list_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_document_list_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_feature_cards_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_feature_cards_items_locales_id_seq', 1, false);


--
-- Name: pages_blocks_feature_cards_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_feature_cards_locales_id_seq', 1, false);


--
-- Name: pages_blocks_feature_cards_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_feature_cards_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_featured_projects_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_featured_projects_locales_id_seq', 48, true);


--
-- Name: pages_blocks_featured_projects_tabs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_featured_projects_tabs_locales_id_seq', 104, true);


--
-- Name: pages_blocks_hero_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_hero_locales_id_seq', 85, true);


--
-- Name: pages_blocks_hero_stats_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_hero_stats_locales_id_seq', 288, true);


--
-- Name: pages_blocks_image_gallery_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_image_gallery_images_locales_id_seq', 1, false);


--
-- Name: pages_blocks_image_gallery_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_image_gallery_locales_id_seq', 1, false);


--
-- Name: pages_blocks_image_gallery_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_image_gallery_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_info_grid_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_info_grid_items_locales_id_seq', 1, false);


--
-- Name: pages_blocks_info_grid_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_info_grid_locales_id_seq', 1, false);


--
-- Name: pages_blocks_info_grid_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_info_grid_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_media_text_split_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_media_text_split_images_locales_id_seq', 1, false);


--
-- Name: pages_blocks_media_text_split_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_media_text_split_locales_id_seq', 1, false);


--
-- Name: pages_blocks_media_text_split_paragraphs_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_media_text_split_paragraphs_locales_id_seq', 1, false);


--
-- Name: pages_blocks_news_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_news_locales_id_seq', 53, true);


--
-- Name: pages_blocks_page_hero_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_page_hero_locales_id_seq', 69, true);


--
-- Name: pages_blocks_partners_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_partners_images_locales_id_seq', 80, true);


--
-- Name: pages_blocks_partners_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_partners_locales_id_seq', 85, true);


--
-- Name: pages_blocks_products_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_products_locales_id_seq', 88, true);


--
-- Name: pages_blocks_projects_listing_industry_filters_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_projects_listing_industry_filters_locales_id_seq', 128, true);


--
-- Name: pages_blocks_projects_listing_parent_categories_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_projects_listing_parent_categories_locales_id_seq', 64, true);


--
-- Name: pages_blocks_services_cards_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_services_cards_locales_id_seq', 188, true);


--
-- Name: pages_blocks_services_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_services_locales_id_seq', 88, true);


--
-- Name: pages_blocks_welcome_intro_images_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_welcome_intro_images_locales_id_seq', 13, true);


--
-- Name: pages_blocks_welcome_intro_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_blocks_welcome_intro_locales_id_seq', 7, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_id_seq', 8, true);


--
-- Name: pages_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_locales_id_seq', 194, true);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.pages_rels_id_seq', 1, false);


--
-- Name: partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.partners_id_seq', 6, true);


--
-- Name: payload_kv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_kv_id_seq', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_id_seq', 57, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_locked_documents_rels_id_seq', 94, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_migrations_id_seq', 1, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_id_seq', 18, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.payload_preferences_rels_id_seq', 262, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_id_seq', 5, true);


--
-- Name: products_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.products_locales_id_seq', 15, true);


--
-- Name: projects_customer_reasons_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_customer_reasons_locales_id_seq', 21, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_id_seq', 20, true);


--
-- Name: projects_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_locales_id_seq', 98, true);


--
-- Name: projects_result_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.projects_result_items_locales_id_seq', 21, true);


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.services_id_seq', 1, false);


--
-- Name: site_settings_footer_columns_links_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_footer_columns_links_locales_id_seq', 60, true);


--
-- Name: site_settings_footer_columns_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_footer_columns_locales_id_seq', 15, true);


--
-- Name: site_settings_header_nav_items_children_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_header_nav_items_children_locales_id_seq', 20, true);


--
-- Name: site_settings_header_nav_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_header_nav_items_locales_id_seq', 30, true);


--
-- Name: site_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_id_seq', 1, true);


--
-- Name: site_settings_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.site_settings_locales_id_seq', 5, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

SET session_replication_role = DEFAULT;
