const mysql = require('mysql2/promise')

const url = process.env.DATABASE_URL || 'mysql://root@localhost/rusch'
console.log(`MySQL connecting to: ${url}`)
const pool = mysql.createPool(`${url}?waitForConnections=true&connectionLimit=10&queueLimit=0`)

// Helpers

const first = async q => (await q)[0]
const exec = (query, params) => {
  console.log('SQL - ', { query, params })
  return first(pool.execute(query, params))
}

const exec1 = (query, params) => first(exec(`${query} LIMIT 1`, params))

// CRUD

const getArticles = () => exec('SELECT * FROM articles')

module.exports = {
  getArticles
}