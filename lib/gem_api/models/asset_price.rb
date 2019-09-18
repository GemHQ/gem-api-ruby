# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module GemApi
  # translation missing: en.swagger.models.AssetPrice.description
  class AssetPrice < BaseModel
    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :timestamp

    # translation missing: en.swagger.models.AssetID.description
    # @return [String]
    attr_accessor :asset_id

    # translation missing: en.swagger.models.AssetID.description
    # @return [String]
    attr_accessor :currency_id

    # translation missing: en.swagger.models.AssetID.description
    # @return [Float]
    attr_accessor :price

    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :institution_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['timestamp'] = 'timestamp'
      @_hash['asset_id'] = 'asset_id'
      @_hash['currency_id'] = 'currency_id'
      @_hash['price'] = 'price'
      @_hash['institution_id'] = 'institution_id'
      @_hash
    end

    def initialize(timestamp = nil,
                   asset_id = nil,
                   currency_id = nil,
                   price = nil,
                   institution_id = nil)
      @timestamp = timestamp
      @asset_id = asset_id
      @currency_id = currency_id
      @price = price
      @institution_id = institution_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      timestamp = APIHelper.rfc3339(hash['timestamp']) if hash['timestamp']
      asset_id = hash['asset_id']
      currency_id = hash['currency_id']
      price = hash['price']
      institution_id = hash['institution_id']

      # Create object from extracted values.
      AssetPrice.new(timestamp,
                     asset_id,
                     currency_id,
                     price,
                     institution_id)
    end
  end
end
