# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.PaymentMethod.description
  class PaymentMethod < BaseModel
    # translation missing: en.swagger.models.AccountSuffix.description
    # @return [String]
    attr_accessor :last_4_digits

    # Accepts ISO 3166-1 formats: https://en.wikipedia.org/wiki/ISO_3166-1
    # @return [String]
    attr_accessor :country

    # translation missing: en.swagger.models.ExternalID.description
    # @return [String]
    attr_accessor :external_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['last_4_digits'] = 'last_4_digits'
      @_hash['country'] = 'country'
      @_hash['external_id'] = 'external_id'
      @_hash
    end

    def initialize(last_4_digits = nil,
                   country = nil,
                   external_id = nil)
      @last_4_digits = last_4_digits
      @country = country
      @external_id = external_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      last_4_digits = hash['last_4_digits']
      country = hash['country']
      external_id = hash['external_id']

      # Create object from extracted values.
      PaymentMethod.new(last_4_digits,
                        country,
                        external_id)
    end
  end
end
