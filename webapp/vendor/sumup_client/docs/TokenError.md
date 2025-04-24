# OpenapiClient::TokenError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Identifier of the error. |  |
| **error_description** | **String** | Short description of the error. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokenError.new(
  error: invalid_request,
  error_description: missing client credentials
)
```

