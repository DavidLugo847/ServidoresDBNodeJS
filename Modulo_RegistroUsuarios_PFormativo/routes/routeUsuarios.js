let express = require('express');
let route_Usuarios = express.Router();
let contUsuarios = require('../controllers/controllerUsuarios');

route_Usuarios.get('/listarUsuarios', contUsuarios.listarUsuarios);
route_Usuarios.get('/eliminar/:id', contUsuarios.eliminar);

module.exports = route_Usuarios;