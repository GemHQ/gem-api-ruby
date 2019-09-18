# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # BaseType1 Model.
  class BaseType1 < BaseModel
    # translation missing: en.swagger.models.Account.description
    # @return [Account]
    attr_accessor :source

    # translation missing: en.swagger.models.Destination.description
    # @return [Object]
    attr_accessor :destination

    # translation missing: en.swagger.models.Fees.description
    # @return [List of Fee]
    attr_accessor :fees

    # translation missing: en.swagger.models.TransactionStatus.description
    # @return [TransactionStatusEnum]
    attr_accessor :status

    # translation missing: en.swagger.models.Amount.description
    # @return [Amount]
    attr_accessor :amount

    # translation missing: en.swagger.models.Amount.description
    # @return [String]
    attr_accessor :type

    # translation missing: en.swagger.models.Amount.description
    # @return [Object]
    attr_accessor :additional_data

    # translation missing: en.swagger.models.Message.description
    # @return [Message]
    attr_accessor :reason

    # Discriminators mapping.
    def self.discriminators
      if @_discriminators.nil?
        @_discriminators = {}
        @_discriminators['Transaction'] = Transaction.method(:from_hash)
      end
      @_discriminators
    end

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['source'] = 'source'
      @_hash['destination'] = 'destination'
      @_hash['fees'] = 'fees'
      @_hash['status'] = 'status'
      @_hash['amount'] = 'amount'
      @_hash['type'] = 'type'
      @_hash['additional_data'] = 'additional_data'
      @_hash['reason'] = 'reason'
      @_hash
    end

    def initialize(source = nil,
                   destination = nil,
                   fees = nil,
                   status = nil,
                   amount = nil,
                   type = nil,
                   additional_data = nil,
                   reason = nil)
      @source = source
      @destination = destination
      @fees = fees
      @status = status
      @amount = amount
      @type = type
      @additional_data = additional_data
      @reason = reason
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Delegate unboxing to another function if a discriminator
      # value for a child class is present.
      unboxer = discriminators[hash['type']]
      return unboxer.call(hash) if unboxer

      # Extract variables from the hash.
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
      BaseType1.new(source,
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
