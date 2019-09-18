# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.NewInstitutionUser.description
  class NewInstitutionUser < BaseModel
    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :profile_id

    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :institution_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['profile_id'] = 'profile_id'
      @_hash['institution_id'] = 'institution_id'
      @_hash
    end

    def initialize(profile_id = nil,
                   institution_id = nil)
      @profile_id = profile_id
      @institution_id = institution_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      profile_id = hash['profile_id']
      institution_id = hash['institution_id']

      # Create object from extracted values.
      NewInstitutionUser.new(profile_id,
                             institution_id)
    end
  end
end
