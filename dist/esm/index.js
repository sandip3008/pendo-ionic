import { registerPlugin } from '@capacitor/core';
const pendo = registerPlugin('pendo', {
    web: () => import('./web').then(m => new m.pendoWeb()),
});
export * from './definitions';
export { pendo };
//# sourceMappingURL=index.js.map