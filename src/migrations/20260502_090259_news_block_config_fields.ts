import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   CREATE TYPE "public"."enum_pages_blocks_news_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_home_page_blocks_news_source_mode" AS ENUM('latest', 'manual');
  CREATE TABLE "pages_blocks_news_locales" (
  	"title" varchar DEFAULT 'TIN TỨC & SỰ KIỆN',
  	"view_all_label" varchar DEFAULT 'Xem tất cả →',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "home_page_blocks_news_locales" (
  	"title" varchar DEFAULT 'TIN TỨC & SỰ KIỆN',
  	"view_all_label" varchar DEFAULT 'Xem tất cả →',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  ALTER TABLE "pages_blocks_news" ADD COLUMN "view_all_href" varchar DEFAULT '/tin-tuc';
  ALTER TABLE "pages_blocks_news" ADD COLUMN "source_mode" "enum_pages_blocks_news_source_mode" DEFAULT 'latest';
  ALTER TABLE "pages_blocks_news" ADD COLUMN "featured_news_id" integer;
  ALTER TABLE "pages_rels" ADD COLUMN "news_id" integer;
  ALTER TABLE "home_page_blocks_news" ADD COLUMN "view_all_href" varchar DEFAULT '/tin-tuc';
  ALTER TABLE "home_page_blocks_news" ADD COLUMN "source_mode" "enum_home_page_blocks_news_source_mode" DEFAULT 'latest';
  ALTER TABLE "home_page_blocks_news" ADD COLUMN "featured_news_id" integer;
  ALTER TABLE "home_page_rels" ADD COLUMN "news_id" integer;
  ALTER TABLE "pages_blocks_news_locales" ADD CONSTRAINT "pages_blocks_news_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_news"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_news_locales" ADD CONSTRAINT "home_page_blocks_news_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_news"("id") ON DELETE cascade ON UPDATE no action;
  CREATE UNIQUE INDEX "pages_blocks_news_locales_locale_parent_id_unique" ON "pages_blocks_news_locales" USING btree ("_locale","_parent_id");
  CREATE UNIQUE INDEX "home_page_blocks_news_locales_locale_parent_id_unique" ON "home_page_blocks_news_locales" USING btree ("_locale","_parent_id");
  ALTER TABLE "pages_blocks_news" ADD CONSTRAINT "pages_blocks_news_featured_news_id_news_id_fk" FOREIGN KEY ("featured_news_id") REFERENCES "public"."news"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_rels" ADD CONSTRAINT "pages_rels_news_fk" FOREIGN KEY ("news_id") REFERENCES "public"."news"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_news" ADD CONSTRAINT "home_page_blocks_news_featured_news_id_news_id_fk" FOREIGN KEY ("featured_news_id") REFERENCES "public"."news"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home_page_rels" ADD CONSTRAINT "home_page_rels_news_fk" FOREIGN KEY ("news_id") REFERENCES "public"."news"("id") ON DELETE cascade ON UPDATE no action;
  CREATE INDEX "pages_blocks_news_featured_news_idx" ON "pages_blocks_news" USING btree ("featured_news_id");
  CREATE INDEX "pages_rels_news_id_idx" ON "pages_rels" USING btree ("news_id");
  CREATE INDEX "home_page_blocks_news_featured_news_idx" ON "home_page_blocks_news" USING btree ("featured_news_id");
  CREATE INDEX "home_page_rels_news_id_idx" ON "home_page_rels" USING btree ("news_id");`)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   ALTER TABLE "pages_blocks_news_locales" DISABLE ROW LEVEL SECURITY;
  ALTER TABLE "home_page_blocks_news_locales" DISABLE ROW LEVEL SECURITY;
  DROP TABLE "pages_blocks_news_locales" CASCADE;
  DROP TABLE "home_page_blocks_news_locales" CASCADE;
  ALTER TABLE "pages_blocks_news" DROP CONSTRAINT "pages_blocks_news_featured_news_id_news_id_fk";
  
  ALTER TABLE "pages_rels" DROP CONSTRAINT "pages_rels_news_fk";
  
  ALTER TABLE "home_page_blocks_news" DROP CONSTRAINT "home_page_blocks_news_featured_news_id_news_id_fk";
  
  ALTER TABLE "home_page_rels" DROP CONSTRAINT "home_page_rels_news_fk";
  
  DROP INDEX "pages_blocks_news_featured_news_idx";
  DROP INDEX "pages_rels_news_id_idx";
  DROP INDEX "home_page_blocks_news_featured_news_idx";
  DROP INDEX "home_page_rels_news_id_idx";
  ALTER TABLE "pages_blocks_news" DROP COLUMN "view_all_href";
  ALTER TABLE "pages_blocks_news" DROP COLUMN "source_mode";
  ALTER TABLE "pages_blocks_news" DROP COLUMN "featured_news_id";
  ALTER TABLE "pages_rels" DROP COLUMN "news_id";
  ALTER TABLE "home_page_blocks_news" DROP COLUMN "view_all_href";
  ALTER TABLE "home_page_blocks_news" DROP COLUMN "source_mode";
  ALTER TABLE "home_page_blocks_news" DROP COLUMN "featured_news_id";
  ALTER TABLE "home_page_rels" DROP COLUMN "news_id";
  DROP TYPE "public"."enum_pages_blocks_news_source_mode";
  DROP TYPE "public"."enum_home_page_blocks_news_source_mode";`)
}
