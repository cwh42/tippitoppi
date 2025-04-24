# OpenapiClient::CustomersApi

All URIs are relative to *https://api.sumup.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer**](CustomersApi.md#create_customer) | **POST** /v0.1/customers | Create a customer |
| [**deactivate_payment_instrument**](CustomersApi.md#deactivate_payment_instrument) | **DELETE** /v0.1/customers/{customer_id}/payment-instruments/{token} | Deactivate a payment instrument |
| [**get_customer**](CustomersApi.md#get_customer) | **GET** /v0.1/customers/{customer_id} | Retrieve a customer |
| [**list_payment_instruments**](CustomersApi.md#list_payment_instruments) | **GET** /v0.1/customers/{customer_id}/payment-instruments | List payment instruments |
| [**update_customer**](CustomersApi.md#update_customer) | **PUT** /v0.1/customers/{customer_id} | Update a customer |


## create_customer

> <Customer> create_customer(opts)

Create a customer

Creates a new saved customer resource which you can later manipulate and save payment instruments to.

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

api_instance = OpenapiClient::CustomersApi.new
opts = {
  customer: OpenapiClient::Customer.new({customer_id: '831ff8d4cd5958ab5670'}) # Customer | Details of the customer.
}

begin
  # Create a customer
  result = api_instance.create_customer(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> create_customer_with_http_info(opts)

```ruby
begin
  # Create a customer
  data, status_code, headers = api_instance.create_customer_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer** | [**Customer**](Customer.md) | Details of the customer. | [optional] |

### Return type

[**Customer**](Customer.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deactivate_payment_instrument

> Object deactivate_payment_instrument(customer_id, token)

Deactivate a payment instrument

Deactivates an identified card payment instrument resource for a customer.

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

api_instance = OpenapiClient::CustomersApi.new
customer_id = 'customer_id_example' # String | Unique ID of the saved customer resource.
token = 'token_example' # String | Unique token identifying the card saved as a payment instrument resource.

begin
  # Deactivate a payment instrument
  result = api_instance.deactivate_payment_instrument(customer_id, token)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->deactivate_payment_instrument: #{e}"
end
```

#### Using the deactivate_payment_instrument_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> deactivate_payment_instrument_with_http_info(customer_id, token)

```ruby
begin
  # Deactivate a payment instrument
  data, status_code, headers = api_instance.deactivate_payment_instrument_with_http_info(customer_id, token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->deactivate_payment_instrument_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique ID of the saved customer resource. |  |
| **token** | **String** | Unique token identifying the card saved as a payment instrument resource. |  |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer

> <Customer> get_customer(customer_id)

Retrieve a customer

Retrieves an identified saved customer resource through the unique `customer_id` parameter, generated upon customer creation.

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

api_instance = OpenapiClient::CustomersApi.new
customer_id = 'customer_id_example' # String | Unique ID of the saved customer resource.

begin
  # Retrieve a customer
  result = api_instance.get_customer(customer_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> get_customer_with_http_info(customer_id)

```ruby
begin
  # Retrieve a customer
  data, status_code, headers = api_instance.get_customer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique ID of the saved customer resource. |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payment_instruments

> <Array<PaymentInstrumentResponse>> list_payment_instruments(customer_id)

List payment instruments

Lists all payment instrument resources that are saved for an identified customer.

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

api_instance = OpenapiClient::CustomersApi.new
customer_id = 'customer_id_example' # String | Unique ID of the saved customer resource.

begin
  # List payment instruments
  result = api_instance.list_payment_instruments(customer_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->list_payment_instruments: #{e}"
end
```

#### Using the list_payment_instruments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PaymentInstrumentResponse>>, Integer, Hash)> list_payment_instruments_with_http_info(customer_id)

```ruby
begin
  # List payment instruments
  data, status_code, headers = api_instance.list_payment_instruments_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PaymentInstrumentResponse>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->list_payment_instruments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique ID of the saved customer resource. |  |

### Return type

[**Array&lt;PaymentInstrumentResponse&gt;**](PaymentInstrumentResponse.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> <Customer> update_customer(customer_id, opts)

Update a customer

Updates an identified saved customer resource's personal details.  The request only overwrites the parameters included in the request, all other parameters will remain with their initially assigned values. 

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

api_instance = OpenapiClient::CustomersApi.new
customer_id = 'customer_id_example' # String | Unique ID of the saved customer resource.
opts = {
  update_customer_request: OpenapiClient::UpdateCustomerRequest.new # UpdateCustomerRequest | 
}

begin
  # Update a customer
  result = api_instance.update_customer(customer_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> update_customer_with_http_info(customer_id, opts)

```ruby
begin
  # Update a customer
  data, status_code, headers = api_instance.update_customer_with_http_info(customer_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique ID of the saved customer resource. |  |
| **update_customer_request** | [**UpdateCustomerRequest**](UpdateCustomerRequest.md) |  | [optional] |

### Return type

[**Customer**](Customer.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

