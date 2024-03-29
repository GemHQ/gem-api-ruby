# gem_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module GemApi
  # Utility class for custom header authorization.
  class CustomHeaderAuth
    # Add custom authentication to the request.
    # @param [HttpRequest] The HttpRequest object to which authentication will
    # be added.
    def self.apply(http_request)
      http_request.add_header('X-Gem-Api-Key', Configuration.x_gem_api_key)
      http_request.add_header('X-Gem-Access-Timestamp', Configuration.x_gem_access_timestamp)
      http_request.add_header('X-Gem-Signature', Configuration.x_gem_signature)
    end
  end
end
