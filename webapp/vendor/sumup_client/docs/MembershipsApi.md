# OpenapiClient::MembershipsApi

All URIs are relative to *https://api.sumup.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_memberships**](MembershipsApi.md#list_memberships) | **GET** /v0.1/memberships | List memberships |


## list_memberships

> <ListMemberships200Response> list_memberships(opts)

List memberships

List memberships of the current user.

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

api_instance = OpenapiClient::MembershipsApi.new
opts = {
  offset: 0, # Integer | Offset of the first member to return.
  limit: 10, # Integer | Maximum number of members to return.
  kind: 'merchant', # String | Filter memberships by resource kind.
  resource_attributes_sandbox: true # Boolean | Filter memberships by the sandbox status of the resource the membership is in.
}

begin
  # List memberships
  result = api_instance.list_memberships(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembershipsApi->list_memberships: #{e}"
end
```

#### Using the list_memberships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMemberships200Response>, Integer, Hash)> list_memberships_with_http_info(opts)

```ruby
begin
  # List memberships
  data, status_code, headers = api_instance.list_memberships_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMemberships200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MembershipsApi->list_memberships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Offset of the first member to return. | [optional][default to 0] |
| **limit** | **Integer** | Maximum number of members to return. | [optional][default to 10] |
| **kind** | **String** | Filter memberships by resource kind. | [optional] |
| **resource_attributes_sandbox** | **Boolean** | Filter memberships by the sandbox status of the resource the membership is in. | [optional] |

### Return type

[**ListMemberships200Response**](ListMemberships200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

