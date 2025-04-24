# OpenapiClient::UpdateReaderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Custom human-readable, user-defined name for easier identification of the reader. | [optional] |
| **meta** | **Hash&lt;String, Object&gt;** | Set of user-defined key-value pairs attached to the object. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateReaderRequest.new(
  name: Frontdesk,
  meta: {}
)
```

