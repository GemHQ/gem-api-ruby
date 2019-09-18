# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # TransactionsController
  class TransactionsController < BaseController
    @instance = TransactionsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # View all transactions submitted through your Application.
    # @param [Integer] page Optional parameter: Example:
    # @return List of Transaction response from the API call
    def get_transactions(page = nil)
      # Prepare query url.
      _path_url = '/transactions'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'page' => page
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
      decoded.map { |element| Transaction.from_hash(element) }
    end

    # Initiate a buy or transfer transaction for an existing Connection.
    # Transactions take a `source` account, a `destination` account, an
    # `amount`, and a `currency`. Successfully submitted transactions return a
    # `transaction_id` to monitor the status of the transaction in future API
    # calls or webhook notifications.
    # @param [NewTransaction] body Required parameter: Example:
    # @return Transaction response from the API call
    def create_transaction(body)
      # Prepare query url.
      _path_url = '/transactions'
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
      Transaction.from_hash(decoded)
    end

    # Get transaction details by `transaction_id`.
    # @param [UUID | String] id Required parameter: Example:
    # @return Transaction response from the API call
    def get_transaction(id)
      # Prepare query url.
      _path_url = '/transactions/{id}'
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
      Transaction.from_hash(decoded)
    end

    # Cancel a pending transaction. This may not always be possible for all
    # third-party services.
    # @param [UUID | String] id Required parameter: Example:
    # @return Message response from the API call
    def delete_cancel_transaction(id)
      # Prepare query url.
      _path_url = '/transactions/{id}'
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
      _request = @http_client.delete(
        _query_url,
        headers: _headers
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      Message.from_hash(decoded)
    end

    # Withdraw cryptocurrency from a source `Account` to a `BlockchainAddress`
    # or an `Account`.
    # @param [Transaction] body Required parameter: Example:
    # @return Transaction response from the API call
    def create_transfer(body)
      # Prepare query url.
      _path_url = '/transfer'
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
      Transaction.from_hash(decoded)
    end

    # Buy cryptocurrency from a source fiat `Account`. We currently support Wyre
    # and Coinify.
    # @param [Transaction] body Required parameter: Example:
    # @return Transaction response from the API call
    def create_buy(body)
      # Prepare query url.
      _path_url = '/buy'
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
      Transaction.from_hash(decoded)
    end
  end
end
