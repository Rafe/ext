#Ext - Express Template with coffeescript

##What is this?

Ext include a command line tool to generate scaffold template
of a mvc node.js app with express and coffeescript.

This template included:

+ mvc structure
+ package.json
+ mocha test framework
+ redis
+ mongodb and mongoose
+ Cakefile

##Usage

    npm install -g ext
    ext init [app name]

##Template Structure:

    app/ #main application directory
      controllers/
      models/
      views/
      index.coffee #entry point of app, load all routes and controllers
    assets/
      css/
      js/
    config/
      db.coffee # database settings
      index.coffee # application settings
    data/ #place for database config files and data
    lib/
    log/
    public/ #public assets and images
    test/
      controllers/
      models/
      views/
      mocha.opts #mocha load options
      test_helper.coffee
    Cakefile
    package.json
    Procfile
    server.js

##TODO:

+ jquery
+ bootstrap
+ test sample
+ template options
+ model generator
+ controller generator
