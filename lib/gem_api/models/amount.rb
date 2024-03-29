# gem_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.Amount.description
  class Amount < BaseModel
    # Accepts decimals up to 8 digits.
    # @return [Float]
    attr_accessor :quantity

    # translation missing: en.swagger.models.Asset.description
    # @return [Asset]
    attr_accessor :asset

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['quantity'] = 'quantity'
      @_hash['asset'] = 'asset'
      @_hash
    end

    def initialize(quantity = nil,
                   asset = nil)
      @quantity = quantity
      @asset = asset
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      quantity = hash['quantity']
      asset = Asset.from_hash(hash['asset']) if hash['asset']

      # Create object from extracted values.
      Amount.new(quantity,
                 asset)
    end
  end
end
