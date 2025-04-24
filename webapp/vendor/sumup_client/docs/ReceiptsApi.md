# OpenapiClient::ReceiptsApi

All URIs are relative to *https://api.sumup.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_receipt**](ReceiptsApi.md#get_receipt) | **GET** /v1.1/receipts/{id} | Retrieve receipt details |


## get_receipt

> <Receipt> get_receipt(id, mid, opts)

Retrieve receipt details

Retrieves receipt specific data for a transaction.

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

api_instance = OpenapiClient::ReceiptsApi.new
id = 'id_example' # String | SumUp unique transaction ID or transaction code, e.g. TS7HDYLSKD.
mid = 'mid_example' # String | Merchant code.
opts = {
  tx_event_id: 56 # Integer | The ID of the transaction event (refund).
}

begin
  # Retrieve receipt details
  result = api_instance.get_receipt(id, mid, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipt: #{e}"
end
```

#### Using the get_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Receipt>, Integer, Hash)> get_receipt_with_http_info(id, mid, opts)

```ruby
begin
  # Retrieve receipt details
  data, status_code, headers = api_instance.get_receipt_with_http_info(id, mid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Receipt>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReceiptsApi->get_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | SumUp unique transaction ID or transaction code, e.g. TS7HDYLSKD. |  |
| **mid** | **String** | Merchant code. |  |
| **tx_event_id** | **Integer** | The ID of the transaction event (refund). | [optional] |

### Return type

[**Receipt**](Receipt.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

