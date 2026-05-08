import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   CREATE TYPE "public"."enum_pages_blocks_about_content_sections_variant" AS ENUM('intro', 'cards', 'gallery', 'itemGrid', 'splitMedia', 'documentList');
  CREATE TYPE "public"."enum_pages_blocks_about_content_sections_columns" AS ENUM('2', '3', '4');
  CREATE TYPE "public"."enum_pages_blocks_about_content_sections_image_position" AS ENUM('left', 'right');
  CREATE TABLE "pages_blocks_about_content_sections_paragraphs" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL
  );
  
  CREATE TABLE "pages_blocks_about_content_sections_paragraphs_locales" (
  	"text" varchar NOT NULL,
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
  
  ALTER TABLE "pages_blocks_about_content_sections_images_locales" ADD COLUMN "caption" varchar;
  ALTER TABLE "pages_blocks_about_content_sections" ADD COLUMN "variant" "enum_pages_blocks_about_content_sections_variant" DEFAULT 'gallery';
  ALTER TABLE "pages_blocks_about_content_sections" ADD COLUMN "columns" "enum_pages_blocks_about_content_sections_columns" DEFAULT '3';
  ALTER TABLE "pages_blocks_about_content_sections" ADD COLUMN "image_position" "enum_pages_blocks_about_content_sections_image_position" DEFAULT 'left';
  ALTER TABLE "pages_blocks_about_content_sections_paragraphs" ADD CONSTRAINT "pages_blocks_about_content_sections_paragraphs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_paragraphs_locales" ADD CONSTRAINT "pages_blocks_about_content_sections_paragraphs_locales_pa_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections_paragraphs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_items" ADD CONSTRAINT "pages_blocks_about_content_sections_items_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_items" ADD CONSTRAINT "pages_blocks_about_content_sections_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_about_content_sections_items_locales" ADD CONSTRAINT "pages_blocks_about_content_sections_items_locales_parent__fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_about_content_sections_items"("id") ON DELETE cascade ON UPDATE no action;
  CREATE INDEX "pages_blocks_about_content_sections_paragraphs_order_idx" ON "pages_blocks_about_content_sections_paragraphs" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sections_paragraphs_parent_id_idx" ON "pages_blocks_about_content_sections_paragraphs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sections_paragraphs_locales_local" ON "pages_blocks_about_content_sections_paragraphs_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_items_order_idx" ON "pages_blocks_about_content_sections_items" USING btree ("_order");
  CREATE INDEX "pages_blocks_about_content_sections_items_parent_id_idx" ON "pages_blocks_about_content_sections_items" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_about_content_sections_items_image_idx" ON "pages_blocks_about_content_sections_items" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_about_content_sections_items_locales_locale_par" ON "pages_blocks_about_content_sections_items_locales" USING btree ("_locale","_parent_id");`)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   DROP TABLE "pages_blocks_about_content_sections_paragraphs" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_paragraphs_locales" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_items" CASCADE;
  DROP TABLE "pages_blocks_about_content_sections_items_locales" CASCADE;
  ALTER TABLE "pages_blocks_about_content_sections_images_locales" DROP COLUMN "caption";
  ALTER TABLE "pages_blocks_about_content_sections" DROP COLUMN "variant";
  ALTER TABLE "pages_blocks_about_content_sections" DROP COLUMN "columns";
  ALTER TABLE "pages_blocks_about_content_sections" DROP COLUMN "image_position";
  DROP TYPE "public"."enum_pages_blocks_about_content_sections_variant";
  DROP TYPE "public"."enum_pages_blocks_about_content_sections_columns";
  DROP TYPE "public"."enum_pages_blocks_about_content_sections_image_position";`)
}
