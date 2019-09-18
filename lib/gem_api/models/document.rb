# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'new_document'

module GemApi
  # translation missing: en.swagger.models.Document.description
  class Document < NewDocument
    # TODO: Write general description for this method
    # @return [CategoryEnum]
    attr_accessor :category

    # Discriminators mapping.
    def self.discriminators
      if @_discriminators.nil?
        @_discriminators = {}
        @_discriminators['DocumentID'] = DocumentID.method(:from_hash)
        @_discriminators['Passport'] = Passport.method(:from_hash)
        @_discriminators['DriversLicense'] = DriversLicense.method(:from_hash)
        @_discriminators['IDCard'] = IDCard.method(:from_hash)
      end
      @_discriminators
    end

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['category'] = 'category'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(files = nil,
                   category = nil,
                   type = nil,
                   description = nil)
      @category = category

      # Call the constructor of the base class
      super(files,
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
      category = hash['category']
      type = hash['type']
      description = hash['description']

      # Create object from extracted values.
      Document.new(files,
                   category,
                   type,
                   description)
    end
  end
end
