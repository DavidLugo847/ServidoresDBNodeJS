let express = require('express');
let ruta_index = express.Router();
let contIndex = require('../controllers/controllerIndex');


ruta_index.get('/', contIndex.renderIndex);
ruta_index.get('/frmRegistro', contIndex.renderFrmRegistro);

module.exports = ruta_index;