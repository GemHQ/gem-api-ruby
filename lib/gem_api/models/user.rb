# gem_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

require 'date'
module GemApi
  # translation missing: en.swagger.models.User.description
  class User < BaseModel
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
    # @return [Boolean]
    attr_accessor :verified

    # translation missing: en.swagger.models.Timestamp.description
    # @return [Boolean]
    attr_accessor :consented

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['verified'] = 'verified'
      @_hash['consented'] = 'consented'
      @_hash
    end

    def initialize(id = nil,
                   created_at = nil,
                   updated_at = nil,
                   verified = nil,
                   consented = nil)
      @id = id
      @created_at = created_at
      @updated_at = updated_at
      @verified = verified
      @consented = consented
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      verified = hash['verified']
      consented = hash['consented']

      # Create object from extracted values.
      User.new(id,
               created_at,
               updated_at,
               verified,
               consented)
    end
  end
end