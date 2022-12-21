import { WebPlugin } from '@capacitor/core';
import type { pendoPlugin } from './definitions';
export declare class pendoWeb extends WebPlugin implements pendoPlugin {
    startSession(options: {
        visitorId: string;
        accountId: string;
        visitorData: string;
        accountData: string;
    }): Promise<{
        visitorId: string;
        accountId: string;
        visitorData: string;
        accountData: string;
    }>;
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
}
