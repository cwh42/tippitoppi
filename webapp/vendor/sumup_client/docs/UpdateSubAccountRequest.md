# OpenapiClient::UpdateSubAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **disabled** | **Boolean** |  | [optional] |
| **nickname** | **String** |  | [optional] |
| **permissions** | [**CreateSubAccountRequestPermissions**](CreateSubAccountRequestPermissions.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateSubAccountRequest.new(
  password: correct horse batter staple,
  username: null,
  disabled: null,
  nickname: Operator 1,
  permissions: null
)
```

