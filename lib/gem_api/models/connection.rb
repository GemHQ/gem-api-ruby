# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module GemApi
  # translation missing: en.swagger.models.Connection.description
  class Connection < BaseModel
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

    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :institution_user_id

    # translation missing: en.swagger.models.ConnectionStatus.description
    # @return [ConnectionStatusEnum]
    attr_accessor :status

    # translation missing: en.swagger.models.InstitutionUser.description
    # @return [InstitutionUser]
    attr_accessor :institution_user

    # translation missing: en.swagger.models.Accounts.description
    # @return [List of Account]
    attr_accessor :accounts

    # translation missing: en.swagger.models.Timestamp.description
    # @return [DateTime]
    attr_accessor :expired_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['user_id'] = 'user_id'
      @_hash['institution_user_id'] = 'institution_user_id'
      @_hash['status'] = 'status'
      @_hash['institution_user'] = 'institution_user'
      @_hash['accounts'] = 'accounts'
      @_hash['expired_at'] = 'expired_at'
      @_hash
    end

    def initialize(id = nil,
                   created_at = nil,
                   updated_at = nil,
                   user_id = nil,
                   institution_user_id = nil,
                   status = nil,
                   institution_user = nil,
                   accounts = nil,
                   expired_at = nil)
      @id = id
      @created_at = created_at
      @updated_at = updated_at
      @user_id = user_id
      @institution_user_id = institution_user_id
      @status = status
      @institution_user = institution_user
      @accounts = accounts
      @expired_at = expired_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      user_id = hash['user_id']
      institution_user_id = hash['institution_user_id']
      status = hash['status']
      institution_user = InstitutionUser.from_hash(hash['institution_user']) if
        hash['institution_user']
      # Parameter is an array, so we need to iterate through it
      accounts = nil
      unless hash['accounts'].nil?
        accounts = []
        hash['accounts'].each do |structure|
          accounts << (Account.from_hash(structure) if structure)
        end
      end
      expired_at = APIHelper.rfc3339(hash['expired_at']) if hash['expired_at']

      # Create object from extracted values.
      Connection.new(id,
                     created_at,
                     updated_at,
                     user_id,
                     institution_user_id,
                     status,
                     institution_user,
                     accounts,
                     expired_at)
    end
  end
end
