'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var core = require('@capacitor/core');

const pendo = core.registerPlugin('pendo', {
    web: () => Promise.resolve().then(function () { return web; }).then(m => new m.pendoWeb()),
});

class pendoWeb extends core.WebPlugin {
    async echo(options) {
        console.log('ECHO', options);
        return options;
    }
}

var web = /*#__PURE__*/Object.freeze({
    __proto__: null,
    pendoWeb: pendoWeb
});

exports.pendo = pendo;
//# sourceMappingURL=plugin.cjs.js.map
