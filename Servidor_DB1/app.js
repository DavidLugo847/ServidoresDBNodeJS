const express = require('express');
const bodyparser = require('body-parser'); //Se importa el modulo body-parser para recibir parametros.
const Ruta_Usuarios = require ("./routes/route_usuario");
const Servidor = express();
Servidor.use(express.static(__dirname+'/public')); //Se configura la carpeta publica
Servidor.use(bodyparser.json()); //Se configura para recibir parametros json.
Servidor.use(bodyparser.urlencoded({extended:false}));
Servidor.set('view engine','ejs'); //Se configura  el motor de plantillas ejs
Servidor.set('views', __dirname+ '/views'); //Se configura la carpeta contenedora de las vistas.


Servidor.use(Ruta_Usuarios);

Servidor.listen(3000, ()=>{
    console.log("El servidor se esta ejecutando en el puerto 3000.");
});