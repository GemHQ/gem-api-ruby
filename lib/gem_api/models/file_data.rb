# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.FileData.description
  class FileData < BaseModel
    # Encoded file data
    # @return [String]
    attr_accessor :data

    # Encoded file data
    # @return [MediaTypeEnum]
    attr_accessor :media_type

    # Encoded file data
    # @return [EncodingEnum]
    attr_accessor :encoding

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['data'] = 'data'
      @_hash['media_type'] = 'media_type'
      @_hash['encoding'] = 'encoding'
      @_hash
    end

    def initialize(data = nil,
                   media_type = nil,
                   encoding = EncodingEnum::BASE64)
      @data = data
      @media_type = media_type
      @encoding = encoding
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      data = hash['data']
      media_type = hash['media_type']
      encoding = hash['encoding'] ||= EncodingEnum::BASE64

      # Create object from extracted values.
      FileData.new(data,
                   media_type,
                   encoding)
    end
  end
end
