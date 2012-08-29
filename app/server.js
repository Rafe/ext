require('coffee-script');

var env = process.env.NODE_ENV || 'development'
  , port;

if(env == 'development'){
  port = 3000;
}else if(env == 'production'){
  port = process.env.PORT || 80;
}else if(env == 'test'){
  port = 8888;
}

module.exports = (function (port) {
  var express = require('express'),
      Resource = require('express-resource'),
      app = express.createServer()

  require('./config')(app);
  require('./app')(app);

  app.listen(port);

})(port)
