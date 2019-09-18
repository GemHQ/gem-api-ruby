# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'document_id'

module GemApi
  # translation missing: en.swagger.models.IDCard.description
  class IDCard < DocumentID
    # Descriptor of ID type
    # @return [String]
    attr_accessor :document_type

    # State or government agency that issues this form of identification
    # @return [String]
    attr_accessor :issuing_authority

    # Identity document number
    # @return [String]
    attr_accessor :number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['document_type'] = 'document_type'
      @_hash['issuing_authority'] = 'issuing_authority'
      @_hash['number'] = 'number'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(files = nil,
                   document_type = nil,
                   issuing_authority = nil,
                   number = nil,
                   name = nil,
                   date_of_birth = nil,
                   gender = nil,
                   issue_country = nil,
                   date_of_expiry = nil,
                   category = nil,
                   type = nil,
                   description = nil)
      @document_type = document_type
      @issuing_authority = issuing_authority
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
      document_type = hash['document_type']
      issuing_authority = hash['issuing_authority']
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
      IDCard.new(files,
                 document_type,
                 issuing_authority,
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
