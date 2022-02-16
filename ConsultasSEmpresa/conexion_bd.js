const mysql = require("mysql");
var conexion = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "4033",
  database: "sena_empresa",
});

conexion.connect((err) => {
  if (!err) {
    console.log("Conectado a MySQL");
  } else {
    console.log("Error al conectar a MySQL: " + err);
  }
});
module.exports = conexion;
