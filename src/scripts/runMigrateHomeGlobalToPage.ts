import config from '../../payload.config'
import { script } from './migrateHomeGlobalToPage'

const originalExit = process.exit.bind(process)

console.log('[start] Migrating Global home-page to Pages collection...')

const migration = script(config)

process.exit = ((code?: number | string | null | undefined) => {
  migration
    .then(() => originalExit((typeof code === 'number' ? code : 0) as never))
    .catch((err) => {
      console.error(err)
      originalExit(1 as never)
    })

  return undefined as never
}) as typeof process.exit

migration.catch((err) => {
  console.error(err)
  originalExit(1 as never)
})
