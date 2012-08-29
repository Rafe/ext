global.mongoose = require 'mongoose'
global.Schema = mongoose.Schema
global.ObjectId = Schema.ObjectId

mongodb = require('mongodb')

name = require('../package.json').name

exports.test = (name)->
  global.db = mongoose.createConnection "localhost", "#{name}-test"

exports.development = (name)->
  global.db = mongoose.createConnection "localhost", "#{name}-development"

exports.production = (name)->
  global.db = mongoose.createConnection "localhost", "#{name}-production"
