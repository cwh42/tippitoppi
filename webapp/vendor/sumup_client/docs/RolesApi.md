# OpenapiClient::RolesApi

All URIs are relative to *https://api.sumup.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_merchant_role**](RolesApi.md#create_merchant_role) | **POST** /v0.1/merchants/{merchant_code}/roles | Create a role |
| [**delete_merchant_role**](RolesApi.md#delete_merchant_role) | **DELETE** /v0.1/merchants/{merchant_code}/roles/{role_id} | Delete a role |
| [**get_merchant_role**](RolesApi.md#get_merchant_role) | **GET** /v0.1/merchants/{merchant_code}/roles/{role_id} | Retrieve a role |
| [**list_merchant_roles**](RolesApi.md#list_merchant_roles) | **GET** /v0.1/merchants/{merchant_code}/roles | List roles |
| [**update_merchant_role**](RolesApi.md#update_merchant_role) | **PATCH** /v0.1/merchants/{merchant_code}/roles/{role_id} | Update a role |


## create_merchant_role

> <Role> create_merchant_role(merchant_code, create_merchant_role_request)

Create a role

Create a custom role for the merchant. Roles are defined by the set of permissions that they grant to the members that they are assigned to.

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

api_instance = OpenapiClient::RolesApi.new
merchant_code = 'MC0X0ABC' # String | Merchant code.
create_merchant_role_request = OpenapiClient::CreateMerchantRoleRequest.new({name: 'Senior Shop Manager II', permissions: ["members_list", "members_read", "members_view", "members_write", "members_delete"]}) # CreateMerchantRoleRequest | 

begin
  # Create a role
  result = api_instance.create_merchant_role(merchant_code, create_merchant_role_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->create_merchant_role: #{e}"
end
```

#### Using the create_merchant_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Role>, Integer, Hash)> create_merchant_role_with_http_info(merchant_code, create_merchant_role_request)

```ruby
begin
  # Create a role
  data, status_code, headers = api_instance.create_merchant_role_with_http_info(merchant_code, create_merchant_role_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Role>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->create_merchant_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Merchant code. |  |
| **create_merchant_role_request** | [**CreateMerchantRoleRequest**](CreateMerchantRoleRequest.md) |  |  |

### Return type

[**Role**](Role.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_merchant_role

> delete_merchant_role(merchant_code, role_id)

Delete a role

Delete a custom role.

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

api_instance = OpenapiClient::RolesApi.new
merchant_code = 'MC0X0ABC' # String | Merchant code.
role_id = 'role_WZsm7QTPhVrompscmPhoGTXXcrd58fr9MOhP' # String | The ID of the role to retrieve.

begin
  # Delete a role
  api_instance.delete_merchant_role(merchant_code, role_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->delete_merchant_role: #{e}"
end
```

#### Using the delete_merchant_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_merchant_role_with_http_info(merchant_code, role_id)

```ruby
begin
  # Delete a role
  data, status_code, headers = api_instance.delete_merchant_role_with_http_info(merchant_code, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->delete_merchant_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Merchant code. |  |
| **role_id** | **String** | The ID of the role to retrieve. |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_merchant_role

> <Role> get_merchant_role(merchant_code, role_id)

Retrieve a role

Retrieve a custom role by ID.

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

api_instance = OpenapiClient::RolesApi.new
merchant_code = 'MC0X0ABC' # String | Merchant code.
role_id = 'role_WZsm7QTPhVrompscmPhoGTXXcrd58fr9MOhP' # String | The ID of the role to retrieve.

begin
  # Retrieve a role
  result = api_instance.get_merchant_role(merchant_code, role_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->get_merchant_role: #{e}"
end
```

#### Using the get_merchant_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Role>, Integer, Hash)> get_merchant_role_with_http_info(merchant_code, role_id)

```ruby
begin
  # Retrieve a role
  data, status_code, headers = api_instance.get_merchant_role_with_http_info(merchant_code, role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Role>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->get_merchant_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Merchant code. |  |
| **role_id** | **String** | The ID of the role to retrieve. |  |

### Return type

[**Role**](Role.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_merchant_roles

> <ListMerchantRoles200Response> list_merchant_roles(merchant_code)

List roles

List merchant's custom roles.

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

api_instance = OpenapiClient::RolesApi.new
merchant_code = 'MC0X0ABC' # String | Merchant code.

begin
  # List roles
  result = api_instance.list_merchant_roles(merchant_code)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->list_merchant_roles: #{e}"
end
```

#### Using the list_merchant_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMerchantRoles200Response>, Integer, Hash)> list_merchant_roles_with_http_info(merchant_code)

```ruby
begin
  # List roles
  data, status_code, headers = api_instance.list_merchant_roles_with_http_info(merchant_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMerchantRoles200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->list_merchant_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Merchant code. |  |

### Return type

[**ListMerchantRoles200Response**](ListMerchantRoles200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_merchant_role

> <Role> update_merchant_role(merchant_code, role_id, update_merchant_role_request)

Update a role

Update a custom role.

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

api_instance = OpenapiClient::RolesApi.new
merchant_code = 'MC0X0ABC' # String | Merchant code.
role_id = 'role_WZsm7QTPhVrompscmPhoGTXXcrd58fr9MOhP' # String | The ID of the role to retrieve.
update_merchant_role_request = OpenapiClient::UpdateMerchantRoleRequest.new # UpdateMerchantRoleRequest | 

begin
  # Update a role
  result = api_instance.update_merchant_role(merchant_code, role_id, update_merchant_role_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->update_merchant_role: #{e}"
end
```

#### Using the update_merchant_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Role>, Integer, Hash)> update_merchant_role_with_http_info(merchant_code, role_id, update_merchant_role_request)

```ruby
begin
  # Update a role
  data, status_code, headers = api_instance.update_merchant_role_with_http_info(merchant_code, role_id, update_merchant_role_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Role>
rescue OpenapiClient::ApiError => e
  puts "Error when calling RolesApi->update_merchant_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Merchant code. |  |
| **role_id** | **String** | The ID of the role to retrieve. |  |
| **update_merchant_role_request** | [**UpdateMerchantRoleRequest**](UpdateMerchantRoleRequest.md) |  |  |

### Return type

[**Role**](Role.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

