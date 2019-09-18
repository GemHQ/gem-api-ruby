# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module GemApi
  # translation missing: en.swagger.models.InstitutionAccount.description
  class InstitutionAccount < BaseModel
    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :id

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :created_at

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :updated_at

    # translation missing: en.swagger.models.Timestamp.description
    # @return [Float]
    attr_accessor :balance

    # translation missing: en.swagger.models.ExternalID.description
    # @return [String]
    attr_accessor :external_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['balance'] = 'balance'
      @_hash['external_id'] = 'external_id'
      @_hash
    end

    def initialize(id = nil,
                   created_at = nil,
                   updated_at = nil,
                   balance = nil,
                   external_id = nil)
      @id = id
      @created_at = created_at
      @updated_at = updated_at
      @balance = balance
      @external_id = external_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      balance = hash['balance']
      external_id = hash['external_id']

      # Create object from extracted values.
      InstitutionAccount.new(id,
                             created_at,
                             updated_at,
                             balance,
                             external_id)
    end
  end
end
