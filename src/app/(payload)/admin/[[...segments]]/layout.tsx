import { RootLayout, handleServerFunctions } from '@payloadcms/next/layouts'
import { importMap } from '../importMap'
import config from '@payload-config'
import type { ServerFunctionClient } from 'payload'
import React from 'react'
import '../custom.css'
import '@payloadcms/next/css'

const serverFunction: ServerFunctionClient = async function (args) {
  'use server'
  return handleServerFunctions({ ...args, config, importMap })
}

export default async function Layout({ children }: { children: React.ReactNode }) {
  return (
    <RootLayout config={config} importMap={importMap} serverFunction={serverFunction}>
      {children}
    </RootLayout>
  )
}
