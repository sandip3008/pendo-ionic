import { WebPlugin } from '@capacitor/core';
import type { pendoPlugin } from './definitions';
export declare class pendoWeb extends WebPlugin implements pendoPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
}
