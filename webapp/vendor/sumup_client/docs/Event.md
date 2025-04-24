# OpenapiClient::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique ID of the transaction event. | [optional] |
| **transaction_id** | **String** | Unique ID of the transaction. | [optional] |
| **type** | [**EventType**](EventType.md) |  | [optional] |
| **status** | [**EventStatus**](EventStatus.md) |  | [optional] |
| **amount** | **Float** | Amount of the event. | [optional] |
| **timestamp** | **Time** | Date and time of the transaction event. | [optional] |
| **fee_amount** | **Float** | Amount of the fee related to the event. | [optional] |
| **installment_number** | **Integer** | Consecutive number of the installment. | [optional] |
| **deducted_amount** | **Float** | Amount deducted for the event. | [optional] |
| **deducted_fee_amount** | **Float** | Amount of the fee deducted for the event. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Event.new(
  id: null,
  transaction_id: null,
  type: null,
  status: null,
  amount: null,
  timestamp: null,
  fee_amount: null,
  installment_number: null,
  deducted_amount: null,
  deducted_fee_amount: null
)
```

