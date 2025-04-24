# OpenapiClient::RefundTransactionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount to be refunded. Eligible amount can&#39;t exceed the amount of the transaction and varies based on country and currency. If you do not specify a value, the system performs a full refund of the transaction. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::RefundTransactionRequest.new(
  amount: null
)
```

