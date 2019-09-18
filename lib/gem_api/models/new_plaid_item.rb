# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # New Plaid Item
  class NewPlaidItem < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :plaid_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['plaid_token'] = 'plaid_token'
      @_hash
    end

    def initialize(plaid_token = nil)
      @plaid_token = plaid_token
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      plaid_token = hash['plaid_token']

      # Create object from extracted values.
      NewPlaidItem.new(plaid_token)
    end
  end
end
