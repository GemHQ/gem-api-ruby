# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.NewAccount.description
  class NewAccount < BaseModel
    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :connection_id

    # Unique identifier in the Gem ecosystem.
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['connection_id'] = 'connection_id'
      @_hash['type'] = 'type'
      @_hash
    end

    def initialize(connection_id = nil,
                   type = nil)
      @connection_id = connection_id
      @type = type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      connection_id = hash['connection_id']
      type = hash['type']

      # Create object from extracted values.
      NewAccount.new(connection_id,
                     type)
    end
  end
end
