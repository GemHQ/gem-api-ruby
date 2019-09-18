# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.OauthRequestFormat.description
  class OauthRequestFormat < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :redirect_uri

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['redirect_uri'] = 'redirect_uri'
      @_hash
    end

    def initialize(code = nil,
                   redirect_uri = nil)
      @code = code
      @redirect_uri = redirect_uri
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash['code']
      redirect_uri = hash['redirect_uri']

      # Create object from extracted values.
      OauthRequestFormat.new(code,
                             redirect_uri)
    end
  end
end
