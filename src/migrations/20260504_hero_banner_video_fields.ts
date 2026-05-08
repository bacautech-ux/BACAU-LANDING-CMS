import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   CREATE TYPE "public"."enum_pages_blocks_hero_banner_background_type" AS ENUM('image', 'video');

  ALTER TABLE "pages_blocks_hero_banner"
    ADD COLUMN "background_type" "enum_pages_blocks_hero_banner_background_type" DEFAULT 'image',
    ADD COLUMN "background_video_id" integer,
    ADD COLUMN "poster_image_id" integer;

  ALTER TABLE "pages_blocks_hero_banner"
    ADD CONSTRAINT "pages_blocks_hero_banner_background_video_id_media_id_fk"
      FOREIGN KEY ("background_video_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action,
    ADD CONSTRAINT "pages_blocks_hero_banner_poster_image_id_media_id_fk"
      FOREIGN KEY ("poster_image_id") REFERENCES "public"."media"("id") ON DELETE set null ON UPDATE no action;

  CREATE INDEX "pages_blocks_hero_banner_bg_video_idx" ON "pages_blocks_hero_banner" USING btree ("background_video_id");
  CREATE INDEX "pages_blocks_hero_banner_poster_idx" ON "pages_blocks_hero_banner" USING btree ("poster_image_id");
  `)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   ALTER TABLE "pages_blocks_hero_banner"
    DROP CONSTRAINT "pages_blocks_hero_banner_background_video_id_media_id_fk",
    DROP CONSTRAINT "pages_blocks_hero_banner_poster_image_id_media_id_fk";

  DROP INDEX "pages_blocks_hero_banner_bg_video_idx";
  DROP INDEX "pages_blocks_hero_banner_poster_idx";

  ALTER TABLE "pages_blocks_hero_banner"
    DROP COLUMN "background_type",
    DROP COLUMN "background_video_id",
    DROP COLUMN "poster_image_id";

  DROP TYPE "public"."enum_pages_blocks_hero_banner_background_type";
  `)
}
