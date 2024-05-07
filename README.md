# RackStep App Template

This is a fully functional example app built using [RackStep](https://github.com/marciofrayze/rackstep). You may use this
as the starting point to your own app.

## Status

[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://github.com/marciofrayze/rackstep/blob/master/LICENSE)

## Dependancies

This example app was developed and tested with Ruby 3.3.1. The only hard
dependency is RackStep and Rack itself, but there are a few others recommended gem
dependancies:
- [puma](https://github.com/puma/puma): fast rack-compatible server that can be used for production.
- [simplecov](https://github.com/simplecov-ruby/simplecov): a simple way to generate statistics about your tests coverage.

## How to

To run the app, just start a rack compatible server like [rackup](https://github.com/rack/rackup) or [puma](https://github.com/puma/puma).

Just run `bundle install` to download the dependencies and then `bundle exec rackup` to start the server.

This app is ready to be deployed at Heroku.com.

## Author

RackStep and RackStep App Templates are developed by Marcio Frayze David -
marcio@segunda.tech.
