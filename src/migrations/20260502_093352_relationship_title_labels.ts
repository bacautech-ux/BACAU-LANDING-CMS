import { MigrateUpArgs, MigrateDownArgs, sql } from '@payloadcms/db-postgres'

export async function up({ db }: MigrateUpArgs): Promise<void> {
  await db.execute(sql`
   ALTER TABLE "projects" ADD COLUMN "title_label" varchar;
  ALTER TABLE "_projects_v" ADD COLUMN "version_title_label" varchar;
  ALTER TABLE "news" ADD COLUMN "title_label" varchar;
  ALTER TABLE "_news_v" ADD COLUMN "version_title_label" varchar;`)
}

export async function down({ db }: MigrateDownArgs): Promise<void> {
  await db.execute(sql`
   ALTER TABLE "projects" DROP COLUMN "title_label";
  ALTER TABLE "_projects_v" DROP COLUMN "version_title_label";
  ALTER TABLE "news" DROP COLUMN "title_label";
  ALTER TABLE "_news_v" DROP COLUMN "version_title_label";`)
}
