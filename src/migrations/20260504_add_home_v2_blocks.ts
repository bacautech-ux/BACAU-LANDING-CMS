import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   CREATE TYPE "public"."enum_pages_blocks_news_display_mode" AS ENUM('featured', 'grid');

  -- Hero Banner block (no text, just a full-width image)
  CREATE TABLE "pages_blocks_hero_banner" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" text NOT NULL,
    "id" varchar PRIMARY KEY NOT NULL,
    "background_image_id" integer,
    "background_image_url" varchar,
    "height" integer DEFAULT 700,
    "overlay_opacity" integer DEFAULT 40,
    "block_name" varchar
  );

  -- Welcome Intro block (split: text left + images right)
  CREATE TABLE "pages_blocks_welcome_intro" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" text NOT NULL,
    "id" varchar PRIMARY KEY NOT NULL,
    "cta_href" varchar DEFAULT '/gioi-thieu',
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

  CREATE TABLE "pages_blocks_welcome_intro_images" (
    "_order" integer NOT NULL,
    "_parent_id" varchar NOT NULL,
    "id" varchar PRIMARY KEY NOT NULL,
    "image_id" integer,
    "image_url" varchar
  );

  CREATE TABLE "pages_blocks_welcome_intro_images_locales" (
    "alt" varchar,
    "id" serial PRIMARY KEY NOT NULL,
    "_locale" "_locales" NOT NULL,
    "_parent_id" varchar NOT NULL
  );

  -- Add display_mode to news block
  ALTER TABLE "pages_blocks_news" ADD COLUMN "display_mode" "enum_pages_blocks_news_display_mode" DEFAULT 'featured';

  -- Foreign keys: hero_banner
  ALTER TABLE "pages_blocks_hero_banner" ADD CONSTRAINT "pages_blocks_hero_banner_background_image_id_media_id_fk"
    FOREIGN KEY ("background_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero_banner" ADD CONSTRAINT "pages_blocks_hero_banner_parent_id_fk"
    FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;

  -- Foreign keys: welcome_intro
  ALTER TABLE "pages_blocks_welcome_intro" ADD CONSTRAINT "pages_blocks_welcome_intro_parent_id_fk"
    FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_welcome_intro_locales" ADD CONSTRAINT "pages_blocks_welcome_intro_locales_parent_id_fk"
    FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_welcome_intro"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_welcome_intro_images" ADD CONSTRAINT "pages_blocks_welcome_intro_images_image_id_media_id_fk"
    FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_welcome_intro_images" ADD CONSTRAINT "pages_blocks_welcome_intro_images_parent_id_fk"
    FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_welcome_intro"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_welcome_intro_images_locales" ADD CONSTRAINT "pages_blocks_welcome_intro_images_locales_parent_id_fk"
    FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_welcome_intro_images"("id") ON DELETE cascade ON UPDATE no action;

  -- Indexes: hero_banner
  CREATE INDEX "pages_blocks_hero_banner_order_idx" ON "pages_blocks_hero_banner" USING btree ("_order");
  CREATE INDEX "pages_blocks_hero_banner_parent_id_idx" ON "pages_blocks_hero_banner" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_hero_banner_path_idx" ON "pages_blocks_hero_banner" USING btree ("_path");
  CREATE INDEX "pages_blocks_hero_banner_bg_image_idx" ON "pages_blocks_hero_banner" USING btree ("background_image_id");

  -- Indexes: welcome_intro
  CREATE INDEX "pages_blocks_welcome_intro_order_idx" ON "pages_blocks_welcome_intro" USING btree ("_order");
  CREATE INDEX "pages_blocks_welcome_intro_parent_id_idx" ON "pages_blocks_welcome_intro" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_welcome_intro_path_idx" ON "pages_blocks_welcome_intro" USING btree ("_path");
  CREATE UNIQUE INDEX "pages_blocks_welcome_intro_locales_locale_parent_id_unique"
    ON "pages_blocks_welcome_intro_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_welcome_intro_images_order_idx" ON "pages_blocks_welcome_intro_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_welcome_intro_images_parent_id_idx" ON "pages_blocks_welcome_intro_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_welcome_intro_images_image_idx" ON "pages_blocks_welcome_intro_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_welcome_intro_images_locales_locale_parent_id_uni"
    ON "pages_blocks_welcome_intro_images_locales" USING btree ("_locale","_parent_id");
  `)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   ALTER TABLE "pages_blocks_hero_banner" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_welcome_intro" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_welcome_intro_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_welcome_intro_images" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_welcome_intro_images_locales" DISABLE ROW LEVEL SECURITY;

  DROP TABLE "pages_blocks_hero_banner" CASCADE;
  DROP TABLE "pages_blocks_welcome_intro" CASCADE;
  DROP TABLE "pages_blocks_welcome_intro_locales" CASCADE;
  DROP TABLE "pages_blocks_welcome_intro_images" CASCADE;
  DROP TABLE "pages_blocks_welcome_intro_images_locales" CASCADE;

  ALTER TABLE "pages_blocks_news" DROP COLUMN "display_mode";
  DROP TYPE "public"."enum_pages_blocks_news_display_mode";
  `)
}
