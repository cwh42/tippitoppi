# OpenapiClient::CheckoutAcceptedNextStep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Where the end user is redirected. | [optional] |
| **method** | **String** | Method used to complete the redirect. | [optional] |
| **redirect_url** | **String** | Refers to a url where the end user is redirected once the payment processing completes. | [optional] |
| **mechanism** | **Array&lt;String&gt;** | Indicates allowed mechanisms for redirecting an end user. If both values are provided to ensure a redirect takes place in either. | [optional] |
| **payload** | [**CheckoutAcceptedNextStepPayload**](CheckoutAcceptedNextStepPayload.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CheckoutAcceptedNextStep.new(
  url: https://dummy-3ds-gateway.com/cap?RID&#x3D;1233&amp;VAA&#x3D;A,
  method: POST,
  redirect_url: https://mysite.com/completed_purchase,
  mechanism: null,
  payload: null
)
```

