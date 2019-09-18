# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.Address.description
  class Address < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :street_1

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :street_2

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :city

    # Follows ISO 3166-2 formats: https://en.wikipedia.org/wiki/ISO_3166-2
    # @return [String]
    attr_accessor :state

    # Accepts ISO 3166-1 formats: https://en.wikipedia.org/wiki/ISO_3166-1
    # @return [String]
    attr_accessor :country

    # Accepts ISO 3166-1 formats: https://en.wikipedia.org/wiki/ISO_3166-1
    # @return [String]
    attr_accessor :postal_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['street_1'] = 'street_1'
      @_hash['street_2'] = 'street_2'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash['country'] = 'country'
      @_hash['postal_code'] = 'postal_code'
      @_hash
    end

    def initialize(street_1 = nil,
                   street_2 = nil,
                   city = nil,
                   state = nil,
                   country = nil,
                   postal_code = nil)
      @street_1 = street_1
      @street_2 = street_2
      @city = city
      @state = state
      @country = country
      @postal_code = postal_code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      street_1 = hash['street_1']
      street_2 = hash['street_2']
      city = hash['city']
      state = hash['state']
      country = hash['country']
      postal_code = hash['postal_code']

      # Create object from extracted values.
      Address.new(street_1,
                  street_2,
                  city,
                  state,
                  country,
                  postal_code)
    end
  end
end
