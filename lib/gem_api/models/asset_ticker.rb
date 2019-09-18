# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.AssetTicker.description
  class AssetTicker < BaseModel
    # translation missing: en.swagger.models.Institution.description
    # @return [Institution]
    attr_accessor :institution

    # translation missing: en.swagger.models.Institution.description
    # @return [String]
    attr_accessor :ticker

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['institution'] = 'institution'
      @_hash['ticker'] = 'ticker'
      @_hash
    end

    def initialize(institution = nil,
                   ticker = nil)
      @institution = institution
      @ticker = ticker
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      institution = Institution.from_hash(hash['institution']) if
        hash['institution']
      ticker = hash['ticker']

      # Create object from extracted values.
      AssetTicker.new(institution,
                      ticker)
    end
  end
end
