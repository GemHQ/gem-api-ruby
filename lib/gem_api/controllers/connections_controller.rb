# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # ConnectionsController
  class ConnectionsController < BaseController
    @instance = ConnectionsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get a list of Connections.
    # @param [UUID | String] user_id Optional parameter: Example:
    # @return List of Connection response from the API call
    def get_connections(user_id = nil)
      # Prepare query url.
      _path_url = '/connections'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'user_id' => user_id
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
      decoded.map { |element| Connection.from_hash(element) }
    end

    # Create a new Connection object and receive an access token.
    # @param [Object] body Required parameter: Example:
    # @param [UUID | String] user_id Optional parameter: Example:
    # @return Connection response from the API call
    def create_connection(body,
                          user_id = nil)
      # Prepare query url.
      _path_url = '/connections'
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'user_id' => user_id
        },
        array_serialization: Configuration.array_serialization
      )
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
      Connection.from_hash(decoded)
    end

    # Retrieves a `Connection` object by its identifier.
    # @param [UUID | String] id Required parameter: Example:
    # @return ConnectionDetail response from the API call
    def get_connection(id)
      # Prepare query url.
      _path_url = '/connections/{id}'
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
      ConnectionDetail.from_hash(decoded)
    end

    # Update Connection with new credentials.
    # @param [UUID | String] id Required parameter: Example:
    # @param [Object] body Required parameter: Example:
    # @return Connection response from the API call
    def put_connection(id,
                       body)
      # Prepare query url.
      _path_url = '/connections/{id}'
      _path_url = APIHelper.append_url_with_template_parameters(
        _path_url,
        'id' => id
      )
      _query_builder = Configuration.get_base_uri
      _query_builder << _path_url
      _query_url = APIHelper.clean_url _query_builder
      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }
      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      CustomHeaderAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)
      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      Connection.from_hash(decoded)
    end

    # Delete a Connection, permanently revoking access.
    # @param [UUID | String] id Required parameter: Example:
    # @return Message response from the API call
    def delete_connection(id)
      # Prepare query url.
      _path_url = '/connections/{id}'
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

    # Coinbase OAuth Complete
    # @param [OauthRequestFormat] body Required parameter: Example:
    # @return Message response from the API call
    def create_coinbase_oauth_complete(body)
      # Prepare query url.
      _path_url = '/connections/coinbase_oauth_complete'
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
      Message.from_hash(decoded)
    end
  end
end
