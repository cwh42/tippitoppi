# OpenapiClient::CompatError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** |  |  |
| **message** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CompatError.new(
  error_code: NOT_FOUND,
  message: Resource not found.
)
```

