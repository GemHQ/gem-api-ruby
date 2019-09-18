# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.File.description
  class File < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # translation missing: en.swagger.models.FileData.description
    # @return [FileData]
    attr_accessor :file_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['description'] = 'description'
      @_hash['file_data'] = 'file_data'
      @_hash
    end

    def initialize(description = nil,
                   file_data = nil)
      @description = description
      @file_data = file_data
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      description = hash['description']
      file_data = FileData.from_hash(hash['file_data']) if hash['file_data']

      # Create object from extracted values.
      File.new(description,
               file_data)
    end
  end
end
