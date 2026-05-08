import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   CREATE TYPE "public"."enum_pages_blocks_products_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_pages_blocks_brand_logos_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_home_page_blocks_products_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_home_page_blocks_brand_logos_source_mode" AS ENUM('latest', 'manual');
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
  
  CREATE TABLE "pages_blocks_brand_logos_fallback_brands" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"name" varchar NOT NULL
  );
  
  CREATE TABLE "pages_blocks_brand_logos_locales" (
  	"title" varchar DEFAULT 'ĐỐI TÁC CHIẾN LƯỢC',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "products_locales" (
  	"display_category" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
  );
  
  CREATE TABLE "_products_v_locales" (
  	"version_display_category" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
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
  
  CREATE TABLE "home_page_blocks_brand_logos_fallback_brands" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"name" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_brand_logos_locales" (
  	"title" varchar DEFAULT 'ĐỐI TÁC CHIẾN LƯỢC',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  ALTER TABLE "pages_blocks_partners" ADD COLUMN "background_color" varchar DEFAULT '#0B1221';
  ALTER TABLE "pages_blocks_partners_locales" ADD COLUMN "title" varchar DEFAULT 'ĐỐI TÁC';
  ALTER TABLE "pages_blocks_products" ADD COLUMN "source_mode" "enum_pages_blocks_products_source_mode" DEFAULT 'latest';
  ALTER TABLE "pages_blocks_products" ADD COLUMN "count" numeric DEFAULT 5;
  ALTER TABLE "pages_blocks_products_locales" ADD COLUMN "title" varchar DEFAULT 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP';
  ALTER TABLE "pages_blocks_cta_banner" ADD COLUMN "background_color" varchar DEFAULT '#0F172A';
  ALTER TABLE "pages_blocks_cta_banner" ADD COLUMN "gradient_from" varchar DEFAULT '#B92C32';
  ALTER TABLE "pages_blocks_cta_banner" ADD COLUMN "gradient_middle" varchar DEFAULT '#2b358c';
  ALTER TABLE "pages_blocks_cta_banner" ADD COLUMN "gradient_to" varchar DEFAULT '#0F172A';
  ALTER TABLE "pages_blocks_cta_banner" ADD COLUMN "accent_color" varchar DEFAULT '#B92C32';
  ALTER TABLE "pages_blocks_brand_logos" ADD COLUMN "source_mode" "enum_pages_blocks_brand_logos_source_mode" DEFAULT 'latest';
  ALTER TABLE "pages_blocks_brand_logos" ADD COLUMN "count" numeric DEFAULT 6;
  ALTER TABLE "pages_rels" ADD COLUMN "products_id" integer;
  ALTER TABLE "pages_rels" ADD COLUMN "partners_id" integer;
  ALTER TABLE "products" ADD COLUMN "name_label" varchar;
  ALTER TABLE "_products_v" ADD COLUMN "version_name_label" varchar;
  ALTER TABLE "home_page_blocks_partners" ADD COLUMN "background_color" varchar DEFAULT '#0B1221';
  ALTER TABLE "home_page_blocks_partners_locales" ADD COLUMN "title" varchar DEFAULT 'ĐỐI TÁC';
  ALTER TABLE "home_page_blocks_products" ADD COLUMN "source_mode" "enum_home_page_blocks_products_source_mode" DEFAULT 'latest';
  ALTER TABLE "home_page_blocks_products" ADD COLUMN "count" numeric DEFAULT 5;
  ALTER TABLE "home_page_blocks_products_locales" ADD COLUMN "title" varchar DEFAULT 'THIẾT BỊ VÀ SẢN PHẨM CÔNG NGHIỆP';
  ALTER TABLE "home_page_blocks_cta_banner" ADD COLUMN "background_color" varchar DEFAULT '#0F172A';
  ALTER TABLE "home_page_blocks_cta_banner" ADD COLUMN "gradient_from" varchar DEFAULT '#B92C32';
  ALTER TABLE "home_page_blocks_cta_banner" ADD COLUMN "gradient_middle" varchar DEFAULT '#2b358c';
  ALTER TABLE "home_page_blocks_cta_banner" ADD COLUMN "gradient_to" varchar DEFAULT '#0F172A';
  ALTER TABLE "home_page_blocks_cta_banner" ADD COLUMN "accent_color" varchar DEFAULT '#B92C32';
  ALTER TABLE "home_page_blocks_brand_logos" ADD COLUMN "source_mode" "enum_home_page_blocks_brand_logos_source_mode" DEFAULT 'latest';
  ALTER TABLE "home_page_blocks_brand_logos" ADD COLUMN "count" numeric DEFAULT 6;
  ALTER TABLE "home_page_rels" ADD COLUMN "products_id" integer;
  ALTER TABLE "home_page_rels" ADD COLUMN "partners_id" integer;
  ALTER TABLE "pages_blocks_partners_images" ADD CONSTRAINT "pages_blocks_partners_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_partners_images" ADD CONSTRAINT "pages_blocks_partners_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_partners"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_partners_images_locales" ADD CONSTRAINT "pages_blocks_partners_images_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_partners_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_brand_logos_fallback_brands" ADD CONSTRAINT "pages_blocks_brand_logos_fallback_brands_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_brand_logos"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_brand_logos_locales" ADD CONSTRAINT "pages_blocks_brand_logos_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_brand_logos"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "products_locales" ADD CONSTRAINT "products_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."products"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_products_v_locales" ADD CONSTRAINT "_products_v_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_products_v"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_partners_images" ADD CONSTRAINT "home_page_blocks_partners_images_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home_page_blocks_partners_images" ADD CONSTRAINT "home_page_blocks_partners_images_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_partners"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_partners_images_locales" ADD CONSTRAINT "home_page_blocks_partners_images_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_partners_images"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_brand_logos_fallback_brands" ADD CONSTRAINT "home_page_blocks_brand_logos_fallback_brands_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_brand_logos"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_brand_logos_locales" ADD CONSTRAINT "home_page_blocks_brand_logos_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_brand_logos"("id") ON DELETE cascade ON UPDATE no action;
  CREATE INDEX "pages_blocks_partners_images_order_idx" ON "pages_blocks_partners_images" USING btree ("_order");
  CREATE INDEX "pages_blocks_partners_images_parent_id_idx" ON "pages_blocks_partners_images" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_partners_images_image_idx" ON "pages_blocks_partners_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_partners_images_locales_locale_parent_id_unique" ON "pages_blocks_partners_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "pages_blocks_brand_logos_fallback_brands_order_idx" ON "pages_blocks_brand_logos_fallback_brands" USING btree ("_order");
  CREATE INDEX "pages_blocks_brand_logos_fallback_brands_parent_id_idx" ON "pages_blocks_brand_logos_fallback_brands" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_brand_logos_locales_locale_parent_id_unique" ON "pages_blocks_brand_logos_locales" USING btree ("_locale","_parent_id");
  CREATE UNIQUE INDEX "products_locales_locale_parent_id_unique" ON "products_locales" USING btree ("_locale","_parent_id");
  CREATE UNIQUE INDEX "_products_v_locales_locale_parent_id_unique" ON "_products_v_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_partners_images_order_idx" ON "home_page_blocks_partners_images" USING btree ("_order");
  CREATE INDEX "home_page_blocks_partners_images_parent_id_idx" ON "home_page_blocks_partners_images" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_partners_images_image_idx" ON "home_page_blocks_partners_images" USING btree ("image_id");
  CREATE UNIQUE INDEX "home_page_blocks_partners_images_locales_locale_parent_id_un" ON "home_page_blocks_partners_images_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_brand_logos_fallback_brands_order_idx" ON "home_page_blocks_brand_logos_fallback_brands" USING btree ("_order");
  CREATE INDEX "home_page_blocks_brand_logos_fallback_brands_parent_id_idx" ON "home_page_blocks_brand_logos_fallback_brands" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "home_page_blocks_brand_logos_locales_locale_parent_id_unique" ON "home_page_blocks_brand_logos_locales" USING btree ("_locale","_parent_id");
  ALTER TABLE "pages_rels" ADD CONSTRAINT "pages_rels_products_fk" FOREIGN KEY ("products_id") REFERENCES "public"."products"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_rels" ADD CONSTRAINT "pages_rels_partners_fk" FOREIGN KEY ("partners_id") REFERENCES "public"."partners"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_rels" ADD CONSTRAINT "home_page_rels_products_fk" FOREIGN KEY ("products_id") REFERENCES "public"."products"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_rels" ADD CONSTRAINT "home_page_rels_partners_fk" FOREIGN KEY ("partners_id") REFERENCES "public"."partners"("id") ON DELETE cascade ON UPDATE no action;
  CREATE INDEX "pages_rels_products_id_idx" ON "pages_rels" USING btree ("products_id");
  CREATE INDEX "pages_rels_partners_id_idx" ON "pages_rels" USING btree ("partners_id");
  CREATE INDEX "home_page_rels_products_id_idx" ON "home_page_rels" USING btree ("products_id");
  CREATE INDEX "home_page_rels_partners_id_idx" ON "home_page_rels" USING btree ("partners_id");`)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   ALTER TABLE "pages_blocks_partners_images" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_partners_images_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_brand_logos_fallback_brands" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "pages_blocks_brand_logos_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "products_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "_products_v_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "home_page_blocks_partners_images" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "home_page_blocks_partners_images_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "home_page_blocks_brand_logos_fallback_brands" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "home_page_blocks_brand_logos_locales" DISABLE ROW LEVEL SECURITY;
  DROP TABLE "pages_blocks_partners_images" CASCADE;
  DROP TABLE "pages_blocks_partners_images_locales" CASCADE;
  DROP TABLE "pages_blocks_brand_logos_fallback_brands" CASCADE;
  DROP TABLE "pages_blocks_brand_logos_locales" CASCADE;
  DROP TABLE "products_locales" CASCADE;
  DROP TABLE "_products_v_locales" CASCADE;
  DROP TABLE "home_page_blocks_partners_images" CASCADE;
  DROP TABLE "home_page_blocks_partners_images_locales" CASCADE;
  DROP TABLE "home_page_blocks_brand_logos_fallback_brands" CASCADE;
  DROP TABLE "home_page_blocks_brand_logos_locales" CASCADE;
  ALTER TABLE "pages_rels" DROP CONSTRAINT "pages_rels_products_fk";
  
  ALTER TABLE "pages_rels" DROP CONSTRAINT "pages_rels_partners_fk";
  
  ALTER TABLE "home_page_rels" DROP CONSTRAINT "home_page_rels_products_fk";
  
  ALTER TABLE "home_page_rels" DROP CONSTRAINT "home_page_rels_partners_fk";
  
  DROP INDEX "pages_rels_products_id_idx";
  DROP INDEX "pages_rels_partners_id_idx";
  DROP INDEX "home_page_rels_products_id_idx";
  DROP INDEX "home_page_rels_partners_id_idx";
  ALTER TABLE "pages_blocks_partners" DROP COLUMN "background_color";
  ALTER TABLE "pages_blocks_partners_locales" DROP COLUMN "title";
  ALTER TABLE "pages_blocks_products" DROP COLUMN "source_mode";
  ALTER TABLE "pages_blocks_products" DROP COLUMN "count";
  ALTER TABLE "pages_blocks_products_locales" DROP COLUMN "title";
  ALTER TABLE "pages_blocks_cta_banner" DROP COLUMN "background_color";
  ALTER TABLE "pages_blocks_cta_banner" DROP COLUMN "gradient_from";
  ALTER TABLE "pages_blocks_cta_banner" DROP COLUMN "gradient_middle";
  ALTER TABLE "pages_blocks_cta_banner" DROP COLUMN "gradient_to";
  ALTER TABLE "pages_blocks_cta_banner" DROP COLUMN "accent_color";
  ALTER TABLE "pages_blocks_brand_logos" DROP COLUMN "source_mode";
  ALTER TABLE "pages_blocks_brand_logos" DROP COLUMN "count";
  ALTER TABLE "pages_rels" DROP COLUMN "products_id";
  ALTER TABLE "pages_rels" DROP COLUMN "partners_id";
  ALTER TABLE "products" DROP COLUMN "name_label";
  ALTER TABLE "_products_v" DROP COLUMN "version_name_label";
  ALTER TABLE "home_page_blocks_partners" DROP COLUMN "background_color";
  ALTER TABLE "home_page_blocks_partners_locales" DROP COLUMN "title";
  ALTER TABLE "home_page_blocks_products" DROP COLUMN "source_mode";
  ALTER TABLE "home_page_blocks_products" DROP COLUMN "count";
  ALTER TABLE "home_page_blocks_products_locales" DROP COLUMN "title";
  ALTER TABLE "home_page_blocks_cta_banner" DROP COLUMN "background_color";
  ALTER TABLE "home_page_blocks_cta_banner" DROP COLUMN "gradient_from";
  ALTER TABLE "home_page_blocks_cta_banner" DROP COLUMN "gradient_middle";
  ALTER TABLE "home_page_blocks_cta_banner" DROP COLUMN "gradient_to";
  ALTER TABLE "home_page_blocks_cta_banner" DROP COLUMN "accent_color";
  ALTER TABLE "home_page_blocks_brand_logos" DROP COLUMN "source_mode";
  ALTER TABLE "home_page_blocks_brand_logos" DROP COLUMN "count";
  ALTER TABLE "home_page_rels" DROP COLUMN "products_id";
  ALTER TABLE "home_page_rels" DROP COLUMN "partners_id";
  DROP TYPE "public"."enum_pages_blocks_products_source_mode";
  DROP TYPE "public"."enum_pages_blocks_brand_logos_source_mode";
  DROP TYPE "public"."enum_home_page_blocks_products_source_mode";
  DROP TYPE "public"."enum_home_page_blocks_brand_logos_source_mode";`)
}
