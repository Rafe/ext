express = require 'express'
db = require './db'

module.exports = (app)->
  app.configure ->
    app.set 'view engine', 'jade'
    app.set 'views', "#{__dirname}/../app/views"
    app.use express.static("../public")
    app.use require('connect-assets')()

    app.use express.methodOverride()
    app.use express.bodyParser()
    app.use express.cookieParser()
    app.use express.cookieSession
      secret: process.env.SECRET || "asdlkfj239unkvDSAfj23ASDvj93fFGD93"
      maxAge: 60 * 60 * 24 * 7

  app.configure "test", ->
    console.log 'loading test environment...'
    db.test()

  app.configure "development", ->
    console.log 'loading development environment...'
    app.use express.errorHandler(dumpExceptions: true, showStack: true)
    db.development()

  app.configure "production", ->
    console.log 'loading production environment...'
    app.use express.errorHandler()
    db.production()
