express = require 'express'
app = express.createServer()
app.use(express.cookieParser());
app.use(express.bodyParser());
controllers = {}
app.use(express.static(__dirname + '/public'));


fs = require 'fs'
fs.readdir './controllers', (err, files)->
    files.forEach (file)->
        controller = require "./controllers/#{file}"
        controller.createServer app
    console.log controllers
    routes = require './config/routes'
    for path, route of routes
        app.get path, (req, res)->
            res.redirect route
        console.log "#{path} #{route}"     
app.listen 8080

