let controlador = {};
let conexion = require("../conexion_bd.js");

controlador.renderizarIndex = (consulta, respuesta) => {
  respuesta.render("index.ejs");
};

controlador.listarUsuarios = (consulta, respuesta) => {
  var sql = "select pk_identificacion, Nombre, Tipo_Usuario from usuarios";

  conexion.query(sql, (err, rows, fields) => {
    if (!err) {
      respuesta.render("Lista_Usuarios", { Datos: rows });
    } else {
      console.log("Error en la consulta: " + err);
    }
  });
};

controlador.mostrarprod5 = (consulta, respuesta) => {
  var sql = "select Nombre_Pdto, Valor_Pdto, Stock from productos where Stock <= 5";

  conexion.query(sql, (err, rows, fields) => {
    if (!err) {
      respuesta.render("prod5", { prod: rows });
    } else {
      console.log("Error en la consulta: " + err);
    }
  });
};

controlador.mostrarproddesc = (consulta, respuesta) => {
  var sql = "select Pk_id_pdto, Nombre_Pdto,Valor_Pdto, Valor_pdto-(Valor_pdto*0.10) as Descuento from productos";

  conexion.query(sql, (err, rows, fields) => {
    if (!err) {
      respuesta.render("proddesc", { proddesc: rows });
    } else {
      console.log("Error en la consulta: " + err);
    }
  });
};

controlador.mostrarprodcomprados = (consulta, respuesta) => {
var sql = "select pk_identificacion, Nombre, Nombre_Pdto, SUM(Cantidad) as Cantidad from usuarios join compras on pk_identificacion=fk_usuario join productos on Pk_id_pdto=fk_producto group by pk_identificacion, Nombre_Pdto ASC";
conexion.query(sql, (err, rows, fields) => {
  if (!err) {
    respuesta.render("prodcomp", { prodcom: rows });
  } else {
    console.log("Error en la consulta: " + err);
  }
});
};

controlador.prodstock = (consulta, respuesta) => {
  var sql = "select Pk_id_pdto, Nombre_Pdto, Valor_Pdto, Stock, Valor_Pdto*Stock as ValorStock from productos";
  conexion.query(sql, (err, rows, fields) => {
    if (!err) {
      respuesta.render("prodstock", { prodstock: rows });
    } else {
      console.log("Error en la consulta: " + err);
    }
  });
};

module.exports = controlador;
