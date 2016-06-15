require 'json'

class MyJsonService < RackStep::Controller

  def process_request
    # Creating a Hash with some info that we will return to the user as JSON
    # (simulating a service).
    user = Hash.new
    user['name'] = 'John Doe'
    user['age'] = '27'
    user['job'] = 'Developer'

    response.body = user.to_json
  end

end
