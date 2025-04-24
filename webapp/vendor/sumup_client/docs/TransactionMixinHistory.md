# OpenapiClient::TransactionMixinHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_summary** | **String** | Short description of the payment. The value is taken from the &#x60;description&#x60; property of the related checkout resource. | [optional] |
| **payouts_total** | **Integer** | Total number of payouts to the registered user specified in the &#x60;user&#x60; property. | [optional] |
| **payouts_received** | **Integer** | Number of payouts that are made to the registered user specified in the &#x60;user&#x60; property. | [optional] |
| **payout_plan** | **String** | Payout plan of the registered user at the time when the transaction was made. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionMixinHistory.new(
  product_summary: null,
  payouts_total: null,
  payouts_received: null,
  payout_plan: null
)
```

