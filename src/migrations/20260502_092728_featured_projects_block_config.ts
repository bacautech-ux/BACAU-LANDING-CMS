import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   CREATE TYPE "public"."enum_pages_blocks_featured_projects_tabs_value" AS ENUM('energy', 'electrical', 'automation', 'bms');
  CREATE TYPE "public"."enum_pages_blocks_featured_projects_source_mode" AS ENUM('latest', 'manual');
  CREATE TYPE "public"."enum_projects_featured_type" AS ENUM('energy', 'electrical', 'automation', 'bms');
  CREATE TYPE "public"."enum__projects_v_version_featured_type" AS ENUM('energy', 'electrical', 'automation', 'bms');
  CREATE TYPE "public"."enum_home_page_blocks_featured_projects_tabs_value" AS ENUM('energy', 'electrical', 'automation', 'bms');
  CREATE TYPE "public"."enum_home_page_blocks_featured_projects_source_mode" AS ENUM('latest', 'manual');
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
  
  CREATE TABLE "pages_blocks_featured_projects_locales" (
  	"title" varchar DEFAULT 'DỰ ÁN TIÊU BIỂU',
  	"view_all_label" varchar DEFAULT 'Xem tất cả →',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  CREATE TABLE "projects_locales" (
  	"featured_badge_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
  );
  
  CREATE TABLE "_projects_v_locales" (
  	"version_featured_badge_label" varchar,
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" integer NOT NULL
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
  
  CREATE TABLE "home_page_blocks_featured_projects_locales" (
  	"title" varchar DEFAULT 'DỰ ÁN TIÊU BIỂU',
  	"view_all_label" varchar DEFAULT 'Xem tất cả →',
  	"id" serial PRIMARY KEY NOT NULL,
  	"_locale" "_locales" NOT NULL,
  	"_parent_id" varchar NOT NULL
  );
  
  ALTER TABLE "pages_blocks_featured_projects" ADD COLUMN "background_color" varchar DEFAULT '#0B1221';
  ALTER TABLE "pages_blocks_featured_projects" ADD COLUMN "view_all_href" varchar DEFAULT '/du-an-tham-khao';
  ALTER TABLE "pages_blocks_featured_projects" ADD COLUMN "source_mode" "enum_pages_blocks_featured_projects_source_mode" DEFAULT 'latest';
  ALTER TABLE "pages_blocks_featured_projects" ADD COLUMN "count" numeric DEFAULT 4;
  ALTER TABLE "projects" ADD COLUMN "featured_type" "enum_projects_featured_type";
  ALTER TABLE "projects" ADD COLUMN "featured_badge_color" varchar DEFAULT '#2b358c';
  ALTER TABLE "_projects_v" ADD COLUMN "version_featured_type" "enum__projects_v_version_featured_type";
  ALTER TABLE "_projects_v" ADD COLUMN "version_featured_badge_color" varchar DEFAULT '#2b358c';
  ALTER TABLE "home_page_blocks_featured_projects" ADD COLUMN "background_color" varchar DEFAULT '#0B1221';
  ALTER TABLE "home_page_blocks_featured_projects" ADD COLUMN "view_all_href" varchar DEFAULT '/du-an-tham-khao';
  ALTER TABLE "home_page_blocks_featured_projects" ADD COLUMN "source_mode" "enum_home_page_blocks_featured_projects_source_mode" DEFAULT 'latest';
  ALTER TABLE "home_page_blocks_featured_projects" ADD COLUMN "count" numeric DEFAULT 4;
  ALTER TABLE "pages_blocks_featured_projects_tabs" ADD CONSTRAINT "pages_blocks_featured_projects_tabs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_featured_projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_featured_projects_tabs_locales" ADD CONSTRAINT "pages_blocks_featured_projects_tabs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_featured_projects_tabs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_featured_projects_locales" ADD CONSTRAINT "pages_blocks_featured_projects_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_featured_projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "projects_locales" ADD CONSTRAINT "projects_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "_projects_v_locales" ADD CONSTRAINT "_projects_v_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_projects_v"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_featured_projects_tabs" ADD CONSTRAINT "home_page_blocks_featured_projects_tabs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_featured_projects"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_featured_projects_tabs_locales" ADD CONSTRAINT "home_page_blocks_featured_projects_tabs_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_featured_projects_tabs"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_featured_projects_locales" ADD CONSTRAINT "home_page_blocks_featured_projects_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_featured_projects"("id") ON DELETE cascade ON UPDATE no action;
  CREATE INDEX "pages_blocks_featured_projects_tabs_order_idx" ON "pages_blocks_featured_projects_tabs" USING btree ("_order");
  CREATE INDEX "pages_blocks_featured_projects_tabs_parent_id_idx" ON "pages_blocks_featured_projects_tabs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_featured_projects_tabs_locales_locale_parent_id" ON "pages_blocks_featured_projects_tabs_locales" USING btree ("_locale","_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_featured_projects_locales_locale_parent_id_uniq" ON "pages_blocks_featured_projects_locales" USING btree ("_locale","_parent_id");
  CREATE UNIQUE INDEX "projects_locales_locale_parent_id_unique" ON "projects_locales" USING btree ("_locale","_parent_id");
  CREATE UNIQUE INDEX "_projects_v_locales_locale_parent_id_unique" ON "_projects_v_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_featured_projects_tabs_order_idx" ON "home_page_blocks_featured_projects_tabs" USING btree ("_order");
  CREATE INDEX "home_page_blocks_featured_projects_tabs_parent_id_idx" ON "home_page_blocks_featured_projects_tabs" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "home_page_blocks_featured_projects_tabs_locales_locale_paren" ON "home_page_blocks_featured_projects_tabs_locales" USING btree ("_locale","_parent_id");
  CREATE UNIQUE INDEX "home_page_blocks_featured_projects_locales_locale_parent_id_" ON "home_page_blocks_featured_projects_locales" USING btree ("_locale","_parent_id");`)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   DROP TABLE "pages_blocks_featured_projects_tabs" CASCADE;
  DROP TABLE "pages_blocks_featured_projects_tabs_locales" CASCADE;
  DROP TABLE "pages_blocks_featured_projects_locales" CASCADE;
  DROP TABLE "projects_locales" CASCADE;
  DROP TABLE "_projects_v_locales" CASCADE;
  DROP TABLE "home_page_blocks_featured_projects_tabs" CASCADE;
  DROP TABLE "home_page_blocks_featured_projects_tabs_locales" CASCADE;
  DROP TABLE "home_page_blocks_featured_projects_locales" CASCADE;
  ALTER TABLE "pages_blocks_featured_projects" DROP COLUMN "background_color";
  ALTER TABLE "pages_blocks_featured_projects" DROP COLUMN "view_all_href";
  ALTER TABLE "pages_blocks_featured_projects" DROP COLUMN "source_mode";
  ALTER TABLE "pages_blocks_featured_projects" DROP COLUMN "count";
  ALTER TABLE "projects" DROP COLUMN "featured_type";
  ALTER TABLE "projects" DROP COLUMN "featured_badge_color";
  ALTER TABLE "_projects_v" DROP COLUMN "version_featured_type";
  ALTER TABLE "_projects_v" DROP COLUMN "version_featured_badge_color";
  ALTER TABLE "home_page_blocks_featured_projects" DROP COLUMN "background_color";
  ALTER TABLE "home_page_blocks_featured_projects" DROP COLUMN "view_all_href";
  ALTER TABLE "home_page_blocks_featured_projects" DROP COLUMN "source_mode";
  ALTER TABLE "home_page_blocks_featured_projects" DROP COLUMN "count";
  DROP TYPE "public"."enum_pages_blocks_featured_projects_tabs_value";
  DROP TYPE "public"."enum_pages_blocks_featured_projects_source_mode";
  DROP TYPE "public"."enum_projects_featured_type";
  DROP TYPE "public"."enum__projects_v_version_featured_type";
  DROP TYPE "public"."enum_home_page_blocks_featured_projects_tabs_value";
  DROP TYPE "public"."enum_home_page_blocks_featured_projects_source_mode";`)
}
