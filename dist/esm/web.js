import { WebPlugin } from '@capacitor/core';
export class pendoWeb extends WebPlugin {
    async startSession(options) {
        console.log('refund: ', options);
        return options;
    }
    async echo(options) {
        console.log('ECHO', options);
        return options;
    }
}
//# sourceMappingURL=web.js.map