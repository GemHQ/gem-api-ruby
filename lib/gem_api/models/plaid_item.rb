# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # Plaid Item
  class PlaidItem < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :plaid_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['plaid_token'] = 'plaid_token'
      @_hash
    end

    def initialize(type = nil,
                   plaid_token = nil)
      @type = type
      @plaid_token = plaid_token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      plaid_token = hash['plaid_token']

      # Create object from extracted values.
      PlaidItem.new(type,
                    plaid_token)
    end
  end
end
