import fs from 'node:fs'
import path from 'node:path'
import process from 'node:process'
import { Pool } from 'pg'

function loadLocalEnv() {
  const envPath = path.resolve(process.cwd(), '.env.local')
  if (!fs.existsSync(envPath)) return

  const lines = fs.readFileSync(envPath, 'utf8').split(/\r?\n/)
  for (const line of lines) {
    const trimmed = line.trim()
    if (!trimmed || trimmed.startsWith('#')) continue

    const eq = trimmed.indexOf('=')
    if (eq === -1) continue

    const key = trimmed.slice(0, eq).trim()
    let value = trimmed.slice(eq + 1).trim()

    if (
      (value.startsWith('"') && value.endsWith('"')) ||
      (value.startsWith("'") && value.endsWith("'"))
    ) {
      value = value.slice(1, -1)
    }

    if (!process.env[key]) {
      process.env[key] = value
    }
  }
}

async function getReferencingColumns(pool: Pool) {
  const { rows } = await pool.query<{
    column_name: string
    table_name: string
  }>(`
    select
      tc.table_name,
      kcu.column_name
    from information_schema.table_constraints tc
    join information_schema.key_column_usage kcu
      on tc.constraint_name = kcu.constraint_name
      and tc.table_schema = kcu.table_schema
    join information_schema.constraint_column_usage ccu
      on ccu.constraint_name = tc.constraint_name
      and ccu.table_schema = tc.table_schema
    where tc.constraint_type = 'FOREIGN KEY'
      and tc.table_schema = 'public'
      and ccu.table_name = 'pages'
      and ccu.column_name = 'id'
    order by tc.table_name, kcu.column_name
  `)

  return rows
}

async function getPageColumns(pool: Pool) {
  const { rows } = await pool.query<{ column_name: string }>(`
    select column_name
    from information_schema.columns
    where table_schema = 'public'
      and table_name = 'pages'
    order by ordinal_position
  `)

  return rows.map((row) => row.column_name)
}

function quoteIdentifier(identifier: string) {
  return `"${identifier.replace(/"/g, '""')}"`
}

async function normalizeHomePageId() {
  loadLocalEnv()

  if (!process.env.DATABASE_URL) {
    throw new Error('DATABASE_URL is not set')
  }

  const pool = new Pool({ connectionString: process.env.DATABASE_URL })
  const client = await pool.connect()

  try {
    await client.query('begin')

    const before = await client.query<{ id: number; slug: string }>(
      'select id, slug from pages order by id',
    )
    console.log('[before]', before.rows)

    const home = before.rows.find((row) => row.slug === 'home')
    if (!home) {
      throw new Error('Cannot find pages record with slug "home"')
    }

    await client.query("delete from pages where slug <> 'home'")

    if (home.id !== 1) {
      await client.query("update pages set slug = '__home_moving__' where id = $1", [home.id])

      const columns = await getPageColumns(pool)
      const insertColumns = columns.map(quoteIdentifier).join(', ')
      const selectColumns = columns
        .map((column) => {
          if (column === 'id') return '1'
          if (column === 'slug') return "'home'"
          return `p.${quoteIdentifier(column)}`
        })
        .join(', ')

      await client.query(
        `insert into pages (${insertColumns}) select ${selectColumns} from pages p where p.id = $1`,
        [home.id],
      )

      const referencingColumns = await getReferencingColumns(pool)
      for (const ref of referencingColumns) {
        await client.query(
          `update ${quoteIdentifier(ref.table_name)}
           set ${quoteIdentifier(ref.column_name)} = 1
           where ${quoteIdentifier(ref.column_name)} = $1`,
          [home.id],
        )
      }

      await client.query('delete from pages where id = $1', [home.id])
    }

    await client.query("select setval(pg_get_serial_sequence('pages', 'id'), 1, true)")

    const after = await client.query<{ id: number; slug: string }>(
      'select id, slug from pages order by id',
    )
    console.log('[after]', after.rows)

    await client.query('commit')
  } catch (error) {
    await client.query('rollback')
    throw error
  } finally {
    client.release()
    await pool.end()
  }
}

normalizeHomePageId().catch((error) => {
  console.error(error)
  process.exit(1)
})
