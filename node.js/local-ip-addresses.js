/**
 * YJC <https://github.com/yangjc> @2018-05-04
 */

'use strict';

const os = require('os');
const networkInterfaces = os.networkInterfaces();

console.log(`Hostname: ${os.hostname()}`);

for (let name of Object.getOwnPropertyNames(networkInterfaces)) {
    const addresses = networkInterfaces[name].reduce((r, item) => {
        if (item.family === 'IPv4' && item.internal === false) {
            r.push(item.address);
        }
        return r;
    }, []);
    addresses.length > 0 && console.log(`${name}\n  ${addresses.join(' ')}`);
}
