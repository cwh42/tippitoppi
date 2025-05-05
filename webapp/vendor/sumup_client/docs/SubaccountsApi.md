# OpenapiClient::SubaccountsApi

All URIs are relative to *https://api.sumup.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**compat_get_operator**](SubaccountsApi.md#compat_get_operator) | **GET** /v0.1/me/accounts/{operator_id} | Retrieve an operator |
| [**create_sub_account**](SubaccountsApi.md#create_sub_account) | **POST** /v0.1/me/accounts | Create an operator |
| [**deactivate_sub_account**](SubaccountsApi.md#deactivate_sub_account) | **DELETE** /v0.1/me/accounts/{operator_id} | Disable an operator |
| [**list_sub_accounts**](SubaccountsApi.md#list_sub_accounts) | **GET** /v0.1/me/accounts | List operators |
| [**update_sub_account**](SubaccountsApi.md#update_sub_account) | **PUT** /v0.1/me/accounts/{operator_id} | Update an operator |


## compat_get_operator

> <Operator> compat_get_operator(operator_id)

Retrieve an operator

Returns specific operator.

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

api_instance = OpenapiClient::SubaccountsApi.new
operator_id = 56 # Integer | 

begin
  # Retrieve an operator
  result = api_instance.compat_get_operator(operator_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubaccountsApi->compat_get_operator: #{e}"
end
```

#### Using the compat_get_operator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Operator>, Integer, Hash)> compat_get_operator_with_http_info(operator_id)

```ruby
begin
  # Retrieve an operator
  data, status_code, headers = api_instance.compat_get_operator_with_http_info(operator_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Operator>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubaccountsApi->compat_get_operator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operator_id** | **Integer** |  |  |

### Return type

[**Operator**](Operator.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_sub_account

> <Operator> create_sub_account(create_sub_account_request)

Create an operator

Creates new operator for currently authorized users' merchant.

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

api_instance = OpenapiClient::SubaccountsApi.new
create_sub_account_request = OpenapiClient::CreateSubAccountRequest.new({username: 'operator1@mydomain.com', password: 'correct horse batter staple'}) # CreateSubAccountRequest | 

begin
  # Create an operator
  result = api_instance.create_sub_account(create_sub_account_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubaccountsApi->create_sub_account: #{e}"
end
```

#### Using the create_sub_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Operator>, Integer, Hash)> create_sub_account_with_http_info(create_sub_account_request)

```ruby
begin
  # Create an operator
  data, status_code, headers = api_instance.create_sub_account_with_http_info(create_sub_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Operator>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubaccountsApi->create_sub_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_sub_account_request** | [**CreateSubAccountRequest**](CreateSubAccountRequest.md) |  |  |

### Return type

[**Operator**](Operator.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deactivate_sub_account

> <Operator> deactivate_sub_account(operator_id)

Disable an operator

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

api_instance = OpenapiClient::SubaccountsApi.new
operator_id = 56 # Integer | 

begin
  # Disable an operator
  result = api_instance.deactivate_sub_account(operator_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubaccountsApi->deactivate_sub_account: #{e}"
end
```

#### Using the deactivate_sub_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Operator>, Integer, Hash)> deactivate_sub_account_with_http_info(operator_id)

```ruby
begin
  # Disable an operator
  data, status_code, headers = api_instance.deactivate_sub_account_with_http_info(operator_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Operator>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubaccountsApi->deactivate_sub_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operator_id** | **Integer** |  |  |

### Return type

[**Operator**](Operator.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sub_accounts

> <Array<Operator>> list_sub_accounts(opts)

List operators

Returns list of operators for currently authorized user's merchant.

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

api_instance = OpenapiClient::SubaccountsApi.new
opts = {
  query: 'query_example', # String | Search query used to filter users that match given query term.  Current implementation allow querying only over the email address. All operators whos email address contains the query string are returned. 
  include_primary: true # Boolean | If true the list of operators will include also the primary user.
}

begin
  # List operators
  result = api_instance.list_sub_accounts(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubaccountsApi->list_sub_accounts: #{e}"
end
```

#### Using the list_sub_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Operator>>, Integer, Hash)> list_sub_accounts_with_http_info(opts)

```ruby
begin
  # List operators
  data, status_code, headers = api_instance.list_sub_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Operator>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubaccountsApi->list_sub_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | Search query used to filter users that match given query term.  Current implementation allow querying only over the email address. All operators whos email address contains the query string are returned.  | [optional] |
| **include_primary** | **Boolean** | If true the list of operators will include also the primary user. | [optional] |

### Return type

[**Array&lt;Operator&gt;**](Operator.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_sub_account

> <Operator> update_sub_account(operator_id, update_sub_account_request)

Update an operator

Updates operator. If the operator was disabled and their password is updated they will be unblocked.

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

api_instance = OpenapiClient::SubaccountsApi.new
operator_id = 56 # Integer | 
update_sub_account_request = OpenapiClient::UpdateSubAccountRequest.new # UpdateSubAccountRequest | 

begin
  # Update an operator
  result = api_instance.update_sub_account(operator_id, update_sub_account_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubaccountsApi->update_sub_account: #{e}"
end
```

#### Using the update_sub_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Operator>, Integer, Hash)> update_sub_account_with_http_info(operator_id, update_sub_account_request)

```ruby
begin
  # Update an operator
  data, status_code, headers = api_instance.update_sub_account_with_http_info(operator_id, update_sub_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Operator>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SubaccountsApi->update_sub_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operator_id** | **Integer** |  |  |
| **update_sub_account_request** | [**UpdateSubAccountRequest**](UpdateSubAccountRequest.md) |  |  |

### Return type

[**Operator**](Operator.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

