# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # UserManagementController
  class UserManagementController < BaseController
    @instance = UserManagementController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get a list of Users associated with your Application.
    # @return List of User response from the API call
    def get_users
      # Prepare query url.
      _path_url = '/users'
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
      decoded.map { |element| User.from_hash(element) }
    end

    # Create a Gem User. A User may either be private (limited to your
    # application) or public (passportable across the Gem network of partners).
    # @param [NewUser] body Optional parameter: Example:
    # @return User response from the API call
    def create_user(body = nil)
      # Prepare query url.
      _path_url = '/users'
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
      User.from_hash(decoded)
    end

    # Record user's consent to Gem's Terms of Service and Privacy Policy. This
    # is used by our widgets.
    # @param [UUID | String] id Required parameter: Example:
    # @return Message response from the API call
    def update_consent_user(id)
      # Prepare query url.
      _path_url = '/users/{id}/consent'
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
      _request = @http_client.put(
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

    # Retrieves User and its linked Connections and Profiles.
    # @param [UUID | String] id Required parameter: Example:
    # @return UserDetail response from the API call
    def get_user(id)
      # Prepare query url.
      _path_url = '/users/{id}'
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
      UserDetail.from_hash(decoded)
    end

    # Delete a User. For private users, this permanently deletes the user. For
    # public users, this revokes your access to the public user, but doesn't
    # delete the user.
    # @param [UUID | String] id Required parameter: Example:
    # @return Message response from the API call
    def delete_user(id)
      # Prepare query url.
      _path_url = '/users/{id}'
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
  end
end
