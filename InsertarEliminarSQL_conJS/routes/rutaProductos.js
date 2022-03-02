let express = require('express');
let ruta_Productos = express.Router();
let contProductos = require('../controllers/controllerProductos');


ruta_Productos.get('/listarProductos', contProductos.listarProductos);
ruta_Productos.get('/eliminar/:id', contProductos.eliminar);


module.exports = ruta_Productos;