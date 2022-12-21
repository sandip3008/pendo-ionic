var capacitorpendo = (function (exports, core) {
    'use strict';

    const pendo = core.registerPlugin('pendo', {
        web: () => Promise.resolve().then(function () { return web; }).then(m => new m.pendoWeb()),
    });

    class pendoWeb extends core.WebPlugin {
        async startSession(options) {
            console.log('refund: ', options);
            return options;
        }
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

    Object.defineProperty(exports, '__esModule', { value: true });

    return exports;

})({}, capacitorExports);
//# sourceMappingURL=plugin.js.map
