global.APP_URL = 'http://localhost:8888'

global.request = require "request"

ROOT = global.ROOT = "../"

global.respond_with = (url, code, done)->
  request.get url, (err, res) ->
    res.should.have.status 200
    done()

# start server
require '../server'
