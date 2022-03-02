let express = require('express');
let servidor = express();
let bodyparser = require('body-parser');

servidor.use(express.static(__dirname + '/public'));
servidor.use(bodyparser.json());
servidor.use(bodyparser.urlencoded({ extended: false }));
servidor.set('view engine', 'ejs');
servidor.set('views', __dirname + '/views');

servidor.use(require('./routes/routeIndex'));
servidor.use(require('./routes/routeRegistro'));
servidor.use(require('./routes/routeUsuarios'));





servidor.listen(4000, () => {
    console.log('Servidor 4000 activo.')
});