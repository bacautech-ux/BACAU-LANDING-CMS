import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   CREATE TABLE "pages_blocks_services_cards" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
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
  
  CREATE TABLE "home_page_blocks_services_cards" (
  	"_order" integer NOT NULL,
  	"_parent_id" varchar NOT NULL,
  	"id" varchar PRIMARY KEY NOT NULL,
  	"image_id" integer,
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
  
  ALTER TABLE "pages_blocks_services_locales" ADD COLUMN "title" varchar DEFAULT 'LĨNH VỰC HOẠT ĐỘNG';
  ALTER TABLE "home_page_blocks_services_locales" ADD COLUMN "title" varchar DEFAULT 'LĨNH VỰC HOẠT ĐỘNG';
  ALTER TABLE "pages_blocks_services_cards" ADD CONSTRAINT "pages_blocks_services_cards_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "pages_blocks_services_cards" ADD CONSTRAINT "pages_blocks_services_cards_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_services"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "pages_blocks_services_cards_locales" ADD CONSTRAINT "pages_blocks_services_cards_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_services_cards"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_services_cards" ADD CONSTRAINT "home_page_blocks_services_cards_image_id_media_id_fk" FOREIGN KEY ("image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;
  ALTER TABLE "home_page_blocks_services_cards" ADD CONSTRAINT "home_page_blocks_services_cards_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_services"("id") ON DELETE cascade ON UPDATE no action;
  ALTER TABLE "home_page_blocks_services_cards_locales" ADD CONSTRAINT "home_page_blocks_services_cards_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."home_page_blocks_services_cards"("id") ON DELETE cascade ON UPDATE no action;
  CREATE INDEX "pages_blocks_services_cards_order_idx" ON "pages_blocks_services_cards" USING btree ("_order");
  CREATE INDEX "pages_blocks_services_cards_parent_id_idx" ON "pages_blocks_services_cards" USING btree ("_parent_id");
  CREATE INDEX "pages_blocks_services_cards_image_idx" ON "pages_blocks_services_cards" USING btree ("image_id");
  CREATE UNIQUE INDEX "pages_blocks_services_cards_locales_locale_parent_id_unique" ON "pages_blocks_services_cards_locales" USING btree ("_locale","_parent_id");
  CREATE INDEX "home_page_blocks_services_cards_order_idx" ON "home_page_blocks_services_cards" USING btree ("_order");
  CREATE INDEX "home_page_blocks_services_cards_parent_id_idx" ON "home_page_blocks_services_cards" USING btree ("_parent_id");
  CREATE INDEX "home_page_blocks_services_cards_image_idx" ON "home_page_blocks_services_cards" USING btree ("image_id");
  CREATE UNIQUE INDEX "home_page_blocks_services_cards_locales_locale_parent_id_uni" ON "home_page_blocks_services_cards_locales" USING btree ("_locale","_parent_id");`)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   DROP TABLE "pages_blocks_services_cards" CASCADE;
  DROP TABLE "pages_blocks_services_cards_locales" CASCADE;
  DROP TABLE "home_page_blocks_services_cards" CASCADE;
  DROP TABLE "home_page_blocks_services_cards_locales" CASCADE;
  ALTER TABLE "pages_blocks_services_locales" DROP COLUMN "title";
  ALTER TABLE "home_page_blocks_services_locales" DROP COLUMN "title";`)
}
