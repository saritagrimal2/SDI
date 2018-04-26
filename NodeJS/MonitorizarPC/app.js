var express = require('express');
var app = express();
var os = require('os');
var puerto = 3000;

app.get('/memoria', function (req, res) {
    setTimeout(function () { // Espera de 10 segundos
        console.log(os.freemem());
        var memoriaLibre = os.freemem() / 1000000;  //pasar a MB
        res.status(200);
        res.json({memoria: memoriaLibre});
    }, 10000);
});

app.listen(puerto, function () {
    console.log("Servidor listo " + puerto);
}); 