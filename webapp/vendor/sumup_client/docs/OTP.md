# OpenapiClient::OTP

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **otp_channel** | [**OTPChannel**](OTPChannel.md) |  | [default to &#39;sms&#39;] |
| **otp_recipient** | **String** | Masked recipient of the OTP.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OTP.new(
  otp_channel: null,
  otp_recipient: +420*******898
)
```

