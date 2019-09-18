# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.DocumentFile.description
  class DocumentFile < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # translation missing: en.swagger.models.FileData.description
    # @return [FileData]
    attr_accessor :file_data

    # translation missing: en.swagger.models.FileData.description
    # @return [OrientationEnum]
    attr_accessor :orientation

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['description'] = 'description'
      @_hash['file_data'] = 'file_data'
      @_hash['orientation'] = 'orientation'
      @_hash
    end

    def initialize(description = nil,
                   file_data = nil,
                   orientation = OrientationEnum::FRONT)
      @description = description
      @file_data = file_data
      @orientation = orientation
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      description = hash['description']
      file_data = FileData.from_hash(hash['file_data']) if hash['file_data']
      orientation = hash['orientation'] ||= OrientationEnum::FRONT

      # Create object from extracted values.
      DocumentFile.new(description,
                       file_data,
                       orientation)
    end
  end
end
