import type { IpcRendererEvent } from 'electron'
import type { AppStoreSchema } from '../store/module/app'
interface EventCallback {
  (event?: IpcRendererEvent, ...args: any[]): void
}
export interface ElectronBridge {
  ipc: {
    on: (channel: string, cb: EventCallback) => void
    send: (channel: string, data: any, cb: EventCallback) => void
    removeListener: (channel: string, cb: EventCallback) => void
    removeListeners: (channel: string) => void
  }
  store: {
    app: {
      get: (name: keyof AppStoreSchema) => string
      set: (name: keyof AppStoreSchema, value: any) => void
    }
  }
}

declare global {
  interface Window {
    electron: ElectronBridge
  }
}
