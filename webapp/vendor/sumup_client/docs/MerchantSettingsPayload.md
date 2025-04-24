# OpenapiClient::MerchantSettingsPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_period** | **String** | Payout period. | [optional] |
| **payout_type** | **String** | Payout type. | [optional] |
| **payout_on_demand** | **Boolean** | If true, the merchant will not receive automatic payouts. | [optional] |
| **payout_on_demand_available** | **String** | If true, the merchant will be able to manage  payout_on_demand settings | [optional] |
| **expected_max_transaction_amount** | **Float** | Expected maximum amount of a single purchase | [optional] |
| **printers_enabled** | **Boolean** | Printers enabled. | [optional] |
| **gross_settlement** | **Boolean** | Gross settlement | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MerchantSettingsPayload.new(
  payout_period: null,
  payout_type: null,
  payout_on_demand: null,
  payout_on_demand_available: null,
  expected_max_transaction_amount: null,
  printers_enabled: null,
  gross_settlement: null
)
```

