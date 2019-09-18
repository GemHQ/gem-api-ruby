# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # InstitutionsController
  class InstitutionsController < BaseController
    @instance = InstitutionsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get a list of Institutions that Gem supports.
    # @return List of Institution response from the API call
    def get_institutions
      # Prepare query url.
      _path_url = '/institutions'
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
      decoded.map { |element| Institution.from_hash(element) }
    end

    # Get details about an Institution.
    # @param [UUID | String] id Required parameter: Example:
    # @return Institution response from the API call
    def get_institution(id)
      # Prepare query url.
      _path_url = '/institutions/{id}'
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
      Institution.from_hash(decoded)
    end

    # Open a new user account at an Institution. Typically a new user will be
    # required to submit a KYC profile. You may attach an existing Profile
    # object to this request. This endpoint is currently supported for Wyre and
    # Coinify.
    # @param [NewInstitutionUser] body Required parameter: Example:
    # @return InstitutionUser response from the API call
    def create_institution_user(body)
      # Prepare query url.
      _path_url = '/institution_users'
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
      InstitutionUser.from_hash(decoded)
    end

    # Returns data about a user's account at an Institution, including their
    # current status of approvals on KYC and trading limits.
    # @param [UUID | String] id Required parameter: Example:
    # @return InstitutionUserDetail response from the API call
    def get_institution_user(id)
      # Prepare query url.
      _path_url = '/institution_users/{id}'
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
      InstitutionUserDetail.from_hash(decoded)
    end
  end
end
