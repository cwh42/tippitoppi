# OpenapiClient::SignupVerificationStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verified** | **Boolean** | True if the signup email has been verified. |  |
| **status** | **String** | The state of the signup verification. Possible values are: * &#x60;pending&#x60; - the signup is pending confirmation * &#x60;verified&#x60; - the signup has been verified as can be claimed * &#x60;claimed&#x60; - the signup has been claimed  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SignupVerificationStatus.new(
  verified: true,
  status: pending
)
```

