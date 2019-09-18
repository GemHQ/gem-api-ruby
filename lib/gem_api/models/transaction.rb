# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
require_relative 'base_type1'

module GemApi
  # translation missing: en.swagger.models.Transaction.description
  class Transaction < BaseType1
    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :id

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :created_at

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :updated_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(id = nil,
                   created_at = nil,
                   updated_at = nil,
                   source = nil,
                   destination = nil,
                   fees = nil,
                   status = nil,
                   amount = nil,
                   type = nil,
                   additional_data = nil,
                   reason = nil)
      @id = id
      @created_at = created_at
      @updated_at = updated_at

      # Call the constructor of the base class
      super(source,
            destination,
            fees,
            status,
            amount,
            type,
            additional_data,
            reason)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      source = Account.from_hash(hash['source']) if hash['source']
      destination = hash['destination']
      # Parameter is an array, so we need to iterate through it
      fees = nil
      unless hash['fees'].nil?
        fees = []
        hash['fees'].each do |structure|
          fees << (Fee.from_hash(structure) if structure)
        end
      end
      status = hash['status']
      amount = Amount.from_hash(hash['amount']) if hash['amount']
      type = hash['type']
      additional_data = hash['additional_data']
      reason = Message.from_hash(hash['reason']) if hash['reason']

      # Create object from extracted values.
      Transaction.new(id,
                      created_at,
                      updated_at,
                      source,
                      destination,
                      fees,
                      status,
                      amount,
                      type,
                      additional_data,
                      reason)
    end
  end
end
