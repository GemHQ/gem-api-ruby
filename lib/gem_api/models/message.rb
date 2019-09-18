# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.Message.description
  class Message < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :body

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['body'] = 'body'
      @_hash
    end

    def initialize(body = nil)
      @body = body
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      body = hash['body']

      # Create object from extracted values.
      Message.new(body)
    end
  end
end
