# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.Fee.description
  class Fee < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # translation missing: en.swagger.models.Amount.description
    # @return [Amount]
    attr_accessor :amount

    # translation missing: en.swagger.models.Amount.description
    # @return [String]
    attr_accessor :summary

    # translation missing: en.swagger.models.Amount.description
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['amount'] = 'amount'
      @_hash['summary'] = 'summary'
      @_hash['description'] = 'description'
      @_hash
    end

    def initialize(type = nil,
                   amount = nil,
                   summary = nil,
                   description = nil)
      @type = type
      @amount = amount
      @summary = summary
      @description = description
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      amount = Amount.from_hash(hash['amount']) if hash['amount']
      summary = hash['summary']
      description = hash['description']

      # Create object from extracted values.
      Fee.new(type,
              amount,
              summary,
              description)
    end
  end
end
