const mysql = require("mysql");

module.exports = mysql.createPool({
  connectionLimit : 10,
  host: "localhost",
  user: "root",
  password: "root",
  database: "qg"
});