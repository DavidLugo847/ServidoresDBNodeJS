CREATE DATABASE  IF NOT EXISTS `sena_empresa` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `sena_empresa`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sena_empresa
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `pk_id_compra` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `fk_Usuario` bigint(12) DEFAULT NULL,
  `fk_producto` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id_compra`),
  KEY `compra_producto` (`fk_producto`),
  KEY `usuario_compra` (`fk_Usuario`),
  CONSTRAINT `compra_producto` FOREIGN KEY (`fk_producto`) REFERENCES `productos` (`Pk_id_pdto`),
  CONSTRAINT `usuario_compra` FOREIGN KEY (`fk_Usuario`) REFERENCES `usuarios` (`pk_identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,'2019-01-01',1,1007388140,1),(2,'2020-04-03',2,1007388140,2),(3,'2019-01-01',2,100426973,3),(4,'2019-02-05',1,100426973,4),(5,'2019-02-13',1,119355841,5),(6,'2019-04-24',2,1002337863,6),(7,'2019-06-12',3,1002337863,7),(8,'2019-02-19',2,1004248797,8),(9,'2020-03-19',1,1004248797,1),(10,'2019-03-20',6,1004269672,1),(11,'2019-01-31',2,1004402263,1),(12,'2020-03-19',1,1004402263,2),(13,'2019-06-19',1,1004402263,2),(14,'2019-04-09',2,1004402263,2),(15,'2019-07-10',6,1004418839,3),(16,'2019-03-12',3,1004418839,3),(17,'2020-08-18',2,1004492751,3),(18,'2019-10-16',4,1004492751,4),(19,'2019-12-31',2,1004492751,4),(20,'2019-09-18',1,1004492751,4),(21,'2019-05-22',2,1004492861,5),(22,'2019-06-17',5,1004492861,5),(23,'2019-08-21',4,1006410046,5),(24,'2019-03-19',2,1006410046,6),(25,'2019-04-24',1,1006410046,6),(26,'2019-11-12',1,1006410046,6),(27,'2019-09-02',5,1007269672,7),(28,'2020-01-23',2,1007269672,7),(29,'2019-11-20',1,1007269672,7),(30,'2021-05-29',2,1007269672,8),(31,'2019-10-14',2,1007269672,8),(32,'2021-11-01',3,1007308252,8),(33,'2019-04-16',5,1007308252,1),(34,'2019-02-20',2,1007308344,1),(35,'2019-05-01',4,1007308344,1),(36,'2019-07-18',2,1007308354,2),(37,'2019-08-15',3,1007308354,2),(38,'2019-05-01',5,1007308354,2),(39,'2019-04-30',6,1007308354,3),(40,'2019-09-12',3,1007388140,3),(41,'2019-03-01',2,1007402493,3),(42,'2019-10-01',1,1007402493,4),(43,'2019-10-01',4,1007411660,4),(44,'2019-04-01',2,1007411660,4),(45,'2019-01-30',1,1007411891,5),(46,'2019-02-22',2,1007411891,5),(47,'2019-01-29',1,1007411891,5),(48,'2019-09-24',3,1007503181,6),(49,'2019-10-21',2,1007503181,6),(50,'2019-01-01',1,1007521042,6),(51,'2019-05-21',5,1007521042,7),(52,'2021-05-01',4,1007808266,7),(53,'2019-12-01',6,1007808266,7),(54,'2021-04-16',3,1007897832,8),(55,'2019-05-14',2,1007897832,8),(56,'2019-05-01',3,1081733897,8),(57,'2020-04-23',1,1081733897,1),(58,'2019-05-01',4,1081733897,1),(59,'2020-05-21',3,1081733897,1),(60,'2021-02-27',2,1081733897,2),(61,'2019-11-20',4,1083929667,2),(62,'2019-09-01',5,1083929667,2),(63,'2020-10-31',1,1083929667,3),(64,'2021-01-22',3,1006410046,3),(65,'2021-05-22',5,96361787,2),(66,'2021-04-15',2,96361787,7);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `Pk_id_pdto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Pdto` varchar(50) DEFAULT NULL,
  `Descripcion_Pdto` varchar(50) DEFAULT NULL,
  `Valor_Pdto` decimal(10,2) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `fk_UP` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pk_id_pdto`),
  KEY `Up_producto` (`fk_UP`),
  CONSTRAINT `Up_producto` FOREIGN KEY (`fk_UP`) REFERENCES `unidades_productivas` (`pk_Codigo_UP`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'yogurth','yogurth con frutas ',500.00,120,2),(2,'Chorizo','Chorizo de pollo',1000.00,500,2),(3,'Avena','Avena en vaso',2000.00,600,2),(4,'Cilantro','Hortalizas y verduras x Manojo',500.00,300,1),(5,'Cebolla','Cebolla Larga X Libra',800.00,100,1),(6,'Tomate','Tomate Cerry X Libra',1500.00,200,1),(7,'Almuerzos','Almuerzos especiales',5000.00,500,3),(8,'Cachama','Cachama Roja X Libra',4500.00,300,4);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades_productivas`
