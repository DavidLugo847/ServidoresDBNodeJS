let express = require('express');
let route_Index = express.Router();
let contIndex = require('../controllers/controllerIndex');


route_Index.get('/', contIndex.renderIndex);



module.exports = route_Index;