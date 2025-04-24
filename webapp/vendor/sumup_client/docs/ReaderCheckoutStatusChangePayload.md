# OpenapiClient::ReaderCheckoutStatusChangePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_transaction_id** | **String** | The unique client transaction id. It is the same returned by the Checkout. |  |
| **merchant_code** | **String** | The target merchant code owner of the transaction. |  |
| **status** | **String** | The status of the transaction. |  |
| **transaction_id** | **String** | The unique transaction id. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReaderCheckoutStatusChangePayload.new(
  client_transaction_id: ba0a3c07-799e-40f8-89e9-1dfe96e4557e,
  merchant_code: M1234567,
  status: successful,
  transaction_id: c88032e4-a384-4030-943c-ac59cc768d90
)
```

