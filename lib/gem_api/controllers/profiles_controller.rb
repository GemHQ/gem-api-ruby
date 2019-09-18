# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # ProfilesController
  class ProfilesController < BaseController
    @instance = ProfilesController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get a list of `Profiles`.
    # @param [UUID | String] user_id Optional parameter: Example:
    # @return List of Profile response from the API call
    def get_profiles(user_id = nil)
      # Prepare query url.
      _path_url = '/profiles'
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
      decoded.map { |element| Profile.from_hash(element) }
    end

    # Create a new `Profile` object and receive an access token.
    # @param [NewProfile] body Required parameter: Example:
    # @param [UUID | String] user_id Optional parameter: Example:
    # @return Profile response from the API call
    def create_profile(body,
                       user_id = nil)
      # Prepare query url.
      _path_url = '/profiles'
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
      Profile.from_hash(decoded)
    end

    # Create a temporary `Profile` object that expires in 1 hour. Any data
    # associated with an expired `Profile` is permanently deleted. This endpoint
    # returns an access token.
    # @param [NewProfile] body Required parameter: Example:
    # @return Profile response from the API call
    def create_temporary_profile(body)
      # Prepare query url.
      _path_url = '/profiles/temporary'
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
      Profile.from_hash(decoded)
    end

    # Retrieves `Profile` objects for a `User` or an `Application`.
    # @param [UUID | String] id Required parameter: Example:
    # @return ProfileDetail response from the API call
    def get_profile(id)
      # Prepare query url.
      _path_url = '/profiles/{id}'
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
      ProfileDetail.from_hash(decoded)
    end

    # Update `Profile` with new or changed attributes.
    # @param [UUID | String] id Required parameter: Example:
    # @param [NewProfile] body Required parameter: Example:
    # @return Profile response from the API call
    def put_profile(id,
                    body)
      # Prepare query url.
      _path_url = '/profiles/{id}'
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
      Profile.from_hash(decoded)
    end

    # Delete a `Profile`, permanently revoking access.
    # @param [UUID | String] id Required parameter: Example:
    # @return Message response from the API call
    def delete_profile(id)
      # Prepare query url.
      _path_url = '/profiles/{id}'
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
