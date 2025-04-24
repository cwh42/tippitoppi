# OpenapiClient::ErrorForbidden

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_message** | **String** | Short description of the error. | [optional] |
| **error_code** | **String** | Platform code for the error. | [optional] |
| **status_code** | **String** | HTTP status code for the error. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ErrorForbidden.new(
  error_message: null,
  error_code: null,
  status_code: null
)
```

