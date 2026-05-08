import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
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
  
  ALTER TABLE "pages_blocks_hero_stats" ADD CONSTRAINT "pages_blocks_hero_stats_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_hero"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_hero_stats_locales" ADD CONSTRAINT "pages_blocks_hero_stats_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_hero_stats"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_hero_stats" ADD CONSTRAINT "home_page_blocks_hero_stats_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_hero"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_hero_stats_locales" ADD CONSTRAINT "home_page_blocks_hero_stats_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_hero_stats"("id") ON DELETE cascade ON UPDATE no action;
  CREATE INDEX "pages_blocks_hero_stats_order_idx" ON "pages_blocks_hero_stats" USING btree ("_order");
  CREATE INDEX "pages_blocks_hero_stats_parent_id_idx" ON "pages_blocks_hero_stats" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "pages_blocks_hero_stats_locales_locale_parent_id_unique" ON "pages_blocks_hero_stats_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_hero_stats_order_idx" ON "home_page_blocks_hero_stats" USING btree ("_order");
  CREATE INDEX "home_page_blocks_hero_stats_parent_id_idx" ON "home_page_blocks_hero_stats" USING btree ("_parent_id");
  CREATE UNIQUE INDEX "home_page_blocks_hero_stats_locales_locale_parent_id_unique" ON "home_page_blocks_hero_stats_locales" USING btree ("_locale","_parent_id");`)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   DROP TABLE "pages_blocks_hero_stats" CASCADE;
  DROP TABLE "pages_blocks_hero_stats_locales" CASCADE;
  DROP TABLE "home_page_blocks_hero_stats" CASCADE;
  DROP TABLE "home_page_blocks_hero_stats_locales" CASCADE;`)
}
