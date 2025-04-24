# OpenapiClient::MerchantApi

All URIs are relative to *https://api.sumup.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account**](MerchantApi.md#get_account) | **GET** /v0.1/me | Retrieve a profile |
| [**get_doing_business_as**](MerchantApi.md#get_doing_business_as) | **GET** /v0.1/me/merchant-profile/doing-business-as | Retrieve DBA |
| [**get_merchant_profile**](MerchantApi.md#get_merchant_profile) | **GET** /v0.1/me/merchant-profile | Retrieve a merchant profile |
| [**get_personal_profile**](MerchantApi.md#get_personal_profile) | **GET** /v0.1/me/personal-profile | Retrieve a personal profile |
| [**get_settings**](MerchantApi.md#get_settings) | **GET** /v0.1/me/merchant-profile/settings | Get settings |
| [**list_bank_accounts**](MerchantApi.md#list_bank_accounts) | **GET** /v0.1/me/merchant-profile/bank-accounts | List bank accounts |
| [**list_bank_accounts_v11**](MerchantApi.md#list_bank_accounts_v11) | **GET** /v1.1/merchants/{merchant_code}/bank-accounts | List bank accounts |


## get_account

> <MerchantAccount> get_account(opts)

Retrieve a profile

Returns user profile information.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: apiKey
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MerchantApi.new
opts = {
  include: ['settings'] # Array<String> | A list of additional information you want to receive for the user. By default only personal and merchant profile information will be returned.
}

begin
  # Retrieve a profile
  result = api_instance.get_account(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->get_account: #{e}"
end
```

#### Using the get_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantAccount>, Integer, Hash)> get_account_with_http_info(opts)

```ruby
begin
  # Retrieve a profile
  data, status_code, headers = api_instance.get_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantAccount>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->get_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | [**Array&lt;String&gt;**](String.md) | A list of additional information you want to receive for the user. By default only personal and merchant profile information will be returned. | [optional] |

### Return type

[**MerchantAccount**](MerchantAccount.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_doing_business_as

> <DoingBusinessAs> get_doing_business_as

Retrieve DBA

Retrieves Doing Business As profile.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: apiKey
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MerchantApi.new

begin
  # Retrieve DBA
  result = api_instance.get_doing_business_as
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->get_doing_business_as: #{e}"
end
```

#### Using the get_doing_business_as_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DoingBusinessAs>, Integer, Hash)> get_doing_business_as_with_http_info

```ruby
begin
  # Retrieve DBA
  data, status_code, headers = api_instance.get_doing_business_as_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DoingBusinessAs>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->get_doing_business_as_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DoingBusinessAs**](DoingBusinessAs.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_merchant_profile

> <MerchantProfile> get_merchant_profile

Retrieve a merchant profile

Retrieves merchant profile data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: apiKey
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MerchantApi.new

begin
  # Retrieve a merchant profile
  result = api_instance.get_merchant_profile
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->get_merchant_profile: #{e}"
end
```

#### Using the get_merchant_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantProfile>, Integer, Hash)> get_merchant_profile_with_http_info

```ruby
begin
  # Retrieve a merchant profile
  data, status_code, headers = api_instance.get_merchant_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantProfile>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->get_merchant_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MerchantProfile**](MerchantProfile.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_personal_profile

> <PersonalProfile> get_personal_profile

Retrieve a personal profile

Retrieves personal profile data.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: apiKey
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MerchantApi.new

begin
  # Retrieve a personal profile
  result = api_instance.get_personal_profile
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->get_personal_profile: #{e}"
end
```

#### Using the get_personal_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PersonalProfile>, Integer, Hash)> get_personal_profile_with_http_info

```ruby
begin
  # Retrieve a personal profile
  data, status_code, headers = api_instance.get_personal_profile_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PersonalProfile>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->get_personal_profile_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PersonalProfile**](PersonalProfile.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_settings

> <MerchantSettings> get_settings

Get settings

Retrieves merchant settings.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: apiKey
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MerchantApi.new

begin
  # Get settings
  result = api_instance.get_settings
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->get_settings: #{e}"
end
```

#### Using the get_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantSettings>, Integer, Hash)> get_settings_with_http_info

```ruby
begin
  # Get settings
  data, status_code, headers = api_instance.get_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantSettings>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->get_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MerchantSettings**](MerchantSettings.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_bank_accounts

> <Array<BankAccount>> list_bank_accounts(opts)

List bank accounts

Retrieves bank accounts of the merchant.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: apiKey
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MerchantApi.new
opts = {
  primary: true # Boolean | If true only the primary bank account (the one used for payouts) will be returned.
}

begin
  # List bank accounts
  result = api_instance.list_bank_accounts(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->list_bank_accounts: #{e}"
end
```

#### Using the list_bank_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccount>>, Integer, Hash)> list_bank_accounts_with_http_info(opts)

```ruby
begin
  # List bank accounts
  data, status_code, headers = api_instance.list_bank_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccount>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->list_bank_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **primary** | **Boolean** | If true only the primary bank account (the one used for payouts) will be returned. | [optional] |

### Return type

[**Array&lt;BankAccount&gt;**](BankAccount.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_bank_accounts_v11

> <Array<BankAccount>> list_bank_accounts_v11(merchant_code, opts)

List bank accounts

Retrieves bank accounts of the merchant.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: apiKey
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MerchantApi.new
merchant_code = 'MC0X0ABC' # String | 
opts = {
  primary: true # Boolean | If true only the primary bank account (the one used for payouts) will be returned.
}

begin
  # List bank accounts
  result = api_instance.list_bank_accounts_v11(merchant_code, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->list_bank_accounts_v11: #{e}"
end
```

#### Using the list_bank_accounts_v11_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccount>>, Integer, Hash)> list_bank_accounts_v11_with_http_info(merchant_code, opts)

```ruby
begin
  # List bank accounts
  data, status_code, headers = api_instance.list_bank_accounts_v11_with_http_info(merchant_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccount>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MerchantApi->list_bank_accounts_v11_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** |  |  |
| **primary** | **Boolean** | If true only the primary bank account (the one used for payouts) will be returned. | [optional] |

### Return type

[**Array&lt;BankAccount&gt;**](BankAccount.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

