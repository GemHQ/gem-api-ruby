# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.NewDocument.description
  class NewDocument < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [List of DocumentFile]
    attr_accessor :files

    # Discriminators mapping.
    def self.discriminators
      if @_discriminators.nil?
        @_discriminators = {}
        @_discriminators['Document'] = Document.method(:from_hash)
        @_discriminators['DocumentID'] = DocumentID.method(:from_hash)
      end
      @_discriminators
    end

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['description'] = 'description'
      @_hash['files'] = 'files'
      @_hash
    end

    def initialize(files = nil,
                   type = nil,
                   description = nil)
      @type = type
      @description = description
      @files = files
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
      type = hash['type']
      description = hash['description']

      # Create object from extracted values.
      NewDocument.new(files,
                      type,
                      description)
    end
  end
end
