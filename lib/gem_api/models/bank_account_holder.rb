# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.BankAccountHolder.description
  class BankAccountHolder < BaseModel
    # Name of the account holder
    # @return [String]
    attr_accessor :name

    # translation missing: en.swagger.models.Address.description
    # @return [Address]
    attr_accessor :address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['address'] = 'address'
      @_hash
    end

    def initialize(name = nil,
                   address = nil)
      @name = name
      @address = address
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      address = Address.from_hash(hash['address']) if hash['address']

      # Create object from extracted values.
      BankAccountHolder.new(name,
                            address)
    end
  end
end
