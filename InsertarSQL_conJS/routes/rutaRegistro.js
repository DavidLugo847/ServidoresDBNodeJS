let express = require('express');
let ruta_registro = express.Router();
let contRegistro = require('../controllers/controllerRegistro');
let conexion = require('../conexionbd');


ruta_registro.get('/regresar', contRegistro.regresar);
ruta_registro.post('/registrarProducto', contRegistro.registrarProducto); 
ruta_registro.get('/listarProductos', contRegistro.listarProductos);

module.exports = ruta_registro;
