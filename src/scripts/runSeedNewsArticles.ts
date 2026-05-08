import config from '../../payload.config'
import { script } from './seedNewsArticles'

const originalExit = process.exit.bind(process)

console.log('[start] Seeding news articles...')

const seed = script(config)

process.exit = ((code?: number | string | null | undefined) => {
  seed
    .then(() => originalExit((typeof code === 'number' ? code : 0) as never))
    .catch((err) => {
      console.error(err)
      originalExit(1 as never)
    })

  return undefined as never
}) as typeof process.exit

seed.catch((err) => {
  console.error(err)
  originalExit(1 as never)
})
