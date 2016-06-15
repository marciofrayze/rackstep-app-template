require 'rackstep'
require_relative 'controllers/root'
require_relative 'controllers/my_json_service'

class App < RackStep::App

  add_route('GET', '', 'Root')
  add_route('GET', 'json', 'MyJsonService')

end
