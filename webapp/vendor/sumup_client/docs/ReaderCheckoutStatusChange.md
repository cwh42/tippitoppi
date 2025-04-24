# OpenapiClient::ReaderCheckoutStatusChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique event id. |  |
| **event_type** | **String** | The event type. |  |
| **payload** | [**ReaderCheckoutStatusChangePayload**](ReaderCheckoutStatusChangePayload.md) |  |  |
| **timestamp** | **Time** | The timestamp of the event. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReaderCheckoutStatusChange.new(
  id: 123e4567-e89b-12d3-a456-426614174000,
  event_type: solo.transaction.updated,
  payload: null,
  timestamp: 2021-01-01T00:00Z
)
```

