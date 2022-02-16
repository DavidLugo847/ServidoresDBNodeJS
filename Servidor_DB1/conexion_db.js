const mysql =require("mysql");
var conexion = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "sena_empresa"
});

conexion.connect((err)=>{
    if(!err){
        
        console.log('Conectado al motor de base de datos de Mysql.');
        
    }else{
        console.log("No se conectó al motor de base de datos de Mysql :"+ err);
    }
});
module.exports=conexion;