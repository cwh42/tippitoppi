# OpenapiClient::CheckoutsApi

All URIs are relative to *https://api.sumup.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_checkout**](CheckoutsApi.md#create_checkout) | **POST** /v0.1/checkouts | Create a checkout |
| [**deactivate_checkout**](CheckoutsApi.md#deactivate_checkout) | **DELETE** /v0.1/checkouts/{id} | Deactivate a checkout |
| [**get_checkout**](CheckoutsApi.md#get_checkout) | **GET** /v0.1/checkouts/{id} | Retrieve a checkout |
| [**get_payment_methods**](CheckoutsApi.md#get_payment_methods) | **GET** /v0.1/merchants/{merchant_code}/payment-methods | Get available payment methods |
| [**list_checkouts**](CheckoutsApi.md#list_checkouts) | **GET** /v0.1/checkouts | List checkouts |
| [**process_checkout**](CheckoutsApi.md#process_checkout) | **PUT** /v0.1/checkouts/{id} | Process a checkout |


## create_checkout

> <Checkout> create_checkout(opts)

Create a checkout

Creates a new payment checkout resource. The unique `checkout_reference` created by this request, is used for further manipulation of the checkout.  For 3DS checkouts, add the `redirect_url` parameter to your request body schema.  Follow by processing a checkout to charge the provided payment instrument. 

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

api_instance = OpenapiClient::CheckoutsApi.new
opts = {
  checkout_create_request: OpenapiClient::CheckoutCreateRequest.new({checkout_reference: 'checkout_reference_example', amount: 3.56, currency: OpenapiClient::Currency::BGN, merchant_code: 'merchant_code_example'}) # CheckoutCreateRequest | 
}

begin
  # Create a checkout
  result = api_instance.create_checkout(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->create_checkout: #{e}"
end
```

#### Using the create_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Checkout>, Integer, Hash)> create_checkout_with_http_info(opts)

```ruby
begin
  # Create a checkout
  data, status_code, headers = api_instance.create_checkout_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Checkout>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->create_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_create_request** | [**CheckoutCreateRequest**](CheckoutCreateRequest.md) |  | [optional] |

### Return type

[**Checkout**](Checkout.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deactivate_checkout

> <DeactivateCheckout200Response> deactivate_checkout(id)

Deactivate a checkout

Deactivates an identified checkout resource. If the checkout has already been processed it can not be deactivated.

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

api_instance = OpenapiClient::CheckoutsApi.new
id = 'id_example' # String | Unique ID of the checkout resource.

begin
  # Deactivate a checkout
  result = api_instance.deactivate_checkout(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->deactivate_checkout: #{e}"
end
```

#### Using the deactivate_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeactivateCheckout200Response>, Integer, Hash)> deactivate_checkout_with_http_info(id)

```ruby
begin
  # Deactivate a checkout
  data, status_code, headers = api_instance.deactivate_checkout_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeactivateCheckout200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->deactivate_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the checkout resource. |  |

### Return type

[**DeactivateCheckout200Response**](DeactivateCheckout200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_checkout

> <CheckoutSuccess> get_checkout(id)

Retrieve a checkout

Retrieves an identified checkout resource. Use this request after processing a checkout to confirm its status and inform the end user respectively.

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

api_instance = OpenapiClient::CheckoutsApi.new
id = 'id_example' # String | Unique ID of the checkout resource.

begin
  # Retrieve a checkout
  result = api_instance.get_checkout(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->get_checkout: #{e}"
end
```

#### Using the get_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutSuccess>, Integer, Hash)> get_checkout_with_http_info(id)

```ruby
begin
  # Retrieve a checkout
  data, status_code, headers = api_instance.get_checkout_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutSuccess>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->get_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the checkout resource. |  |

### Return type

[**CheckoutSuccess**](CheckoutSuccess.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_methods

> <GetPaymentMethods200Response> get_payment_methods(merchant_code, opts)

Get available payment methods

Get payment methods available for the given merchant to use with a checkout.

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

api_instance = OpenapiClient::CheckoutsApi.new
merchant_code = 'M1234' # String | The SumUp merchant code.
opts = {
  amount: 9.99, # Float | The amount for which the payment methods should be eligible, in major units. Note that currency must also be provided when filtering by amount.
  currency: 'EUR' # String | The currency for which the payment methods should be eligible.
}

begin
  # Get available payment methods
  result = api_instance.get_payment_methods(merchant_code, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->get_payment_methods: #{e}"
end
```

#### Using the get_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPaymentMethods200Response>, Integer, Hash)> get_payment_methods_with_http_info(merchant_code, opts)

```ruby
begin
  # Get available payment methods
  data, status_code, headers = api_instance.get_payment_methods_with_http_info(merchant_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPaymentMethods200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->get_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | The SumUp merchant code. |  |
| **amount** | **Float** | The amount for which the payment methods should be eligible, in major units. Note that currency must also be provided when filtering by amount. | [optional] |
| **currency** | **String** | The currency for which the payment methods should be eligible. | [optional] |

### Return type

[**GetPaymentMethods200Response**](GetPaymentMethods200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_checkouts

> <Array<CheckoutSuccess>> list_checkouts(opts)

List checkouts

Lists created checkout resources according to the applied `checkout_reference`.

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

api_instance = OpenapiClient::CheckoutsApi.new
opts = {
  checkout_reference: 'checkout_reference_example' # String | Filters the list of checkout resources by the unique ID of the checkout.
}

begin
  # List checkouts
  result = api_instance.list_checkouts(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->list_checkouts: #{e}"
end
```

#### Using the list_checkouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CheckoutSuccess>>, Integer, Hash)> list_checkouts_with_http_info(opts)

```ruby
begin
  # List checkouts
  data, status_code, headers = api_instance.list_checkouts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CheckoutSuccess>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->list_checkouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_reference** | **String** | Filters the list of checkout resources by the unique ID of the checkout. | [optional] |

### Return type

[**Array&lt;CheckoutSuccess&gt;**](CheckoutSuccess.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## process_checkout

> <CheckoutSuccess> process_checkout(id, opts)

Process a checkout

Processing a checkout will attempt to charge the provided payment instrument for the amount of the specified checkout resource initiated in the `Create a checkout` endpoint.  Follow this request with `Retrieve a checkout` to confirm its status. 

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

api_instance = OpenapiClient::CheckoutsApi.new
id = 'id_example' # String | Unique ID of the checkout resource.
opts = {
  checkout_process_mixin: OpenapiClient::CheckoutProcessMixin.new({payment_type: 'card'}) # CheckoutProcessMixin | Details of the payment instrument for processing the checkout.
}

begin
  # Process a checkout
  result = api_instance.process_checkout(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->process_checkout: #{e}"
end
```

#### Using the process_checkout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckoutSuccess>, Integer, Hash)> process_checkout_with_http_info(id, opts)

```ruby
begin
  # Process a checkout
  data, status_code, headers = api_instance.process_checkout_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckoutSuccess>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CheckoutsApi->process_checkout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the checkout resource. |  |
| **checkout_process_mixin** | [**CheckoutProcessMixin**](CheckoutProcessMixin.md) | Details of the payment instrument for processing the checkout. | [optional] |

### Return type

[**CheckoutSuccess**](CheckoutSuccess.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

