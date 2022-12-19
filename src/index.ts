import { registerPlugin } from '@capacitor/core';

import type { pendoPlugin } from './definitions';

const pendo = registerPlugin<pendoPlugin>('pendo', {
  web: () => import('./web').then(m => new m.pendoWeb()),
});

export * from './definitions';
export { pendo };
