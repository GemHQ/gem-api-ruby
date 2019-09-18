# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module GemApi
  # translation missing: en.swagger.models.AssetDetail.description
  class AssetDetail < BaseModel
    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :id

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :created_at

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :updated_at

    # translation missing: en.swagger.models.Timestamp.description
    # @return [String]
    attr_accessor :name

    # translation missing: en.swagger.models.Timestamp.description
    # @return [String]
    attr_accessor :ticker

    # translation missing: en.swagger.models.Timestamp.description
    # @return [List of AssetTicker]
    attr_accessor :institution_tickers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['name'] = 'name'
      @_hash['ticker'] = 'ticker'
      @_hash['institution_tickers'] = 'institution_tickers'
      @_hash
    end

    def initialize(id = nil,
                   created_at = nil,
                   updated_at = nil,
                   name = nil,
                   ticker = nil,
                   institution_tickers = nil)
      @id = id
      @created_at = created_at
      @updated_at = updated_at
      @name = name
      @ticker = ticker
      @institution_tickers = institution_tickers
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      name = hash['name']
      ticker = hash['ticker']
      # Parameter is an array, so we need to iterate through it
      institution_tickers = nil
      unless hash['institution_tickers'].nil?
        institution_tickers = []
        hash['institution_tickers'].each do |structure|
          institution_tickers << (AssetTicker.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      AssetDetail.new(id,
                      created_at,
                      updated_at,
                      name,
                      ticker,
                      institution_tickers)
    end
  end
end
