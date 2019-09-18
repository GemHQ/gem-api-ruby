# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module GemApi
  # translation missing: en.swagger.models.ProfileDetail.description
  class ProfileDetail < BaseModel
    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :id

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :created_at

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :updated_at

    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :user_id

    # translation missing: en.swagger.models.ProfileStatus.description
    # @return [ProfileStatusEnum]
    attr_accessor :status

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :expired_at

    # translation missing: en.swagger.models.User.description
    # @return [User]
    attr_accessor :user

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['user_id'] = 'user_id'
      @_hash['status'] = 'status'
      @_hash['expired_at'] = 'expired_at'
      @_hash['user'] = 'user'
      @_hash
    end

    def initialize(id = nil,
                   created_at = nil,
                   updated_at = nil,
                   user_id = nil,
                   status = nil,
                   expired_at = nil,
                   user = nil)
      @id = id
      @created_at = created_at
      @updated_at = updated_at
      @user_id = user_id
      @status = status
      @expired_at = expired_at
      @user = user
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      user_id = hash['user_id']
      status = hash['status']
      expired_at = APIHelper.rfc3339(hash['expired_at']) if hash['expired_at']
      user = User.from_hash(hash['user']) if hash['user']

      # Create object from extracted values.
      ProfileDetail.new(id,
                        created_at,
                        updated_at,
                        user_id,
                        status,
                        expired_at,
                        user)
    end
  end
end
