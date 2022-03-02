let controllerUsuarios = {};
let conexion = require('../conexiondb');

controllerUsuarios.listarUsuarios = (req, resp) => {
    let sql = 'select identificacion, Nombres, Correo, Direccion, Telefono, Rol from personas order by Nombres ASC';
    conexion.query(sql, (err, rows, fields) => {
        if (!err) {
            resp.render('listUsuarios.ejs', { datosUser: rows });
        } else {
            console.log('Error al realizar la consulta: ' + err);
        }
    });
}

controllerUsuarios.eliminar = (req, resp) => {
    let id = req.params.id;
    let sql = `delete from personas where identificacion = ${id}`;

    conexion.query(sql, (err, rows) => {
        if (!err) {
            resp.redirect('/listarUsuarios');
        } else {
            console.log('Error al eliminar el dato: ' + err);
        }
    });
}


module.exports = controllerUsuarios;