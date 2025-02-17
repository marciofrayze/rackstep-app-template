source 'https://rubygems.org'
ruby "3.4.2"

gem 'rack'
gem 'rackstep'

group :test do
  gem 'rake' 	    # Used for unit testing execution.
  gem 'minitest'  # Simple unit test framework
  gem 'rack-test' # Unit test for rack
  gem 'simplecov', :require => false, :group => :test   # A simple way to generate statistics about you unit tests coverage.
end

gem 'puma'        # Fast rack-compatible server that can be used for production.

group :development do
  gem 'rackup'    # Simple server to run the application in development mode.
  gem 'webrick'
end