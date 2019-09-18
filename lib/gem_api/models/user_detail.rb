# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module GemApi
  # translation missing: en.swagger.models.UserDetail.description
  class UserDetail < BaseModel
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

    # translation missing: en.swagger.models.Connections.description
    # @return [List of Connection]
    attr_accessor :connections

    # translation missing: en.swagger.models.Profiles.description
    # @return [List of Profile]
    attr_accessor :profiles

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['verified'] = 'verified'
      @_hash['consented'] = 'consented'
      @_hash['connections'] = 'connections'
      @_hash['profiles'] = 'profiles'
      @_hash
    end

    def initialize(id = nil,
                   created_at = nil,
                   updated_at = nil,
                   verified = nil,
                   consented = nil,
                   connections = nil,
                   profiles = nil)
      @id = id
      @created_at = created_at
      @updated_at = updated_at
      @verified = verified
      @consented = consented
      @connections = connections
      @profiles = profiles
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
      # Parameter is an array, so we need to iterate through it
      connections = nil
      unless hash['connections'].nil?
        connections = []
        hash['connections'].each do |structure|
          connections << (Connection.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      profiles = nil
      unless hash['profiles'].nil?
        profiles = []
        hash['profiles'].each do |structure|
          profiles << (Profile.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UserDetail.new(id,
                     created_at,
                     updated_at,
                     verified,
                     consented,
                     connections,
                     profiles)
    end
  end
end
