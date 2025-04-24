# OpenapiClient::ValidationError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  |  |
| **message** | **String** |  |  |
| **param** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ValidationError.new(
  error_code: NOT_FOUND,
  message: Resource not found,
  param: group
)
```

