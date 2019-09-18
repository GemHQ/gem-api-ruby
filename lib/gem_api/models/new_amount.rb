# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.NewAmount.description
  class NewAmount < BaseModel
    # Accepts decimals up to 8 digits.
    # @return [Float]
    attr_accessor :quantity

    # translation missing: en.swagger.models.AssetID.description
    # @return [String]
    attr_accessor :asset_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['quantity'] = 'quantity'
      @_hash['asset_id'] = 'asset_id'
      @_hash
    end

    def initialize(quantity = nil,
                   asset_id = nil)
      @quantity = quantity
      @asset_id = asset_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      quantity = hash['quantity']
      asset_id = hash['asset_id']

      # Create object from extracted values.
      NewAmount.new(quantity,
                    asset_id)
    end
  end
end
