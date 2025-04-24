# OpenapiClient::MandatePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Indicates the mandate type |  |
| **user_agent** | **String** | Operating system and web client used by the end-user |  |
| **user_ip** | **String** | IP address of the end user. Supports IPv4 and IPv6 | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MandatePayload.new(
  type: null,
  user_agent: null,
  user_ip: null
)
```

