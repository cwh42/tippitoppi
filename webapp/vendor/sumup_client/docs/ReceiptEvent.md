# OpenapiClient::ReceiptEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique ID of the transaction event. | [optional] |
| **transaction_id** | **String** | Unique ID of the transaction. | [optional] |
| **type** | [**EventType**](EventType.md) |  | [optional] |
| **status** | [**EventStatus**](EventStatus.md) |  | [optional] |
| **amount** | **Float** | Amount of the event. | [optional] |
| **timestamp** | **Time** | Date and time of the transaction event. | [optional] |
| **receipt_no** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReceiptEvent.new(
  id: null,
  transaction_id: null,
  type: null,
  status: null,
  amount: null,
  timestamp: null,
  receipt_no: null
)
```

