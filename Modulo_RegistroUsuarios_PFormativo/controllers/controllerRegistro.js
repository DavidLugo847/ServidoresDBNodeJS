let controllerRegistro = {};
const conexion = require("../conexiondb");


controllerRegistro.renderFormulario = (req, resp) => {
    resp.render('formRegistro');
}

controllerRegistro.registrarUsuario = (req, resp) => {
    let iduser = req.body.idusuario;
    let nombres = req.body.nombre;
    let correo = req.body.correo;
    let login = req.body.usuario;
    let password = req.body.contrasena;
    let direccion = req.body.direccion;
    let telefono = req.body.telefono;
    let rol = req.body.tipousuario;
    console.log(iduser, nombres, correo, login, password, direccion, rol);
    let sql = `insert into personas(identificacion, Nombres, Correo, Login, Password, Direccion, Telefono, Rol)
                values('${iduser}','${nombres}','${correo}','${login}', '${password}', '${direccion}','${telefono}','${rol}')`;



    conexion.query(sql, (err, req, rows) => {
        if (!err) {
            resp.redirect('/listarUsuarios');
        } else {
            console.log('Error al registrar el Usuario: ' + err);
        };
    });
};

module.exports = controllerRegistro;