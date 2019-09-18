# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.NewUser.description
  class NewUser < BaseModel
    # translation missing: en.swagger.models.EmailAddress.description
    # @return [String]
    attr_accessor :email

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['email'] = 'email'
      @_hash
    end

    def initialize(email = nil)
      @email = email
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      email = hash['email']

      # Create object from extracted values.
      NewUser.new(email)
    end
  end
end
