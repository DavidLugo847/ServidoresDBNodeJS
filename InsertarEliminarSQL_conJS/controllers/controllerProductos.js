let controlador = {};
let conexion = require('../conexionbd');


controlador.listarProductos = (req, resp) => {
    var sql = "select Pk_id_pdto, Nombre_Pdto, Descripcion_Pdto, Stock, Nombre_UP from productos join unidades_productivas on pk_Codigo_UP = fk_UP";

    conexion.query(sql, (err, rows, fields) => {
        if (!err) {
            resp.render('productos.ejs', { prodstock: rows });
        } else {
            console.log("Error en la consulta: " + err);
        }
    });
};

controlador.eliminar = (req, resp) => {
    let id = req.params.id;
    let sql = `delete from productos where Pk_id_pdto=${id}`;
    conexion.query(sql, (err, rows) => {
        if (!err) {
            resp.redirect('/listarProductos');
        } else {
            console.log("Error en la consulta: " + err);
        }
    });

}



module.exports = controlador;