# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'document'

module GemApi
  # translation missing: en.swagger.models.DocumentID.description
  class DocumentID < Document
    # translation missing: en.swagger.models.Name.description
    # @return [Name]
    attr_accessor :name

    # translation missing: en.swagger.models.DateOfBirth.description
    # @return [Date]
    attr_accessor :date_of_birth

    # translation missing: en.swagger.models.Gender.description
    # @return [GenderEnum]
    attr_accessor :gender

    # Accepts ISO 3166-1 formats: https://en.wikipedia.org/wiki/ISO_3166-1
    # @return [String]
    attr_accessor :issue_country

    # translation missing: en.swagger.models.Date.description
    # @return [Date]
    attr_accessor :date_of_expiry

    # Discriminators mapping.
    def self.discriminators
      if @_discriminators.nil?
        @_discriminators = {}
        @_discriminators['Passport'] = Passport.method(:from_hash)
        @_discriminators['DriversLicense'] = DriversLicense.method(:from_hash)
        @_discriminators['IDCard'] = IDCard.method(:from_hash)
      end
      @_discriminators
    end

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['date_of_birth'] = 'date_of_birth'
      @_hash['gender'] = 'gender'
      @_hash['issue_country'] = 'issue_country'
      @_hash['date_of_expiry'] = 'date_of_expiry'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(files = nil,
                   name = nil,
                   date_of_birth = nil,
                   gender = nil,
                   issue_country = nil,
                   date_of_expiry = nil,
                   category = nil,
                   type = nil,
                   description = nil)
      @name = name
      @date_of_birth = date_of_birth
      @gender = gender
      @issue_country = issue_country
      @date_of_expiry = date_of_expiry

      # Call the constructor of the base class
      super(files,
            category,
            type,
            description)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Delegate unboxing to another function if a discriminator
      # value for a child class is present.
      unboxer = discriminators[hash['type']]
      return unboxer.call(hash) if unboxer

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      files = nil
      unless hash['files'].nil?
        files = []
        hash['files'].each do |structure|
          files << (DocumentFile.from_hash(structure) if structure)
        end
      end
      name = Name.from_hash(hash['name']) if hash['name']
      date_of_birth = hash['date_of_birth']
      gender = hash['gender']
      issue_country = hash['issue_country']
      date_of_expiry = hash['date_of_expiry']
      category = hash['category']
      type = hash['type']
      description = hash['description']

      # Create object from extracted values.
      DocumentID.new(files,
                     name,
                     date_of_birth,
                     gender,
                     issue_country,
                     date_of_expiry,
                     category,
                     type,
                     description)
    end
  end
end
