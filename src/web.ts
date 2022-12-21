import { WebPlugin } from '@capacitor/core';

import type { pendoPlugin } from './definitions';

export class pendoWeb extends WebPlugin implements pendoPlugin {

  async startSession(options: {
    visitorId: string,
    accountId: string,
    visitorData: string,
    accountData: string,
  }): Promise<{
    visitorId: string,
    accountId: string,
    visitorData: string,
    accountData: string,
  }> {
    console.log('refund: ', options);
    return options;
  }
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
