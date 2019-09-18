# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class InstitutionsControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.institutions
  end

  # Get a list of Institutions that Gem supports.
  def test_test_get_institutions()

    # Perform the API call through the SDK function
    result = self.class.controller.get_institutions()

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Get details about an Institution.
  def test_test_get_institution()
    # Parameters for the API call
    id = '3fa85f64-5717-4562-b3fc-2c963f66afa6'

    # Perform the API call through the SDK function
    result = self.class.controller.get_institution(id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Returns data about a user's account at an Institution, including their current status of approvals on KYC and trading limits.
  def test_test_get_institution_user()
    # Parameters for the API call
    id = '3fa85f64-5717-4562-b3fc-2c963f66afa6'

    # Perform the API call through the SDK function
    result = self.class.controller.get_institution_user(id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end
