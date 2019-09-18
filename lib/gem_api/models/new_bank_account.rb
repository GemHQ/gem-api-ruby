# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # BankAccount
  class NewBankAccount < BaseModel
    # translation missing: en.swagger.models.AccountType.description
    # @return [AccountTypeEnum]
    attr_accessor :type

    # translation missing: en.swagger.models.AssetID.description
    # @return [String]
    attr_accessor :asset_id

    # Account REG number
    # @return [String]
    attr_accessor :bic

    # Account number
    # @return [String]
    attr_accessor :account_number

    # Accepts ISO 3166-1 formats: https://en.wikipedia.org/wiki/ISO_3166-1
    # @return [String]
    attr_accessor :bank_country

    # translation missing: en.swagger.models.BankAccountHolder.description
    # @return [BankAccountHolder]
    attr_accessor :holder

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['asset_id'] = 'asset_id'
      @_hash['bic'] = 'bic'
      @_hash['account_number'] = 'account_number'
      @_hash['bank_country'] = 'bank_country'
      @_hash['holder'] = 'holder'
      @_hash
    end

    def initialize(type = nil,
                   asset_id = nil,
                   bic = nil,
                   account_number = nil,
                   bank_country = nil,
                   holder = nil)
      @type = type
      @asset_id = asset_id
      @bic = bic
      @account_number = account_number
      @bank_country = bank_country
      @holder = holder
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      asset_id = hash['asset_id']
      bic = hash['bic']
      account_number = hash['account_number']
      bank_country = hash['bank_country']
      holder = BankAccountHolder.from_hash(hash['holder']) if hash['holder']

      # Create object from extracted values.
      NewBankAccount.new(type,
                         asset_id,
                         bic,
                         account_number,
                         bank_country,
                         holder)
    end
  end
end
