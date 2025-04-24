# OpenapiClient::PaymentInstrumentCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | Unique token identifying the saved payment card for a customer. | [readonly] |
| **active** | **Boolean** | Indicates whether the payment instrument is active and can be used for payments. To deactivate it, send a &#x60;DELETE&#x60; request to the resource endpoint. | [readonly][default to true] |
| **type** | **String** | Type of the payment instrument. |  |
| **card** | [**Card**](Card.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentInstrumentCard.new(
  token: null,
  active: null,
  type: null,
  card: null
)
```

