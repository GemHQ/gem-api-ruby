# gem_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module GemApi
  # translation missing: en.swagger.models.Institution.description
  class Institution < BaseModel
    # Unique identifier in the Gem ecosystem.
    # @return [UUID | String]
    attr_accessor :id

    # Unique identifier in the Gem ecosystem.
    # @return [String]
    attr_accessor :name

    # translation missing: en.swagger.models.CredentialsFormats.description
    # @return [List of CredentialsFormat]
    attr_accessor :credentials_formats

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['credentials_formats'] = 'credentials_formats'
      @_hash
    end

    def initialize(id = nil,
                   name = nil,
                   credentials_formats = nil)
      @id = id
      @name = name
      @credentials_formats = credentials_formats
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      name = hash['name']
      # Parameter is an array, so we need to iterate through it
      credentials_formats = nil
      unless hash['credentials_formats'].nil?
        credentials_formats = []
        hash['credentials_formats'].each do |structure|
          credentials_formats << (CredentialsFormat.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      Institution.new(id,
                      name,
                      credentials_formats)
    end
  end
end
