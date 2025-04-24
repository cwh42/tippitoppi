# OpenapiClient::CheckoutProcessMixin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_type** | **String** | Describes the payment method used to attempt processing |  |
| **installments** | **Integer** | Number of installments for deferred payments. Available only to merchant users in Brazil. | [optional] |
| **mandate** | [**MandatePayload**](MandatePayload.md) |  | [optional] |
| **card** | [**Card**](Card.md) |  | [optional] |
| **token** | **String** | __Required when using a tokenized card to process a checkout.__ Unique token identifying the saved payment card for a customer. | [optional] |
| **customer_id** | **String** | __Required when &#x60;token&#x60; is provided.__ Unique ID of the customer. | [optional] |
| **personal_details** | [**PersonalDetails**](PersonalDetails.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CheckoutProcessMixin.new(
  payment_type: null,
  installments: null,
  mandate: null,
  card: null,
  token: null,
  customer_id: null,
  personal_details: null
)
```

