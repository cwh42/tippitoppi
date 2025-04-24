# OpenapiClient::CreateSubAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** |  |  |
| **password** | **String** |  |  |
| **nickname** | **String** |  | [optional] |
| **permissions** | [**CreateSubAccountRequestPermissions**](CreateSubAccountRequestPermissions.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateSubAccountRequest.new(
  username: operator1@mydomain.com,
  password: correct horse batter staple,
  nickname: Operator 1,
  permissions: null
)
```

