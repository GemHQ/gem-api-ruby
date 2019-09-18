# gem_api
#
# This file was automatically generated for Copyright (c) Gem
# 2019. All rights reserved. by APIMATIC v2.0 ( https://apimatic.io ).

module GemApi
  #  gem_api client class.
  class GemApiClient
    # Singleton access to connections controller.
    # @return [ConnectionsController] Returns the controller instance.
    def connections
      ConnectionsController.instance
    end

    # Singleton access to profiles controller.
    # @return [ProfilesController] Returns the controller instance.
    def profiles
      ProfilesController.instance
    end

    # Singleton access to user_management controller.
    # @return [UserManagementController] Returns the controller instance.
    def user_management
      UserManagementController.instance
    end

    # Singleton access to institutions controller.
    # @return [InstitutionsController] Returns the controller instance.
    def institutions
      InstitutionsController.instance
    end

    # Singleton access to accounts controller.
    # @return [AccountsController] Returns the controller instance.
    def accounts
      AccountsController.instance
    end

    # Singleton access to transactions controller.
    # @return [TransactionsController] Returns the controller instance.
    def transactions
      TransactionsController.instance
    end

    # Singleton access to assets controller.
    # @return [AssetsController] Returns the controller instance.
    def assets
      AssetsController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Initializer with authentication and configuration parameters.
    def initialize(x_gem_api_key: nil, x_gem_access_timestamp: nil,
                   x_gem_signature: nil)
      Configuration.x_gem_api_key = x_gem_api_key if
        x_gem_api_key
      Configuration.x_gem_access_timestamp = x_gem_access_timestamp if
        x_gem_access_timestamp
      Configuration.x_gem_signature = x_gem_signature if
        x_gem_signature
    end
  end
end
