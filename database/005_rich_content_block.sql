-- Migration: richContent block tables

-- 1. Main block table
CREATE TABLE IF NOT EXISTS "pages_blocks_rich_content" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" text NOT NULL,
    "id" character varying PRIMARY KEY NOT NULL,
    "block_name" character varying
);

-- 2. Locales table (title + content are localized)
CREATE TABLE IF NOT EXISTS "pages_blocks_rich_content_locales" (
    "title" character varying,
    "content" jsonb,
    "id" serial PRIMARY KEY NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);

-- 3. Indexes on main table
CREATE INDEX IF NOT EXISTS "pages_blocks_rich_content_order_idx"
  ON "pages_blocks_rich_content" USING btree ("_order");
CREATE INDEX IF NOT EXISTS "pages_blocks_rich_content_parent_id_idx"
  ON "pages_blocks_rich_content" USING btree ("_parent_id");
CREATE INDEX IF NOT EXISTS "pages_blocks_rich_content_path_idx"
  ON "pages_blocks_rich_content" USING btree ("_path");

-- 4. Unique locale index on locales table
CREATE UNIQUE INDEX IF NOT EXISTS "pages_blocks_rich_content_locales_locale_parent_id_unique"
  ON "pages_blocks_rich_content_locales" USING btree ("_locale", "_parent_id");

-- 5. Foreign keys
ALTER TABLE "pages_blocks_rich_content"
  ADD CONSTRAINT "pages_blocks_rich_content_parent_id_fk"
  FOREIGN KEY ("_parent_id") REFERENCES "pages"("id") ON DELETE CASCADE;

ALTER TABLE "pages_blocks_rich_content_locales"
  ADD CONSTRAINT "pages_blocks_rich_content_locales_parent_id_fk"
  FOREIGN KEY ("_parent_id") REFERENCES "pages_blocks_rich_content"("id") ON DELETE CASCADE;
