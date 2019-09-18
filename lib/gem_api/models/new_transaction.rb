# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.NewTransaction.description
  class NewTransaction < BaseModel
    # translation missing: en.swagger.models.AccountID.description
    # @return [UUID | String]
    attr_accessor :source_id

    # translation missing: en.swagger.models.NewDestination.description
    # @return [Object]
    attr_accessor :destination

    # translation missing: en.swagger.models.NewAmount.description
    # @return [NewAmount]
    attr_accessor :amount

    # translation missing: en.swagger.models.NewAmount.description
    # @return [Boolean]
    attr_accessor :fees_inclusive

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['source_id'] = 'source_id'
      @_hash['destination'] = 'destination'
      @_hash['amount'] = 'amount'
      @_hash['fees_inclusive'] = 'fees_inclusive'
      @_hash
    end

    def initialize(source_id = nil,
                   destination = nil,
                   amount = nil,
                   fees_inclusive = false)
      @source_id = source_id
      @destination = destination
      @amount = amount
      @fees_inclusive = fees_inclusive
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      source_id = hash['source_id']
      destination = hash['destination']
      amount = NewAmount.from_hash(hash['amount']) if hash['amount']
      fees_inclusive = hash['fees_inclusive'] ||= false

      # Create object from extracted values.
      NewTransaction.new(source_id,
                         destination,
                         amount,
                         fees_inclusive)
    end
  end
end
