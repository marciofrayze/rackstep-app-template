require 'json'

class Root < RackStep::Controller

  def process_request
    response.content_type = 'text/html'
    response.body = 'Welcome to RackStep'
  end

end
