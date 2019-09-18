# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.PhoneNumber.description
  class PhoneNumber < BaseModel
    # Accepts ISO 3166-1 formats: https://en.wikipedia.org/wiki/ISO_3166-1
    # @return [String]
    attr_accessor :country

    # translation missing: en.swagger.models.CountryCode.description
    # @return [String]
    attr_accessor :country_code

    # translation missing: en.swagger.models.CountryCode.description
    # @return [LineTypeEnum]
    attr_accessor :line_type

    # translation missing: en.swagger.models.CountryCode.description
    # @return [String]
    attr_accessor :local_number

    # translation missing: en.swagger.models.CountryCode.description
    # @return [String]
    attr_accessor :full_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['country'] = 'country'
      @_hash['country_code'] = 'country_code'
      @_hash['line_type'] = 'line_type'
      @_hash['local_number'] = 'local_number'
      @_hash['full_number'] = 'full_number'
      @_hash
    end

    def initialize(country = nil,
                   country_code = nil,
                   line_type = nil,
                   local_number = nil,
                   full_number = nil)
      @country = country
      @country_code = country_code
      @line_type = line_type
      @local_number = local_number
      @full_number = full_number
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country = hash['country']
      country_code = hash['country_code']
      line_type = hash['line_type']
      local_number = hash['local_number']
      full_number = hash['full_number']

      # Create object from extracted values.
      PhoneNumber.new(country,
                      country_code,
                      line_type,
                      local_number,
                      full_number)
    end
  end
end
