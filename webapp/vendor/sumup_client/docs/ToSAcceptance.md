# OpenapiClient::ToSAcceptance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accepted_at** | **Time** | The Unix timestamp marking when the user accepted Terms of Service agreement. |  |
| **ip_address** | **String** | The IP address from which the user accepted Terms of Service agreement. |  |
| **user_agent** | **String** | The user agent of the browser from which the user accepted Terms of Service agreement. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ToSAcceptance.new(
  accepted_at: 2023-03-25T09:10:10Z,
  ip_address: 127.0.0.1,
  user_agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/113.0
)
```

