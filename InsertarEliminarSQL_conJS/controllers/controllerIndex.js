let controlador = {};
let conexion = require('../conexionbd');

controlador.renderIndex = (req, resp) => {
    resp.render('index.ejs');
};

controlador.regresar = (req, resp) => {
    resp.render("index.ejs");
};

controlador.renderFrmRegistro = (req, resp) => {
    var sql = "select * from unidades_productivas";

    conexion.query(sql, (err, rows, fields) => {
        if (!err) {
            resp.render('formularioReg.ejs', { UProd: rows });
        } else {
            console.log("Error en la consulta: " + err);
        }
    });
};

module.exports = controlador;