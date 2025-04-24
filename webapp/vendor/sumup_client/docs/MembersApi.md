# OpenapiClient::MembersApi

All URIs are relative to *https://api.sumup.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_merchant_member**](MembersApi.md#create_merchant_member) | **POST** /v0.1/merchants/{merchant_code}/members | Create a member |
| [**delete_merchant_member**](MembersApi.md#delete_merchant_member) | **DELETE** /v0.1/merchants/{merchant_code}/members/{member_id} | Delete a member |
| [**get_merchant_member**](MembersApi.md#get_merchant_member) | **GET** /v0.1/merchants/{merchant_code}/members/{member_id} | Retrieve a member |
| [**list_merchant_members**](MembersApi.md#list_merchant_members) | **GET** /v0.1/merchants/{merchant_code}/members | List members |
| [**update_merchant_member**](MembersApi.md#update_merchant_member) | **PUT** /v0.1/merchants/{merchant_code}/members/{member_id} | Update a member |


## create_merchant_member

> <Member> create_merchant_member(merchant_code, create_merchant_member_request)

Create a member

Create a merchant member.

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

api_instance = OpenapiClient::MembersApi.new
merchant_code = 'MC0X0ABC' # String | Merchant code.
create_merchant_member_request = OpenapiClient::CreateMerchantMemberRequest.new({email: 'email_example', roles: ['roles_example']}) # CreateMerchantMemberRequest | 

begin
  # Create a member
  result = api_instance.create_merchant_member(merchant_code, create_merchant_member_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->create_merchant_member: #{e}"
end
```

#### Using the create_merchant_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Member>, Integer, Hash)> create_merchant_member_with_http_info(merchant_code, create_merchant_member_request)

```ruby
begin
  # Create a member
  data, status_code, headers = api_instance.create_merchant_member_with_http_info(merchant_code, create_merchant_member_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Member>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->create_merchant_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Merchant code. |  |
| **create_merchant_member_request** | [**CreateMerchantMemberRequest**](CreateMerchantMemberRequest.md) |  |  |

### Return type

[**Member**](Member.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_merchant_member

> delete_merchant_member(merchant_code, member_id)

Delete a member

Deletes a merchant member.

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

api_instance = OpenapiClient::MembersApi.new
merchant_code = 'MC0X0ABC' # String | Merchant code.
member_id = 'mem_WZsm7QTPhVrompscmPhoGTXXcrd58fr9MOhP' # String | The ID of the member to retrieve.

begin
  # Delete a member
  api_instance.delete_merchant_member(merchant_code, member_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->delete_merchant_member: #{e}"
end
```

#### Using the delete_merchant_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_merchant_member_with_http_info(merchant_code, member_id)

```ruby
begin
  # Delete a member
  data, status_code, headers = api_instance.delete_merchant_member_with_http_info(merchant_code, member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->delete_merchant_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Merchant code. |  |
| **member_id** | **String** | The ID of the member to retrieve. |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_merchant_member

> <Member> get_merchant_member(merchant_code, member_id)

Retrieve a member

Retrieve a merchant member.

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

api_instance = OpenapiClient::MembersApi.new
merchant_code = 'MC0X0ABC' # String | Merchant code.
member_id = 'mem_WZsm7QTPhVrompscmPhoGTXXcrd58fr9MOhP' # String | The ID of the member to retrieve.

begin
  # Retrieve a member
  result = api_instance.get_merchant_member(merchant_code, member_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->get_merchant_member: #{e}"
end
```

#### Using the get_merchant_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Member>, Integer, Hash)> get_merchant_member_with_http_info(merchant_code, member_id)

```ruby
begin
  # Retrieve a member
  data, status_code, headers = api_instance.get_merchant_member_with_http_info(merchant_code, member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Member>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->get_merchant_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Merchant code. |  |
| **member_id** | **String** | The ID of the member to retrieve. |  |

### Return type

[**Member**](Member.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_merchant_members

> <ListMerchantMembers200Response> list_merchant_members(merchant_code, opts)

List members

Lists merchant members.

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

api_instance = OpenapiClient::MembersApi.new
merchant_code = 'MC0X0ABC' # String | Merchant code.
opts = {
  offset: 0, # Integer | Offset of the first member to return.
  limit: 10, # Integer | Maximum number of members to return.
  scroll: true, # Boolean | Indicates to skip count query.
  email: 'user', # String | Filter the returned members by email address prefix.
  status: OpenapiClient::MembershipStatus::ACCEPTED, # MembershipStatus | Filter the returned members by the membership status.
  roles: ['inner_example'] # Array<String> | Filter the returned members by role.
}

begin
  # List members
  result = api_instance.list_merchant_members(merchant_code, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->list_merchant_members: #{e}"
end
```

#### Using the list_merchant_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMerchantMembers200Response>, Integer, Hash)> list_merchant_members_with_http_info(merchant_code, opts)

```ruby
begin
  # List members
  data, status_code, headers = api_instance.list_merchant_members_with_http_info(merchant_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMerchantMembers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->list_merchant_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Merchant code. |  |
| **offset** | **Integer** | Offset of the first member to return. | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of members to return. | [optional][default to 10] |
| **scroll** | **Boolean** | Indicates to skip count query. | [optional][default to false] |
| **email** | **String** | Filter the returned members by email address prefix. | [optional] |
| **status** | [**MembershipStatus**](.md) | Filter the returned members by the membership status. | [optional] |
| **roles** | [**Array&lt;String&gt;**](String.md) | Filter the returned members by role. | [optional] |

### Return type

[**ListMerchantMembers200Response**](ListMerchantMembers200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_merchant_member

> <Member> update_merchant_member(merchant_code, member_id, update_merchant_member_request)

Update a member

Update the merchant member.

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

api_instance = OpenapiClient::MembersApi.new
merchant_code = 'MC0X0ABC' # String | Merchant code.
member_id = 'mem_WZsm7QTPhVrompscmPhoGTXXcrd58fr9MOhP' # String | The ID of the member to retrieve.
update_merchant_member_request = OpenapiClient::UpdateMerchantMemberRequest.new # UpdateMerchantMemberRequest | 

begin
  # Update a member
  result = api_instance.update_merchant_member(merchant_code, member_id, update_merchant_member_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->update_merchant_member: #{e}"
end
```

#### Using the update_merchant_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Member>, Integer, Hash)> update_merchant_member_with_http_info(merchant_code, member_id, update_merchant_member_request)

```ruby
begin
  # Update a member
  data, status_code, headers = api_instance.update_merchant_member_with_http_info(merchant_code, member_id, update_merchant_member_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Member>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembersApi->update_merchant_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Merchant code. |  |
| **member_id** | **String** | The ID of the member to retrieve. |  |
| **update_merchant_member_request** | [**UpdateMerchantMemberRequest**](UpdateMerchantMemberRequest.md) |  |  |

### Return type

[**Member**](Member.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

