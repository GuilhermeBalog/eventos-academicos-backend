const knex = require('knex')
const configuration = require('../config/database')

const connection = knex(configuration)

module.exports = connection