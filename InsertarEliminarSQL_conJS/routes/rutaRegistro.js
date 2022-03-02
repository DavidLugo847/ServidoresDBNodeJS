let express = require('express');
let ruta_registro = express.Router();
let contRegistro = require('../controllers/controllerRegistro');


ruta_registro.get('/regresar', contRegistro.regresar);
ruta_registro.post('/registrarProducto', contRegistro.registrarProducto);

module.exports = ruta_registro;