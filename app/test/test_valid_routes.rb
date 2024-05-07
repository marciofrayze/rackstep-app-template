# This is just an unit test example class.

require 'test_helper'

class ValidRoutesTest < Minitest::Test

  # Including rack test methods to allow use of assert_*.
  include Rack::Test::Methods

  # Setting up a Mock to simulate the requests.
  def setup
    @requester = Rack::MockRequest.new(App)
  end

  # Test if the main route is returning the expected message.
  def test_main_route
    request = @requester.get('/')
    assert_equal 200, request.status
    assert_equal 'text/html', request.content_type
    assert_contains 'Welcome to RackStep', request.body
  end

  # Test if the json route is returning the expected content.
  def test_json_route
    request = @requester.get('/json')
    assert_equal 200, request.status
    assert_equal 'application/json', request.content_type
    expected_body = '{"name":"John Doe","age":"27","job":"Developer"}'
    assert_contains expected_body, request.body
  end

end
