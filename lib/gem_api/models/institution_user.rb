# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.InstitutionUser.description
  class InstitutionUser < BaseModel
    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :id

    # Unique identifier in the Gem ecosystem.
    # @return [InstitutionUserStatusEnum]
    attr_accessor :status

    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :profile_id

    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :institution_id

    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :connection_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['status'] = 'status'
      @_hash['profile_id'] = 'profile_id'
      @_hash['institution_id'] = 'institution_id'
      @_hash['connection_id'] = 'connection_id'
      @_hash
    end

    def initialize(id = nil,
                   status = nil,
                   profile_id = nil,
                   institution_id = nil,
                   connection_id = nil)
      @id = id
      @status = status
      @profile_id = profile_id
      @institution_id = institution_id
      @connection_id = connection_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      status = hash['status']
      profile_id = hash['profile_id']
      institution_id = hash['institution_id']
      connection_id = hash['connection_id']

      # Create object from extracted values.
      InstitutionUser.new(id,
                          status,
                          profile_id,
                          institution_id,
                          connection_id)
    end
  end
end
