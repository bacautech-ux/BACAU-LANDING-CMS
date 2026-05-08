import type { AdminViewServerProps } from 'payload'
import { DefaultTemplate } from '@payloadcms/next/templates'

import { BlockLibraryView } from './BlockLibraryView'

export const BlockLibraryShell = (props: AdminViewServerProps) => {
  const { initPageResult } = props
  const req = initPageResult.req
  const payload = req.payload
  const permissions = initPageResult.permissions
  const visibleEntities = initPageResult.visibleEntities
  const locale = initPageResult.locale
  const i18n = req.i18n
  const user = req.user ?? undefined

  return (
    <DefaultTemplate
      {...props}
      className="block-library"
      i18n={i18n}
      locale={locale}
      payload={payload}
      permissions={permissions}
      req={req}
      user={user}
      viewType={props.viewType ?? 'block-library'}
      visibleEntities={visibleEntities}
    >
      <BlockLibraryView searchParams={props.searchParams} />
    </DefaultTemplate>
  )
}
