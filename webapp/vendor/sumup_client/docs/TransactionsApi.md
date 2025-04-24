# OpenapiClient::TransactionsApi

All URIs are relative to *https://api.sumup.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_transaction**](TransactionsApi.md#get_transaction) | **GET** /v0.1/me/transactions | Retrieve a transaction |
| [**get_transaction_v2_1**](TransactionsApi.md#get_transaction_v2_1) | **GET** /v2.1/merchants/{merchant_code}/transactions | Retrieve a transaction |
| [**list_transactions**](TransactionsApi.md#list_transactions) | **GET** /v0.1/me/transactions/history | List transactions |
| [**list_transactions_v2_1**](TransactionsApi.md#list_transactions_v2_1) | **GET** /v2.1/merchants/{merchant_code}/transactions/history | List transactions |
| [**refund_transaction**](TransactionsApi.md#refund_transaction) | **POST** /v0.1/me/refund/{txn_id} | Refund a transaction |


## get_transaction

> <TransactionFull> get_transaction(opts)

Retrieve a transaction

Retrieves the full details of an identified transaction. The transaction resource is identified by a query parameter and *one* of following parameters is required:   *  `id`  *  `internal_id`  *  `transaction_code`  *  `foreign_transaction_id`  *  `client_transaction_id` 

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

api_instance = OpenapiClient::TransactionsApi.new
opts = {
  id: 'id_example', # String | Retrieves the transaction resource with the specified transaction ID (the `id` parameter in the transaction resource).
  internal_id: 'internal_id_example', # String | Retrieves the transaction resource with the specified internal transaction ID (the `internal_id` parameter in the transaction resource).
  transaction_code: 'transaction_code_example' # String | Retrieves the transaction resource with the specified transaction code.
}

begin
  # Retrieve a transaction
  result = api_instance.get_transaction(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction: #{e}"
end
```

#### Using the get_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionFull>, Integer, Hash)> get_transaction_with_http_info(opts)

```ruby
begin
  # Retrieve a transaction
  data, status_code, headers = api_instance.get_transaction_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionFull>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Retrieves the transaction resource with the specified transaction ID (the &#x60;id&#x60; parameter in the transaction resource). | [optional] |
| **internal_id** | **String** | Retrieves the transaction resource with the specified internal transaction ID (the &#x60;internal_id&#x60; parameter in the transaction resource). | [optional] |
| **transaction_code** | **String** | Retrieves the transaction resource with the specified transaction code. | [optional] |

### Return type

[**TransactionFull**](TransactionFull.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_v2_1

> <TransactionFull> get_transaction_v2_1(merchant_code, opts)

Retrieve a transaction

Retrieves the full details of an identified transaction. The transaction resource is identified by a query parameter and *one* of following parameters is required:   *  `id`  *  `internal_id`  *  `transaction_code`  *  `foreign_transaction_id`  *  `client_transaction_id` 

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

api_instance = OpenapiClient::TransactionsApi.new
merchant_code = 'MC0X0ABC' # String | 
opts = {
  id: 'id_example', # String | Retrieves the transaction resource with the specified transaction ID (the `id` parameter in the transaction resource).
  internal_id: 'internal_id_example', # String | Retrieves the transaction resource with the specified internal transaction ID (the `internal_id` parameter in the transaction resource).
  transaction_code: 'transaction_code_example' # String | Retrieves the transaction resource with the specified transaction code.
}

begin
  # Retrieve a transaction
  result = api_instance.get_transaction_v2_1(merchant_code, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction_v2_1: #{e}"
end
```

#### Using the get_transaction_v2_1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionFull>, Integer, Hash)> get_transaction_v2_1_with_http_info(merchant_code, opts)

```ruby
begin
  # Retrieve a transaction
  data, status_code, headers = api_instance.get_transaction_v2_1_with_http_info(merchant_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionFull>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->get_transaction_v2_1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** |  |  |
| **id** | **String** | Retrieves the transaction resource with the specified transaction ID (the &#x60;id&#x60; parameter in the transaction resource). | [optional] |
| **internal_id** | **String** | Retrieves the transaction resource with the specified internal transaction ID (the &#x60;internal_id&#x60; parameter in the transaction resource). | [optional] |
| **transaction_code** | **String** | Retrieves the transaction resource with the specified transaction code. | [optional] |

### Return type

[**TransactionFull**](TransactionFull.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transactions

> <ListTransactionsV21200Response> list_transactions(opts)

List transactions

Lists detailed history of all transactions associated with the merchant profile.

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

api_instance = OpenapiClient::TransactionsApi.new
opts = {
  transaction_code: 'transaction_code_example', # String | Retrieves the transaction resource with the specified transaction code.
  order: 'ascending', # String | Specifies the order in which the returned results are displayed.
  limit: 56, # Integer | Specifies the maximum number of results per page. Value must be a positive integer and if not specified, will return 10 results.
  users: ['inner_example'], # Array<String> | Filters the returned results by user email.
  statuses: ['SUCCESSFUL'], # Array<String> | Filters the returned results by the specified list of final statuses of the transactions.
  payment_types: ['CASH'], # Array<String> | Filters the returned results by the specified list of payment types used for the transactions.
  types: ['PAYMENT'], # Array<String> | Filters the returned results by the specified list of transaction types.
  changes_since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters the results by the latest modification time of resources and returns only transactions that are modified *at or after* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
  newest_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters the results by the creation time of resources and returns only transactions that are created *before* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
  newest_ref: 'newest_ref_example', # String | Filters the results by the reference ID of transaction events and returns only transactions with events whose IDs are *smaller* than the specified value. This parameters supersedes the `newest_time` parameter (if both are provided in the request).
  oldest_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters the results by the creation time of resources and returns only transactions that are created *at or after* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
  oldest_ref: 'oldest_ref_example' # String | Filters the results by the reference ID of transaction events and returns only transactions with events whose IDs are *greater* than the specified value. This parameters supersedes the `oldest_time` parameter (if both are provided in the request).
}

begin
  # List transactions
  result = api_instance.list_transactions(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions: #{e}"
end
```

#### Using the list_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTransactionsV21200Response>, Integer, Hash)> list_transactions_with_http_info(opts)

```ruby
begin
  # List transactions
  data, status_code, headers = api_instance.list_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTransactionsV21200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_code** | **String** | Retrieves the transaction resource with the specified transaction code. | [optional] |
| **order** | **String** | Specifies the order in which the returned results are displayed. | [optional][default to &#39;ascending&#39;] |
| **limit** | **Integer** | Specifies the maximum number of results per page. Value must be a positive integer and if not specified, will return 10 results. | [optional] |
| **users** | [**Array&lt;String&gt;**](String.md) | Filters the returned results by user email. | [optional] |
| **statuses** | [**Array&lt;String&gt;**](String.md) | Filters the returned results by the specified list of final statuses of the transactions. | [optional] |
| **payment_types** | [**Array&lt;String&gt;**](String.md) | Filters the returned results by the specified list of payment types used for the transactions. | [optional] |
| **types** | [**Array&lt;String&gt;**](String.md) | Filters the returned results by the specified list of transaction types. | [optional] |
| **changes_since** | **Time** | Filters the results by the latest modification time of resources and returns only transactions that are modified *at or after* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format). | [optional] |
| **newest_time** | **Time** | Filters the results by the creation time of resources and returns only transactions that are created *before* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format). | [optional] |
| **newest_ref** | **String** | Filters the results by the reference ID of transaction events and returns only transactions with events whose IDs are *smaller* than the specified value. This parameters supersedes the &#x60;newest_time&#x60; parameter (if both are provided in the request). | [optional] |
| **oldest_time** | **Time** | Filters the results by the creation time of resources and returns only transactions that are created *at or after* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format). | [optional] |
| **oldest_ref** | **String** | Filters the results by the reference ID of transaction events and returns only transactions with events whose IDs are *greater* than the specified value. This parameters supersedes the &#x60;oldest_time&#x60; parameter (if both are provided in the request). | [optional] |

### Return type

[**ListTransactionsV21200Response**](ListTransactionsV21200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transactions_v2_1

> <ListTransactionsV21200Response> list_transactions_v2_1(merchant_code, opts)

List transactions

Lists detailed history of all transactions associated with the merchant profile.

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

api_instance = OpenapiClient::TransactionsApi.new
merchant_code = 'MC0X0ABC' # String | 
opts = {
  transaction_code: 'transaction_code_example', # String | Retrieves the transaction resource with the specified transaction code.
  order: 'ascending', # String | Specifies the order in which the returned results are displayed.
  limit: 56, # Integer | Specifies the maximum number of results per page. Value must be a positive integer and if not specified, will return 10 results.
  users: ['inner_example'], # Array<String> | Filters the returned results by user email.
  statuses: ['SUCCESSFUL'], # Array<String> | Filters the returned results by the specified list of final statuses of the transactions.
  payment_types: ['CASH'], # Array<String> | Filters the returned results by the specified list of payment types used for the transactions.
  types: ['PAYMENT'], # Array<String> | Filters the returned results by the specified list of transaction types.
  changes_since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters the results by the latest modification time of resources and returns only transactions that are modified *at or after* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
  newest_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters the results by the creation time of resources and returns only transactions that are created *before* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
  newest_ref: 'newest_ref_example', # String | Filters the results by the reference ID of transaction events and returns only transactions with events whose IDs are *smaller* than the specified value. This parameters supersedes the `newest_time` parameter (if both are provided in the request).
  oldest_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters the results by the creation time of resources and returns only transactions that are created *at or after* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
  oldest_ref: 'oldest_ref_example' # String | Filters the results by the reference ID of transaction events and returns only transactions with events whose IDs are *greater* than the specified value. This parameters supersedes the `oldest_time` parameter (if both are provided in the request).
}

begin
  # List transactions
  result = api_instance.list_transactions_v2_1(merchant_code, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions_v2_1: #{e}"
end
```

#### Using the list_transactions_v2_1_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTransactionsV21200Response>, Integer, Hash)> list_transactions_v2_1_with_http_info(merchant_code, opts)

```ruby
begin
  # List transactions
  data, status_code, headers = api_instance.list_transactions_v2_1_with_http_info(merchant_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTransactionsV21200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->list_transactions_v2_1_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** |  |  |
| **transaction_code** | **String** | Retrieves the transaction resource with the specified transaction code. | [optional] |
| **order** | **String** | Specifies the order in which the returned results are displayed. | [optional][default to &#39;ascending&#39;] |
| **limit** | **Integer** | Specifies the maximum number of results per page. Value must be a positive integer and if not specified, will return 10 results. | [optional] |
| **users** | [**Array&lt;String&gt;**](String.md) | Filters the returned results by user email. | [optional] |
| **statuses** | [**Array&lt;String&gt;**](String.md) | Filters the returned results by the specified list of final statuses of the transactions. | [optional] |
| **payment_types** | [**Array&lt;String&gt;**](String.md) | Filters the returned results by the specified list of payment types used for the transactions. | [optional] |
| **types** | [**Array&lt;String&gt;**](String.md) | Filters the returned results by the specified list of transaction types. | [optional] |
| **changes_since** | **Time** | Filters the results by the latest modification time of resources and returns only transactions that are modified *at or after* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format). | [optional] |
| **newest_time** | **Time** | Filters the results by the creation time of resources and returns only transactions that are created *before* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format). | [optional] |
| **newest_ref** | **String** | Filters the results by the reference ID of transaction events and returns only transactions with events whose IDs are *smaller* than the specified value. This parameters supersedes the &#x60;newest_time&#x60; parameter (if both are provided in the request). | [optional] |
| **oldest_time** | **Time** | Filters the results by the creation time of resources and returns only transactions that are created *at or after* the specified timestamp (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format). | [optional] |
| **oldest_ref** | **String** | Filters the results by the reference ID of transaction events and returns only transactions with events whose IDs are *greater* than the specified value. This parameters supersedes the &#x60;oldest_time&#x60; parameter (if both are provided in the request). | [optional] |

### Return type

[**ListTransactionsV21200Response**](ListTransactionsV21200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refund_transaction

> Object refund_transaction(txn_id, opts)

Refund a transaction

Refunds an identified transaction either in full or partially.

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

api_instance = OpenapiClient::TransactionsApi.new
txn_id = 'txn_id_example' # String | Unique ID of the transaction.
opts = {
  refund_transaction_request: OpenapiClient::RefundTransactionRequest.new # RefundTransactionRequest | 
}

begin
  # Refund a transaction
  result = api_instance.refund_transaction(txn_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->refund_transaction: #{e}"
end
```

#### Using the refund_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> refund_transaction_with_http_info(txn_id, opts)

```ruby
begin
  # Refund a transaction
  data, status_code, headers = api_instance.refund_transaction_with_http_info(txn_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling TransactionsApi->refund_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **txn_id** | **String** | Unique ID of the transaction. |  |
| **refund_transaction_request** | [**RefundTransactionRequest**](RefundTransactionRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[apiKey](../README.md#apiKey), [oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

