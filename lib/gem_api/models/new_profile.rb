# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.NewProfile.description
  class NewProfile < BaseModel
    # translation missing: en.swagger.models.Name.description
    # @return [Name]
    attr_accessor :name

    # translation missing: en.swagger.models.NewPhoneNumber.description
    # @return [String]
    attr_accessor :phone_number

    # translation missing: en.swagger.models.Address.description
    # @return [Address]
    attr_accessor :address

    # translation missing: en.swagger.models.EmailAddress.description
    # @return [String]
    attr_accessor :email_address

    # translation missing: en.swagger.models.SSN.description
    # @return [String]
    attr_accessor :social_security_number

    # translation missing: en.swagger.models.DateOfBirth.description
    # @return [Date]
    attr_accessor :date_of_birth

    # translation missing: en.swagger.models.NewDocuments.description
    # @return [List of NewDocument]
    attr_accessor :documents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['phone_number'] = 'phone_number'
      @_hash['address'] = 'address'
      @_hash['email_address'] = 'email_address'
      @_hash['social_security_number'] = 'social_security_number'
      @_hash['date_of_birth'] = 'date_of_birth'
      @_hash['documents'] = 'documents'
      @_hash
    end

    def initialize(name = nil,
                   phone_number = nil,
                   address = nil,
                   email_address = nil,
                   social_security_number = nil,
                   date_of_birth = nil,
                   documents = nil)
      @name = name
      @phone_number = phone_number
      @address = address
      @email_address = email_address
      @social_security_number = social_security_number
      @date_of_birth = date_of_birth
      @documents = documents
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = Name.from_hash(hash['name']) if hash['name']
      phone_number = hash['phone_number']
      address = Address.from_hash(hash['address']) if hash['address']
      email_address = hash['email_address']
      social_security_number = hash['social_security_number']
      date_of_birth = hash['date_of_birth']
      # Parameter is an array, so we need to iterate through it
      documents = nil
      unless hash['documents'].nil?
        documents = []
        hash['documents'].each do |structure|
          documents << (NewDocument.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      NewProfile.new(name,
                     phone_number,
                     address,
                     email_address,
                     social_security_number,
                     date_of_birth,
                     documents)
    end
  end
end
