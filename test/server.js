require('coffee-script');

var env = process.env.NODE_ENV || 'development'
  , port;

global.ROOT = __dirname

if(env == 'development'){
  port = 3000;
}else if(env == 'production'){
  port = 8080;
}else if(env == 'test'){
  port = 8888;
}

module.exports = (function (port) {
  var express = require('express'),
      Resource = require('express-resource'),
      app = express.createServer()

  require('./config')(app);
  require('./app/application')(app);

  app.listen(port);

})(port)
