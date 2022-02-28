let controlador = {};
const conexion = require("../conexionbd");

controlador.registrarProducto = (req, resp) => {
    let Nombre = req.body.Nombre;
    let Descripcion = req.body.Descripcion;
    let Cantidad = req.body.Cantidad;
    let UP = req.body.UProductiva;
    var sql = `insert into productos(Nombre_Pdto, Descripcion_Pdto,Stock, fk_UP) values('${Nombre}', '${Descripcion}', '${Cantidad}', '${UP}')`;

    console.log(sql);
    conexion.query(sql, (err, rows) => {
        if (!err) {
            resp.redirect('/listarProductos');
        } else {
            console.log('Error al Registrar el Producto: ' + err);
        }
    });
};
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
controlador.regresar = (req, resp) => {
    resp.render('index.ejs');
}
module.exports = controlador;