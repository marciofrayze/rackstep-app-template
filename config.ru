# This file is used by any rack-compatible server and gives instructions on how
# to start the server and load the application.

# Loading RackStep
require 'rackstep'
# Loading the application
require_relative './app/app'

# Configuring Rack to serve static files (html, javascripts, images, etc).
# To have a better performance in production, one good option is to serve this
# type of content using Nginx, Apache servers or Amazon S3 instead and use 
# rack/ruby only for dinamic/business requests.
use Rack::Static,
  :urls => ['/images', '/javascript', '/css', '/fonts', '/pages'],
  :root => 'app/public/'

# Using GZIP on all requests.
# TODO: Check if requests to images and binary files are also being compressed and avoid it.
use Rack::Deflater

# TODO: Include basic Rack Attack configuration.

# Inform rack server to create a new instance of the App class for each request.
run App
