# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # BaseType Model.
  class BaseType < BaseModel
    # translation missing: en.swagger.models.Asset.description
    # @return [Asset]
    attr_accessor :asset

    # translation missing: en.swagger.models.AccountStatus.description
    # @return [AccountStatusEnum]
    attr_accessor :status

    # translation missing: en.swagger.models.AccountStatus.description
    # @return [String]
    attr_accessor :name

    # translation missing: en.swagger.models.AccountStatus.description
    # @return [String]
    attr_accessor :type

    # translation missing: en.swagger.models.AccountStatus.description
    # @return [Boolean]
    attr_accessor :enabled

    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :connection_id

    # Discriminators mapping.
    def self.discriminators
      if @_discriminators.nil?
        @_discriminators = {}
        @_discriminators['Account'] = Account.method(:from_hash)
        @_discriminators['AccountDetail'] = AccountDetail.method(:from_hash)
      end
      @_discriminators
    end

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['asset'] = 'asset'
      @_hash['status'] = 'status'
      @_hash['name'] = 'name'
      @_hash['type'] = 'type'
      @_hash['enabled'] = 'enabled'
      @_hash['connection_id'] = 'connection_id'
      @_hash
    end

    def initialize(asset = nil,
                   status = nil,
                   name = nil,
                   type = nil,
                   enabled = nil,
                   connection_id = nil)
      @asset = asset
      @status = status
      @name = name
      @type = type
      @enabled = enabled
      @connection_id = connection_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Delegate unboxing to another function if a discriminator
      # value for a child class is present.
      unboxer = discriminators[hash['type']]
      return unboxer.call(hash) if unboxer

      # Extract variables from the hash.
      asset = Asset.from_hash(hash['asset']) if hash['asset']
      status = hash['status']
      name = hash['name']
      type = hash['type']
      enabled = hash['enabled']
      connection_id = hash['connection_id']

      # Create object from extracted values.
      BaseType.new(asset,
                   status,
                   name,
                   type,
                   enabled,
                   connection_id)
    end
  end
end
