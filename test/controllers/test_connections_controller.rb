# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class ConnectionsControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.connections
  end

  # Get a list of Connections.
  def test_test_get_connections()
    # Parameters for the API call
    user_id = '3fa85f64-5717-4562-b3fc-2c963f66afa6'

    # Perform the API call through the SDK function
    result = self.class.controller.get_connections(user_id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Retrieves a `Connection` object by its identifier.
  def test_test_get_connection()
    # Parameters for the API call
    id = '3fa85f64-5717-4562-b3fc-2c963f66afa6'

    # Perform the API call through the SDK function
    result = self.class.controller.get_connection(id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Delete a Connection, permanently revoking access.
  def test_test_delete_connection()
    # Parameters for the API call
    id = '3fa85f64-5717-4562-b3fc-2c963f66afa6'

    # Perform the API call through the SDK function
    result = self.class.controller.delete_connection(id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end
