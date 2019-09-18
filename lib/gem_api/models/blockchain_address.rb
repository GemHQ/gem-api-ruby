# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.BlockchainAddress.description
  class BlockchainAddress < BaseModel
    # translation missing: en.swagger.models.AssetID.description
    # @return [String]
    attr_accessor :asset_id

    # translation missing: en.swagger.models.AssetID.description
    # @return [String]
    attr_accessor :address

    # translation missing: en.swagger.models.AssetID.description
    # @return [Object]
    attr_accessor :additional_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['asset_id'] = 'asset_id'
      @_hash['address'] = 'address'
      @_hash['additional_data'] = 'additional_data'
      @_hash
    end

    def initialize(asset_id = nil,
                   address = nil,
                   additional_data = nil)
      @asset_id = asset_id
      @address = address
      @additional_data = additional_data
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      asset_id = hash['asset_id']
      address = hash['address']
      additional_data = hash['additional_data']

      # Create object from extracted values.
      BlockchainAddress.new(asset_id,
                            address,
                            additional_data)
    end
  end
end
