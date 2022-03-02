let express = require("express");
let servidor = express();
let bodyparser = require("body-parser");

servidor.use(express.static(__dirname + "/public"));
servidor.use(bodyparser.json());
servidor.use(bodyparser.urlencoded({ extended: false }));
servidor.set("view engine", "ejs");
servidor.set("views", __dirname + "/views");

servidor.use(require("./routes/rutaIndex"));
servidor.use(require("./routes/rutaRegistro"));
servidor.use(require("./routes/rutaProductos"));

servidor.listen(3000, () => {
    console.log('El servidor 3000 esta activo');
});