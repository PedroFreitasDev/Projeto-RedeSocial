require('dotenv').config()
const knex = require('knex')({
    client: 'mysql2',
    connection: {
      host: process.env.DB_HOST,
      port: 3000,
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_DATABASE,
    },
  })

module.exports = knex