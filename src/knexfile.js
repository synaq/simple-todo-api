// Update with your config settings.
var config = require('./config/config.json');

module.exports = {
  development: {
    client: config.db.client,
    connection: config.db.connection,
    pool: {
      min: 1,
      max: 1
    },
    "useNullAsDefault": true,
    migrations: {
      tableName: 'knex_migrations'
    }
  }
};
