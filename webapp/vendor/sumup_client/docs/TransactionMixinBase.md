# OpenapiClient::TransactionMixinBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the transaction. | [optional] |
| **transaction_code** | **String** | Transaction code returned by the acquirer/processing entity after processing the transaction. | [optional] |
| **amount** | **Float** | Total amount of the transaction. | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **timestamp** | **Time** | Date and time of the creation of the transaction. Response format expressed according to [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) code. | [optional] |
| **status** | **String** | Current status of the transaction. | [optional] |
| **payment_type** | **String** | Payment type used for the transaction. | [optional] |
| **installments_count** | **Integer** | Current number of the installment for deferred payments. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionMixinBase.new(
  id: 6b425463-3e1b-431d-83fa-1e51c2925e99,
  transaction_code: TEENSK4W2K,
  amount: 10.1,
  currency: null,
  timestamp: 2020-02-29T10:56:56.876Z,
  status: null,
  payment_type: null,
  installments_count: null
)
```

