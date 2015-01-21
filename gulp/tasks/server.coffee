http = require 'http'
express = require 'express'
gulp = require 'gulp'
gutil = require 'gulp-util'
morgan = require 'morgan'

config = require '../config'


gulp.task 'server', ->
  server = express()

  server.use morgan 'dev'
  server.use express.static config.dist.root

  server.use (req, res)->
    res.sendFile 'index.html',
      root: config.dist.root


  s = http.createServer server

  s.on 'error', (err)->
    if err.code == 'EADDRINUSE'
      gutil.log 'Development server is already started at port ' + config.serverport
    else
      throw err


  s.listen config.serverPort