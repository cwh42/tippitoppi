# OpenapiClient::PayoutsApi

All URIs are relative to *https://api.sumup.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_payouts**](PayoutsApi.md#list_payouts) | **GET** /v0.1/me/financials/payouts | List payouts |
| [**list_payouts_v1**](PayoutsApi.md#list_payouts_v1) | **GET** /v1.0/merchants/{merchant_code}/payouts | List payouts |


## list_payouts

> <Array<FinancialPayoutsInner>> list_payouts(start_date, end_date, opts)

List payouts

Lists ordered payouts for the merchant profile.

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

api_instance = OpenapiClient::PayoutsApi.new
start_date = Date.parse('2013-10-20') # Date | Start date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
end_date = Date.parse('2013-10-20') # Date | End date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
opts = {
  format: 'json', # String | 
  limit: 56, # Integer | 
  order: 'desc' # String | 
}

begin
  # List payouts
  result = api_instance.list_payouts(start_date, end_date, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PayoutsApi->list_payouts: #{e}"
end
```

#### Using the list_payouts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FinancialPayoutsInner>>, Integer, Hash)> list_payouts_with_http_info(start_date, end_date, opts)

```ruby
begin
  # List payouts
  data, status_code, headers = api_instance.list_payouts_with_http_info(start_date, end_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FinancialPayoutsInner>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PayoutsApi->list_payouts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Date** | Start date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format). |  |
| **end_date** | **Date** | End date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format). |  |
| **format** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **order** | **String** |  | [optional] |

### Return type

[**Array&lt;FinancialPayoutsInner&gt;**](FinancialPayoutsInner.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payouts_v1

> <Array<FinancialPayoutsInner>> list_payouts_v1(merchant_code, start_date, end_date, opts)

List payouts

Lists ordered payouts for the merchant profile.

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

api_instance = OpenapiClient::PayoutsApi.new
merchant_code = 'MC0X0ABC' # String | 
start_date = Date.parse('2013-10-20') # Date | Start date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
end_date = Date.parse('2013-10-20') # Date | End date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
opts = {
  format: 'json', # String | 
  limit: 56, # Integer | 
  order: 'desc' # String | 
}

begin
  # List payouts
  result = api_instance.list_payouts_v1(merchant_code, start_date, end_date, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PayoutsApi->list_payouts_v1: #{e}"
end
```

#### Using the list_payouts_v1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FinancialPayoutsInner>>, Integer, Hash)> list_payouts_v1_with_http_info(merchant_code, start_date, end_date, opts)

```ruby
begin
  # List payouts
  data, status_code, headers = api_instance.list_payouts_v1_with_http_info(merchant_code, start_date, end_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FinancialPayoutsInner>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PayoutsApi->list_payouts_v1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** |  |  |
| **start_date** | **Date** | Start date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format). |  |
| **end_date** | **Date** | End date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format). |  |
| **format** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional] |
| **order** | **String** |  | [optional] |

### Return type

[**Array&lt;FinancialPayoutsInner&gt;**](FinancialPayoutsInner.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

