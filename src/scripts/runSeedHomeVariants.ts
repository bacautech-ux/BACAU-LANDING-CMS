import configPromise from '../../payload.config'
import { script } from './seedHomeVariants'

await script(await configPromise)
