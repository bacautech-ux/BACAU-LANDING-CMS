import configPromise from '../../payload.config'
import { script } from './seedProductsAndPartners'

await script(await configPromise)
