# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
require_relative 'account'

module GemApi
  # translation missing: en.swagger.models.AccountDetail.description
  class AccountDetail < Account
    # translation missing: en.swagger.models.Connection.description
    # @return [Connection]
    attr_accessor :connection

    # translation missing: en.swagger.models.Transactions.description
    # @return [List of Transaction]
    attr_accessor :transactions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['connection'] = 'connection'
      @_hash['transactions'] = 'transactions'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(id = nil,
                   created_at = nil,
                   updated_at = nil,
                   connection = nil,
                   transactions = nil,
                   asset = nil,
                   status = nil,
                   name = nil,
                   type = nil,
                   enabled = nil,
                   connection_id = nil)
      @connection = connection
      @transactions = transactions

      # Call the constructor of the base class
      super(id,
            created_at,
            updated_at,
            asset,
            status,
            name,
            type,
            enabled,
            connection_id)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      connection = Connection.from_hash(hash['connection']) if
        hash['connection']
      # Parameter is an array, so we need to iterate through it
      transactions = nil
      unless hash['transactions'].nil?
        transactions = []
        hash['transactions'].each do |structure|
          transactions << (Transaction.from_hash(structure) if structure)
        end
      end
      asset = Asset.from_hash(hash['asset']) if hash['asset']
      status = hash['status']
      name = hash['name']
      type = hash['type']
      enabled = hash['enabled']
      connection_id = hash['connection_id']

      # Create object from extracted values.
      AccountDetail.new(id,
                        created_at,
                        updated_at,
                        connection,
                        transactions,
                        asset,
                        status,
                        name,
                        type,
                        enabled,
                        connection_id)
    end
  end
end
