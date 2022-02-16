const express = require('express');
const Ruta_Usuarios = express.Router();
const conexion = require('../conexion_db');

Ruta_Usuarios.get('/Listar', (peticion, respuesta)=>{
    var sql ="select pk_identificacion, Nombre, Tipo_Usuario from usuarios";
    conexion.query(sql,(err,rows,fields)=>{
        if(!err){
            respuesta.render('lista_usuarios', {Datos:rows});
        }else{
            console.log('Error de ejecucion de la consulta sql '+ err);
        }
    });
});
module.exports= Ruta_Usuarios;