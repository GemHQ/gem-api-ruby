# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # AccountsController
  class AccountsController < BaseController
    @instance = AccountsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get a list of wallets and payment methods attached to an InstitutionUser.
    # @param [UUID | String] user_id Optional parameter: Example:
    # @param [UUID | String] connection_id Optional parameter: Example:
    # @return List of Account response from the API call
    def get_accounts(user_id = nil,
                     connection_id = nil)
      # Prepare query url.
      _path_url = '/accounts'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'user_id' => user_id,
          'connection_id' => connection_id
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
      decoded.map { |element| Account.from_hash(element) }
    end

    # Some Institutions support creating new payment methods and wallets via
    # API. This endpoint gives you a simple way to create a new wallet or
    # payment method at your user's Institution. Supported Institutions include:
    # Wyre, Coinify, Coinbase (coming soon).
    # @param [Account] body Required parameter: Example:
    # @return Account response from the API call
    def create_account(body)
      # Prepare query url.
      _path_url = '/accounts'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      Account.from_hash(decoded)
    end

    # Get details about an account, including name, balance, base currency and
    # other details that may be available.
    # @param [UUID | String] id Required parameter: Example:
    # @return AccountDetail response from the API call
    def get_account(id)
      # Prepare query url.
      _path_url = '/accounts/{id}'
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
      AccountDetail.from_hash(decoded)
    end
  end
end
