# OpenapiClient::CreateSubAccountRequestPermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_moto_payments** | **Boolean** |  | [optional] |
| **create_referral** | **Boolean** |  | [optional] |
| **full_transaction_history_view** | **Boolean** |  | [optional] |
| **refund_transactions** | **Boolean** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateSubAccountRequestPermissions.new(
  create_moto_payments: null,
  create_referral: null,
  full_transaction_history_view: null,
  refund_transactions: null
)
```

