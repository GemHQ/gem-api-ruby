# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # AssetsController
  class AssetsController < BaseController
    @instance = AssetsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Returns a full list of assets in the Gem ecosystem, with our normalized
    # ticker symbols.
    # @param [AssetCategoriesEnum] category Optional parameter: Example:
    # @return List of Asset response from the API call
    def get_assets(category = nil)
      # Prepare query url.
      _path_url = '/gem_assets'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'category' => category
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      decoded.map { |element| Asset.from_hash(element) }
    end

    # Resolve to Institution-specific ticker symbol by specifying the Gem Asset
    # ID.
    # @param [String] id Required parameter: Example:
    # @return AssetDetail response from the API call
    def get_asset(id)
      # Prepare query url.
      _path_url = '/gem_assets/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'id' => id
      )
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      AssetDetail.from_hash(decoded)
    end

    # Returns current asset price quotes for an array of assets. Quotes may be
    # filtered by source (e.g. Coinbase, CoinMarketCap, Wyre), and may be
    # returned in the currency of your choice (e.g. USD, EUR, BTC).
    # @param [String] quote_asset_id Optional parameter: Example:
    # @param [List of String] asset_ids Optional parameter: Example:
    # @return List of AssetPrice response from the API call
    def get_assets_prices(quote_asset_id = nil,
                          asset_ids = nil)
      # Prepare query url.
      _path_url = '/prices'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'quote_asset_id' => quote_asset_id,
          'asset_ids' => asset_ids
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      decoded.map { |element| AssetPrice.from_hash(element) }
    end

    # Returns current asset price quote for a single asset. Quotes may be
    # filtered by source (e.g. Coinbase, CoinMarketCap, Wyre), and may be
    # returned in the currency of your choice (e.g. USD, EUR, BTC).
    # @param [String] asset_id Required parameter: Example:
    # @param [String] quote_asset_id Required parameter: Example:
    # @return AssetPrice response from the API call
    def get_price(asset_id,
                  quote_asset_id)
      # Prepare query url.
      _path_url = '/prices/{asset_id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'asset_id' => asset_id
      )
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'quote_asset_id' => quote_asset_id
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      AssetPrice.from_hash(decoded)
    end
  end
end
