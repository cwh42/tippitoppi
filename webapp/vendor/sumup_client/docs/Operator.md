# OpenapiClient::Operator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **username** | **String** |  |  |
| **nickname** | **String** |  | [optional] |
| **disabled** | **Boolean** |  |  |
| **created_at** | **Time** | The timestamp of when the operator was created. |  |
| **updated_at** | **Time** | The timestamp of when the operator was last updated. |  |
| **permissions** | [**Permissions**](Permissions.md) |  |  |
| **account_type** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Operator.new(
  id: null,
  username: operator1@mydomain.com,
  nickname: Operator 1,
  disabled: false,
  created_at: null,
  updated_at: null,
  permissions: null,
  account_type: null
)
```

