# gem_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.CredentialsFormat.description
  class CredentialsFormat < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :format

    # TODO: Write general description for this method
    # @return [List of Field]
    attr_accessor :fields

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['format'] = 'format'
      @_hash['fields'] = 'fields'
      @_hash
    end

    def initialize(format = nil,
                   fields = nil)
      @format = format
      @fields = fields
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      format = hash['format']
      # Parameter is an array, so we need to iterate through it
      fields = nil
      unless hash['fields'].nil?
        fields = []
        hash['fields'].each do |structure|
          fields << (Field.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      CredentialsFormat.new(format,
                            fields)
    end
  end
end
