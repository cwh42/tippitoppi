# OpenapiClient::Permissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_moto_payments** | **Boolean** | Create MOTO payments | [optional] |
| **full_transaction_history_view** | **Boolean** | Can view full merchant transaction history | [optional] |
| **refund_transactions** | **Boolean** | Refund transactions | [optional] |
| **create_referral** | **Boolean** | Create referral | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Permissions.new(
  create_moto_payments: null,
  full_transaction_history_view: null,
  refund_transactions: null,
  create_referral: null
)
```

