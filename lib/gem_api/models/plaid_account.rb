# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # Plaid Account
  class PlaidAccount < BaseModel
    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :connection_id

    # translation missing: en.swagger.models.AccountType.description
    # @return [AccountTypeEnum]
    attr_accessor :type

    # translation missing: en.swagger.models.AccountType.description
    # @return [String]
    attr_accessor :plaid_token

    # translation missing: en.swagger.models.AccountType.description
    # @return [String]
    attr_accessor :plaid_account_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['connection_id'] = 'connection_id'
      @_hash['type'] = 'type'
      @_hash['plaid_token'] = 'plaid_token'
      @_hash['plaid_account_id'] = 'plaid_account_id'
      @_hash
    end

    def initialize(connection_id = nil,
                   type = nil,
                   plaid_token = nil,
                   plaid_account_id = nil)
      @connection_id = connection_id
      @type = type
      @plaid_token = plaid_token
      @plaid_account_id = plaid_account_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      connection_id = hash['connection_id']
      type = hash['type']
      plaid_token = hash['plaid_token']
      plaid_account_id = hash['plaid_account_id']

      # Create object from extracted values.
      PlaidAccount.new(connection_id,
                       type,
                       plaid_token,
                       plaid_account_id)
    end
  end
end
