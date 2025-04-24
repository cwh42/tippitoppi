# OpenapiClient::TransactionHistory

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
| **product_summary** | **String** | Short description of the payment. The value is taken from the &#x60;description&#x60; property of the related checkout resource. | [optional] |
| **payouts_total** | **Integer** | Total number of payouts to the registered user specified in the &#x60;user&#x60; property. | [optional] |
| **payouts_received** | **Integer** | Number of payouts that are made to the registered user specified in the &#x60;user&#x60; property. | [optional] |
| **payout_plan** | **String** | Payout plan of the registered user at the time when the transaction was made. | [optional] |
| **transaction_id** | **String** | Unique ID of the transaction. | [optional] |
| **client_transaction_id** | **String** | Client-specific ID of the transaction. | [optional] |
| **user** | **String** | Email address of the registered user (merchant) to whom the payment is made. | [optional] |
| **type** | **String** | Type of the transaction for the registered user specified in the &#x60;user&#x60; property. | [optional] |
| **card_type** | **String** | Issuing card network of the payment card used for the transaction. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionHistory.new(
  id: 6b425463-3e1b-431d-83fa-1e51c2925e99,
  transaction_code: TEENSK4W2K,
  amount: 10.1,
  currency: null,
  timestamp: 2020-02-29T10:56:56.876Z,
  status: null,
  payment_type: null,
  installments_count: null,
  product_summary: null,
  payouts_total: null,
  payouts_received: null,
  payout_plan: null,
  transaction_id: null,
  client_transaction_id: null,
  user: null,
  type: null,
  card_type: null
)
```

