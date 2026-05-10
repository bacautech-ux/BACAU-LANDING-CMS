import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db, payload, req }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   CREATE TYPE "public"."_locales" AS ENUM('vi', 'en');
  CREATE TYPE "public"."enum_users_role" AS ENUM('admin', 'editor');
  CREATE TYPE "public"."enum_pages_blocks_hero_variant" AS ENUM('corporate', 'modernSplit', 'dataGrid', 'modernRounded', 'ultraModern');
  CREATE TYPE "public"."enum_pages_blocks_hero_background_type" AS ENUM('image', 'video');
  CREATE TYPE "public"."enum_pages_blocks_hero_banner_background_type" AS ENUM('image', 'video');
  CREATE TYPE "public"."enum_pages_blocks_page_hero_height" AS ENUM('sm', 'md', 'lg', 'xl');
  CREATE TYPE "public"."enum_pages_blocks_about_content_sections_variant" AS ENUM('intro', 'cards', 'gallery', 'itemGrid', 'splitMedia', 'documentList', 'tabbedDocuments');
  CREATE TYPE "public"."enum_pages_blocks_about_content_sections_columns" AS ENUM('2', '3', '4');
  CREATE TYPE "public"."enum_pages_blocks_about_content_sections_image_position" AS ENUM('left', 'right');
  CREATE TYPE "public"."enum_pages_blocks_content_intro_image_position" AS ENUM('left', 'right');
  CREATE TYPE "public"."enum_pages_blocks_feature_cards_columns" AS ENUM('2', '3', '4');
  CREATE TYPE "public"."enum_pages_blocks_image_gallery_columns" AS ENUM('2', '3', '4');
  CREATE TYPE "public"."enum_pages_blocks_info_grid_columns" AS ENUM('2', '3', '4');
  CREATE TYPE "public"."enum_pages_blocks_media_text_split_image_position" AS ENUM('left', 'right');
  CREATE TYPE "public"."enum_pages_blocks_projects_listing_parent_categories_value" AS ENUM('electrical-automation', 'digitalization', 'industrial-services', 'measurement');
  CREATE TYPE "public"."enum_pages_blocks_projects_listing_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_pages_blocks_services_variant" AS ENUM('cards', 'bento', 'alternating');
  CREATE TYPE "public"."enum_pages_blocks_news_display_mode" AS ENUM('featured', 'grid');
  CREATE TYPE "public"."enum_pages_blocks_news_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_pages_blocks_featured_projects_tabs_value" AS ENUM('energy', 'electrical', 'automation', 'bms');
  CREATE TYPE "public"."enum_pages_blocks_featured_projects_variant" AS ENUM('grid', 'alternating', 'list');
  CREATE TYPE "public"."enum_pages_blocks_featured_projects_text_theme" AS ENUM('dark', 'light');
  CREATE TYPE "public"."enum_pages_blocks_featured_projects_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_pages_blocks_products_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_pages_blocks_brand_logos_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_pages_template" AS ENUM('home', 'builder', 'about', 'projects');
  CREATE TYPE "public"."enum_projects_category" AS ENUM('electrical-automation', 'digitalization', 'measurement', 'industrial-services');
  CREATE TYPE "public"."enum_projects_industry" AS ENUM('oil-gas', 'fertilizer-chemical', 'power', 'cement-mining', 'steel', 'food-beverage', 'consumer-goods', 'water', 'port', 'other');
  CREATE TYPE "public"."enum_projects_featured_type" AS ENUM('energy', 'electrical', 'automation', 'bms');
  CREATE TYPE "public"."enum_projects_status" AS ENUM('draft', 'published');
  CREATE TYPE "public"."enum__projects_v_version_category" AS ENUM('electrical-automation', 'digitalization', 'measurement', 'industrial-services');
  CREATE TYPE "public"."enum__projects_v_version_industry" AS ENUM('oil-gas', 'fertilizer-chemical', 'power', 'cement-mining', 'steel', 'food-beverage', 'consumer-goods', 'water', 'port', 'other');
  CREATE TYPE "public"."enum__projects_v_version_featured_type" AS ENUM('energy', 'electrical', 'automation', 'bms');
  CREATE TYPE "public"."enum__projects_v_version_status" AS ENUM('draft', 'published');
  CREATE TYPE "public"."enum__projects_v_published_locale" AS ENUM('vi', 'en');
  CREATE TYPE "public"."enum_news_tags" AS ENUM('Tin tức', 'Sự kiện', 'Hội thảo', 'Thông cáo');
  CREATE TYPE "public"."enum_news_status" AS ENUM('draft', 'published');
  CREATE TYPE "public"."enum__news_v_version_tags" AS ENUM('Tin tức', 'Sự kiện', 'Hội thảo', 'Thông cáo');
  CREATE TYPE "public"."enum__news_v_version_status" AS ENUM('draft', 'published');
  CREATE TYPE "public"."enum__news_v_published_locale" AS ENUM('vi', 'en');
  CREATE TYPE "public"."enum_products_category" AS ENUM('automation', 'measurement', 'industrial-valve', 'electrical', 'motor', 'sensor');
  CREATE TYPE "public"."enum_products_status" AS ENUM('draft', 'published');
  CREATE TYPE "public"."enum__products_v_version_category" AS ENUM('automation', 'measurement', 'industrial-valve', 'electrical', 'motor', 'sensor');
  CREATE TYPE "public"."enum__products_v_version_status" AS ENUM('draft', 'published');
  CREATE TYPE "public"."enum__products_v_published_locale" AS ENUM('vi', 'en');
  CREATE TYPE "public"."enum_services_category" AS ENUM('electrical-automation', 'digitalization', 'measurement', 'industrial-services');
  CREATE TYPE "public"."enum_services_status" AS ENUM('draft', 'published');
  CREATE TYPE "public"."enum__services_v_version_category" AS ENUM('electrical-automation', 'digitalization', 'measurement', 'industrial-services');
  CREATE TYPE "public"."enum__services_v_version_status" AS ENUM('draft', 'published');
  CREATE TYPE "public"."enum__services_v_published_locale" AS ENUM('vi', 'en');
  CREATE TYPE "public"."enum_home_page_blocks_hero_variant" AS ENUM('corporate', 'modernSplit', 'dataGrid', 'modernRounded', 'ultraModern');
  CREATE TYPE "public"."enum_home_page_blocks_hero_background_type" AS ENUM('image', 'video');
  CREATE TYPE "public"."enum_home_page_blocks_services_variant" AS ENUM('cards', 'bento', 'alternating');
  CREATE TYPE "public"."enum_home_page_blocks_news_display_mode" AS ENUM('featured', 'grid');
  CREATE TYPE "public"."enum_home_page_blocks_news_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_home_page_blocks_featured_projects_tabs_value" AS ENUM('energy', 'electrical', 'automation', 'bms');
  CREATE TYPE "public"."enum_home_page_blocks_featured_projects_variant" AS ENUM('grid', 'alternating', 'list');
  CREATE TYPE "public"."enum_home_page_blocks_featured_projects_text_theme" AS ENUM('dark', 'light');
  CREATE TYPE "public"."enum_home_page_blocks_featured_projects_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_home_page_blocks_products_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_home_page_blocks_brand_logos_source_mode" AS ENUM('latest', 'manual');
  CREATE TABLE "users_sessions" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"created_at" timestamp(3) with time zone,
  	"expires_at" timestamp(3) with time zone NOT NULL
  );
  
  CREATE TABLE "users" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"name" varchar NOT NULL,
  	"role" "enum_users_role" DEFAULT 'editor' NOT NULL,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"email" varchar NOT NULL,
  	"reset_password_token" varchar,
  	"reset_password_expiration" timestamp(3) with time zone,
  	"salt" varchar,
  	"hash" varchar,
  	"login_attempts" numeric DEFAULT 0,
  	"lock_until" timestamp(3) with time zone
  );
  
  CREATE TABLE "media" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"alt" varchar,
  	"caption" varchar,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"url" varchar,
  	"thumbnail_u_r_l" varchar,
  	"filename" varchar,
  	"mime_type" varchar,
  	"filesize" numeric,
  	"width" numeric,
  	"height" numeric,
  	"focal_x" numeric,
  	"focal_y" numeric
  );
  
  CREATE TABLE "pages_blocks_hero_trust_partners" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"name" varchar NOT NULL,
  	"logo_id" integer
  );
  
  CREATE TABLE "pages_blocks_hero_stats" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"value" numeric DEFAULT 15 NOT NULL,
  	"suffix" varchar DEFAULT '+',
  	"number_color" varchar DEFAULT '#FFFFFF'
  );
  
  CREATE TABLE "pages_blocks_hero_stats_locales" (
  	"label_top" varchar DEFAULT 'NĂM',
  	"label_bottom" varchar DEFAULT 'Kinh Nghiệm',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_hero" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"variant" "enum_pages_blocks_hero_variant" DEFAULT 'corporate',
  	"hero_image_id" integer,
  	"hero_image_u_r_l" varchar,
  	"background_type" "enum_pages_blocks_hero_background_type" DEFAULT 'image',
  	"background_image_id" integer,
  	"background_video_id" integer,
  	"primary_c_t_a_href" varchar DEFAULT '/dich-vu',
  	"secondary_c_t_a_href" varchar DEFAULT '/lien-he',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_hero_locales" (
  	"badge_text" varchar DEFAULT 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU',
  	"title" varchar NOT NULL,
  	"subtitle" varchar,
  	"primary_c_t_a_label" varchar DEFAULT 'Khám phá Dịch vụ',
  	"secondary_c_t_a_label" varchar DEFAULT 'Liên hệ Tư vấn',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_hero_banner" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"background_type" "enum_pages_blocks_hero_banner_background_type" DEFAULT 'image',
  	"background_image_id" integer,
  	"background_image_u_r_l" varchar,
  	"background_video_id" integer,
  	"poster_image_id" integer,
  	"height" numeric DEFAULT 700,
  	"overlay_opacity" numeric DEFAULT 40,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_welcome_intro_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar
  );
  
  CREATE TABLE "pages_blocks_welcome_intro_images_locales" (
  	"alt" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_welcome_intro" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"cta_href" varchar DEFAULT '/gioi-thieu',
  	"auto_play" boolean DEFAULT true,
  	"auto_play_interval" numeric DEFAULT 4,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_welcome_intro_locales" (
  	"eyebrow" varchar DEFAULT 'CHÀO MỪNG',
  	"body" varchar,
  	"cta_label" varchar DEFAULT 'Xem thêm',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_page_hero_breadcrumbs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"href" varchar
  );
  
  CREATE TABLE "pages_blocks_page_hero_breadcrumbs_locales" (
  	"label" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_page_hero" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"height" "enum_pages_blocks_page_hero_height" DEFAULT 'md',
  	"background_image_id" integer,
  	"background_image_u_r_l" varchar,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_page_hero_locales" (
  	"title" varchar NOT NULL,
  	"breadcrumb_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sidebar_groups_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sidebar_groups_items_locales" (
  	"label" varchar NOT NULL,
  	"href" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sidebar_groups" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sidebar_groups_locales" (
  	"title" varchar NOT NULL,
  	"title_href" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_paragraphs_locales" (
  	"text" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_images_locales" (
  	"alt" varchar,
  	"caption" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_tabs_files" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"file_id" integer,
  	"file_u_r_l" varchar
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_tabs_files_locales" (
  	"title" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_tabs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_tabs_locales" (
  	"tab_title" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"icon" varchar,
  	"image_id" integer,
  	"image_u_r_l" varchar,
  	"href" varchar
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_items_locales" (
  	"title" varchar,
  	"subtitle" varchar,
  	"description" varchar,
  	"meta" varchar,
  	"alt" varchar,
  	"button_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sections" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"variant" "enum_pages_blocks_about_content_sections_variant" DEFAULT 'gallery',
  	"columns" "enum_pages_blocks_about_content_sections_columns" DEFAULT '3',
  	"image_position" "enum_pages_blocks_about_content_sections_image_position" DEFAULT 'left'
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_locales" (
  	"title" varchar NOT NULL,
  	"body" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_content_intro_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_content_intro_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_content_intro_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar
  );
  
  CREATE TABLE "pages_blocks_content_intro_images_locales" (
  	"alt" varchar,
  	"caption" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_content_intro" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_position" "enum_pages_blocks_content_intro_image_position" DEFAULT 'left',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_content_intro_locales" (
  	"title" varchar NOT NULL,
  	"body" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_feature_cards_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_feature_cards_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_feature_cards_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"icon" varchar,
  	"image_id" integer,
  	"image_u_r_l" varchar,
  	"href" varchar
  );
  
  CREATE TABLE "pages_blocks_feature_cards_items_locales" (
  	"title" varchar NOT NULL,
  	"subtitle" varchar,
  	"description" varchar,
  	"meta" varchar,
  	"alt" varchar,
  	"button_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_feature_cards" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"columns" "enum_pages_blocks_feature_cards_columns" DEFAULT '3',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_feature_cards_locales" (
  	"title" varchar NOT NULL,
  	"body" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_image_gallery_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_image_gallery_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_image_gallery_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar
  );
  
  CREATE TABLE "pages_blocks_image_gallery_images_locales" (
  	"alt" varchar,
  	"caption" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_image_gallery" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"columns" "enum_pages_blocks_image_gallery_columns" DEFAULT '3',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_image_gallery_locales" (
  	"title" varchar NOT NULL,
  	"body" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_info_grid_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_info_grid_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_info_grid_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"icon" varchar,
  	"image_id" integer,
  	"image_u_r_l" varchar,
  	"href" varchar
  );
  
  CREATE TABLE "pages_blocks_info_grid_items_locales" (
  	"title" varchar NOT NULL,
  	"subtitle" varchar,
  	"description" varchar,
  	"meta" varchar,
  	"alt" varchar,
  	"button_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_info_grid" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"columns" "enum_pages_blocks_info_grid_columns" DEFAULT '3',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_info_grid_locales" (
  	"title" varchar NOT NULL,
  	"body" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_media_text_split_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_media_text_split_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_media_text_split_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar
  );
  
  CREATE TABLE "pages_blocks_media_text_split_images_locales" (
  	"alt" varchar,
  	"caption" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_media_text_split" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_position" "enum_pages_blocks_media_text_split_image_position" DEFAULT 'left',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_media_text_split_locales" (
  	"title" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_document_list_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_document_list_paragraphs_locales" (
  	"text" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_document_list_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"icon" varchar,
  	"image_id" integer,
  	"image_u_r_l" varchar,
  	"href" varchar
  );
  
  CREATE TABLE "pages_blocks_document_list_items_locales" (
  	"title" varchar NOT NULL,
  	"subtitle" varchar,
  	"description" varchar,
  	"meta" varchar,
  	"alt" varchar,
  	"button_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_document_list" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_document_list_locales" (
  	"title" varchar NOT NULL,
  	"body" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_projects_listing_parent_categories" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"value" "enum_pages_blocks_projects_listing_parent_categories_value" NOT NULL
  );
  
  CREATE TABLE "pages_blocks_projects_listing_parent_categories_locales" (
  	"label" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_projects_listing_industry_filters" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"value" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_projects_listing_industry_filters_locales" (
  	"label" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_projects_listing" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"source_mode" "enum_pages_blocks_projects_listing_source_mode" DEFAULT 'latest',
  	"limit" numeric DEFAULT 24,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_services_cards" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar,
  	"href" varchar
  );
  
  CREATE TABLE "pages_blocks_services_cards_locales" (
  	"title" varchar NOT NULL,
  	"description" varchar,
  	"button_label" varchar DEFAULT 'Xem thêm',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_services" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"variant" "enum_pages_blocks_services_variant" DEFAULT 'cards',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_services_locales" (
  	"title" varchar DEFAULT 'LĨNH VỰC HOẠT ĐỘNG',
  	"subtitle" varchar DEFAULT 'Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_news" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"display_mode" "enum_pages_blocks_news_display_mode" DEFAULT 'featured',
  	"view_all_href" varchar DEFAULT '/tin-tuc',
  	"source_mode" "enum_pages_blocks_news_source_mode" DEFAULT 'latest',
  	"count" numeric DEFAULT 3,
  	"featured_news_id" integer,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_news_locales" (
  	"title" varchar DEFAULT 'TIN TỨC & SỰ KIỆN',
  	"view_all_label" varchar DEFAULT 'Xem tất cả →',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_featured_projects_tabs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"value" "enum_pages_blocks_featured_projects_tabs_value" NOT NULL
  );
  
  CREATE TABLE "pages_blocks_featured_projects_tabs_locales" (
  	"label" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_featured_projects" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"variant" "enum_pages_blocks_featured_projects_variant" DEFAULT 'grid',
  	"background_color" varchar DEFAULT '#0B1221',
  	"text_theme" "enum_pages_blocks_featured_projects_text_theme" DEFAULT 'dark',
  	"view_all_href" varchar DEFAULT '/du-an-tham-khao',
  	"source_mode" "enum_pages_blocks_featured_projects_source_mode" DEFAULT 'latest',
  	"count" numeric DEFAULT 4,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_featured_projects_locales" (
  	"title" varchar DEFAULT 'DỰ ÁN TIÊU BIỂU',
  	"view_all_label" varchar DEFAULT 'Xem tất cả →',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_partners_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar
  );
  
  CREATE TABLE "pages_blocks_partners_images_locales" (
  	"alt" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_partners" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"background_color" varchar DEFAULT '#0B1221',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_partners_locales" (
  	"title" varchar DEFAULT 'ĐỐI TÁC',
  	"subtitle" varchar DEFAULT 'Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_products" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"source_mode" "enum_pages_blocks_products_source_mode" DEFAULT 'latest',
  	"count" numeric DEFAULT 5,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_products_locales" (
  	"title" varchar DEFAULT 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP',
  	"subtitle" varchar DEFAULT 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_cta_banner" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"background_color" varchar DEFAULT '#0F172A',
  	"gradient_from" varchar DEFAULT '#B92C32',
  	"gradient_middle" varchar DEFAULT '#2b358c',
  	"gradient_to" varchar DEFAULT '#0F172A',
  	"accent_color" varchar DEFAULT '#B92C32',
  	"primary_c_t_a_href" varchar DEFAULT '/lien-he',
  	"secondary_c_t_a_href" varchar DEFAULT '/dich-vu',
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_cta_banner_locales" (
  	"title" varchar DEFAULT 'Bắt đầu Dự án của bạn ngay hôm nay',
  	"subtitle" varchar DEFAULT 'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp',
  	"primary_c_t_a_label" varchar DEFAULT 'Liên hệ Ngay',
  	"secondary_c_t_a_label" varchar DEFAULT 'Xem Dịch vụ',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_brand_logos_fallback_brands" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"name" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_brand_logos" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"source_mode" "enum_pages_blocks_brand_logos_source_mode" DEFAULT 'latest',
  	"count" numeric DEFAULT 6,
  	"block_name" varchar
  );
  
  CREATE TABLE "pages_blocks_brand_logos_locales" (
  	"title" varchar DEFAULT 'ĐỐI TÁC CHIẾN LƯỢC',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"slug" varchar NOT NULL,
  	"template" "enum_pages_template" DEFAULT 'builder',
  	"seo_image_id" integer,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL
  );
  
  CREATE TABLE "pages_locales" (
  	"title" varchar,
  	"seo_title" varchar,
  	"seo_description" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
  );
  
  CREATE TABLE "pages_rels" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"order" integer,
  	"parent_id" integer NOT NULL,
  	"path" varchar NOT NULL,
  	"projects_id" integer,
  	"news_id" integer,
  	"products_id" integer,
  	"partners_id" integer
  );
  
  CREATE TABLE "projects_customer_reasons" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "projects_customer_reasons_locales" (
  	"text" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "projects_result_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "projects_result_items_locales" (
  	"text" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "projects_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer
  );
  
  CREATE TABLE "projects" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"title_label" varchar,
  	"title_vi" varchar,
  	"title_en" varchar,
  	"slug" varchar,
  	"category" "enum_projects_category",
  	"industry" "enum_projects_industry",
  	"featured_type" "enum_projects_featured_type",
  	"featured_badge_color" varchar DEFAULT '#2b358c',
  	"thumbnail_id" integer,
  	"customer_name_vi" varchar,
  	"customer_name_en" varchar,
  	"customer_address" varchar,
  	"location" varchar,
  	"year" numeric,
  	"detail_hero_image_id" integer,
  	"intro_image_id" integer,
  	"summary_vi" varchar,
  	"summary_en" varchar,
  	"intro_vi" jsonb,
  	"intro_en" jsonb,
  	"solutions_vi" jsonb,
  	"solutions_en" jsonb,
  	"results_vi" jsonb,
  	"results_en" jsonb,
  	"featured" boolean DEFAULT false,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"_status" "enum_projects_status" DEFAULT 'draft'
  );
  
  CREATE TABLE "projects_locales" (
  	"featured_badge_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
  );
  
  CREATE TABLE "_projects_v_version_customer_reasons" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_uuid" varchar
  );
  
  CREATE TABLE "_projects_v_version_customer_reasons_locales" (
  	"text" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
  );
  
  CREATE TABLE "_projects_v_version_result_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_uuid" varchar
  );
  
  CREATE TABLE "_projects_v_version_result_items_locales" (
  	"text" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
  );
  
  CREATE TABLE "_projects_v_version_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"_uuid" varchar
  );
  
  CREATE TABLE "_projects_v" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"parent_id" integer,
  	"version_title_label" varchar,
  	"version_title_vi" varchar,
  	"version_title_en" varchar,
  	"version_slug" varchar,
  	"version_category" "enum__projects_v_version_category",
  	"version_industry" "enum__projects_v_version_industry",
  	"version_featured_type" "enum__projects_v_version_featured_type",
  	"version_featured_badge_color" varchar DEFAULT '#2b358c',
  	"version_thumbnail_id" integer,
  	"version_customer_name_vi" varchar,
  	"version_customer_name_en" varchar,
  	"version_customer_address" varchar,
  	"version_location" varchar,
  	"version_year" numeric,
  	"version_detail_hero_image_id" integer,
  	"version_intro_image_id" integer,
  	"version_summary_vi" varchar,
  	"version_summary_en" varchar,
  	"version_intro_vi" jsonb,
  	"version_intro_en" jsonb,
  	"version_solutions_vi" jsonb,
  	"version_solutions_en" jsonb,
  	"version_results_vi" jsonb,
  	"version_results_en" jsonb,
  	"version_featured" boolean DEFAULT false,
  	"version_updated_at" timestamp(3) with time zone,
  	"version_created_at" timestamp(3) with time zone,
  	"version__status" "enum__projects_v_version_status" DEFAULT 'draft',
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"snapshot" boolean,
  	"published_locale" "enum__projects_v_published_locale",
  	"latest" boolean
  );
  
  CREATE TABLE "_projects_v_locales" (
  	"version_featured_badge_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
  );
  
  CREATE TABLE "news_tags" (
  	"order" integer NOT NULL,
  	"parent_id" integer NOT NULL,
  	"value" "enum_news_tags",
  	"id" serial PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "news" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"title_label" varchar,
  	"title_vi" varchar,
  	"title_en" varchar,
  	"slug" varchar,
  	"published_at" timestamp(3) with time zone,
  	"thumbnail_id" integer,
  	"excerpt_vi" varchar,
  	"excerpt_en" varchar,
  	"content_vi" jsonb,
  	"content_en" jsonb,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"_status" "enum_news_status" DEFAULT 'draft'
  );
  
  CREATE TABLE "_news_v_version_tags" (
  	"order" integer NOT NULL,
  	"parent_id" integer NOT NULL,
  	"value" "enum__news_v_version_tags",
  	"id" serial PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "_news_v" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"parent_id" integer,
  	"version_title_label" varchar,
  	"version_title_vi" varchar,
  	"version_title_en" varchar,
  	"version_slug" varchar,
  	"version_published_at" timestamp(3) with time zone,
  	"version_thumbnail_id" integer,
  	"version_excerpt_vi" varchar,
  	"version_excerpt_en" varchar,
  	"version_content_vi" jsonb,
  	"version_content_en" jsonb,
  	"version_updated_at" timestamp(3) with time zone,
  	"version_created_at" timestamp(3) with time zone,
  	"version__status" "enum__news_v_version_status" DEFAULT 'draft',
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"snapshot" boolean,
  	"published_locale" "enum__news_v_published_locale",
  	"latest" boolean
  );
  
  CREATE TABLE "products" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"name_label" varchar,
  	"name_vi" varchar,
  	"name_en" varchar,
  	"slug" varchar,
  	"category" "enum_products_category",
  	"thumbnail_id" integer,
  	"description_vi" jsonb,
  	"description_en" jsonb,
  	"brand" varchar,
  	"featured" boolean DEFAULT false,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"_status" "enum_products_status" DEFAULT 'draft'
  );
  
  CREATE TABLE "products_locales" (
  	"display_category" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
  );
  
  CREATE TABLE "_products_v" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"parent_id" integer,
  	"version_name_label" varchar,
  	"version_name_vi" varchar,
  	"version_name_en" varchar,
  	"version_slug" varchar,
  	"version_category" "enum__products_v_version_category",
  	"version_thumbnail_id" integer,
  	"version_description_vi" jsonb,
  	"version_description_en" jsonb,
  	"version_brand" varchar,
  	"version_featured" boolean DEFAULT false,
  	"version_updated_at" timestamp(3) with time zone,
  	"version_created_at" timestamp(3) with time zone,
  	"version__status" "enum__products_v_version_status" DEFAULT 'draft',
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"snapshot" boolean,
  	"published_locale" "enum__products_v_published_locale",
  	"latest" boolean
  );
  
  CREATE TABLE "_products_v_locales" (
  	"version_display_category" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
  );
  
  CREATE TABLE "partners" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"name" varchar NOT NULL,
  	"logo_id" integer NOT NULL,
  	"website" varchar,
  	"order" numeric DEFAULT 0,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL
  );
  
  CREATE TABLE "services" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"name_vi" varchar,
  	"name_en" varchar,
  	"slug" varchar,
  	"category" "enum_services_category",
  	"icon_id" integer,
  	"thumbnail_id" integer,
  	"summary_vi" varchar,
  	"summary_en" varchar,
  	"content_vi" jsonb,
  	"content_en" jsonb,
  	"order" numeric DEFAULT 0,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"_status" "enum_services_status" DEFAULT 'draft'
  );
  
  CREATE TABLE "_services_v" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"parent_id" integer,
  	"version_name_vi" varchar,
  	"version_name_en" varchar,
  	"version_slug" varchar,
  	"version_category" "enum__services_v_version_category",
  	"version_icon_id" integer,
  	"version_thumbnail_id" integer,
  	"version_summary_vi" varchar,
  	"version_summary_en" varchar,
  	"version_content_vi" jsonb,
  	"version_content_en" jsonb,
  	"version_order" numeric DEFAULT 0,
  	"version_updated_at" timestamp(3) with time zone,
  	"version_created_at" timestamp(3) with time zone,
  	"version__status" "enum__services_v_version_status" DEFAULT 'draft',
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"snapshot" boolean,
  	"published_locale" "enum__services_v_published_locale",
  	"latest" boolean
  );
  
  CREATE TABLE "payload_kv" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"key" varchar NOT NULL,
  	"data" jsonb NOT NULL
  );
  
  CREATE TABLE "payload_locked_documents" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"global_slug" varchar,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL
  );
  
  CREATE TABLE "payload_locked_documents_rels" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"order" integer,
  	"parent_id" integer NOT NULL,
  	"path" varchar NOT NULL,
  	"users_id" integer,
  	"media_id" integer,
  	"pages_id" integer,
  	"projects_id" integer,
  	"news_id" integer,
  	"products_id" integer,
  	"partners_id" integer,
  	"services_id" integer
  );
  
  CREATE TABLE "payload_preferences" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"key" varchar,
  	"value" jsonb,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL
  );
  
  CREATE TABLE "payload_preferences_rels" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"order" integer,
  	"parent_id" integer NOT NULL,
  	"path" varchar NOT NULL,
  	"users_id" integer
  );
  
  CREATE TABLE "payload_migrations" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"name" varchar,
  	"batch" numeric,
  	"updated_at" timestamp(3) with time zone DEFAULT now() NOT NULL,
  	"created_at" timestamp(3) with time zone DEFAULT now() NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_hero_trust_partners" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"name" varchar NOT NULL,
  	"logo_id" integer
  );
  
  CREATE TABLE "home_page_blocks_hero_stats" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"value" numeric DEFAULT 15 NOT NULL,
  	"suffix" varchar DEFAULT '+',
  	"number_color" varchar DEFAULT '#FFFFFF'
  );
  
  CREATE TABLE "home_page_blocks_hero_stats_locales" (
  	"label_top" varchar DEFAULT 'NĂM',
  	"label_bottom" varchar DEFAULT 'Kinh Nghiệm',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_hero" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"variant" "enum_home_page_blocks_hero_variant" DEFAULT 'corporate',
  	"hero_image_id" integer,
  	"hero_image_u_r_l" varchar,
  	"background_type" "enum_home_page_blocks_hero_background_type" DEFAULT 'image',
  	"background_image_id" integer,
  	"background_video_id" integer,
  	"primary_c_t_a_href" varchar DEFAULT '/dich-vu',
  	"secondary_c_t_a_href" varchar DEFAULT '/lien-he',
  	"block_name" varchar
  );
  
  CREATE TABLE "home_page_blocks_hero_locales" (
  	"badge_text" varchar DEFAULT 'CÔNG TY CỔ PHẦN KỸ THUẬT BẮC ÂU',
  	"title" varchar NOT NULL,
  	"subtitle" varchar,
  	"primary_c_t_a_label" varchar DEFAULT 'Khám phá Dịch vụ',
  	"secondary_c_t_a_label" varchar DEFAULT 'Liên hệ Tư vấn',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_services_cards" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar,
  	"href" varchar
  );
  
  CREATE TABLE "home_page_blocks_services_cards_locales" (
  	"title" varchar NOT NULL,
  	"description" varchar,
  	"button_label" varchar DEFAULT 'Xem thêm',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_services" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"variant" "enum_home_page_blocks_services_variant" DEFAULT 'cards',
  	"block_name" varchar
  );
  
  CREATE TABLE "home_page_blocks_services_locales" (
  	"title" varchar DEFAULT 'LĨNH VỰC HOẠT ĐỘNG',
  	"subtitle" varchar DEFAULT 'Cung cấp dịch vụ toàn diện trong lĩnh vực công nghiệp và dân dụng',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_news" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"display_mode" "enum_home_page_blocks_news_display_mode" DEFAULT 'featured',
  	"view_all_href" varchar DEFAULT '/tin-tuc',
  	"source_mode" "enum_home_page_blocks_news_source_mode" DEFAULT 'latest',
  	"count" numeric DEFAULT 3,
  	"featured_news_id" integer,
  	"block_name" varchar
  );
  
  CREATE TABLE "home_page_blocks_news_locales" (
  	"title" varchar DEFAULT 'TIN TỨC & SỰ KIỆN',
  	"view_all_label" varchar DEFAULT 'Xem tất cả →',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_featured_projects_tabs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"value" "enum_home_page_blocks_featured_projects_tabs_value" NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_featured_projects_tabs_locales" (
  	"label" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_featured_projects" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"variant" "enum_home_page_blocks_featured_projects_variant" DEFAULT 'grid',
  	"background_color" varchar DEFAULT '#0B1221',
  	"text_theme" "enum_home_page_blocks_featured_projects_text_theme" DEFAULT 'dark',
  	"view_all_href" varchar DEFAULT '/du-an-tham-khao',
  	"source_mode" "enum_home_page_blocks_featured_projects_source_mode" DEFAULT 'latest',
  	"count" numeric DEFAULT 4,
  	"block_name" varchar
  );
  
  CREATE TABLE "home_page_blocks_featured_projects_locales" (
  	"title" varchar DEFAULT 'DỰ ÁN TIÊU BIỂU',
  	"view_all_label" varchar DEFAULT 'Xem tất cả →',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_partners_images" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
  	"image_u_r_l" varchar
  );
  
  CREATE TABLE "home_page_blocks_partners_images_locales" (
  	"alt" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_partners" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"background_color" varchar DEFAULT '#0B1221',
  	"block_name" varchar
  );
  
  CREATE TABLE "home_page_blocks_partners_locales" (
  	"title" varchar DEFAULT 'ĐỐI TÁC',
  	"subtitle" varchar DEFAULT 'Chúng tôi hợp tác với các đối tác hàng đầu trong lĩnh vực công nghiệp và tự động hóa',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_products" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"source_mode" "enum_home_page_blocks_products_source_mode" DEFAULT 'latest',
  	"count" numeric DEFAULT 5,
  	"block_name" varchar
  );
  
  CREATE TABLE "home_page_blocks_products_locales" (
  	"title" varchar DEFAULT 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP',
  	"subtitle" varchar DEFAULT 'Phân phối thiết bị công nghiệp chính hãng từ các thương hiệu hàng đầu thế giới',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_cta_banner" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"background_color" varchar DEFAULT '#0F172A',
  	"gradient_from" varchar DEFAULT '#B92C32',
  	"gradient_middle" varchar DEFAULT '#2b358c',
  	"gradient_to" varchar DEFAULT '#0F172A',
  	"accent_color" varchar DEFAULT '#B92C32',
  	"primary_c_t_a_href" varchar DEFAULT '/lien-he',
  	"secondary_c_t_a_href" varchar DEFAULT '/dich-vu',
  	"block_name" varchar
  );
  
  CREATE TABLE "home_page_blocks_cta_banner_locales" (
  	"title" varchar DEFAULT 'Bắt đầu Dự án của bạn ngay hôm nay',
  	"subtitle" varchar DEFAULT 'Liên hệ với đội ngũ chuyên gia của chúng tôi để được tư vấn giải pháp tối ưu cho doanh nghiệp',
  	"primary_c_t_a_label" varchar DEFAULT 'Liên hệ Ngay',
  	"secondary_c_t_a_label" varchar DEFAULT 'Xem Dịch vụ',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_brand_logos_fallback_brands" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"name" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_brand_logos" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"source_mode" "enum_home_page_blocks_brand_logos_source_mode" DEFAULT 'latest',
  	"count" numeric DEFAULT 6,
  	"block_name" varchar
  );
  
  CREATE TABLE "home_page_blocks_brand_logos_locales" (
  	"title" varchar DEFAULT 'ĐỐI TÁC CHIẾN LƯỢC',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"updated_at" timestamp(3) with time zone,
  	"created_at" timestamp(3) with time zone
  );
  
  CREATE TABLE "home_page_rels" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"order" integer,
  	"parent_id" integer NOT NULL,
  	"path" varchar NOT NULL,
  	"news_id" integer,
  	"projects_id" integer,
  	"products_id" integer,
  	"partners_id" integer
  );
  
  CREATE TABLE "site_settings_header_nav_items_children" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"href" varchar NOT NULL
  );
  
  CREATE TABLE "site_settings_header_nav_items_children_locales" (
  	"label" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "site_settings_header_nav_items" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"href" varchar NOT NULL
  );
  
  CREATE TABLE "site_settings_header_nav_items_locales" (
  	"label" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "site_settings_footer_columns_links" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"href" varchar
  );
  
  CREATE TABLE "site_settings_footer_columns_links_locales" (
  	"label" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "site_settings_footer_columns" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "site_settings_footer_columns_locales" (
  	"title" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "site_settings" (
  	"id" serial PRIMARY KEY NOT NULL,
  	"header_logo_image_id" integer,
  	"header_phone" varchar DEFAULT '(028) 3636 9936',
  	"header_email" varchar DEFAULT 'info@bacau.com.vn',
  	"footer_logo_image_id" integer,
  	"footer_background_color" varchar DEFAULT '#0F172A',
  	"footer_accent_color" varchar DEFAULT '#B92C32',
  	"updated_at" timestamp(3) with time zone,
  	"created_at" timestamp(3) with time zone
  );
  
  CREATE TABLE "site_settings_locales" (
  	"header_logo_alt" varchar,
  	"header_logo_text" varchar DEFAULT 'BắcÂu',
  	"footer_logo_alt" varchar,
  	"footer_logo_text" varchar DEFAULT 'BắcÂu',
  	"footer_description" varchar DEFAULT 'Công ty TNHH Kỹ thuật & Dịch vụ Bắc Âu chuyên cung cấp giải pháp tự động hóa, thiết bị công nghiệp và dịch vụ kỹ thuật.',
  	"footer_copyright" varchar DEFAULT '© 2024 BắcÂu. All rights reserved.',
  	"footer_credit" varchar DEFAULT 'Designed by BắcÂu Technology',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
  );
  
  ALTER TABLE "users_sessions" ADD CONSTRAINT "users_sessions_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero_trust_partners" ADD CONSTRAINT "pages_blocks_hero_trust_partners_logo_id_media_id_fk" FOREIGN KEY ("logo_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero_trust_partners" ADD CONSTRAINT "pages_blocks_hero_trust_partners_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_hero"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero_stats" ADD CONSTRAINT "pages_blocks_hero_stats_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_hero"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero_stats_locales" ADD CONSTRAINT "pages_blocks_hero_stats_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_hero_stats"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero" ADD CONSTRAINT "pages_blocks_hero_hero_image_id_media_id_fk" FOREIGN KEY ("hero_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero" ADD CONSTRAINT "pages_blocks_hero_background_image_id_media_id_fk" FOREIGN KEY ("background_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero" ADD CONSTRAINT "pages_blocks_hero_background_video_id_media_id_fk" FOREIGN KEY ("background_video_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero" ADD CONSTRAINT "pages_blocks_hero_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero_locales" ADD CONSTRAINT "pages_blocks_hero_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_hero"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero_banner" ADD CONSTRAINT "pages_blocks_hero_banner_background_image_id_media_id_fk" FOREIGN KEY ("background_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero_banner" ADD CONSTRAINT "pages_blocks_hero_banner_background_video_id_media_id_fk" FOREIGN KEY ("background_video_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero_banner" ADD CONSTRAINT "pages_blocks_hero_banner_poster_image_id_media_id_fk" FOREIGN KEY ("poster_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero_banner" ADD CONSTRAINT "pages_blocks_hero_banner_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_welcome_intro_images" ADD CONSTRAINT "pages_blocks_welcome_intro_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_welcome_intro_images" ADD CONSTRAINT "pages_blocks_welcome_intro_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_welcome_intro"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_welcome_intro_images_locales" ADD CONSTRAINT "pages_blocks_welcome_intro_images_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_welcome_intro_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_welcome_intro" ADD CONSTRAINT "pages_blocks_welcome_intro_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_welcome_intro_locales" ADD CONSTRAINT "pages_blocks_welcome_intro_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_welcome_intro"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_page_hero_breadcrumbs" ADD CONSTRAINT "pages_blocks_page_hero_breadcrumbs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_page_hero"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_page_hero_breadcrumbs_locales" ADD CONSTRAINT "pages_blocks_page_hero_breadcrumbs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_page_hero_breadcrumbs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_page_hero" ADD CONSTRAINT "pages_blocks_page_hero_background_image_id_media_id_fk" FOREIGN KEY ("background_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_page_hero" ADD CONSTRAINT "pages_blocks_page_hero_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_page_hero_locales" ADD CONSTRAINT "pages_blocks_page_hero_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_page_hero"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_items" ADD CONSTRAINT "pages_blocks_about_content_sidebar_groups_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sidebar_groups"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_items_locales" ADD CONSTRAINT "pages_blocks_about_content_sidebar_groups_items_locales_p_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sidebar_groups_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups" ADD CONSTRAINT "pages_blocks_about_content_sidebar_groups_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_locales" ADD CONSTRAINT "pages_blocks_about_content_sidebar_groups_locales_parent__fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sidebar_groups"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_paragraphs" ADD CONSTRAINT "pages_blocks_about_content_sections_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_paragraphs_locales" ADD CONSTRAINT "pages_blocks_about_content_sections_paragraphs_locales_pa_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_images" ADD CONSTRAINT "pages_blocks_about_content_sections_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_images" ADD CONSTRAINT "pages_blocks_about_content_sections_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_images_locales" ADD CONSTRAINT "pages_blocks_about_content_sections_images_locales_parent_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_tabs_files" ADD CONSTRAINT "pages_blocks_about_content_sections_tabs_files_file_id_media_id_fk" FOREIGN KEY ("file_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_tabs_files" ADD CONSTRAINT "pages_blocks_about_content_sections_tabs_files_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections_tabs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_tabs_files_locales" ADD CONSTRAINT "pages_blocks_about_content_sections_tabs_files_locales_pa_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections_tabs_files"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_tabs" ADD CONSTRAINT "pages_blocks_about_content_sections_tabs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_tabs_locales" ADD CONSTRAINT "pages_blocks_about_content_sections_tabs_locales_parent_i_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections_tabs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_items" ADD CONSTRAINT "pages_blocks_about_content_sections_items_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_items" ADD CONSTRAINT "pages_blocks_about_content_sections_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_items_locales" ADD CONSTRAINT "pages_blocks_about_content_sections_items_locales_parent__fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections" ADD CONSTRAINT "pages_blocks_about_content_sections_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_locales" ADD CONSTRAINT "pages_blocks_about_content_sections_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content" ADD CONSTRAINT "pages_blocks_about_content_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro_paragraphs" ADD CONSTRAINT "pages_blocks_content_intro_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content_intro"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro_paragraphs_locales" ADD CONSTRAINT "pages_blocks_content_intro_paragraphs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content_intro_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro_images" ADD CONSTRAINT "pages_blocks_content_intro_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro_images" ADD CONSTRAINT "pages_blocks_content_intro_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content_intro"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro_images_locales" ADD CONSTRAINT "pages_blocks_content_intro_images_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content_intro_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro" ADD CONSTRAINT "pages_blocks_content_intro_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_content_intro_locales" ADD CONSTRAINT "pages_blocks_content_intro_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content_intro"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_paragraphs" ADD CONSTRAINT "pages_blocks_feature_cards_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_feature_cards"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_paragraphs_locales" ADD CONSTRAINT "pages_blocks_feature_cards_paragraphs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_feature_cards_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_items" ADD CONSTRAINT "pages_blocks_feature_cards_items_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_items" ADD CONSTRAINT "pages_blocks_feature_cards_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_feature_cards"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_items_locales" ADD CONSTRAINT "pages_blocks_feature_cards_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_feature_cards_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards" ADD CONSTRAINT "pages_blocks_feature_cards_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_feature_cards_locales" ADD CONSTRAINT "pages_blocks_feature_cards_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_feature_cards"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_paragraphs" ADD CONSTRAINT "pages_blocks_image_gallery_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_image_gallery"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_paragraphs_locales" ADD CONSTRAINT "pages_blocks_image_gallery_paragraphs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_image_gallery_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_images" ADD CONSTRAINT "pages_blocks_image_gallery_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_images" ADD CONSTRAINT "pages_blocks_image_gallery_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_image_gallery"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_images_locales" ADD CONSTRAINT "pages_blocks_image_gallery_images_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_image_gallery_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery" ADD CONSTRAINT "pages_blocks_image_gallery_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_image_gallery_locales" ADD CONSTRAINT "pages_blocks_image_gallery_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_image_gallery"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_paragraphs" ADD CONSTRAINT "pages_blocks_info_grid_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_info_grid"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_paragraphs_locales" ADD CONSTRAINT "pages_blocks_info_grid_paragraphs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_info_grid_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_items" ADD CONSTRAINT "pages_blocks_info_grid_items_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_items" ADD CONSTRAINT "pages_blocks_info_grid_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_info_grid"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_items_locales" ADD CONSTRAINT "pages_blocks_info_grid_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_info_grid_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid" ADD CONSTRAINT "pages_blocks_info_grid_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_info_grid_locales" ADD CONSTRAINT "pages_blocks_info_grid_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_info_grid"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_paragraphs" ADD CONSTRAINT "pages_blocks_media_text_split_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_media_text_split"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_paragraphs_locales" ADD CONSTRAINT "pages_blocks_media_text_split_paragraphs_locales_parent_i_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_media_text_split_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_images" ADD CONSTRAINT "pages_blocks_media_text_split_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_images" ADD CONSTRAINT "pages_blocks_media_text_split_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_media_text_split"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_images_locales" ADD CONSTRAINT "pages_blocks_media_text_split_images_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_media_text_split_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split" ADD CONSTRAINT "pages_blocks_media_text_split_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_media_text_split_locales" ADD CONSTRAINT "pages_blocks_media_text_split_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_media_text_split"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_paragraphs" ADD CONSTRAINT "pages_blocks_document_list_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_document_list"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_paragraphs_locales" ADD CONSTRAINT "pages_blocks_document_list_paragraphs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_document_list_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_items" ADD CONSTRAINT "pages_blocks_document_list_items_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_items" ADD CONSTRAINT "pages_blocks_document_list_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_document_list"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_items_locales" ADD CONSTRAINT "pages_blocks_document_list_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_document_list_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list" ADD CONSTRAINT "pages_blocks_document_list_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_document_list_locales" ADD CONSTRAINT "pages_blocks_document_list_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_document_list"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_projects_listing_parent_categories" ADD CONSTRAINT "pages_blocks_projects_listing_parent_categories_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_projects_listing"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_projects_listing_parent_categories_locales" ADD CONSTRAINT "pages_blocks_projects_listing_parent_categories_locales_p_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_projects_listing_parent_categories"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_projects_listing_industry_filters" ADD CONSTRAINT "pages_blocks_projects_listing_industry_filters_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_projects_listing"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_projects_listing_industry_filters_locales" ADD CONSTRAINT "pages_blocks_projects_listing_industry_filters_locales_pa_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_projects_listing_industry_filters"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_projects_listing" ADD CONSTRAINT "pages_blocks_projects_listing_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_services_cards" ADD CONSTRAINT "pages_blocks_services_cards_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_services_cards" ADD CONSTRAINT "pages_blocks_services_cards_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_services"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_services_cards_locales" ADD CONSTRAINT "pages_blocks_services_cards_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_services_cards"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_services" ADD CONSTRAINT "pages_blocks_services_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_services_locales" ADD CONSTRAINT "pages_blocks_services_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_services"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_news" ADD CONSTRAINT "pages_blocks_news_featured_news_id_news_id_fk" FOREIGN KEY ("featured_news_id") REFERENCES "public"."news"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_news" ADD CONSTRAINT "pages_blocks_news_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_news_locales" ADD CONSTRAINT "pages_blocks_news_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_news"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_featured_projects_tabs" ADD CONSTRAINT "pages_blocks_featured_projects_tabs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_featured_projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_featured_projects_tabs_locales" ADD CONSTRAINT "pages_blocks_featured_projects_tabs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_featured_projects_tabs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_featured_projects" ADD CONSTRAINT "pages_blocks_featured_projects_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_featured_projects_locales" ADD CONSTRAINT "pages_blocks_featured_projects_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_featured_projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_partners_images" ADD CONSTRAINT "pages_blocks_partners_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_partners_images" ADD CONSTRAINT "pages_blocks_partners_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_partners"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_partners_images_locales" ADD CONSTRAINT "pages_blocks_partners_images_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_partners_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_partners" ADD CONSTRAINT "pages_blocks_partners_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_partners_locales" ADD CONSTRAINT "pages_blocks_partners_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_partners"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_products" ADD CONSTRAINT "pages_blocks_products_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_products_locales" ADD CONSTRAINT "pages_blocks_products_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_products"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_cta_banner" ADD CONSTRAINT "pages_blocks_cta_banner_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_cta_banner_locales" ADD CONSTRAINT "pages_blocks_cta_banner_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_cta_banner"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_brand_logos_fallback_brands" ADD CONSTRAINT "pages_blocks_brand_logos_fallback_brands_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_brand_logos"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_brand_logos" ADD CONSTRAINT "pages_blocks_brand_logos_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_brand_logos_locales" ADD CONSTRAINT "pages_blocks_brand_logos_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_brand_logos"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages" ADD CONSTRAINT "pages_seo_image_id_media_id_fk" FOREIGN KEY ("seo_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_locales" ADD CONSTRAINT "pages_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_rels" ADD CONSTRAINT "pages_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_rels" ADD CONSTRAINT "pages_rels_projects_fk" FOREIGN KEY ("projects_id") REFERENCES "public"."projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_rels" ADD CONSTRAINT "pages_rels_news_fk" FOREIGN KEY ("news_id") REFERENCES "public"."news"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_rels" ADD CONSTRAINT "pages_rels_products_fk" FOREIGN KEY ("products_id") REFERENCES "public"."products"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_rels" ADD CONSTRAINT "pages_rels_partners_fk" FOREIGN KEY ("partners_id") REFERENCES "public"."partners"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "projects_customer_reasons" ADD CONSTRAINT "projects_customer_reasons_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "projects_customer_reasons_locales" ADD CONSTRAINT "projects_customer_reasons_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."projects_customer_reasons"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "projects_result_items" ADD CONSTRAINT "projects_result_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "projects_result_items_locales" ADD CONSTRAINT "projects_result_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."projects_result_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "projects_images" ADD CONSTRAINT "projects_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "projects_images" ADD CONSTRAINT "projects_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "projects" ADD CONSTRAINT "projects_thumbnail_id_media_id_fk" FOREIGN KEY ("thumbnail_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "projects" ADD CONSTRAINT "projects_detail_hero_image_id_media_id_fk" FOREIGN KEY ("detail_hero_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "projects" ADD CONSTRAINT "projects_intro_image_id_media_id_fk" FOREIGN KEY ("intro_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "projects_locales" ADD CONSTRAINT "projects_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_projects_v_version_customer_reasons" ADD CONSTRAINT "_projects_v_version_customer_reasons_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_projects_v"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_projects_v_version_customer_reasons_locales" ADD CONSTRAINT "_projects_v_version_customer_reasons_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_projects_v_version_customer_reasons"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_projects_v_version_result_items" ADD CONSTRAINT "_projects_v_version_result_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_projects_v"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_projects_v_version_result_items_locales" ADD CONSTRAINT "_projects_v_version_result_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_projects_v_version_result_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_projects_v_version_images" ADD CONSTRAINT "_projects_v_version_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_projects_v_version_images" ADD CONSTRAINT "_projects_v_version_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_projects_v"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_projects_v" ADD CONSTRAINT "_projects_v_parent_id_projects_id_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."projects"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_projects_v" ADD CONSTRAINT "_projects_v_version_thumbnail_id_media_id_fk" FOREIGN KEY ("version_thumbnail_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_projects_v" ADD CONSTRAINT "_projects_v_version_detail_hero_image_id_media_id_fk" FOREIGN KEY ("version_detail_hero_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_projects_v" ADD CONSTRAINT "_projects_v_version_intro_image_id_media_id_fk" FOREIGN KEY ("version_intro_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_projects_v_locales" ADD CONSTRAINT "_projects_v_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_projects_v"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "news_tags" ADD CONSTRAINT "news_tags_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."news"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "news" ADD CONSTRAINT "news_thumbnail_id_media_id_fk" FOREIGN KEY ("thumbnail_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_news_v_version_tags" ADD CONSTRAINT "_news_v_version_tags_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."_news_v"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_news_v" ADD CONSTRAINT "_news_v_parent_id_news_id_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."news"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_news_v" ADD CONSTRAINT "_news_v_version_thumbnail_id_media_id_fk" FOREIGN KEY ("version_thumbnail_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "products" ADD CONSTRAINT "products_thumbnail_id_media_id_fk" FOREIGN KEY ("thumbnail_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "products_locales" ADD CONSTRAINT "products_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."products"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_products_v" ADD CONSTRAINT "_products_v_parent_id_products_id_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."products"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_products_v" ADD CONSTRAINT "_products_v_version_thumbnail_id_media_id_fk" FOREIGN KEY ("version_thumbnail_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_products_v_locales" ADD CONSTRAINT "_products_v_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_products_v"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "partners" ADD CONSTRAINT "partners_logo_id_media_id_fk" FOREIGN KEY ("logo_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "services" ADD CONSTRAINT "services_icon_id_media_id_fk" FOREIGN KEY ("icon_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "services" ADD CONSTRAINT "services_thumbnail_id_media_id_fk" FOREIGN KEY ("thumbnail_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_services_v" ADD CONSTRAINT "_services_v_parent_id_services_id_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."services"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_services_v" ADD CONSTRAINT "_services_v_version_icon_id_media_id_fk" FOREIGN KEY ("version_icon_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_services_v" ADD CONSTRAINT "_services_v_version_thumbnail_id_media_id_fk" FOREIGN KEY ("version_thumbnail_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."payload_locked_documents"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_media_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_projects_fk" FOREIGN KEY ("projects_id") REFERENCES "public"."projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_news_fk" FOREIGN KEY ("news_id") REFERENCES "public"."news"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_products_fk" FOREIGN KEY ("products_id") REFERENCES "public"."products"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_partners_fk" FOREIGN KEY ("partners_id") REFERENCES "public"."partners"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_locked_documents_rels" ADD CONSTRAINT "payload_locked_documents_rels_services_fk" FOREIGN KEY ("services_id") REFERENCES "public"."services"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_preferences_rels" ADD CONSTRAINT "payload_preferences_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."payload_preferences"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "payload_preferences_rels" ADD CONSTRAINT "payload_preferences_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_hero_trust_partners" ADD CONSTRAINT "home_page_blocks_hero_trust_partners_logo_id_media_id_fk" FOREIGN KEY ("logo_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home_page_blocks_hero_trust_partners" ADD CONSTRAINT "home_page_blocks_hero_trust_partners_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_hero"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_hero_stats" ADD CONSTRAINT "home_page_blocks_hero_stats_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_hero"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_hero_stats_locales" ADD CONSTRAINT "home_page_blocks_hero_stats_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_hero_stats"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_hero" ADD CONSTRAINT "home_page_blocks_hero_hero_image_id_media_id_fk" FOREIGN KEY ("hero_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home_page_blocks_hero" ADD CONSTRAINT "home_page_blocks_hero_background_image_id_media_id_fk" FOREIGN KEY ("background_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home_page_blocks_hero" ADD CONSTRAINT "home_page_blocks_hero_background_video_id_media_id_fk" FOREIGN KEY ("background_video_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home_page_blocks_hero" ADD CONSTRAINT "home_page_blocks_hero_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_hero_locales" ADD CONSTRAINT "home_page_blocks_hero_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_hero"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_services_cards" ADD CONSTRAINT "home_page_blocks_services_cards_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home_page_blocks_services_cards" ADD CONSTRAINT "home_page_blocks_services_cards_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_services"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_services_cards_locales" ADD CONSTRAINT "home_page_blocks_services_cards_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_services_cards"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_services" ADD CONSTRAINT "home_page_blocks_services_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_services_locales" ADD CONSTRAINT "home_page_blocks_services_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_services"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_news" ADD CONSTRAINT "home_page_blocks_news_featured_news_id_news_id_fk" FOREIGN KEY ("featured_news_id") REFERENCES "public"."news"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home_page_blocks_news" ADD CONSTRAINT "home_page_blocks_news_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_news_locales" ADD CONSTRAINT "home_page_blocks_news_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_news"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_featured_projects_tabs" ADD CONSTRAINT "home_page_blocks_featured_projects_tabs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_featured_projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_featured_projects_tabs_locales" ADD CONSTRAINT "home_page_blocks_featured_projects_tabs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_featured_projects_tabs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_featured_projects" ADD CONSTRAINT "home_page_blocks_featured_projects_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_featured_projects_locales" ADD CONSTRAINT "home_page_blocks_featured_projects_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_featured_projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_partners_images" ADD CONSTRAINT "home_page_blocks_partners_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home_page_blocks_partners_images" ADD CONSTRAINT "home_page_blocks_partners_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_partners"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_partners_images_locales" ADD CONSTRAINT "home_page_blocks_partners_images_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_partners_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_partners" ADD CONSTRAINT "home_page_blocks_partners_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_partners_locales" ADD CONSTRAINT "home_page_blocks_partners_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_partners"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_products" ADD CONSTRAINT "home_page_blocks_products_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_products_locales" ADD CONSTRAINT "home_page_blocks_products_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_products"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_cta_banner" ADD CONSTRAINT "home_page_blocks_cta_banner_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_cta_banner_locales" ADD CONSTRAINT "home_page_blocks_cta_banner_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_cta_banner"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_brand_logos_fallback_brands" ADD CONSTRAINT "home_page_blocks_brand_logos_fallback_brands_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_brand_logos"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_brand_logos" ADD CONSTRAINT "home_page_blocks_brand_logos_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_brand_logos_locales" ADD CONSTRAINT "home_page_blocks_brand_logos_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_brand_logos"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_rels" ADD CONSTRAINT "home_page_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."home_page"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_rels" ADD CONSTRAINT "home_page_rels_news_fk" FOREIGN KEY ("news_id") REFERENCES "public"."news"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_rels" ADD CONSTRAINT "home_page_rels_projects_fk" FOREIGN KEY ("projects_id") REFERENCES "public"."projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_rels" ADD CONSTRAINT "home_page_rels_products_fk" FOREIGN KEY ("products_id") REFERENCES "public"."products"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_rels" ADD CONSTRAINT "home_page_rels_partners_fk" FOREIGN KEY ("partners_id") REFERENCES "public"."partners"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "site_settings_header_nav_items_children" ADD CONSTRAINT "site_settings_header_nav_items_children_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."site_settings_header_nav_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "site_settings_header_nav_items_children_locales" ADD CONSTRAINT "site_settings_header_nav_items_children_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."site_settings_header_nav_items_children"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "site_settings_header_nav_items" ADD CONSTRAINT "site_settings_header_nav_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."site_settings"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "site_settings_header_nav_items_locales" ADD CONSTRAINT "site_settings_header_nav_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."site_settings_header_nav_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "site_settings_footer_columns_links" ADD CONSTRAINT "site_settings_footer_columns_links_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."site_settings_footer_columns"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "site_settings_footer_columns_links_locales" ADD CONSTRAINT "site_settings_footer_columns_links_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."site_settings_footer_columns_links"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "site_settings_footer_columns" ADD CONSTRAINT "site_settings_footer_columns_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."site_settings"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "site_settings_footer_columns_locales" ADD CONSTRAINT "site_settings_footer_columns_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."site_settings_footer_columns"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "site_settings" ADD CONSTRAINT "site_settings_header_logo_image_id_media_id_fk" FOREIGN KEY ("header_logo_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "site_settings" ADD CONSTRAINT "site_settings_footer_logo_image_id_media_id_fk" FOREIGN KEY ("footer_logo_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "site_settings_locales" ADD CONSTRAINT "site_settings_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."site_settings"("id") ON DELETE cascade ON UPDATE no action;
  CREATE INDEX "users_sessions_order_idx" ON "users_sessions" USING btree ("_order");
  CREATE INDEX "users_sessions_parent_id_idx" ON "users_sessions" USING btree ("_parent_id");
  CREATE INDEX "users_updated_at_idx" ON "users" USING btree ("updated_at");
  CREATE INDEX "users_created_at_idx" ON "users" USING btree ("created_at");
  CREATE UNIQUE INDEX "users_email_idx" ON "users" USING btree ("email");
  CREATE INDEX "media_updated_at_idx" ON "media" USING btree ("updated_at");
  CREATE INDEX "media_created_at_idx" ON "media" USING btree ("created_at");
  CREATE UNIQUE INDEX "media_filename_idx" ON "media" USING btree ("filename");
  CREATE INDEX "pages_blocks_hero_trust_partners_order_idx" ON "pages_blocks_hero_trust_partners" USING btree ("_order");
  CREATE INDEX "pages_blocks_hero_trust_partners_parent_id_idx" ON "pages_blocks_hero_trust_partners" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_hero_trust_partners_logo_idx" ON "pages_blocks_hero_trust_partners" USING btree ("logo_id");
  CREATE INDEX "pages_blocks_hero_stats_order_idx" ON "pages_blocks_hero_stats" USING btree ("_order");
  CREATE INDEX "pages_blocks_hero_stats_parent_id_idx" ON "pages_blocks_hero_stats" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_hero_stats_locales_locale_parent_id_unique" ON "pages_blocks_hero_stats_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_hero_order_idx" ON "pages_blocks_hero" USING btree ("_order");
  CREATE INDEX "pages_blocks_hero_parent_id_idx" ON "pages_blocks_hero" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_hero_path_idx" ON "pages_blocks_hero" USING btree ("_path");
  CREATE INDEX "pages_blocks_hero_hero_image_idx" ON "pages_blocks_hero" USING btree ("hero_image_id");
  CREATE INDEX "pages_blocks_hero_background_image_idx" ON "pages_blocks_hero" USING btree ("background_image_id");
  CREATE INDEX "pages_blocks_hero_background_video_idx" ON "pages_blocks_hero" USING btree ("background_video_id");
  CREATE UNIQUE INDEX "pages_blocks_hero_locales_locale_parent_id_unique" ON "pages_blocks_hero_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_hero_banner_order_idx" ON "pages_blocks_hero_banner" USING btree ("_order");
  CREATE INDEX "pages_blocks_hero_banner_parent_id_idx" ON "pages_blocks_hero_banner" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_hero_banner_path_idx" ON "pages_blocks_hero_banner" USING btree ("_path");
  CREATE INDEX "pages_blocks_hero_banner_background_image_idx" ON "pages_blocks_hero_banner" USING btree ("background_image_id");
  CREATE INDEX "pages_blocks_hero_banner_background_video_idx" ON "pages_blocks_hero_banner" USING btree ("background_video_id");
  CREATE INDEX "pages_blocks_hero_banner_poster_image_idx" ON "pages_blocks_hero_banner" USING btree ("poster_image_id");
  CREATE INDEX "pages_blocks_welcome_intro_images_order_idx" ON "pages_blocks_welcome_intro_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_welcome_intro_images_parent_id_idx" ON "pages_blocks_welcome_intro_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_welcome_intro_images_image_idx" ON "pages_blocks_welcome_intro_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_welcome_intro_images_locales_locale_parent_id_u" ON "pages_blocks_welcome_intro_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_welcome_intro_order_idx" ON "pages_blocks_welcome_intro" USING btree ("_order");
  CREATE INDEX "pages_blocks_welcome_intro_parent_id_idx" ON "pages_blocks_welcome_intro" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_welcome_intro_path_idx" ON "pages_blocks_welcome_intro" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_welcome_intro_locales_locale_parent_id_unique" ON "pages_blocks_welcome_intro_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_page_hero_breadcrumbs_order_idx" ON "pages_blocks_page_hero_breadcrumbs" USING btree ("_order");
  CREATE INDEX "pages_blocks_page_hero_breadcrumbs_parent_id_idx" ON "pages_blocks_page_hero_breadcrumbs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_page_hero_breadcrumbs_locales_locale_parent_id_" ON "pages_blocks_page_hero_breadcrumbs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_page_hero_order_idx" ON "pages_blocks_page_hero" USING btree ("_order");
  CREATE INDEX "pages_blocks_page_hero_parent_id_idx" ON "pages_blocks_page_hero" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_page_hero_path_idx" ON "pages_blocks_page_hero" USING btree ("_path");
  CREATE INDEX "pages_blocks_page_hero_background_image_idx" ON "pages_blocks_page_hero" USING btree ("background_image_id");
  CREATE UNIQUE INDEX "pages_blocks_page_hero_locales_locale_parent_id_unique" ON "pages_blocks_page_hero_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_sidebar_groups_items_order_idx" ON "pages_blocks_about_content_sidebar_groups_items" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sidebar_groups_items_parent_id_idx" ON "pages_blocks_about_content_sidebar_groups_items" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sidebar_groups_items_locales_loca" ON "pages_blocks_about_content_sidebar_groups_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_sidebar_groups_order_idx" ON "pages_blocks_about_content_sidebar_groups" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sidebar_groups_parent_id_idx" ON "pages_blocks_about_content_sidebar_groups" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sidebar_groups_locales_locale_par" ON "pages_blocks_about_content_sidebar_groups_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_paragraphs_order_idx" ON "pages_blocks_about_content_sections_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sections_paragraphs_parent_id_idx" ON "pages_blocks_about_content_sections_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sections_paragraphs_locales_local" ON "pages_blocks_about_content_sections_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_images_order_idx" ON "pages_blocks_about_content_sections_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sections_images_parent_id_idx" ON "pages_blocks_about_content_sections_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_images_image_idx" ON "pages_blocks_about_content_sections_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sections_images_locales_locale_pa" ON "pages_blocks_about_content_sections_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_tabs_files_order_idx" ON "pages_blocks_about_content_sections_tabs_files" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sections_tabs_files_parent_id_idx" ON "pages_blocks_about_content_sections_tabs_files" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_tabs_files_file_idx" ON "pages_blocks_about_content_sections_tabs_files" USING btree ("file_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sections_tabs_files_locales_local" ON "pages_blocks_about_content_sections_tabs_files_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_tabs_order_idx" ON "pages_blocks_about_content_sections_tabs" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sections_tabs_parent_id_idx" ON "pages_blocks_about_content_sections_tabs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sections_tabs_locales_locale_pare" ON "pages_blocks_about_content_sections_tabs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_items_order_idx" ON "pages_blocks_about_content_sections_items" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sections_items_parent_id_idx" ON "pages_blocks_about_content_sections_items" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_items_image_idx" ON "pages_blocks_about_content_sections_items" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sections_items_locales_locale_par" ON "pages_blocks_about_content_sections_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_order_idx" ON "pages_blocks_about_content_sections" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sections_parent_id_idx" ON "pages_blocks_about_content_sections" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sections_locales_locale_parent_id" ON "pages_blocks_about_content_sections_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_order_idx" ON "pages_blocks_about_content" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_parent_id_idx" ON "pages_blocks_about_content" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_about_content_path_idx" ON "pages_blocks_about_content" USING btree ("_path");
  CREATE INDEX "pages_blocks_content_intro_paragraphs_order_idx" ON "pages_blocks_content_intro_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_content_intro_paragraphs_parent_id_idx" ON "pages_blocks_content_intro_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_content_intro_paragraphs_locales_locale_parent_" ON "pages_blocks_content_intro_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_content_intro_images_order_idx" ON "pages_blocks_content_intro_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_content_intro_images_parent_id_idx" ON "pages_blocks_content_intro_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_content_intro_images_image_idx" ON "pages_blocks_content_intro_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_content_intro_images_locales_locale_parent_id_u" ON "pages_blocks_content_intro_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_content_intro_order_idx" ON "pages_blocks_content_intro" USING btree ("_order");
  CREATE INDEX "pages_blocks_content_intro_parent_id_idx" ON "pages_blocks_content_intro" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_content_intro_path_idx" ON "pages_blocks_content_intro" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_content_intro_locales_locale_parent_id_unique" ON "pages_blocks_content_intro_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_feature_cards_paragraphs_order_idx" ON "pages_blocks_feature_cards_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_feature_cards_paragraphs_parent_id_idx" ON "pages_blocks_feature_cards_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_feature_cards_paragraphs_locales_locale_parent_" ON "pages_blocks_feature_cards_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_feature_cards_items_order_idx" ON "pages_blocks_feature_cards_items" USING btree ("_order");
  CREATE INDEX "pages_blocks_feature_cards_items_parent_id_idx" ON "pages_blocks_feature_cards_items" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_feature_cards_items_image_idx" ON "pages_blocks_feature_cards_items" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_feature_cards_items_locales_locale_parent_id_un" ON "pages_blocks_feature_cards_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_feature_cards_order_idx" ON "pages_blocks_feature_cards" USING btree ("_order");
  CREATE INDEX "pages_blocks_feature_cards_parent_id_idx" ON "pages_blocks_feature_cards" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_feature_cards_path_idx" ON "pages_blocks_feature_cards" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_feature_cards_locales_locale_parent_id_unique" ON "pages_blocks_feature_cards_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_paragraphs_order_idx" ON "pages_blocks_image_gallery_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_image_gallery_paragraphs_parent_id_idx" ON "pages_blocks_image_gallery_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_image_gallery_paragraphs_locales_locale_parent_" ON "pages_blocks_image_gallery_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_images_order_idx" ON "pages_blocks_image_gallery_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_image_gallery_images_parent_id_idx" ON "pages_blocks_image_gallery_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_images_image_idx" ON "pages_blocks_image_gallery_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_image_gallery_images_locales_locale_parent_id_u" ON "pages_blocks_image_gallery_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_order_idx" ON "pages_blocks_image_gallery" USING btree ("_order");
  CREATE INDEX "pages_blocks_image_gallery_parent_id_idx" ON "pages_blocks_image_gallery" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_image_gallery_path_idx" ON "pages_blocks_image_gallery" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_image_gallery_locales_locale_parent_id_unique" ON "pages_blocks_image_gallery_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_info_grid_paragraphs_order_idx" ON "pages_blocks_info_grid_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_info_grid_paragraphs_parent_id_idx" ON "pages_blocks_info_grid_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_info_grid_paragraphs_locales_locale_parent_id_u" ON "pages_blocks_info_grid_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_info_grid_items_order_idx" ON "pages_blocks_info_grid_items" USING btree ("_order");
  CREATE INDEX "pages_blocks_info_grid_items_parent_id_idx" ON "pages_blocks_info_grid_items" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_info_grid_items_image_idx" ON "pages_blocks_info_grid_items" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_info_grid_items_locales_locale_parent_id_unique" ON "pages_blocks_info_grid_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_info_grid_order_idx" ON "pages_blocks_info_grid" USING btree ("_order");
  CREATE INDEX "pages_blocks_info_grid_parent_id_idx" ON "pages_blocks_info_grid" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_info_grid_path_idx" ON "pages_blocks_info_grid" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_info_grid_locales_locale_parent_id_unique" ON "pages_blocks_info_grid_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_media_text_split_paragraphs_order_idx" ON "pages_blocks_media_text_split_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_media_text_split_paragraphs_parent_id_idx" ON "pages_blocks_media_text_split_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_media_text_split_paragraphs_locales_locale_pare" ON "pages_blocks_media_text_split_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_media_text_split_images_order_idx" ON "pages_blocks_media_text_split_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_media_text_split_images_parent_id_idx" ON "pages_blocks_media_text_split_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_media_text_split_images_image_idx" ON "pages_blocks_media_text_split_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_media_text_split_images_locales_locale_parent_i" ON "pages_blocks_media_text_split_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_media_text_split_order_idx" ON "pages_blocks_media_text_split" USING btree ("_order");
  CREATE INDEX "pages_blocks_media_text_split_parent_id_idx" ON "pages_blocks_media_text_split" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_media_text_split_path_idx" ON "pages_blocks_media_text_split" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_media_text_split_locales_locale_parent_id_uniqu" ON "pages_blocks_media_text_split_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_document_list_paragraphs_order_idx" ON "pages_blocks_document_list_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_document_list_paragraphs_parent_id_idx" ON "pages_blocks_document_list_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_document_list_paragraphs_locales_locale_parent_" ON "pages_blocks_document_list_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_document_list_items_order_idx" ON "pages_blocks_document_list_items" USING btree ("_order");
  CREATE INDEX "pages_blocks_document_list_items_parent_id_idx" ON "pages_blocks_document_list_items" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_document_list_items_image_idx" ON "pages_blocks_document_list_items" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_document_list_items_locales_locale_parent_id_un" ON "pages_blocks_document_list_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_document_list_order_idx" ON "pages_blocks_document_list" USING btree ("_order");
  CREATE INDEX "pages_blocks_document_list_parent_id_idx" ON "pages_blocks_document_list" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_document_list_path_idx" ON "pages_blocks_document_list" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_document_list_locales_locale_parent_id_unique" ON "pages_blocks_document_list_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_projects_listing_parent_categories_order_idx" ON "pages_blocks_projects_listing_parent_categories" USING btree ("_order");
  CREATE INDEX "pages_blocks_projects_listing_parent_categories_parent_id_idx" ON "pages_blocks_projects_listing_parent_categories" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_projects_listing_parent_categories_locales_loca" ON "pages_blocks_projects_listing_parent_categories_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_projects_listing_industry_filters_order_idx" ON "pages_blocks_projects_listing_industry_filters" USING btree ("_order");
  CREATE INDEX "pages_blocks_projects_listing_industry_filters_parent_id_idx" ON "pages_blocks_projects_listing_industry_filters" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_projects_listing_industry_filters_locales_local" ON "pages_blocks_projects_listing_industry_filters_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_projects_listing_order_idx" ON "pages_blocks_projects_listing" USING btree ("_order");
  CREATE INDEX "pages_blocks_projects_listing_parent_id_idx" ON "pages_blocks_projects_listing" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_projects_listing_path_idx" ON "pages_blocks_projects_listing" USING btree ("_path");
  CREATE INDEX "pages_blocks_services_cards_order_idx" ON "pages_blocks_services_cards" USING btree ("_order");
  CREATE INDEX "pages_blocks_services_cards_parent_id_idx" ON "pages_blocks_services_cards" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_services_cards_image_idx" ON "pages_blocks_services_cards" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_services_cards_locales_locale_parent_id_unique" ON "pages_blocks_services_cards_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_services_order_idx" ON "pages_blocks_services" USING btree ("_order");
  CREATE INDEX "pages_blocks_services_parent_id_idx" ON "pages_blocks_services" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_services_path_idx" ON "pages_blocks_services" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_services_locales_locale_parent_id_unique" ON "pages_blocks_services_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_news_order_idx" ON "pages_blocks_news" USING btree ("_order");
  CREATE INDEX "pages_blocks_news_parent_id_idx" ON "pages_blocks_news" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_news_path_idx" ON "pages_blocks_news" USING btree ("_path");
  CREATE INDEX "pages_blocks_news_featured_news_idx" ON "pages_blocks_news" USING btree ("featured_news_id");
  CREATE UNIQUE INDEX "pages_blocks_news_locales_locale_parent_id_unique" ON "pages_blocks_news_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_featured_projects_tabs_order_idx" ON "pages_blocks_featured_projects_tabs" USING btree ("_order");
  CREATE INDEX "pages_blocks_featured_projects_tabs_parent_id_idx" ON "pages_blocks_featured_projects_tabs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_featured_projects_tabs_locales_locale_parent_id" ON "pages_blocks_featured_projects_tabs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_featured_projects_order_idx" ON "pages_blocks_featured_projects" USING btree ("_order");
  CREATE INDEX "pages_blocks_featured_projects_parent_id_idx" ON "pages_blocks_featured_projects" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_featured_projects_path_idx" ON "pages_blocks_featured_projects" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_featured_projects_locales_locale_parent_id_uniq" ON "pages_blocks_featured_projects_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_partners_images_order_idx" ON "pages_blocks_partners_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_partners_images_parent_id_idx" ON "pages_blocks_partners_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_partners_images_image_idx" ON "pages_blocks_partners_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_partners_images_locales_locale_parent_id_unique" ON "pages_blocks_partners_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_partners_order_idx" ON "pages_blocks_partners" USING btree ("_order");
  CREATE INDEX "pages_blocks_partners_parent_id_idx" ON "pages_blocks_partners" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_partners_path_idx" ON "pages_blocks_partners" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_partners_locales_locale_parent_id_unique" ON "pages_blocks_partners_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_products_order_idx" ON "pages_blocks_products" USING btree ("_order");
  CREATE INDEX "pages_blocks_products_parent_id_idx" ON "pages_blocks_products" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_products_path_idx" ON "pages_blocks_products" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_products_locales_locale_parent_id_unique" ON "pages_blocks_products_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_cta_banner_order_idx" ON "pages_blocks_cta_banner" USING btree ("_order");
  CREATE INDEX "pages_blocks_cta_banner_parent_id_idx" ON "pages_blocks_cta_banner" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_cta_banner_path_idx" ON "pages_blocks_cta_banner" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_cta_banner_locales_locale_parent_id_unique" ON "pages_blocks_cta_banner_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_brand_logos_fallback_brands_order_idx" ON "pages_blocks_brand_logos_fallback_brands" USING btree ("_order");
  CREATE INDEX "pages_blocks_brand_logos_fallback_brands_parent_id_idx" ON "pages_blocks_brand_logos_fallback_brands" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_brand_logos_order_idx" ON "pages_blocks_brand_logos" USING btree ("_order");
  CREATE INDEX "pages_blocks_brand_logos_parent_id_idx" ON "pages_blocks_brand_logos" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_brand_logos_path_idx" ON "pages_blocks_brand_logos" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_brand_logos_locales_locale_parent_id_unique" ON "pages_blocks_brand_logos_locales" USING btree ("_locale","_parent_id");
  CREATE UNIQUE INDEX "pages_slug_idx" ON "pages" USING btree ("slug");
  CREATE INDEX "pages_seo_seo_image_idx" ON "pages" USING btree ("seo_image_id");
  CREATE INDEX "pages_updated_at_idx" ON "pages" USING btree ("updated_at");
  CREATE INDEX "pages_created_at_idx" ON "pages" USING btree ("created_at");
  CREATE UNIQUE INDEX "pages_locales_locale_parent_id_unique" ON "pages_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_rels_order_idx" ON "pages_rels" USING btree ("order");
  CREATE INDEX "pages_rels_parent_idx" ON "pages_rels" USING btree ("parent_id");
  CREATE INDEX "pages_rels_path_idx" ON "pages_rels" USING btree ("path");
  CREATE INDEX "pages_rels_projects_id_idx" ON "pages_rels" USING btree ("projects_id");
  CREATE INDEX "pages_rels_news_id_idx" ON "pages_rels" USING btree ("news_id");
  CREATE INDEX "pages_rels_products_id_idx" ON "pages_rels" USING btree ("products_id");
  CREATE INDEX "pages_rels_partners_id_idx" ON "pages_rels" USING btree ("partners_id");
  CREATE INDEX "projects_customer_reasons_order_idx" ON "projects_customer_reasons" USING btree ("_order");
  CREATE INDEX "projects_customer_reasons_parent_id_idx" ON "projects_customer_reasons" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "projects_customer_reasons_locales_locale_parent_id_unique" ON "projects_customer_reasons_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "projects_result_items_order_idx" ON "projects_result_items" USING btree ("_order");
  CREATE INDEX "projects_result_items_parent_id_idx" ON "projects_result_items" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "projects_result_items_locales_locale_parent_id_unique" ON "projects_result_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "projects_images_order_idx" ON "projects_images" USING btree ("_order");
  CREATE INDEX "projects_images_parent_id_idx" ON "projects_images" USING btree ("_parent_id");
  CREATE INDEX "projects_images_image_idx" ON "projects_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "projects_slug_idx" ON "projects" USING btree ("slug");
  CREATE INDEX "projects_thumbnail_idx" ON "projects" USING btree ("thumbnail_id");
  CREATE INDEX "projects_detail_hero_image_idx" ON "projects" USING btree ("detail_hero_image_id");
  CREATE INDEX "projects_intro_image_idx" ON "projects" USING btree ("intro_image_id");
  CREATE INDEX "projects_updated_at_idx" ON "projects" USING btree ("updated_at");
  CREATE INDEX "projects_created_at_idx" ON "projects" USING btree ("created_at");
  CREATE INDEX "projects__status_idx" ON "projects" USING btree ("_status");
  CREATE UNIQUE INDEX "projects_locales_locale_parent_id_unique" ON "projects_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "_projects_v_version_customer_reasons_order_idx" ON "_projects_v_version_customer_reasons" USING btree ("_order");
  CREATE INDEX "_projects_v_version_customer_reasons_parent_id_idx" ON "_projects_v_version_customer_reasons" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "_projects_v_version_customer_reasons_locales_locale_parent_i" ON "_projects_v_version_customer_reasons_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "_projects_v_version_result_items_order_idx" ON "_projects_v_version_result_items" USING btree ("_order");
  CREATE INDEX "_projects_v_version_result_items_parent_id_idx" ON "_projects_v_version_result_items" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "_projects_v_version_result_items_locales_locale_parent_id_un" ON "_projects_v_version_result_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "_projects_v_version_images_order_idx" ON "_projects_v_version_images" USING btree ("_order");
  CREATE INDEX "_projects_v_version_images_parent_id_idx" ON "_projects_v_version_images" USING btree ("_parent_id");
  CREATE INDEX "_projects_v_version_images_image_idx" ON "_projects_v_version_images" USING btree ("image_id");
  CREATE INDEX "_projects_v_parent_idx" ON "_projects_v" USING btree ("parent_id");
  CREATE INDEX "_projects_v_version_version_slug_idx" ON "_projects_v" USING btree ("version_slug");
  CREATE INDEX "_projects_v_version_version_thumbnail_idx" ON "_projects_v" USING btree ("version_thumbnail_id");
  CREATE INDEX "_projects_v_version_version_detail_hero_image_idx" ON "_projects_v" USING btree ("version_detail_hero_image_id");
  CREATE INDEX "_projects_v_version_version_intro_image_idx" ON "_projects_v" USING btree ("version_intro_image_id");
  CREATE INDEX "_projects_v_version_version_updated_at_idx" ON "_projects_v" USING btree ("version_updated_at");
  CREATE INDEX "_projects_v_version_version_created_at_idx" ON "_projects_v" USING btree ("version_created_at");
  CREATE INDEX "_projects_v_version_version__status_idx" ON "_projects_v" USING btree ("version__status");
  CREATE INDEX "_projects_v_created_at_idx" ON "_projects_v" USING btree ("created_at");
  CREATE INDEX "_projects_v_updated_at_idx" ON "_projects_v" USING btree ("updated_at");
  CREATE INDEX "_projects_v_snapshot_idx" ON "_projects_v" USING btree ("snapshot");
  CREATE INDEX "_projects_v_published_locale_idx" ON "_projects_v" USING btree ("published_locale");
  CREATE INDEX "_projects_v_latest_idx" ON "_projects_v" USING btree ("latest");
  CREATE UNIQUE INDEX "_projects_v_locales_locale_parent_id_unique" ON "_projects_v_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "news_tags_order_idx" ON "news_tags" USING btree ("order");
  CREATE INDEX "news_tags_parent_idx" ON "news_tags" USING btree ("parent_id");
  CREATE UNIQUE INDEX "news_slug_idx" ON "news" USING btree ("slug");
  CREATE INDEX "news_thumbnail_idx" ON "news" USING btree ("thumbnail_id");
  CREATE INDEX "news_updated_at_idx" ON "news" USING btree ("updated_at");
  CREATE INDEX "news_created_at_idx" ON "news" USING btree ("created_at");
  CREATE INDEX "news__status_idx" ON "news" USING btree ("_status");
  CREATE INDEX "_news_v_version_tags_order_idx" ON "_news_v_version_tags" USING btree ("order");
  CREATE INDEX "_news_v_version_tags_parent_idx" ON "_news_v_version_tags" USING btree ("parent_id");
  CREATE INDEX "_news_v_parent_idx" ON "_news_v" USING btree ("parent_id");
  CREATE INDEX "_news_v_version_version_slug_idx" ON "_news_v" USING btree ("version_slug");
  CREATE INDEX "_news_v_version_version_thumbnail_idx" ON "_news_v" USING btree ("version_thumbnail_id");
  CREATE INDEX "_news_v_version_version_updated_at_idx" ON "_news_v" USING btree ("version_updated_at");
  CREATE INDEX "_news_v_version_version_created_at_idx" ON "_news_v" USING btree ("version_created_at");
  CREATE INDEX "_news_v_version_version__status_idx" ON "_news_v" USING btree ("version__status");
  CREATE INDEX "_news_v_created_at_idx" ON "_news_v" USING btree ("created_at");
  CREATE INDEX "_news_v_updated_at_idx" ON "_news_v" USING btree ("updated_at");
  CREATE INDEX "_news_v_snapshot_idx" ON "_news_v" USING btree ("snapshot");
  CREATE INDEX "_news_v_published_locale_idx" ON "_news_v" USING btree ("published_locale");
  CREATE INDEX "_news_v_latest_idx" ON "_news_v" USING btree ("latest");
  CREATE UNIQUE INDEX "products_slug_idx" ON "products" USING btree ("slug");
  CREATE INDEX "products_thumbnail_idx" ON "products" USING btree ("thumbnail_id");
  CREATE INDEX "products_updated_at_idx" ON "products" USING btree ("updated_at");
  CREATE INDEX "products_created_at_idx" ON "products" USING btree ("created_at");
  CREATE INDEX "products__status_idx" ON "products" USING btree ("_status");
  CREATE UNIQUE INDEX "products_locales_locale_parent_id_unique" ON "products_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "_products_v_parent_idx" ON "_products_v" USING btree ("parent_id");
  CREATE INDEX "_products_v_version_version_slug_idx" ON "_products_v" USING btree ("version_slug");
  CREATE INDEX "_products_v_version_version_thumbnail_idx" ON "_products_v" USING btree ("version_thumbnail_id");
  CREATE INDEX "_products_v_version_version_updated_at_idx" ON "_products_v" USING btree ("version_updated_at");
  CREATE INDEX "_products_v_version_version_created_at_idx" ON "_products_v" USING btree ("version_created_at");
  CREATE INDEX "_products_v_version_version__status_idx" ON "_products_v" USING btree ("version__status");
  CREATE INDEX "_products_v_created_at_idx" ON "_products_v" USING btree ("created_at");
  CREATE INDEX "_products_v_updated_at_idx" ON "_products_v" USING btree ("updated_at");
  CREATE INDEX "_products_v_snapshot_idx" ON "_products_v" USING btree ("snapshot");
  CREATE INDEX "_products_v_published_locale_idx" ON "_products_v" USING btree ("published_locale");
  CREATE INDEX "_products_v_latest_idx" ON "_products_v" USING btree ("latest");
  CREATE UNIQUE INDEX "_products_v_locales_locale_parent_id_unique" ON "_products_v_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "partners_logo_idx" ON "partners" USING btree ("logo_id");
  CREATE INDEX "partners_updated_at_idx" ON "partners" USING btree ("updated_at");
  CREATE INDEX "partners_created_at_idx" ON "partners" USING btree ("created_at");
  CREATE UNIQUE INDEX "services_slug_idx" ON "services" USING btree ("slug");
  CREATE INDEX "services_icon_idx" ON "services" USING btree ("icon_id");
  CREATE INDEX "services_thumbnail_idx" ON "services" USING btree ("thumbnail_id");
  CREATE INDEX "services_updated_at_idx" ON "services" USING btree ("updated_at");
  CREATE INDEX "services_created_at_idx" ON "services" USING btree ("created_at");
  CREATE INDEX "services__status_idx" ON "services" USING btree ("_status");
  CREATE INDEX "_services_v_parent_idx" ON "_services_v" USING btree ("parent_id");
  CREATE INDEX "_services_v_version_version_slug_idx" ON "_services_v" USING btree ("version_slug");
  CREATE INDEX "_services_v_version_version_icon_idx" ON "_services_v" USING btree ("version_icon_id");
  CREATE INDEX "_services_v_version_version_thumbnail_idx" ON "_services_v" USING btree ("version_thumbnail_id");
  CREATE INDEX "_services_v_version_version_updated_at_idx" ON "_services_v" USING btree ("version_updated_at");
  CREATE INDEX "_services_v_version_version_created_at_idx" ON "_services_v" USING btree ("version_created_at");
  CREATE INDEX "_services_v_version_version__status_idx" ON "_services_v" USING btree ("version__status");
  CREATE INDEX "_services_v_created_at_idx" ON "_services_v" USING btree ("created_at");
  CREATE INDEX "_services_v_updated_at_idx" ON "_services_v" USING btree ("updated_at");
  CREATE INDEX "_services_v_snapshot_idx" ON "_services_v" USING btree ("snapshot");
  CREATE INDEX "_services_v_published_locale_idx" ON "_services_v" USING btree ("published_locale");
  CREATE INDEX "_services_v_latest_idx" ON "_services_v" USING btree ("latest");
  CREATE UNIQUE INDEX "payload_kv_key_idx" ON "payload_kv" USING btree ("key");
  CREATE INDEX "payload_locked_documents_global_slug_idx" ON "payload_locked_documents" USING btree ("global_slug");
  CREATE INDEX "payload_locked_documents_updated_at_idx" ON "payload_locked_documents" USING btree ("updated_at");
  CREATE INDEX "payload_locked_documents_created_at_idx" ON "payload_locked_documents" USING btree ("created_at");
  CREATE INDEX "payload_locked_documents_rels_order_idx" ON "payload_locked_documents_rels" USING btree ("order");
  CREATE INDEX "payload_locked_documents_rels_parent_idx" ON "payload_locked_documents_rels" USING btree ("parent_id");
  CREATE INDEX "payload_locked_documents_rels_path_idx" ON "payload_locked_documents_rels" USING btree ("path");
  CREATE INDEX "payload_locked_documents_rels_users_id_idx" ON "payload_locked_documents_rels" USING btree ("users_id");
  CREATE INDEX "payload_locked_documents_rels_media_id_idx" ON "payload_locked_documents_rels" USING btree ("media_id");
  CREATE INDEX "payload_locked_documents_rels_pages_id_idx" ON "payload_locked_documents_rels" USING btree ("pages_id");
  CREATE INDEX "payload_locked_documents_rels_projects_id_idx" ON "payload_locked_documents_rels" USING btree ("projects_id");
  CREATE INDEX "payload_locked_documents_rels_news_id_idx" ON "payload_locked_documents_rels" USING btree ("news_id");
  CREATE INDEX "payload_locked_documents_rels_products_id_idx" ON "payload_locked_documents_rels" USING btree ("products_id");
  CREATE INDEX "payload_locked_documents_rels_partners_id_idx" ON "payload_locked_documents_rels" USING btree ("partners_id");
  CREATE INDEX "payload_locked_documents_rels_services_id_idx" ON "payload_locked_documents_rels" USING btree ("services_id");
  CREATE INDEX "payload_preferences_key_idx" ON "payload_preferences" USING btree ("key");
  CREATE INDEX "payload_preferences_updated_at_idx" ON "payload_preferences" USING btree ("updated_at");
  CREATE INDEX "payload_preferences_created_at_idx" ON "payload_preferences" USING btree ("created_at");
  CREATE INDEX "payload_preferences_rels_order_idx" ON "payload_preferences_rels" USING btree ("order");
  CREATE INDEX "payload_preferences_rels_parent_idx" ON "payload_preferences_rels" USING btree ("parent_id");
  CREATE INDEX "payload_preferences_rels_path_idx" ON "payload_preferences_rels" USING btree ("path");
  CREATE INDEX "payload_preferences_rels_users_id_idx" ON "payload_preferences_rels" USING btree ("users_id");
  CREATE INDEX "payload_migrations_updated_at_idx" ON "payload_migrations" USING btree ("updated_at");
  CREATE INDEX "payload_migrations_created_at_idx" ON "payload_migrations" USING btree ("created_at");
  CREATE INDEX "home_page_blocks_hero_trust_partners_order_idx" ON "home_page_blocks_hero_trust_partners" USING btree ("_order");
  CREATE INDEX "home_page_blocks_hero_trust_partners_parent_id_idx" ON "home_page_blocks_hero_trust_partners" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_hero_trust_partners_logo_idx" ON "home_page_blocks_hero_trust_partners" USING btree ("logo_id");
  CREATE INDEX "home_page_blocks_hero_stats_order_idx" ON "home_page_blocks_hero_stats" USING btree ("_order");
  CREATE INDEX "home_page_blocks_hero_stats_parent_id_idx" ON "home_page_blocks_hero_stats" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "home_page_blocks_hero_stats_locales_locale_parent_id_unique" ON "home_page_blocks_hero_stats_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_hero_order_idx" ON "home_page_blocks_hero" USING btree ("_order");
  CREATE INDEX "home_page_blocks_hero_parent_id_idx" ON "home_page_blocks_hero" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_hero_path_idx" ON "home_page_blocks_hero" USING btree ("_path");
  CREATE INDEX "home_page_blocks_hero_hero_image_idx" ON "home_page_blocks_hero" USING btree ("hero_image_id");
  CREATE INDEX "home_page_blocks_hero_background_image_idx" ON "home_page_blocks_hero" USING btree ("background_image_id");
  CREATE INDEX "home_page_blocks_hero_background_video_idx" ON "home_page_blocks_hero" USING btree ("background_video_id");
  CREATE UNIQUE INDEX "home_page_blocks_hero_locales_locale_parent_id_unique" ON "home_page_blocks_hero_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_services_cards_order_idx" ON "home_page_blocks_services_cards" USING btree ("_order");
  CREATE INDEX "home_page_blocks_services_cards_parent_id_idx" ON "home_page_blocks_services_cards" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_services_cards_image_idx" ON "home_page_blocks_services_cards" USING btree ("image_id");
  CREATE UNIQUE INDEX "home_page_blocks_services_cards_locales_locale_parent_id_uni" ON "home_page_blocks_services_cards_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_services_order_idx" ON "home_page_blocks_services" USING btree ("_order");
  CREATE INDEX "home_page_blocks_services_parent_id_idx" ON "home_page_blocks_services" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_services_path_idx" ON "home_page_blocks_services" USING btree ("_path");
  CREATE UNIQUE INDEX "home_page_blocks_services_locales_locale_parent_id_unique" ON "home_page_blocks_services_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_news_order_idx" ON "home_page_blocks_news" USING btree ("_order");
  CREATE INDEX "home_page_blocks_news_parent_id_idx" ON "home_page_blocks_news" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_news_path_idx" ON "home_page_blocks_news" USING btree ("_path");
  CREATE INDEX "home_page_blocks_news_featured_news_idx" ON "home_page_blocks_news" USING btree ("featured_news_id");
  CREATE UNIQUE INDEX "home_page_blocks_news_locales_locale_parent_id_unique" ON "home_page_blocks_news_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_featured_projects_tabs_order_idx" ON "home_page_blocks_featured_projects_tabs" USING btree ("_order");
  CREATE INDEX "home_page_blocks_featured_projects_tabs_parent_id_idx" ON "home_page_blocks_featured_projects_tabs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "home_page_blocks_featured_projects_tabs_locales_locale_paren" ON "home_page_blocks_featured_projects_tabs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_featured_projects_order_idx" ON "home_page_blocks_featured_projects" USING btree ("_order");
  CREATE INDEX "home_page_blocks_featured_projects_parent_id_idx" ON "home_page_blocks_featured_projects" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_featured_projects_path_idx" ON "home_page_blocks_featured_projects" USING btree ("_path");
  CREATE UNIQUE INDEX "home_page_blocks_featured_projects_locales_locale_parent_id_" ON "home_page_blocks_featured_projects_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_partners_images_order_idx" ON "home_page_blocks_partners_images" USING btree ("_order");
  CREATE INDEX "home_page_blocks_partners_images_parent_id_idx" ON "home_page_blocks_partners_images" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_partners_images_image_idx" ON "home_page_blocks_partners_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "home_page_blocks_partners_images_locales_locale_parent_id_un" ON "home_page_blocks_partners_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_partners_order_idx" ON "home_page_blocks_partners" USING btree ("_order");
  CREATE INDEX "home_page_blocks_partners_parent_id_idx" ON "home_page_blocks_partners" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_partners_path_idx" ON "home_page_blocks_partners" USING btree ("_path");
  CREATE UNIQUE INDEX "home_page_blocks_partners_locales_locale_parent_id_unique" ON "home_page_blocks_partners_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_products_order_idx" ON "home_page_blocks_products" USING btree ("_order");
  CREATE INDEX "home_page_blocks_products_parent_id_idx" ON "home_page_blocks_products" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_products_path_idx" ON "home_page_blocks_products" USING btree ("_path");
  CREATE UNIQUE INDEX "home_page_blocks_products_locales_locale_parent_id_unique" ON "home_page_blocks_products_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_cta_banner_order_idx" ON "home_page_blocks_cta_banner" USING btree ("_order");
  CREATE INDEX "home_page_blocks_cta_banner_parent_id_idx" ON "home_page_blocks_cta_banner" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_cta_banner_path_idx" ON "home_page_blocks_cta_banner" USING btree ("_path");
  CREATE UNIQUE INDEX "home_page_blocks_cta_banner_locales_locale_parent_id_unique" ON "home_page_blocks_cta_banner_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_brand_logos_fallback_brands_order_idx" ON "home_page_blocks_brand_logos_fallback_brands" USING btree ("_order");
  CREATE INDEX "home_page_blocks_brand_logos_fallback_brands_parent_id_idx" ON "home_page_blocks_brand_logos_fallback_brands" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_brand_logos_order_idx" ON "home_page_blocks_brand_logos" USING btree ("_order");
  CREATE INDEX "home_page_blocks_brand_logos_parent_id_idx" ON "home_page_blocks_brand_logos" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_brand_logos_path_idx" ON "home_page_blocks_brand_logos" USING btree ("_path");
  CREATE UNIQUE INDEX "home_page_blocks_brand_logos_locales_locale_parent_id_unique" ON "home_page_blocks_brand_logos_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_rels_order_idx" ON "home_page_rels" USING btree ("order");
  CREATE INDEX "home_page_rels_parent_idx" ON "home_page_rels" USING btree ("parent_id");
  CREATE INDEX "home_page_rels_path_idx" ON "home_page_rels" USING btree ("path");
  CREATE INDEX "home_page_rels_news_id_idx" ON "home_page_rels" USING btree ("news_id");
  CREATE INDEX "home_page_rels_projects_id_idx" ON "home_page_rels" USING btree ("projects_id");
  CREATE INDEX "home_page_rels_products_id_idx" ON "home_page_rels" USING btree ("products_id");
  CREATE INDEX "home_page_rels_partners_id_idx" ON "home_page_rels" USING btree ("partners_id");
  CREATE INDEX "site_settings_header_nav_items_children_order_idx" ON "site_settings_header_nav_items_children" USING btree ("_order");
  CREATE INDEX "site_settings_header_nav_items_children_parent_id_idx" ON "site_settings_header_nav_items_children" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "site_settings_header_nav_items_children_locales_locale_paren" ON "site_settings_header_nav_items_children_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "site_settings_header_nav_items_order_idx" ON "site_settings_header_nav_items" USING btree ("_order");
  CREATE INDEX "site_settings_header_nav_items_parent_id_idx" ON "site_settings_header_nav_items" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "site_settings_header_nav_items_locales_locale_parent_id_uniq" ON "site_settings_header_nav_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "site_settings_footer_columns_links_order_idx" ON "site_settings_footer_columns_links" USING btree ("_order");
  CREATE INDEX "site_settings_footer_columns_links_parent_id_idx" ON "site_settings_footer_columns_links" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "site_settings_footer_columns_links_locales_locale_parent_id_" ON "site_settings_footer_columns_links_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "site_settings_footer_columns_order_idx" ON "site_settings_footer_columns" USING btree ("_order");
  CREATE INDEX "site_settings_footer_columns_parent_id_idx" ON "site_settings_footer_columns" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "site_settings_footer_columns_locales_locale_parent_id_unique" ON "site_settings_footer_columns_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "site_settings_header_header_logo_image_idx" ON "site_settings" USING btree ("header_logo_image_id");
  CREATE INDEX "site_settings_footer_footer_logo_image_idx" ON "site_settings" USING btree ("footer_logo_image_id");
  CREATE UNIQUE INDEX "site_settings_locales_locale_parent_id_unique" ON "site_settings_locales" USING btree ("_locale","_parent_id");`)
}

export async function down({ db, payload, req }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   DROP TABLE "users_sessions" CASCADE;
  DROP TABLE "users" CASCADE;
  DROP TABLE "media" CASCADE;
  DROP TABLE "pages_blocks_hero_trust_partners" CASCADE;
  DROP TABLE "pages_blocks_hero_stats" CASCADE;
  DROP TABLE "pages_blocks_hero_stats_locales" CASCADE;
  DROP TABLE "pages_blocks_hero" CASCADE;
  DROP TABLE "pages_blocks_hero_locales" CASCADE;
  DROP TABLE "pages_blocks_hero_banner" CASCADE;
  DROP TABLE "pages_blocks_welcome_intro_images" CASCADE;
  DROP TABLE "pages_blocks_welcome_intro_images_locales" CASCADE;
  DROP TABLE "pages_blocks_welcome_intro" CASCADE;
  DROP TABLE "pages_blocks_welcome_intro_locales" CASCADE;
  DROP TABLE "pages_blocks_page_hero_breadcrumbs" CASCADE;
  DROP TABLE "pages_blocks_page_hero_breadcrumbs_locales" CASCADE;
  DROP TABLE "pages_blocks_page_hero" CASCADE;
  DROP TABLE "pages_blocks_page_hero_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sidebar_groups_items" CASCADE;
  DROP TABLE "pages_blocks_about_content_sidebar_groups_items_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sidebar_groups" CASCADE;
  DROP TABLE "pages_blocks_about_content_sidebar_groups_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_images" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_images_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_tabs_files" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_tabs_files_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_tabs" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_tabs_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_items" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_items_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content" CASCADE;
  DROP TABLE "pages_blocks_content_intro_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_content_intro_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_content_intro_images" CASCADE;
  DROP TABLE "pages_blocks_content_intro_images_locales" CASCADE;
  DROP TABLE "pages_blocks_content_intro" CASCADE;
  DROP TABLE "pages_blocks_content_intro_locales" CASCADE;
  DROP TABLE "pages_blocks_feature_cards_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_feature_cards_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_feature_cards_items" CASCADE;
  DROP TABLE "pages_blocks_feature_cards_items_locales" CASCADE;
  DROP TABLE "pages_blocks_feature_cards" CASCADE;
  DROP TABLE "pages_blocks_feature_cards_locales" CASCADE;
  DROP TABLE "pages_blocks_image_gallery_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_image_gallery_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_image_gallery_images" CASCADE;
  DROP TABLE "pages_blocks_image_gallery_images_locales" CASCADE;
  DROP TABLE "pages_blocks_image_gallery" CASCADE;
  DROP TABLE "pages_blocks_image_gallery_locales" CASCADE;
  DROP TABLE "pages_blocks_info_grid_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_info_grid_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_info_grid_items" CASCADE;
  DROP TABLE "pages_blocks_info_grid_items_locales" CASCADE;
  DROP TABLE "pages_blocks_info_grid" CASCADE;
  DROP TABLE "pages_blocks_info_grid_locales" CASCADE;
  DROP TABLE "pages_blocks_media_text_split_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_media_text_split_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_media_text_split_images" CASCADE;
  DROP TABLE "pages_blocks_media_text_split_images_locales" CASCADE;
  DROP TABLE "pages_blocks_media_text_split" CASCADE;
  DROP TABLE "pages_blocks_media_text_split_locales" CASCADE;
  DROP TABLE "pages_blocks_document_list_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_document_list_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_document_list_items" CASCADE;
  DROP TABLE "pages_blocks_document_list_items_locales" CASCADE;
  DROP TABLE "pages_blocks_document_list" CASCADE;
  DROP TABLE "pages_blocks_document_list_locales" CASCADE;
  DROP TABLE "pages_blocks_projects_listing_parent_categories" CASCADE;
  DROP TABLE "pages_blocks_projects_listing_parent_categories_locales" CASCADE;
  DROP TABLE "pages_blocks_projects_listing_industry_filters" CASCADE;
  DROP TABLE "pages_blocks_projects_listing_industry_filters_locales" CASCADE;
  DROP TABLE "pages_blocks_projects_listing" CASCADE;
  DROP TABLE "pages_blocks_services_cards" CASCADE;
  DROP TABLE "pages_blocks_services_cards_locales" CASCADE;
  DROP TABLE "pages_blocks_services" CASCADE;
  DROP TABLE "pages_blocks_services_locales" CASCADE;
  DROP TABLE "pages_blocks_news" CASCADE;
  DROP TABLE "pages_blocks_news_locales" CASCADE;
  DROP TABLE "pages_blocks_featured_projects_tabs" CASCADE;
  DROP TABLE "pages_blocks_featured_projects_tabs_locales" CASCADE;
  DROP TABLE "pages_blocks_featured_projects" CASCADE;
  DROP TABLE "pages_blocks_featured_projects_locales" CASCADE;
  DROP TABLE "pages_blocks_partners_images" CASCADE;
  DROP TABLE "pages_blocks_partners_images_locales" CASCADE;
  DROP TABLE "pages_blocks_partners" CASCADE;
  DROP TABLE "pages_blocks_partners_locales" CASCADE;
  DROP TABLE "pages_blocks_products" CASCADE;
  DROP TABLE "pages_blocks_products_locales" CASCADE;
  DROP TABLE "pages_blocks_cta_banner" CASCADE;
  DROP TABLE "pages_blocks_cta_banner_locales" CASCADE;
  DROP TABLE "pages_blocks_brand_logos_fallback_brands" CASCADE;
  DROP TABLE "pages_blocks_brand_logos" CASCADE;
  DROP TABLE "pages_blocks_brand_logos_locales" CASCADE;
  DROP TABLE "pages" CASCADE;
  DROP TABLE "pages_locales" CASCADE;
  DROP TABLE "pages_rels" CASCADE;
  DROP TABLE "projects_customer_reasons" CASCADE;
  DROP TABLE "projects_customer_reasons_locales" CASCADE;
  DROP TABLE "projects_result_items" CASCADE;
  DROP TABLE "projects_result_items_locales" CASCADE;
  DROP TABLE "projects_images" CASCADE;
  DROP TABLE "projects" CASCADE;
  DROP TABLE "projects_locales" CASCADE;
  DROP TABLE "_projects_v_version_customer_reasons" CASCADE;
  DROP TABLE "_projects_v_version_customer_reasons_locales" CASCADE;
  DROP TABLE "_projects_v_version_result_items" CASCADE;
  DROP TABLE "_projects_v_version_result_items_locales" CASCADE;
  DROP TABLE "_projects_v_version_images" CASCADE;
  DROP TABLE "_projects_v" CASCADE;
  DROP TABLE "_projects_v_locales" CASCADE;
  DROP TABLE "news_tags" CASCADE;
  DROP TABLE "news" CASCADE;
  DROP TABLE "_news_v_version_tags" CASCADE;
  DROP TABLE "_news_v" CASCADE;
  DROP TABLE "products" CASCADE;
  DROP TABLE "products_locales" CASCADE;
  DROP TABLE "_products_v" CASCADE;
  DROP TABLE "_products_v_locales" CASCADE;
  DROP TABLE "partners" CASCADE;
  DROP TABLE "services" CASCADE;
  DROP TABLE "_services_v" CASCADE;
  DROP TABLE "payload_kv" CASCADE;
  DROP TABLE "payload_locked_documents" CASCADE;
  DROP TABLE "payload_locked_documents_rels" CASCADE;
  DROP TABLE "payload_preferences" CASCADE;
  DROP TABLE "payload_preferences_rels" CASCADE;
  DROP TABLE "payload_migrations" CASCADE;
  DROP TABLE "home_page_blocks_hero_trust_partners" CASCADE;
  DROP TABLE "home_page_blocks_hero_stats" CASCADE;
  DROP TABLE "home_page_blocks_hero_stats_locales" CASCADE;
  DROP TABLE "home_page_blocks_hero" CASCADE;
  DROP TABLE "home_page_blocks_hero_locales" CASCADE;
  DROP TABLE "home_page_blocks_services_cards" CASCADE;
  DROP TABLE "home_page_blocks_services_cards_locales" CASCADE;
  DROP TABLE "home_page_blocks_services" CASCADE;
  DROP TABLE "home_page_blocks_services_locales" CASCADE;
  DROP TABLE "home_page_blocks_news" CASCADE;
  DROP TABLE "home_page_blocks_news_locales" CASCADE;
  DROP TABLE "home_page_blocks_featured_projects_tabs" CASCADE;
  DROP TABLE "home_page_blocks_featured_projects_tabs_locales" CASCADE;
  DROP TABLE "home_page_blocks_featured_projects" CASCADE;
  DROP TABLE "home_page_blocks_featured_projects_locales" CASCADE;
  DROP TABLE "home_page_blocks_partners_images" CASCADE;
  DROP TABLE "home_page_blocks_partners_images_locales" CASCADE;
  DROP TABLE "home_page_blocks_partners" CASCADE;
  DROP TABLE "home_page_blocks_partners_locales" CASCADE;
  DROP TABLE "home_page_blocks_products" CASCADE;
  DROP TABLE "home_page_blocks_products_locales" CASCADE;
  DROP TABLE "home_page_blocks_cta_banner" CASCADE;
  DROP TABLE "home_page_blocks_cta_banner_locales" CASCADE;
  DROP TABLE "home_page_blocks_brand_logos_fallback_brands" CASCADE;
  DROP TABLE "home_page_blocks_brand_logos" CASCADE;
  DROP TABLE "home_page_blocks_brand_logos_locales" CASCADE;
  DROP TABLE "home_page" CASCADE;
  DROP TABLE "home_page_rels" CASCADE;
  DROP TABLE "site_settings_header_nav_items_children" CASCADE;
  DROP TABLE "site_settings_header_nav_items_children_locales" CASCADE;
  DROP TABLE "site_settings_header_nav_items" CASCADE;
  DROP TABLE "site_settings_header_nav_items_locales" CASCADE;
  DROP TABLE "site_settings_footer_columns_links" CASCADE;
  DROP TABLE "site_settings_footer_columns_links_locales" CASCADE;
  DROP TABLE "site_settings_footer_columns" CASCADE;
  DROP TABLE "site_settings_footer_columns_locales" CASCADE;
  DROP TABLE "site_settings" CASCADE;
  DROP TABLE "site_settings_locales" CASCADE;
  DROP TYPE "public"."_locales";
  DROP TYPE "public"."enum_users_role";
  DROP TYPE "public"."enum_pages_blocks_hero_variant";
  DROP TYPE "public"."enum_pages_blocks_hero_background_type";
  DROP TYPE "public"."enum_pages_blocks_hero_banner_background_type";
  DROP TYPE "public"."enum_pages_blocks_page_hero_height";
  DROP TYPE "public"."enum_pages_blocks_about_content_sections_variant";
  DROP TYPE "public"."enum_pages_blocks_about_content_sections_columns";
  DROP TYPE "public"."enum_pages_blocks_about_content_sections_image_position";
  DROP TYPE "public"."enum_pages_blocks_content_intro_image_position";
  DROP TYPE "public"."enum_pages_blocks_feature_cards_columns";
  DROP TYPE "public"."enum_pages_blocks_image_gallery_columns";
  DROP TYPE "public"."enum_pages_blocks_info_grid_columns";
  DROP TYPE "public"."enum_pages_blocks_media_text_split_image_position";
  DROP TYPE "public"."enum_pages_blocks_projects_listing_parent_categories_value";
  DROP TYPE "public"."enum_pages_blocks_projects_listing_source_mode";
  DROP TYPE "public"."enum_pages_blocks_services_variant";
  DROP TYPE "public"."enum_pages_blocks_news_display_mode";
  DROP TYPE "public"."enum_pages_blocks_news_source_mode";
  DROP TYPE "public"."enum_pages_blocks_featured_projects_tabs_value";
  DROP TYPE "public"."enum_pages_blocks_featured_projects_variant";
  DROP TYPE "public"."enum_pages_blocks_featured_projects_text_theme";
  DROP TYPE "public"."enum_pages_blocks_featured_projects_source_mode";
  DROP TYPE "public"."enum_pages_blocks_products_source_mode";
  DROP TYPE "public"."enum_pages_blocks_brand_logos_source_mode";
  DROP TYPE "public"."enum_pages_template";
  DROP TYPE "public"."enum_projects_category";
  DROP TYPE "public"."enum_projects_industry";
  DROP TYPE "public"."enum_projects_featured_type";
  DROP TYPE "public"."enum_projects_status";
  DROP TYPE "public"."enum__projects_v_version_category";
  DROP TYPE "public"."enum__projects_v_version_industry";
  DROP TYPE "public"."enum__projects_v_version_featured_type";
  DROP TYPE "public"."enum__projects_v_version_status";
  DROP TYPE "public"."enum__projects_v_published_locale";
  DROP TYPE "public"."enum_news_tags";
  DROP TYPE "public"."enum_news_status";
  DROP TYPE "public"."enum__news_v_version_tags";
  DROP TYPE "public"."enum__news_v_version_status";
  DROP TYPE "public"."enum__news_v_published_locale";
  DROP TYPE "public"."enum_products_category";
  DROP TYPE "public"."enum_products_status";
  DROP TYPE "public"."enum__products_v_version_category";
  DROP TYPE "public"."enum__products_v_version_status";
  DROP TYPE "public"."enum__products_v_published_locale";
  DROP TYPE "public"."enum_services_category";
  DROP TYPE "public"."enum_services_status";
  DROP TYPE "public"."enum__services_v_version_category";
  DROP TYPE "public"."enum__services_v_version_status";
  DROP TYPE "public"."enum__services_v_published_locale";
  DROP TYPE "public"."enum_home_page_blocks_hero_variant";
  DROP TYPE "public"."enum_home_page_blocks_hero_background_type";
  DROP TYPE "public"."enum_home_page_blocks_services_variant";
  DROP TYPE "public"."enum_home_page_blocks_news_display_mode";
  DROP TYPE "public"."enum_home_page_blocks_news_source_mode";
  DROP TYPE "public"."enum_home_page_blocks_featured_projects_tabs_value";
  DROP TYPE "public"."enum_home_page_blocks_featured_projects_variant";
  DROP TYPE "public"."enum_home_page_blocks_featured_projects_text_theme";
  DROP TYPE "public"."enum_home_page_blocks_featured_projects_source_mode";
  DROP TYPE "public"."enum_home_page_blocks_products_source_mode";
  DROP TYPE "public"."enum_home_page_blocks_brand_logos_source_mode";`)
}
