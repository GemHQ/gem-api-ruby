# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'document_id'

module GemApi
  # translation missing: en.swagger.models.DriversLicense.description
  class DriversLicense < DocumentID
    # Follows ISO 3166-2 formats: https://en.wikipedia.org/wiki/ISO_3166-2
    # @return [String]
    attr_accessor :issue_state

    # Drivers license number
    # @return [String]
    attr_accessor :number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['issue_state'] = 'issue_state'
      @_hash['number'] = 'number'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(files = nil,
                   issue_state = nil,
                   number = nil,
                   name = nil,
                   date_of_birth = nil,
                   gender = nil,
                   issue_country = nil,
                   date_of_expiry = nil,
                   category = nil,
                   type = nil,
                   description = nil)
      @issue_state = issue_state
      @number = number

      # Call the constructor of the base class
      super(files,
            name,
            date_of_birth,
            gender,
            issue_country,
            date_of_expiry,
            category,
            type,
            description)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      files = nil
      unless hash['files'].nil?
        files = []
        hash['files'].each do |structure|
          files << (DocumentFile.from_hash(structure) if structure)
        end
      end
      issue_state = hash['issue_state']
      number = hash['number']
      name = Name.from_hash(hash['name']) if hash['name']
      date_of_birth = hash['date_of_birth']
      gender = hash['gender']
      issue_country = hash['issue_country']
      date_of_expiry = hash['date_of_expiry']
      category = hash['category']
      type = hash['type']
      description = hash['description']

      # Create object from extracted values.
      DriversLicense.new(files,
                         issue_state,
                         number,
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
