require './models/user'

users = require "./controllers/users_controller"

module.exports = (app) ->
  app.resource "user", users

  app.get "/", users.index
