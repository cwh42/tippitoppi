# OpenapiClient::MerchantSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_enabled** | **Boolean** | Whether to show tax in receipts &amp;#40;saved per transaction&amp;#41; | [optional] |
| **payout_type** | **String** | Payout type | [optional] |
| **payout_period** | **String** | Payout frequency | [optional] |
| **payout_on_demand_available** | **Boolean** | Whether merchant can edit payouts on demand | [optional] |
| **payout_on_demand** | **Boolean** | Whether merchant will receive payouts on demand | [optional] |
| **printers_enabled** | **Boolean** | Whether to show printers in mobile app | [optional] |
| **payout_instrument** | **String** | Payout Instrument | [optional] |
| **moto_payment** | **String** | Whether merchant can make MOTO payments | [optional] |
| **stone_merchant_code** | **String** | Stone merchant code | [optional] |
| **daily_payout_email** | **Boolean** | Whether merchant will receive daily payout emails | [optional] |
| **monthly_payout_email** | **Boolean** | Whether merchant will receive monthly payout emails | [optional] |
| **gross_settlement** | **Boolean** | Whether merchant has gross settlement enabled | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MerchantSettings.new(
  tax_enabled: null,
  payout_type: null,
  payout_period: null,
  payout_on_demand_available: null,
  payout_on_demand: null,
  printers_enabled: null,
  payout_instrument: null,
  moto_payment: null,
  stone_merchant_code: null,
  daily_payout_email: null,
  monthly_payout_email: null,
  gross_settlement: null
)
```

