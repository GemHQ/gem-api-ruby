# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

# CohesityManagementSdk
module GemApi
  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # Set the array parameter serialization method.
    # (allowed: indexed, unindexed, plain, csv, tsv, psv)
    @array_serialization = 'indexed'

    # An enum for SDK environments.
    class Environment
      #PRODUCTION: Production Server
      #STAGING: Staging Server
      #SANDBOX: Sandbox Server
      #DEV: For internal testing purposes only.
      ENVIRONMENT = [PRODUCTION = 0, STAGING = 1, SANDBOX = 2, DEV = 3].freeze
    end

    # An enum for API servers.
    class Server
      SERVER = [DEFAULT = 0].freeze
    end

    # The environment in which the SDK is running.
    @environment = Environment::PRODUCTION

    # Accepts an API Key generated for your Application. If you don't have an API Key yet, go to <https://gem.co> to sign up and generate your key.
    @x_gem_api_key = 'TODO: Replace'

    # Accepts current timestamp as used in the request signature.
    @x_gem_access_timestamp = 'TODO: Replace'

    # Accepts a valid signature for your request. You must generate this signature using your Gem API Secret, and following the procedure outlined at <http://developers.gem.co/reference#authentication-1.
    @x_gem_signature = 'TODO: Replace'

    # All the environments the SDK can run in.
    @environments = {
      Environment::PRODUCTION => {
        Server::DEFAULT => 'https://vgs.gem.co'
      },
      Environment::STAGING => {
        Server::DEFAULT => 'https://vgs-stage.gem.co'
      },
      Environment::SANDBOX => {
        Server::DEFAULT => 'https://vgs-sandbox.gem.co'
      },
      Environment::DEV => {
        Server::DEFAULT => 'vgs-dev.gem.farm'
      }
    }

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def self.get_base_uri(server = Server::DEFAULT)
      environments[environment][server].clone
    end

    # The attribute accessors for public properties.
    class << self
      attr_accessor :array_serialization
      attr_accessor :environment
      attr_accessor :environments
      attr_accessor :x_gem_api_key
      attr_accessor :x_gem_access_timestamp
      attr_accessor :x_gem_signature
    end
  end
end
