# Getting started

This API provides an aggregated, unified access point to many cryptocurrency exchanges and fiat-to-cryptocurrency onramps.

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build gem_api.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install gem_api-1.2.10.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Gem%20API-Ruby&workspaceName=Gem%20API-Ruby&projectName=gem_api&gemName=gem_api&gemVer=1.2.10)

## How to Use

The following section explains how to use the GemApi Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Gem%20API-Ruby&workspaceName=GemApi&projectName=gem_api&gemName=gem_api&gemVer=1.2.10)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Gem%20API-Ruby&workspaceName=GemApi&projectName=gem_api&gemName=gem_api&gemVer=1.2.10)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Gem%20API-Ruby&workspaceName=GemApi&projectName=gem_api&gemName=gem_api&gemVer=1.2.10)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the GemApi gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'gem_api', '~> 1.2.10' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Gem%20API-Ruby&workspaceName=GemApi&projectName=gem_api&gemName=gem_api&gemVer=1.2.10)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Gem%20API-Ruby&workspaceName=GemApi&projectName=gem_api&gemName=gem_api&gemVer=1.2.10)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Gem%20API-Ruby&workspaceName=GemApi&projectName=gem_api&gemName=gem_api&gemVer=1.2.10)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Gem%20API-Ruby&workspaceName=GemApi&projectName=gem_api&gemName=gem_api&gemVer=1.2.10)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Gem%20API-Ruby&workspaceName=GemApi&projectName=gem_api&gemName=gem_api&gemVer=1.2.10)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| x_gem_api_key | Accepts an API Key generated for your Application. If you don't have an API Key yet, go to <https://gem.co> to sign up and generate your key. |
| x_gem_access_timestamp | Accepts current timestamp as used in the request signature. |
| x_gem_signature | Accepts a valid signature for your request. You must generate this signature using your Gem API Secret, and following the procedure outlined at <http://developers.gem.co/reference#authentication-1. |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
x_gem_api_key = 'x_gem_api_key' # Accepts an API Key generated for your Application. If you don't have an API Key yet, go to <https://gem.co> to sign up and generate your key.
x_gem_access_timestamp = 'x_gem_access_timestamp' # Accepts current timestamp as used in the request signature.
x_gem_signature = 'x_gem_signature' # Accepts a valid signature for your request. You must generate this signature using your Gem API Secret, and following the procedure outlined at <http://developers.gem.co/reference#authentication-1.

