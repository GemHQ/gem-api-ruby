# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.Name.description
  class Name < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :given_names

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :family_names

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['given_names'] = 'given_names'
      @_hash['family_names'] = 'family_names'
      @_hash
    end

    def initialize(given_names = nil,
                   family_names = nil)
      @given_names = given_names
      @family_names = family_names
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      given_names = hash['given_names']
      family_names = hash['family_names']

      # Create object from extracted values.
      Name.new(given_names,
               family_names)
    end
  end
end
