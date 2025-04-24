# OpenapiClient::Link

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rel** | **String** | Specifies the relation to the current resource. | [optional] |
| **href** | **String** | URL for accessing the related resource. | [optional] |
| **type** | **String** | Specifies the media type of the related resource. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Link.new(
  rel: null,
  href: null,
  type: null
)
```

