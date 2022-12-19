import { WebPlugin } from '@capacitor/core';

import type { pendoPlugin } from './definitions';

export class pendoWeb extends WebPlugin implements pendoPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
