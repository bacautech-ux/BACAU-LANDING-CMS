import configPromise from '../../payload.config'
import { script } from './initCorePages'

await script(await configPromise)