--

DROP TABLE IF EXISTS `unidades_productivas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidades_productivas` (
  `pk_Codigo_UP` int(11) NOT NULL,
  `Nombre_UP` varchar(50) DEFAULT NULL,
  `Descripcion_UP` varchar(80) DEFAULT NULL,
  `Sede` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pk_Codigo_UP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades_productivas`
--

LOCK TABLES `unidades_productivas` WRITE;
/*!40000 ALTER TABLE `unidades_productivas` DISABLE KEYS */;
INSERT INTO `unidades_productivas` VALUES (1,'Agricola','Produccion de productos organicos','Yamboro'),(2,'Agroindustira','Proceso de productos lácteos y cárnicos','Yamboro'),(3,'Gastronomía','Venta de almuerzos especiales','Yamboro'),(4,'Pecuaria',NULL,'Yamboro'),(5,'Escuela Nacional de la Calidad del Café',NULL,'Yamboro'),(6,'Ambiental – Recursos Naturales',NULL,'Yamboro'),(7,'Empresa de Servicios Públicos',NULL,'Yamboro'),(8,'Moda – Comercio y Servicios',NULL,'Centro');
/*!40000 ALTER TABLE `unidades_productivas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `pk_identificacion` bigint(12) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  `Tipo_Usuario` enum('Instructor','Aprendiz','Administrativo','Invitado') DEFAULT NULL,
  PRIMARY KEY (`pk_identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (96361787,'WILSON MARTINEZ SALDARRIAGA','','','Instructor'),(100426973,'ELIAN CANDIL','NULL','NULL','Aprendiz'),(119355841,'LINA TATIANA SAMBONI','NULL','NULL','Aprendiz'),(1002337863,'JERSON SMITH','NULL','NULL','Aprendiz'),(1004248797,'LEIDY DAYANA INCHIMA','NULL','NULL','Aprendiz'),(1004269672,'NATALIA ROJAS ROJAS','NULL','NULL','Aprendiz'),(1004402263,'MANUEL CAMILO OME','NULL','NULL','Aprendiz'),(1004418839,'OSWALDO SAMBONI BOLAÑOS','NULL','NULL','Aprendiz'),(1004492751,'DANA ARTUNDUAGA','NULL','NULL','Aprendiz'),(1004492861,'LAURA VANESSA','NULL','NULL','Aprendiz'),(1006410046,'FERNANDO SARREAS','NULL','NULL','Aprendiz'),(1007269672,'ARMANDO CUELLAR','NULL','NULL','Aprendiz'),(1007308252,'JHONARY LOSADA','NULL','NULL','Aprendiz'),(1007308344,'JERSON STERLING','NULL','NULL','Aprendiz'),(1007308354,'DIEGO ALEGANDRO LOPEZ','NULL','NULL','Aprendiz'),(1007388140,'KAREN DANIELA ROJAS','','','Aprendiz'),(1007402493,'OLIVER MORA','NULL','NULL','Aprendiz'),(1007411660,'LUIS FELIPE ALVAREZ RIVERA','NULL','NULL','Aprendiz'),(1007411891,'VICTOR MOSES','NULL','NULL','Aprendiz'),(1007503181,'FELIPE BARRERA FIGUEROA','NULL','NULL','Aprendiz'),(1007521042,'CRISTIAN ANDRES YELA','NULL','NULL','Aprendiz'),(1007808266,'SEBASTIAN ORTIZ','NULL','NULL','Aprendiz'),(1007897832,'LEIDY JOHANNA DE LA CRUZ','NULL','NULL','Aprendiz'),(1081733897,'NICOLAS CLAROS','NULL','NULL','Aprendiz'),(1083929667,'LUIS ATAHUALPA','NULL','NULL','Aprendiz');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21 17:05:57

-- Dia de la clase.
select * from usuarios where Tipo_Usuario="Instructor";
select * from compras;
select * from productos where valor_pdto>2000;
select * from productos where valor_pdto<2000;
select Nombre,fecha,Cantidad from usuarios join compras on pk_identificacion=fk_Usuario;
select Nombre, Nombre_Pdto, Cantidad from usuarios join compras on pk_identificacion=fk_Usuario join productos on pk_id_pdto=fk_producto;

-- Solución Actividad

-- Actualizar Dirección y Teléfonos de 5 usuarios
select * from usuarios;
update usuarios set Telefono='3208456789', Direccion="CLL 5- CRA 12" where pk_identificacion=100426973;
update usuarios set Telefono='3208920207', Direccion="CLL 6- CRA 5"  where pk_identificacion=1004402263;
update usuarios set Telefono='3143256789', Direccion="CLL 1- CRA 3"  where pk_identificacion=1004418839;
update usuarios set Telefono='3123456745', Direccion="CLL 4- CRA 2"  where pk_identificacion=1006410046;
update usuarios set Telefono='3134325678', Direccion="CLL 2- CRA 1"  where pk_identificacion=1007411660;
update unidades_productivas set Nombre_Up='Agroindustria' where pk_Codigo_UP=2;

-- Registrar una compra a 5 usuarios.
select * from compras;
insert into compras (fecha,Cantidad, fk_Usuario, fk_producto) values('2021-06-14','2','1007411660','3');
insert into compras (fecha,Cantidad, fk_Usuario, fk_producto) values('2020-06-11','4','1004418839','6');
insert into compras (fecha,cantidad, fk_Usuario, fk_producto) values('2021-01-13','3','100426973','8');
insert into compras (fecha,Cantidad, fk_Usuario, fk_producto) values('2021-07-30','1','1006410046','1');
insert into compras (fecha,Cantidad, fk_Usuario, fk_producto) values('2020-06-11','3','1007411660','2');

-- Realizar una consulta que muestre nombres, teléfono y dirección de los usuarios.
select Nombre,Telefono,Direccion from usuarios;

-- Realizar una consulta que filtre un usuario por el número de la cedula.
select pk_identificacion from usuarios;
select * from usuarios where pk_identificacion="1007808266";

-- Listar todos los usuarios y oredenarlos por el nombre de la Z-A 
select Nombre from usuarios order by Nombre desc;

-- listar todos los nombres de los usuarios que han comprado productos a la unidad productiva Agricola.
select Nombre,Nombre_Pdto from usuarios join compras on pk_identificacion=fk_Usuario join productos on fk_producto=Pk_id_pdto where fk_UP=1;

-- Listar los nombres de los usuarios que han comprado producto tomate.
select Nombre from usuarios join compras on pk_identificacion=fk_Usuario where fk_producto=6;

-- Motrar los productos cuyo precio sea mayor a 2000 pesos.
select * from productos where valor_pdto>2000;
-- Listar todos los productos que inician con la letra P y C.
Select Nombre_Pdto from productos where Nombre_Pdto like 'c%' or Nombre_Pdto like'p%';

-- Listar todos los productos de cada una de las unidades productivas.
select * from productos join unidades_productivas on pk_Codigo_UP=fk_UP;
select * from productos join unidades_productivas on pk_Codigo_UP=fk_UP where Nombre_UP="Agricola";
select * from productos join unidades_productivas on pk_Codigo_UP=fk_UP where Nombre_UP="Agroindustria";
select * from productos join unidades_productivas on pk_Codigo_UP=fk_UP where Nombre_UP="Gastronomía";
select * from productos join unidades_productivas on pk_Codigo_UP=fk_UP where Nombre_UP="Pecuaria";
select * from productos join unidades_productivas on pk_Codigo_UP=fk_UP where Nombre_UP="Escuela Nacional de la Calidad Café";
select * from productos join unidades_productivas on pk_Codigo_UP=fk_UP where Nombre_UP="Ambiental-Recusos Naturales";
select * from productos join unidades_productivas on pk_Codigo_UP=fk_UP where Nombre_UP="Empresa de Servicios Públicos";
select * from productos join unidades_productivas on pk_Codigo_UP=fk_UP where Nombre_UP="Moda- Comercio y Servicios";
select * from productos;
select * from compras;
select * from unidades_productivas;
-- listar los nombres de los usuarios que han comprado en la unidad productiva pecuaria mas de 2 productos.
select Nombre, Cantidad from usuarios 
join compras on pk_identificacion=fk_Usuario 
join productos on pk_id_pdto=fk_producto 
 where cantidad>2 and fk_UP=4;

-- Funciones estadisticas.
-- Group by
select Nombre_pdto, sum(cantidad) as Cantidad from productos join compras on pk_id_pdto=fk_producto group by Nombre_pdto order by cantidad desc;
-- mostrar usuario que ha comprado mas productos compro.
select Nombre, sum(cantidad) as Cantidad from usuarios join compras on pk_identificacion=fk_Usuario join productos on pk_id_pdto=fk_producto group by cantidad order by cantidad desc ;

-- Mostar el nombre de la unidad productiva que mas productos vendio
select Nombre_UP, sum(cantidad) as Cantidad  from unidades_productivas join productos on pk_Codigo_UP=fk_UP join compras on Pk_id_pdto=fk_producto group by Nombre_UP order by cantidad desc;
-- minimo
select nombre_pdto,min(stock) as stock from productos group by nombre_pdto order by stock asc;
-- promedio
select avg(valor_pdto) from productos;
-- funciones fechas
select curdate();
select year('2021-06-12');
select month('2021-06-12');
select day('2021-06-12');

-- consulta que retorne ventas del año 2019, 2020 2021
select * from compras where year(fecha)=2019;
select * from compras where year(fecha)=2020;
select * from compras where year(fecha)=2021;
-- 2019 enero
select * from compras where year(fecha)=2019 and month(fecha)=1;
 -- generar el total vendido en pesos de las unidades productivas.
 select nombre_up, sum(cantidad*valor_pdto) as total from unidades_productivas join productos on pk_Codigo_UP=fk_UP join compras on Pk_id_pdto=fk_producto where year(fecha)=2020 group by nombre_up;
 -- consultar el total en pesos de los productos disponibles en bodega (stock*valor del producto), mostrar nombre del producto, total en valor.
 select Nombre_Pdto, sum(stock*valor_Pdto) as total from productos group by Nombre_Pdto;
 -- Consultar cual es la unidad productiva que más vendió en pesos en el año 2019, mostrar el nombre de la up y el valor.
  select nombre_up, sum(cantidad*valor_pdto) as total from unidades_productivas join productos on pk_Codigo_UP=fk_UP join compras on Pk_id_pdto=fk_producto where year(fecha)=2019 group by nombre_up;
 -- Consultar cual fue el mes que más compras realizaron, mostrar el mes y el total en pesos de las venta del mes y ordenar de mayor a menor.
 select month(fecha) as mes, sum(Valor_Pdto) as total from compras join productos on fk_producto=Pk_id_pdto group by month(fecha) order by total desc;
 -- Consultar los dos primeros usuarios que más compras realizaron entre el mes de enero y agosto del 2019. Mostrar nombre del cliente, mes y valor de la compra.
  select Nombre, month(fecha) as mes, sum(Cantidad)as cantidad, sum(cantidad*valor_pdto) as valor from usuarios 
  join compras on pk_identificacion=fk_Usuario 
  join productos on fk_producto=Pk_id_pdto 
  where year(fecha)=2019 and month(fecha)>1 and month(fecha)<8
  group by Nombre order by cantidad desc;
  
 -- Consultar los tres primeros productos que más se vendieron en el mes de mayo del 2019, mostrar el nombre del producto, cantidad y valor de la compra.
 select Nombre_Pdto, sum(cantidad) as cantidad, sum(cantidad*valor_pdto) from productos join compras on fk_producto=Pk_id_pdto
 where year(fecha)=2019 and month(fecha)=5 group by Nombre_Pdto order by cantidad desc;
  select * from compras;
 -- Consultar cuál es el producto que más se vendió en el año 2019, mostrar nombre del producto, cantidad vendida.
 select Nombre_Pdto, sum(cantidad)as cantidad from productos 
 join compras on fk_producto=Pk_id_pdto where year(fecha)=2019 group by Nombre_Pdto order by cantidad desc;