let express = require('express');
let route_Registro = express.Router();
let contRegistro = require('../controllers/controllerRegistro');

route_Registro.get('/formRegistro', contRegistro.renderFormulario);
route_Registro.post('/registrarUsuario', contRegistro.registrarUsuario);


module.exports = route_Registro;