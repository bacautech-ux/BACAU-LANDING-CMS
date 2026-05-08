import { buildConfig } from 'payload'
import { vi } from '@payloadcms/translations/languages/vi'
import { HomePage } from './src/globals/HomePage'
import { SiteSettings } from './src/globals/SiteSettings'
import { postgresAdapter } from '@payloadcms/db-postgres'
import { cloudStoragePlugin } from '@payloadcms/plugin-cloud-storage'
import { lexicalEditor } from '@payloadcms/richtext-lexical'
import path from 'path'
import { fileURLToPath } from 'url'
import sharp from 'sharp'
import { cloudinaryAdapter } from './src/lib/cloudinaryAdapter'

import { Users } from './src/collections/Users'
import { Media } from './src/collections/Media'
import { Pages } from './src/collections/Pages'
import { Projects } from './src/collections/Projects'
import { News } from './src/collections/News'
import { Products } from './src/collections/Products'
import { Partners } from './src/collections/Partners'
import { Services } from './src/collections/Services'

const filename = fileURLToPath(import.meta.url)
const dirname = path.dirname(filename)

export default buildConfig({
  admin: {
    user: Users.slug,
    importMap: {
      baseDir: path.resolve(dirname),
    },
    components: {
      afterNavLinks: ['/src/components/admin/BlockLibraryNavLink.tsx#BlockLibraryNavLink'],
      views: {
        blockLibrary: {
          Component: '/src/components/admin/BlockLibraryShell.tsx#BlockLibraryShell',
          path: '/block-library',
        },
      },
    },
    theme: 'light',
    meta: {
      titleSuffix: '- Bắc Âu Admin',
    },
  },
  collections: [Users, Media, Pages, Projects, News, Products, Partners, Services],
  globals: [HomePage, SiteSettings],
  plugins: [
    cloudStoragePlugin({
      collections: {
        media: {
          adapter: cloudinaryAdapter(),
          disableLocalStorage: true,
        },
      },
    }),
  ],
  editor: lexicalEditor(),
  // UI admin bằng tiếng Việt
  i18n: {
    supportedLanguages: { vi },
    fallbackLanguage: 'vi',
  },
  // Content đa ngôn ngữ (VI / EN)
  localization: {
    locales: [
      { label: 'Tiếng Việt', code: 'vi' },
      { label: 'English', code: 'en' },
    ],
    defaultLocale: 'vi',
    fallback: true, // nếu EN chưa có → fallback về VI
  },
  secret: process.env.PAYLOAD_SECRET ?? 'bacau-dev-secret-change-in-production',
  typescript: {
    outputFile: path.resolve(dirname, 'payload-types.ts'),
  },
  db: postgresAdapter({
    pool: {
      connectionString: process.env.DATABASE_URL ?? '',
    },
    push: process.env.NODE_ENV === 'development',
  }),
  sharp,
})
