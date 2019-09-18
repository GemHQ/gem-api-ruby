# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class UserManagementControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.user_management
  end

  # Get a list of Users associated with your Application.
  def test_test_get_users()

    # Perform the API call through the SDK function
    result = self.class.controller.get_users()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Create a Gem User. A User may either be private (limited to your application) or public (passportable across the Gem network of partners).
  def test_test_create_user()
    # Parameters for the API call
    body = nil

    # Perform the API call through the SDK function
    result = self.class.controller.create_user(body)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Record user's consent to Gem's Terms of Service and Privacy Policy. This is used by our widgets.
  def test_test_consent_user()
    # Parameters for the API call
    id = '3fa85f64-5717-4562-b3fc-2c963f66afa6'

    # Perform the API call through the SDK function
    result = self.class.controller.update_consent_user(id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Retrieves User and its linked Connections and Profiles.
  def test_test_get_user()
    # Parameters for the API call
    id = '3fa85f64-5717-4562-b3fc-2c963f66afa6'

    # Perform the API call through the SDK function
    result = self.class.controller.get_user(id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Delete a User. For private users, this permanently deletes the user. For public users, this revokes your access to the public user, but doesn't delete the user.
  def test_test_delete_user()
    # Parameters for the API call
    id = '3fa85f64-5717-4562-b3fc-2c963f66afa6'

    # Perform the API call through the SDK function
    result = self.class.controller.delete_user(id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end
