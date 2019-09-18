# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.AssetPriceSeries.description
  class AssetPriceSeries < BaseModel
    # translation missing: en.swagger.models.Asset.description
    # @return [Asset]
    attr_accessor :asset

    # translation missing: en.swagger.models.Asset.description
    # @return [Asset]
    attr_accessor :display_asset

    # translation missing: en.swagger.models.Institution.description
    # @return [Institution]
    attr_accessor :institution

    # translation missing: en.swagger.models.Institution.description
    # @return [List of AssetPrice]
    attr_accessor :prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['asset'] = 'asset'
      @_hash['display_asset'] = 'display_asset'
      @_hash['institution'] = 'institution'
      @_hash['prices'] = 'prices'
      @_hash
    end

    def initialize(asset = nil,
                   display_asset = nil,
                   institution = nil,
                   prices = nil)
      @asset = asset
      @display_asset = display_asset
      @institution = institution
      @prices = prices
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      asset = Asset.from_hash(hash['asset']) if hash['asset']
      display_asset = Asset.from_hash(hash['display_asset']) if
        hash['display_asset']
      institution = Institution.from_hash(hash['institution']) if
        hash['institution']
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (AssetPrice.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      AssetPriceSeries.new(asset,
                           display_asset,
                           institution,
                           prices)
    end
  end
end
