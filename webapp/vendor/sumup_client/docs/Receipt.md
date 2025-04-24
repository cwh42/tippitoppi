# OpenapiClient::Receipt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_data** | [**ReceiptTransaction**](ReceiptTransaction.md) |  | [optional] |
| **merchant_data** | [**ReceiptMerchantData**](ReceiptMerchantData.md) |  | [optional] |
| **emv_data** | **Object** |  | [optional] |
| **acquirer_data** | [**ReceiptAcquirerData**](ReceiptAcquirerData.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Receipt.new(
  transaction_data: null,
  merchant_data: null,
  emv_data: null,
  acquirer_data: null
)
```

