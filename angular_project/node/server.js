var express = require('express');
var app = express();
app.use(express.static('dist'));
app.listen(8086, '0.0.0.0');
console.log("MyProject Server is Listening on port 8086");