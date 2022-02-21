let controlador ={};
const conexion = require("../conexionbd");

controlador.registrarProducto = (req, resp)=>{
let Nombre = req.body.Nombre;
let Descripcion = req.body.Descripcion;
let Cantidad = req.body.Cantidad;
let UP = req.body.UnidadProductiva;
var sql = `insert into productos(Nombre_Pdto, Descripcion_Pdto,Stock, fk_UP) values('${Nombre}', '${Descripcion}, '${Cantidad}', '${UP}')`;

conexion.query(sql, (err,rows)=>{
    if(!err){
        resp.redirect('/listarProductos');
    }else{
        console.log('Error al Registrar el Producto: '+err);
    }
});
};
controlador.listarProductos = (req, resp) => {
    var sql = "select * from productos";
  
    conexion.query(sql, (err, rows, fields) => {
      if (!err) {
        resp.render('productos.ejs', { prodstock: rows });
      } else {
        console.log("Error en la consulta: " + err);
      }
    });
  };
controlador.regresar = (req, resp)=>{
    resp.render('index.ejs');
}
module.exports = controlador;