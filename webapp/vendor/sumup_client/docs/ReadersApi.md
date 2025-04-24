# OpenapiClient::ReadersApi

All URIs are relative to *https://api.sumup.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reader**](ReadersApi.md#create_reader) | **POST** /v0.1/merchants/{merchant_code}/readers | Create a Reader |
| [**create_reader_checkout**](ReadersApi.md#create_reader_checkout) | **POST** /v0.1/merchants/{merchant_code}/readers/{id}/checkout | Create a Reader Checkout |
| [**create_reader_terminate**](ReadersApi.md#create_reader_terminate) | **POST** /v0.1/merchants/{merchant_code}/readers/{id}/terminate | Create a Reader Terminate action |
| [**delete_reader**](ReadersApi.md#delete_reader) | **DELETE** /v0.1/merchants/{merchant_code}/readers/{id} | Delete a reader |
| [**get_reader**](ReadersApi.md#get_reader) | **GET** /v0.1/merchants/{merchant_code}/readers/{id} | Retrieve a Reader |
| [**list_readers**](ReadersApi.md#list_readers) | **GET** /v0.1/merchants/{merchant_code}/readers | List Readers |
| [**update_reader**](ReadersApi.md#update_reader) | **PATCH** /v0.1/merchants/{merchant_code}/readers/{id} | Update a Reader |


## create_reader

> <Reader> create_reader(merchant_code, create_reader_request)

Create a Reader

Create a new Reader for the merchant account.

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

api_instance = OpenapiClient::ReadersApi.new
merchant_code = 'MC0X0ABC' # String | Unique identifier of the merchant account.
create_reader_request = OpenapiClient::CreateReaderRequest.new({pairing_code: '4WLFDSBF'}) # CreateReaderRequest | 

begin
  # Create a Reader
  result = api_instance.create_reader(merchant_code, create_reader_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->create_reader: #{e}"
end
```

#### Using the create_reader_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Reader>, Integer, Hash)> create_reader_with_http_info(merchant_code, create_reader_request)

```ruby
begin
  # Create a Reader
  data, status_code, headers = api_instance.create_reader_with_http_info(merchant_code, create_reader_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Reader>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->create_reader_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Unique identifier of the merchant account. |  |
| **create_reader_request** | [**CreateReaderRequest**](CreateReaderRequest.md) |  |  |

### Return type

[**Reader**](Reader.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_reader_checkout

> <CreateReaderCheckout201Response> create_reader_checkout(merchant_code, id, opts)

Create a Reader Checkout

Create a Checkout for a Reader.  This process is asynchronous and the actual transaction may take some time to be stared on the device.   There are some caveats when using this endpoint: * The target device must be online, otherwise checkout won't be accepted * After the checkout is accepted, the system has 60 seconds to start the payment on the target device. During this time, any other checkout for the same device will be rejected.  **Note**: If the target device is a Solo, it must be in version 3.3.24.3 or higher. 

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

api_instance = OpenapiClient::ReadersApi.new
merchant_code = 'MC0X0ABC' # String | 
id = 'rdr_3MSAFM23CK82VSTT4BN6RWSQ65' # String | The unique identifier of the reader. 
opts = {
  create_reader_checkout: OpenapiClient::CreateReaderCheckout.new({total_amount: OpenapiClient::CreateReaderCheckoutAmount.new({value: 1000, currency: 'EUR', minor_unit: 2})}) # CreateReaderCheckout | 
}

begin
  # Create a Reader Checkout
  result = api_instance.create_reader_checkout(merchant_code, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->create_reader_checkout: #{e}"
end
```

#### Using the create_reader_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateReaderCheckout201Response>, Integer, Hash)> create_reader_checkout_with_http_info(merchant_code, id, opts)

```ruby
begin
  # Create a Reader Checkout
  data, status_code, headers = api_instance.create_reader_checkout_with_http_info(merchant_code, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateReaderCheckout201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->create_reader_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** |  |  |
| **id** | **String** | The unique identifier of the reader.  |  |
| **create_reader_checkout** | [**CreateReaderCheckout**](CreateReaderCheckout.md) |  | [optional] |

### Return type

[**CreateReaderCheckout201Response**](CreateReaderCheckout201Response.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_reader_terminate

> create_reader_terminate(merchant_code, id)

Create a Reader Terminate action

Create a Terminate action for a Reader.  It stops the current transaction on the target device.  This process is asynchronous and the actual termination may take some time to be performed on the device.   There are some caveats when using this endpoint: * The target device must be online, otherwise terminate won't be accepted * The action will succeed only if the device is waiting for cardholder action: e.g: waiting for card, waiting for PIN, etc. * There is no confirmation of the termination.  If a transaction is successfully terminated and `return_url` was provided on Checkout, the transaction status will be sent as `failed` to the provided URL.  **Note**: If the target device is a Solo, it must be in version 3.3.28.0 or higher. 

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

api_instance = OpenapiClient::ReadersApi.new
merchant_code = 'MC0X0ABC' # String | 
id = 'rdr_3MSAFM23CK82VSTT4BN6RWSQ65' # String | The unique identifier of the reader. 

begin
  # Create a Reader Terminate action
  api_instance.create_reader_terminate(merchant_code, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->create_reader_terminate: #{e}"
end
```

#### Using the create_reader_terminate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_reader_terminate_with_http_info(merchant_code, id)

```ruby
begin
  # Create a Reader Terminate action
  data, status_code, headers = api_instance.create_reader_terminate_with_http_info(merchant_code, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->create_reader_terminate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** |  |  |
| **id** | **String** | The unique identifier of the reader.  |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_reader

> delete_reader(merchant_code, id)

Delete a reader

Delete a reader.

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

api_instance = OpenapiClient::ReadersApi.new
merchant_code = 'MC0X0ABC' # String | Unique identifier of the merchant account.
id = 'id_example' # String | The unique identifier of the reader.

begin
  # Delete a reader
  api_instance.delete_reader(merchant_code, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->delete_reader: #{e}"
end
```

#### Using the delete_reader_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reader_with_http_info(merchant_code, id)

```ruby
begin
  # Delete a reader
  data, status_code, headers = api_instance.delete_reader_with_http_info(merchant_code, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->delete_reader_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Unique identifier of the merchant account. |  |
| **id** | **String** | The unique identifier of the reader. |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reader

> <Reader> get_reader(merchant_code, id, opts)

Retrieve a Reader

Retrieve a Reader.

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

api_instance = OpenapiClient::ReadersApi.new
merchant_code = 'MC0X0ABC' # String | Unique identifier of the merchant account.
id = 'id_example' # String | The unique identifier of the reader.
opts = {
  if_modified_since: 'if_modified_since_example' # String | Return the reader only if it has been modified after the specified timestamp given in the headers.  Timestamps are accepted in the following formats:   - HTTP Standard: [IMF format (RFC 5322)](https://www.rfc-editor.org/rfc/rfc5322#section-3.3), sometimes also referred to as [RFC 7231](https://www.rfc-editor.org/rfc/rfc7231#section-7.1.1.1).  - RFC 3339: Used for timestamps in JSON payloads on this API.
}

begin
  # Retrieve a Reader
  result = api_instance.get_reader(merchant_code, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->get_reader: #{e}"
end
```

#### Using the get_reader_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Reader>, Integer, Hash)> get_reader_with_http_info(merchant_code, id, opts)

```ruby
begin
  # Retrieve a Reader
  data, status_code, headers = api_instance.get_reader_with_http_info(merchant_code, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Reader>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->get_reader_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Unique identifier of the merchant account. |  |
| **id** | **String** | The unique identifier of the reader. |  |
| **if_modified_since** | **String** | Return the reader only if it has been modified after the specified timestamp given in the headers.  Timestamps are accepted in the following formats:   - HTTP Standard: [IMF format (RFC 5322)](https://www.rfc-editor.org/rfc/rfc5322#section-3.3), sometimes also referred to as [RFC 7231](https://www.rfc-editor.org/rfc/rfc7231#section-7.1.1.1).  - RFC 3339: Used for timestamps in JSON payloads on this API. | [optional] |

### Return type

[**Reader**](Reader.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_readers

> <ListReaders200Response> list_readers(merchant_code)

List Readers

List all readers of the merchant.

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

api_instance = OpenapiClient::ReadersApi.new
merchant_code = 'MC0X0ABC' # String | Unique identifier of the merchant account.

begin
  # List Readers
  result = api_instance.list_readers(merchant_code)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->list_readers: #{e}"
end
```

#### Using the list_readers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListReaders200Response>, Integer, Hash)> list_readers_with_http_info(merchant_code)

```ruby
begin
  # List Readers
  data, status_code, headers = api_instance.list_readers_with_http_info(merchant_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListReaders200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->list_readers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Unique identifier of the merchant account. |  |

### Return type

[**ListReaders200Response**](ListReaders200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_reader

> update_reader(merchant_code, id, update_reader_request)

Update a Reader

Update a Reader.

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

api_instance = OpenapiClient::ReadersApi.new
merchant_code = 'MC0X0ABC' # String | Unique identifier of the merchant account.
id = 'id_example' # String | The unique identifier of the reader.
update_reader_request = OpenapiClient::UpdateReaderRequest.new # UpdateReaderRequest | 

begin
  # Update a Reader
  api_instance.update_reader(merchant_code, id, update_reader_request)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->update_reader: #{e}"
end
```

#### Using the update_reader_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_reader_with_http_info(merchant_code, id, update_reader_request)

```ruby
begin
  # Update a Reader
  data, status_code, headers = api_instance.update_reader_with_http_info(merchant_code, id, update_reader_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReadersApi->update_reader_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Unique identifier of the merchant account. |  |
| **id** | **String** | The unique identifier of the reader. |  |
| **update_reader_request** | [**UpdateReaderRequest**](UpdateReaderRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

