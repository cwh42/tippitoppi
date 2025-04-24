# OpenapiClient::Invite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the invited user. |  |
| **expires_at** | **Time** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Invite.new(
  email: boaty.mcboatface@sumup.com,
  expires_at: 2023-01-20T15:16:17Z
)
```

