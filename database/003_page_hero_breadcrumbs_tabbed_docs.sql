-- Migration: pageHero breadcrumbs + height, tabbedDocuments tabs tables

-- 1. New enum for pageHero height
CREATE TYPE "public"."enum_pages_blocks_page_hero_height" AS ENUM('sm', 'md', 'lg', 'xl');

-- 2. Add height column to existing pages_blocks_page_hero
ALTER TABLE "pages_blocks_page_hero"
  ADD COLUMN IF NOT EXISTS "height" "enum_pages_blocks_page_hero_height" DEFAULT 'md';

-- 3. pageHero breadcrumbs table
CREATE TABLE IF NOT EXISTS "pages_blocks_page_hero_breadcrumbs" (
  "_order" integer NOT NULL,
  "_parent_id" varchar NOT NULL,
  "id" varchar PRIMARY KEY NOT NULL,
  "href" varchar
);

-- 4. pageHero breadcrumbs locales (localized label)
CREATE TABLE IF NOT EXISTS "pages_blocks_page_hero_breadcrumbs_locales" (
  "label" varchar NOT NULL,
  "id" serial PRIMARY KEY NOT NULL,
  "_locale" "_locales" NOT NULL,
  "_parent_id" varchar NOT NULL
);

-- 5. aboutContent sections tabs (tabbedDocuments variant)
CREATE TABLE IF NOT EXISTS "pages_blocks_about_content_sections_tabs" (
  "_order" integer NOT NULL,
  "_parent_id" varchar NOT NULL,
  "id" varchar PRIMARY KEY NOT NULL
);

CREATE TABLE IF NOT EXISTS "pages_blocks_about_content_sections_tabs_locales" (
  "tab_title" varchar,
  "id" serial PRIMARY KEY NOT NULL,
  "_locale" "_locales" NOT NULL,
  "_parent_id" varchar NOT NULL
);

CREATE TABLE IF NOT EXISTS "pages_blocks_about_content_sections_tabs_files" (
  "_order" integer NOT NULL,
  "_parent_id" varchar NOT NULL,
  "id" varchar PRIMARY KEY NOT NULL,
  "file_id" integer,
  "file_u_r_l" varchar
);

CREATE TABLE IF NOT EXISTS "pages_blocks_about_content_sections_tabs_files_locales" (
  "title" varchar,
  "id" serial PRIMARY KEY NOT NULL,
  "_locale" "_locales" NOT NULL,
  "_parent_id" varchar NOT NULL
);

-- 6. Add tabbedDocuments to sections variant enum
ALTER TYPE "enum_pages_blocks_about_content_sections_variant" ADD VALUE IF NOT EXISTS 'tabbedDocuments';

-- 7. Foreign keys
ALTER TABLE "pages_blocks_page_hero_breadcrumbs"
  ADD CONSTRAINT "pages_blocks_page_hero_breadcrumbs_parent_id_fk"
  FOREIGN KEY ("_parent_id") REFERENCES "pages_blocks_page_hero"("id") ON DELETE CASCADE;

ALTER TABLE "pages_blocks_page_hero_breadcrumbs_locales"
  ADD CONSTRAINT "pages_blocks_page_hero_breadcrumbs_locales_parent_id_fk"
  FOREIGN KEY ("_parent_id") REFERENCES "pages_blocks_page_hero_breadcrumbs"("id") ON DELETE CASCADE;

ALTER TABLE "pages_blocks_about_content_sections_tabs"
  ADD CONSTRAINT "pages_blocks_about_content_sections_tabs_parent_id_fk"
  FOREIGN KEY ("_parent_id") REFERENCES "pages_blocks_about_content_sections"("id") ON DELETE CASCADE;

ALTER TABLE "pages_blocks_about_content_sections_tabs_locales"
  ADD CONSTRAINT "pages_blocks_about_content_sections_tabs_locales_parent_id_fk"
  FOREIGN KEY ("_parent_id") REFERENCES "pages_blocks_about_content_sections_tabs"("id") ON DELETE CASCADE;

ALTER TABLE "pages_blocks_about_content_sections_tabs_files"
  ADD CONSTRAINT "pages_blocks_about_content_sections_tabs_files_file_id_fk"
  FOREIGN KEY ("file_id") REFERENCES "media"("id") ON DELETE SET NULL;

ALTER TABLE "pages_blocks_about_content_sections_tabs_files"
  ADD CONSTRAINT "pages_blocks_about_content_sections_tabs_files_parent_id_fk"
  FOREIGN KEY ("_parent_id") REFERENCES "pages_blocks_about_content_sections_tabs"("id") ON DELETE CASCADE;

ALTER TABLE "pages_blocks_about_content_sections_tabs_files_locales"
  ADD CONSTRAINT "pages_blocks_about_content_sections_tabs_files_locales_fk"
  FOREIGN KEY ("_parent_id") REFERENCES "pages_blocks_about_content_sections_tabs_files"("id") ON DELETE CASCADE;

-- 8. Indexes
CREATE INDEX IF NOT EXISTS "pages_blocks_page_hero_breadcrumbs_order_idx"
  ON "pages_blocks_page_hero_breadcrumbs" USING btree ("_order");
CREATE INDEX IF NOT EXISTS "pages_blocks_page_hero_breadcrumbs_parent_id_idx"
  ON "pages_blocks_page_hero_breadcrumbs" USING btree ("_parent_id");
CREATE UNIQUE INDEX IF NOT EXISTS "pages_blocks_page_hero_breadcrumbs_locales_locale_parent_id_unique"
  ON "pages_blocks_page_hero_breadcrumbs_locales" USING btree ("_locale","_parent_id");

CREATE INDEX IF NOT EXISTS "pages_blocks_about_content_sections_tabs_order_idx"
  ON "pages_blocks_about_content_sections_tabs" USING btree ("_order");
CREATE INDEX IF NOT EXISTS "pages_blocks_about_content_sections_tabs_parent_id_idx"
  ON "pages_blocks_about_content_sections_tabs" USING btree ("_parent_id");
CREATE UNIQUE INDEX IF NOT EXISTS "pages_blocks_about_content_sections_tabs_locales_locale_parent_unique"
  ON "pages_blocks_about_content_sections_tabs_locales" USING btree ("_locale","_parent_id");

CREATE INDEX IF NOT EXISTS "pages_blocks_about_content_sections_tabs_files_order_idx"
  ON "pages_blocks_about_content_sections_tabs_files" USING btree ("_order");
CREATE INDEX IF NOT EXISTS "pages_blocks_about_content_sections_tabs_files_parent_id_idx"
  ON "pages_blocks_about_content_sections_tabs_files" USING btree ("_parent_id");
CREATE INDEX IF NOT EXISTS "pages_blocks_about_content_sections_tabs_files_file_idx"
  ON "pages_blocks_about_content_sections_tabs_files" USING btree ("file_id");
CREATE UNIQUE INDEX IF NOT EXISTS "pages_blocks_about_content_sections_tabs_files_locales_locale_unique"
  ON "pages_blocks_about_content_sections_tabs_files_locales" USING btree ("_locale","_parent_id");