client = GemApi::GemApiClient.new(
  x_gem_api_key: x_gem_api_key,
  x_gem_access_timestamp: x_gem_access_timestamp,
  x_gem_signature: x_gem_signature
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Gem%20API-Ruby&workspaceName=GemApi&projectName=gem_api&gemName=gem_api&gemVer=1.2.10&initLine=client%2520%253D%2520GemApiClient.new%2528%2527x_gem_api_key%2527%252C%2520%2527x_gem_access_timestamp%2527%252C%2520%2527x_gem_signature%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [ConnectionsController](#connections_controller)
* [ProfilesController](#profiles_controller)
* [UserManagementController](#user_management_controller)
* [InstitutionsController](#institutions_controller)
* [AccountsController](#accounts_controller)
* [TransactionsController](#transactions_controller)
* [AssetsController](#assets_controller)

## <a name="connections_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ConnectionsController") ConnectionsController

### Get singleton instance

The singleton instance of the ``` ConnectionsController ``` class can be accessed from the API Client.

```ruby
connections_controller = client.connections
```

### <a name="get_connections"></a>![Method: ](https://apidocs.io/img/method.png ".ConnectionsController.get_connections") get_connections

> Get a list of Connections.


```ruby
def get_connections(user_id = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
user_id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = connections_controller.get_connections(user_id)

```


### <a name="create_connection"></a>![Method: ](https://apidocs.io/img/method.png ".ConnectionsController.create_connection") create_connection

> Create a new Connection object and receive an access token.


```ruby
def create_connection(body,
                          user_id = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| user_id |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = { 'key' => 'value' }
user_id = UUID.new

result = connections_controller.create_connection(body, user_id)

```


### <a name="get_connection"></a>![Method: ](https://apidocs.io/img/method.png ".ConnectionsController.get_connection") get_connection

> Retrieves a `Connection` object by its identifier.


```ruby
def get_connection(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = connections_controller.get_connection(id)

```


### <a name="put_connection"></a>![Method: ](https://apidocs.io/img/method.png ".ConnectionsController.put_connection") put_connection

> Update Connection with new credentials.


```ruby
def put_connection(id,
                       body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = UUID.new
body = { 'key' => 'value' }

result = connections_controller.put_connection(id, body)

```


### <a name="delete_connection"></a>![Method: ](https://apidocs.io/img/method.png ".ConnectionsController.delete_connection") delete_connection

> Delete a Connection, permanently revoking access.


```ruby
def delete_connection(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = connections_controller.delete_connection(id)

```


### <a name="create_coinbase_oauth_complete"></a>![Method: ](https://apidocs.io/img/method.png ".ConnectionsController.create_coinbase_oauth_complete") create_coinbase_oauth_complete

> Coinbase OAuth Complete


```ruby
def create_coinbase_oauth_complete(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = OauthRequestFormat.new

result = connections_controller.create_coinbase_oauth_complete(body)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="profiles_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ProfilesController") ProfilesController

### Get singleton instance

The singleton instance of the ``` ProfilesController ``` class can be accessed from the API Client.

```ruby
profiles_controller = client.profiles
```

### <a name="get_profiles"></a>![Method: ](https://apidocs.io/img/method.png ".ProfilesController.get_profiles") get_profiles

> Get a list of `Profiles`.


```ruby
def get_profiles(user_id = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
user_id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = profiles_controller.get_profiles(user_id)

```


### <a name="create_profile"></a>![Method: ](https://apidocs.io/img/method.png ".ProfilesController.create_profile") create_profile

> Create a new `Profile` object and receive an access token.


```ruby
def create_profile(body,
                       user_id = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| user_id |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = NewProfile.new
user_id = UUID.new

result = profiles_controller.create_profile(body, user_id)

```


### <a name="create_temporary_profile"></a>![Method: ](https://apidocs.io/img/method.png ".ProfilesController.create_temporary_profile") create_temporary_profile

> Create a temporary `Profile` object that expires in 1 hour. Any data associated with an expired `Profile` is permanently deleted. This endpoint returns an access token.


```ruby
def create_temporary_profile(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = NewProfile.new

result = profiles_controller.create_temporary_profile(body)

```


### <a name="get_profile"></a>![Method: ](https://apidocs.io/img/method.png ".ProfilesController.get_profile") get_profile

> Retrieves `Profile` objects for a `User` or an `Application`.


```ruby
def get_profile(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = profiles_controller.get_profile(id)

```


### <a name="put_profile"></a>![Method: ](https://apidocs.io/img/method.png ".ProfilesController.put_profile") put_profile

> Update `Profile` with new or changed attributes.


```ruby
def put_profile(id,
                    body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = UUID.new
body = NewProfile.new

result = profiles_controller.put_profile(id, body)

```


### <a name="delete_profile"></a>![Method: ](https://apidocs.io/img/method.png ".ProfilesController.delete_profile") delete_profile

> Delete a `Profile`, permanently revoking access.


```ruby
def delete_profile(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = profiles_controller.delete_profile(id)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="user_management_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UserManagementController") UserManagementController

### Get singleton instance

The singleton instance of the ``` UserManagementController ``` class can be accessed from the API Client.

```ruby
userManagement_controller = client.user_management
```

### <a name="get_users"></a>![Method: ](https://apidocs.io/img/method.png ".UserManagementController.get_users") get_users

> Get a list of Users associated with your Application.


```ruby
def get_users; end
```

#### Example Usage

```ruby

result = userManagement_controller.get_users()

```


### <a name="create_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserManagementController.create_user") create_user

> Create a Gem User. A User may either be private (limited to your application) or public (passportable across the Gem network of partners).


```ruby
def create_user(body = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = NewUser.new

result = userManagement_controller.create_user(body)

```


### <a name="update_consent_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserManagementController.update_consent_user") update_consent_user

> Record user's consent to Gem's Terms of Service and Privacy Policy. This is used by our widgets.


```ruby
def update_consent_user(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = userManagement_controller.update_consent_user(id)

```


### <a name="get_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserManagementController.get_user") get_user

> Retrieves User and its linked Connections and Profiles.


```ruby
def get_user(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = userManagement_controller.get_user(id)

```


### <a name="delete_user"></a>![Method: ](https://apidocs.io/img/method.png ".UserManagementController.delete_user") delete_user

> Delete a User. For private users, this permanently deletes the user. For public users, this revokes your access to the public user, but doesn't delete the user.


```ruby
def delete_user(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = userManagement_controller.delete_user(id)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="institutions_controller"></a>![Class: ](https://apidocs.io/img/class.png ".InstitutionsController") InstitutionsController

### Get singleton instance

The singleton instance of the ``` InstitutionsController ``` class can be accessed from the API Client.

```ruby
institutions_controller = client.institutions
```

### <a name="get_institutions"></a>![Method: ](https://apidocs.io/img/method.png ".InstitutionsController.get_institutions") get_institutions

> Get a list of Institutions that Gem supports.


```ruby
def get_institutions; end
```

#### Example Usage

```ruby

result = institutions_controller.get_institutions()

```


### <a name="get_institution"></a>![Method: ](https://apidocs.io/img/method.png ".InstitutionsController.get_institution") get_institution

> Get details about an Institution.


```ruby
def get_institution(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = institutions_controller.get_institution(id)

```


### <a name="create_institution_user"></a>![Method: ](https://apidocs.io/img/method.png ".InstitutionsController.create_institution_user") create_institution_user

> Open a new user account at an Institution. Typically a new user will be required to submit a KYC profile. You may attach an existing Profile object to this request. This endpoint is currently supported for Wyre and Coinify.


```ruby
def create_institution_user(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = NewInstitutionUser.new

result = institutions_controller.create_institution_user(body)

```


### <a name="get_institution_user"></a>![Method: ](https://apidocs.io/img/method.png ".InstitutionsController.get_institution_user") get_institution_user

> Returns data about a user's account at an Institution, including their current status of approvals on KYC and trading limits.


```ruby
def get_institution_user(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = institutions_controller.get_institution_user(id)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="accounts_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountsController") AccountsController

### Get singleton instance

The singleton instance of the ``` AccountsController ``` class can be accessed from the API Client.

```ruby
accounts_controller = client.accounts
```

### <a name="get_accounts"></a>![Method: ](https://apidocs.io/img/method.png ".AccountsController.get_accounts") get_accounts

> Get a list of wallets and payment methods attached to an InstitutionUser.


```ruby
def get_accounts(user_id = nil,
                     connection_id = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Optional ```  | TODO: Add a parameter description |
| connection_id |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
user_id = 3fa85f64-5717-4562-b3fc-2c963f66afa6
connection_id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = accounts_controller.get_accounts(user_id, connection_id)

```


### <a name="create_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountsController.create_account") create_account

> Some Institutions support creating new payment methods and wallets via API. This endpoint gives you a simple way to create a new wallet or payment method at your user's Institution. Supported Institutions include: Wyre, Coinify, Coinbase (coming soon).


```ruby
def create_account(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = Account.new

result = accounts_controller.create_account(body)

```


### <a name="get_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountsController.get_account") get_account

> Get details about an account, including name, balance, base currency and other details that may be available.


```ruby
def get_account(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = accounts_controller.get_account(id)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="transactions_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TransactionsController") TransactionsController

### Get singleton instance

The singleton instance of the ``` TransactionsController ``` class can be accessed from the API Client.

```ruby
transactions_controller = client.transactions
```

### <a name="get_transactions"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionsController.get_transactions") get_transactions

> View all transactions submitted through your Application.


```ruby
def get_transactions(page = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| page |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
page = 130

result = transactions_controller.get_transactions(page)

```


### <a name="create_transaction"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionsController.create_transaction") create_transaction

> Initiate a buy or transfer transaction for an existing Connection. Transactions take a `source` account, a `destination` account, an `amount`, and a `currency`. Successfully submitted transactions return a `transaction_id` to monitor the status of the transaction in future API calls or webhook notifications.


```ruby
def create_transaction(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = NewTransaction.new

result = transactions_controller.create_transaction(body)

```


### <a name="get_transaction"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionsController.get_transaction") get_transaction

> Get transaction details by `transaction_id`.


```ruby
def get_transaction(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = transactions_controller.get_transaction(id)

```


### <a name="delete_cancel_transaction"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionsController.delete_cancel_transaction") delete_cancel_transaction

> Cancel a pending transaction. This may not always be possible for all third-party services.


```ruby
def delete_cancel_transaction(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 3fa85f64-5717-4562-b3fc-2c963f66afa6

result = transactions_controller.delete_cancel_transaction(id)

```


### <a name="create_transfer"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionsController.create_transfer") create_transfer

> Withdraw cryptocurrency from a source `Account` to a `BlockchainAddress` or an `Account`.


```ruby
def create_transfer(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = Transaction.new

result = transactions_controller.create_transfer(body)

```


### <a name="create_buy"></a>![Method: ](https://apidocs.io/img/method.png ".TransactionsController.create_buy") create_buy

> Buy cryptocurrency from a source fiat `Account`. We currently support Wyre and Coinify.


```ruby
def create_buy(body); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
body = Transaction.new

result = transactions_controller.create_buy(body)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="assets_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AssetsController") AssetsController

### Get singleton instance

The singleton instance of the ``` AssetsController ``` class can be accessed from the API Client.

```ruby
assets_controller = client.assets
```

### <a name="get_assets"></a>![Method: ](https://apidocs.io/img/method.png ".AssetsController.get_assets") get_assets

> Returns a full list of assets in the Gem ecosystem, with our normalized ticker symbols.


```ruby
def get_assets(category = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| category |  ``` Optional ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
category = GemApi::AssetCategoriesEnum::CRYPTOCURRENCY

result = assets_controller.get_assets(category)

```


### <a name="get_asset"></a>![Method: ](https://apidocs.io/img/method.png ".AssetsController.get_asset") get_asset

> Resolve to Institution-specific ticker symbol by specifying the Gem Asset ID.


```ruby
def get_asset(id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
id = 'bitcoin'

result = assets_controller.get_asset(id)

```


### <a name="get_assets_prices"></a>![Method: ](https://apidocs.io/img/method.png ".AssetsController.get_assets_prices") get_assets_prices

> Returns current asset price quotes for an array of assets. Quotes may be filtered by source (e.g. Coinbase, CoinMarketCap, Wyre), and may be returned in the currency of your choice (e.g. USD, EUR, BTC).
> 


```ruby
def get_assets_prices(quote_asset_id = nil,
                          asset_ids = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| quote_asset_id |  ``` Optional ```  | TODO: Add a parameter description |
| asset_ids |  ``` Optional ```  ``` Collection ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
quote_asset_id = 'bitcoin'
asset_ids = ['asset_ids']

result = assets_controller.get_assets_prices(quote_asset_id, asset_ids)

```


### <a name="get_price"></a>![Method: ](https://apidocs.io/img/method.png ".AssetsController.get_price") get_price

> Returns current asset price quote for a single asset. Quotes may be filtered by source (e.g. Coinbase, CoinMarketCap, Wyre), and may be returned in the currency of your choice (e.g. USD, EUR, BTC).
> 


```ruby
def get_price(asset_id,
                  quote_asset_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| asset_id |  ``` Required ```  | TODO: Add a parameter description |
| quote_asset_id |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
asset_id = 'bitcoin'
quote_asset_id = 'bitcoin'

result = assets_controller.get_price(asset_id, quote_asset_id)

```


[Back to List of Controllers](#list_of_controllers)



