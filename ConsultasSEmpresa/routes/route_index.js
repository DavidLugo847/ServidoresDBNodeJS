let express = require("express");
let Ruta_Index = express.Router();
let contIndex = require("../controllers/controller_index");


Ruta_Index.get("/", contIndex.renderizarIndex);
Ruta_Index.get("/Listar", contIndex.listarUsuarios);
Ruta_Index.get("/mostrarprod5", contIndex.mostrarprod5);
Ruta_Index.get("/mostrarproddesc", contIndex.mostrarproddesc);
Ruta_Index.get("/mostrarprodcomprados", contIndex.mostrarprodcomprados);
Ruta_Index.get("/prodstock", contIndex.prodstock);



module.exports = Ruta_Index;
