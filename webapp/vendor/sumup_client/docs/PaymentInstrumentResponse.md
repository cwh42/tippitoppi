# OpenapiClient::PaymentInstrumentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | Unique token identifying the saved payment card for a customer. | [optional][readonly] |
| **active** | **Boolean** | Indicates whether the payment instrument is active and can be used for payments. To deactivate it, send a &#x60;DELETE&#x60; request to the resource endpoint. | [optional][readonly][default to true] |
| **type** | **String** | Type of the payment instrument. | [optional] |
| **card** | [**PaymentInstrumentResponseCard**](PaymentInstrumentResponseCard.md) |  | [optional] |
| **mandate** | [**MandateResponse**](MandateResponse.md) |  | [optional] |
| **created_at** | **Time** | Creation date of payment instrument. Response format expressed according to [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) code. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaymentInstrumentResponse.new(
  token: null,
  active: null,
  type: null,
  card: null,
  mandate: null,
  created_at: null
)
```

