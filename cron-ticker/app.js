const cron = require('node-cron');
const { syncDB } = require('./tasks/sync-db');

console.log('inicio')
cron.schedule('1-59/2 * * * * *', syncDB);
