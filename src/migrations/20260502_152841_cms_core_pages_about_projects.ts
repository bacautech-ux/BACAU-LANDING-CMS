import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   CREATE TYPE "public"."enum_pages_blocks_projects_listing_parent_categories_value" AS ENUM('electrical-automation', 'digitalization', 'industrial-services', 'measurement');
  CREATE TYPE "public"."enum_pages_blocks_projects_listing_source_mode" AS ENUM('latest', 'manual');
  CREATE TABLE "pages_blocks_page_hero" (
  	"_order" integer NOT NULL,
  	"_parent_id" integer NOT NULL,
  	"_path" text NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
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
  	"id" varchar PRIMARY KEY NOT NULL,
  	"href" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sidebar_groups_items_locales" (
  	"label" varchar NOT NULL,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sidebar_groups" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"title_href" varchar
  );
  
  CREATE TABLE "pages_blocks_about_content_sidebar_groups_locales" (
  	"title" varchar NOT NULL,
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
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_cards" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"icon" varchar
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_cards_locales" (
  	"title" varchar NOT NULL,
  	"description" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sections" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
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
  
  ALTER TABLE "projects" ADD COLUMN "detail_hero_image_id" integer;
  ALTER TABLE "projects" ADD COLUMN "intro_image_id" integer;
  ALTER TABLE "_projects_v" ADD COLUMN "version_detail_hero_image_id" integer;
  ALTER TABLE "_projects_v" ADD COLUMN "version_intro_image_id" integer;
  ALTER TABLE "pages_blocks_page_hero" ADD CONSTRAINT "pages_blocks_page_hero_background_image_id_media_id_fk" FOREIGN KEY ("background_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_page_hero" ADD CONSTRAINT "pages_blocks_page_hero_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_page_hero_locales" ADD CONSTRAINT "pages_blocks_page_hero_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_page_hero"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_items" ADD CONSTRAINT "pages_blocks_about_content_sidebar_groups_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sidebar_groups"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_items_locales" ADD CONSTRAINT "pages_blocks_about_content_sidebar_groups_items_locales_p_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sidebar_groups_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups" ADD CONSTRAINT "pages_blocks_about_content_sidebar_groups_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_locales" ADD CONSTRAINT "pages_blocks_about_content_sidebar_groups_locales_parent__fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sidebar_groups"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_images" ADD CONSTRAINT "pages_blocks_about_content_sections_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_images" ADD CONSTRAINT "pages_blocks_about_content_sections_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_images_locales" ADD CONSTRAINT "pages_blocks_about_content_sections_images_locales_parent_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_cards" ADD CONSTRAINT "pages_blocks_about_content_sections_cards_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_cards_locales" ADD CONSTRAINT "pages_blocks_about_content_sections_cards_locales_parent__fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections_cards"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections" ADD CONSTRAINT "pages_blocks_about_content_sections_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_locales" ADD CONSTRAINT "pages_blocks_about_content_sections_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content" ADD CONSTRAINT "pages_blocks_about_content_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_projects_listing_parent_categories" ADD CONSTRAINT "pages_blocks_projects_listing_parent_categories_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_projects_listing"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_projects_listing_parent_categories_locales" ADD CONSTRAINT "pages_blocks_projects_listing_parent_categories_locales_p_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_projects_listing_parent_categories"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_projects_listing_industry_filters" ADD CONSTRAINT "pages_blocks_projects_listing_industry_filters_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_projects_listing"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_projects_listing_industry_filters_locales" ADD CONSTRAINT "pages_blocks_projects_listing_industry_filters_locales_pa_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_projects_listing_industry_filters"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_projects_listing" ADD CONSTRAINT "pages_blocks_projects_listing_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "projects_customer_reasons" ADD CONSTRAINT "projects_customer_reasons_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "projects_customer_reasons_locales" ADD CONSTRAINT "projects_customer_reasons_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."projects_customer_reasons"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "projects_result_items" ADD CONSTRAINT "projects_result_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "projects_result_items_locales" ADD CONSTRAINT "projects_result_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."projects_result_items"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_projects_v_version_customer_reasons" ADD CONSTRAINT "_projects_v_version_customer_reasons_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_projects_v"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_projects_v_version_customer_reasons_locales" ADD CONSTRAINT "_projects_v_version_customer_reasons_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_projects_v_version_customer_reasons"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_projects_v_version_result_items" ADD CONSTRAINT "_projects_v_version_result_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_projects_v"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_projects_v_version_result_items_locales" ADD CONSTRAINT "_projects_v_version_result_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_projects_v_version_result_items"("id") ON DELETE cascade ON UPDATE no action;
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
  CREATE INDEX "pages_blocks_about_content_sections_images_order_idx" ON "pages_blocks_about_content_sections_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sections_images_parent_id_idx" ON "pages_blocks_about_content_sections_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_images_image_idx" ON "pages_blocks_about_content_sections_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sections_images_locales_locale_pa" ON "pages_blocks_about_content_sections_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_cards_order_idx" ON "pages_blocks_about_content_sections_cards" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sections_cards_parent_id_idx" ON "pages_blocks_about_content_sections_cards" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sections_cards_locales_locale_par" ON "pages_blocks_about_content_sections_cards_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_order_idx" ON "pages_blocks_about_content_sections" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sections_parent_id_idx" ON "pages_blocks_about_content_sections" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sections_locales_locale_parent_id" ON "pages_blocks_about_content_sections_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_order_idx" ON "pages_blocks_about_content" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_parent_id_idx" ON "pages_blocks_about_content" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_about_content_path_idx" ON "pages_blocks_about_content" USING btree ("_path");
  CREATE INDEX "pages_blocks_projects_listing_parent_categories_order_idx" ON "pages_blocks_projects_listing_parent_categories" USING btree ("_order");
  CREATE INDEX "pages_blocks_projects_listing_parent_categories_parent_id_idx" ON "pages_blocks_projects_listing_parent_categories" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_projects_listing_parent_categories_locales_loca" ON "pages_blocks_projects_listing_parent_categories_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_projects_listing_industry_filters_order_idx" ON "pages_blocks_projects_listing_industry_filters" USING btree ("_order");
  CREATE INDEX "pages_blocks_projects_listing_industry_filters_parent_id_idx" ON "pages_blocks_projects_listing_industry_filters" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_projects_listing_industry_filters_locales_local" ON "pages_blocks_projects_listing_industry_filters_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_projects_listing_order_idx" ON "pages_blocks_projects_listing" USING btree ("_order");
  CREATE INDEX "pages_blocks_projects_listing_parent_id_idx" ON "pages_blocks_projects_listing" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_projects_listing_path_idx" ON "pages_blocks_projects_listing" USING btree ("_path");
  CREATE INDEX "projects_customer_reasons_order_idx" ON "projects_customer_reasons" USING btree ("_order");
  CREATE INDEX "projects_customer_reasons_parent_id_idx" ON "projects_customer_reasons" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "projects_customer_reasons_locales_locale_parent_id_unique" ON "projects_customer_reasons_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "projects_result_items_order_idx" ON "projects_result_items" USING btree ("_order");
  CREATE INDEX "projects_result_items_parent_id_idx" ON "projects_result_items" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "projects_result_items_locales_locale_parent_id_unique" ON "projects_result_items_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "_projects_v_version_customer_reasons_order_idx" ON "_projects_v_version_customer_reasons" USING btree ("_order");
  CREATE INDEX "_projects_v_version_customer_reasons_parent_id_idx" ON "_projects_v_version_customer_reasons" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "_projects_v_version_customer_reasons_locales_locale_parent_i" ON "_projects_v_version_customer_reasons_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "_projects_v_version_result_items_order_idx" ON "_projects_v_version_result_items" USING btree ("_order");
  CREATE INDEX "_projects_v_version_result_items_parent_id_idx" ON "_projects_v_version_result_items" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "_projects_v_version_result_items_locales_locale_parent_id_un" ON "_projects_v_version_result_items_locales" USING btree ("_locale","_parent_id");
  ALTER TABLE "projects" ADD CONSTRAINT "projects_detail_hero_image_id_media_id_fk" FOREIGN KEY ("detail_hero_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "projects" ADD CONSTRAINT "projects_intro_image_id_media_id_fk" FOREIGN KEY ("intro_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_projects_v" ADD CONSTRAINT "_projects_v_version_detail_hero_image_id_media_id_fk" FOREIGN KEY ("version_detail_hero_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "_projects_v" ADD CONSTRAINT "_projects_v_version_intro_image_id_media_id_fk" FOREIGN KEY ("version_intro_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  CREATE INDEX "projects_detail_hero_image_idx" ON "projects" USING btree ("detail_hero_image_id");
  CREATE INDEX "projects_intro_image_idx" ON "projects" USING btree ("intro_image_id");
  CREATE INDEX "_projects_v_version_version_detail_hero_image_idx" ON "_projects_v" USING btree ("version_detail_hero_image_id");
  CREATE INDEX "_projects_v_version_version_intro_image_idx" ON "_projects_v" USING btree ("version_intro_image_id");`)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   ALTER TABLE "pages_blocks_page_hero" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_page_hero_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_items" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_items_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_about_content_sidebar_groups_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_about_content_sections_images" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_about_content_sections_images_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_about_content_sections_cards" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_about_content_sections_cards_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_about_content_sections" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_about_content_sections_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_about_content" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_projects_listing_parent_categories" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_projects_listing_parent_categories_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_projects_listing_industry_filters" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_projects_listing_industry_filters_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_projects_listing" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "projects_customer_reasons" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "projects_customer_reasons_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "projects_result_items" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "projects_result_items_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "_projects_v_version_customer_reasons" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "_projects_v_version_customer_reasons_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "_projects_v_version_result_items" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "_projects_v_version_result_items_locales" DISABLE ROW LEVEL SECURITY;
  DROP TABLE "pages_blocks_page_hero" CASCADE;
  DROP TABLE "pages_blocks_page_hero_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sidebar_groups_items" CASCADE;
  DROP TABLE "pages_blocks_about_content_sidebar_groups_items_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sidebar_groups" CASCADE;
  DROP TABLE "pages_blocks_about_content_sidebar_groups_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_images" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_images_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_cards" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_cards_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content" CASCADE;
  DROP TABLE "pages_blocks_projects_listing_parent_categories" CASCADE;
  DROP TABLE "pages_blocks_projects_listing_parent_categories_locales" CASCADE;
  DROP TABLE "pages_blocks_projects_listing_industry_filters" CASCADE;
  DROP TABLE "pages_blocks_projects_listing_industry_filters_locales" CASCADE;
  DROP TABLE "pages_blocks_projects_listing" CASCADE;
  DROP TABLE "projects_customer_reasons" CASCADE;
  DROP TABLE "projects_customer_reasons_locales" CASCADE;
  DROP TABLE "projects_result_items" CASCADE;
  DROP TABLE "projects_result_items_locales" CASCADE;
  DROP TABLE "_projects_v_version_customer_reasons" CASCADE;
  DROP TABLE "_projects_v_version_customer_reasons_locales" CASCADE;
  DROP TABLE "_projects_v_version_result_items" CASCADE;
  DROP TABLE "_projects_v_version_result_items_locales" CASCADE;
  ALTER TABLE "projects" DROP CONSTRAINT "projects_detail_hero_image_id_media_id_fk";
  
  ALTER TABLE "projects" DROP CONSTRAINT "projects_intro_image_id_media_id_fk";
  
  ALTER TABLE "_projects_v" DROP CONSTRAINT "_projects_v_version_detail_hero_image_id_media_id_fk";
  
  ALTER TABLE "_projects_v" DROP CONSTRAINT "_projects_v_version_intro_image_id_media_id_fk";
  
  DROP INDEX "projects_detail_hero_image_idx";
  DROP INDEX "projects_intro_image_idx";
  DROP INDEX "_projects_v_version_version_detail_hero_image_idx";
  DROP INDEX "_projects_v_version_version_intro_image_idx";
  ALTER TABLE "projects" DROP COLUMN "detail_hero_image_id";
  ALTER TABLE "projects" DROP COLUMN "intro_image_id";
  ALTER TABLE "_projects_v" DROP COLUMN "version_detail_hero_image_id";
  ALTER TABLE "_projects_v" DROP COLUMN "version_intro_image_id";
  DROP TYPE "public"."enum_pages_blocks_projects_listing_parent_categories_value";
  DROP TYPE "public"."enum_pages_blocks_projects_listing_source_mode";`)
}
