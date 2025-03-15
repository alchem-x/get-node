#!/usr/bin/env zx
import { toString } from 'lodash-es'

const platform = toString(await $`uname -s | tr '[:upper:]' '[:lower:]'`).trim()

const arch = toString(await $`uname -m`).trim()
const finalArch = arch === 'x86_64' ? 'x64' : arch

const nodeVersion = '23.7.0'
const nodeFilename = `node-v${nodeVersion}-${platform}-${finalArch}`
const nodeFilenameExt = `${nodeFilename}.tar.gz`
const nodeUrl = `https://nodejs.org/dist/v${nodeVersion}/${nodeFilenameExt}`

console.info(nodeUrl)