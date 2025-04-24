# OpenapiClient::PaymentInstrumentResponseCard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_4_digits** | **String** | Last 4 digits of the payment card number. | [optional][readonly] |
| **type** | **String** | Issuing card network of the payment card. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentInstrumentResponseCard.new(
  last_4_digits: 3456,
  type: null
)
```

