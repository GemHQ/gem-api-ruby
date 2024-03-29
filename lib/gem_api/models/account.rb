# gem_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

require 'date'
require_relative 'base_type'

module GemApi
  # translation missing: en.swagger.models.Account.description
  class Account < BaseType
    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :id

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :created_at

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :updated_at

    # Discriminators mapping.
    def self.discriminators
      if @_discriminators.nil?
        @_discriminators = {}
        @_discriminators['AccountDetail'] = AccountDetail.method(:from_hash)
      end
      @_discriminators
    end

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(id = nil,
                   created_at = nil,
                   updated_at = nil,
                   asset = nil,
                   status = nil,
                   name = nil,
                   type = nil,
                   enabled = nil,
                   connection_id = nil)
      @id = id
      @created_at = created_at
      @updated_at = updated_at

      # Call the constructor of the base class
      super(asset,
            status,
            name,
            type,
            enabled,
            connection_id)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Delegate unboxing to another function if a discriminator
      # value for a child class is present.
      unboxer = discriminators[hash['type']]
      return unboxer.call(hash) if unboxer

      # Extract variables from the hash.
      id = hash['id']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      asset = Asset.from_hash(hash['asset']) if hash['asset']
      status = hash['status']
      name = hash['name']
      type = hash['type']
      enabled = hash['enabled']
      connection_id = hash['connection_id']

      # Create object from extracted values.
      Account.new(id,
                  created_at,
                  updated_at,
                  asset,
                  status,
                  name,
                  type,
                  enabled,
                  connection_id)
    end
  end
end
