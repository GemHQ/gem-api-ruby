# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'controller_test_base'

class AssetsControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def self.startup
    self.controller = @@api_client.assets
  end

  # Returns a full list of assets in the Gem ecosystem, with our normalized ticker symbols.
  def test_test_get_assets()
    # Parameters for the API call
    category = 'cryptocurrency'

    # Perform the API call through the SDK function
    result = self.class.controller.get_assets(category)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Resolve to Institution-specific ticker symbol by specifying the Gem Asset ID.
  def test_test_get_asset()
    # Parameters for the API call
    id = 'bitcoin'

    # Perform the API call through the SDK function
    result = self.class.controller.get_asset(id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Returns current asset price quotes for an array of assets. Quotes may be filtered by source (e.g. Coinbase, CoinMarketCap, Wyre), and may be returned in the currency of your choice (e.g. USD, EUR, BTC).
  #
  def test_test_assets_prices()
    # Parameters for the API call
    quote_asset_id = 'bitcoin'
    asset_ids = nil

    # Perform the API call through the SDK function
    result = self.class.controller.get_assets_prices(quote_asset_id, asset_ids)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

  # Returns current asset price quote for a single asset. Quotes may be filtered by source (e.g. Coinbase, CoinMarketCap, Wyre), and may be returned in the currency of your choice (e.g. USD, EUR, BTC).
  #
  def test_test_get_price()
    # Parameters for the API call
    asset_id = 'bitcoin'
    quote_asset_id = 'bitcoin'

    # Perform the API call through the SDK function
    result = self.class.controller.get_price(asset_id, quote_asset_id)

    # Test response code
    assert_equal(@response_catcher.response.status_code, 200)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(TestHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end
