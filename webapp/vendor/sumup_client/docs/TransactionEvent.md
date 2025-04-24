# OpenapiClient::TransactionEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique ID of the transaction event. | [optional] |
| **event_type** | [**EventType**](EventType.md) |  | [optional] |
| **status** | [**EventStatus**](EventStatus.md) |  | [optional] |
| **amount** | **Float** | Amount of the event. | [optional] |
| **due_date** | **Date** | Date when the transaction event is due to occur. | [optional] |
| **date** | **Date** | Date when the transaction event occurred. | [optional] |
| **installment_number** | **Integer** | Consecutive number of the installment that is paid. Applicable only payout events, i.e. &#x60;event_type &#x3D; PAYOUT&#x60;. | [optional] |
| **timestamp** | **Time** | Date and time of the transaction event. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionEvent.new(
  id: null,
  event_type: null,
  status: null,
  amount: null,
  due_date: null,
  date: null,
  installment_number: null,
  timestamp: null
)
```

