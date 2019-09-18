# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class TransactionsControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.transactions
  end

  # View all transactions submitted through your Application.
  def test_test_get_transactions()
    # Parameters for the API call
    page = nil

    # Perform the API call through the SDK function
    result = self.class.controller.get_transactions(page)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Get transaction details by `transaction_id`.
  def test_test_get_transaction()
    # Parameters for the API call
    id = '3fa85f64-5717-4562-b3fc-2c963f66afa6'

    # Perform the API call through the SDK function
    result = self.class.controller.get_transaction(id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Cancel a pending transaction. This may not always be possible for all third-party services.
  def test_test_cancel_transaction()
    # Parameters for the API call
    id = '3fa85f64-5717-4562-b3fc-2c963f66afa6'

    # Perform the API call through the SDK function
    result = self.class.controller.delete_cancel_transaction(id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end
