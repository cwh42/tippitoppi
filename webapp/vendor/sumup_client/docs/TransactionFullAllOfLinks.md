# OpenapiClient::TransactionFullAllOfLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rel** | **String** | Specifies the relation to the current resource. | [optional] |
| **href** | **String** | URL for accessing the related resource. | [optional] |
| **type** | **String** | Specifies the media type of the related resource. | [optional] |
| **min_amount** | **Float** | Minimum allowed amount for the refund. | [optional] |
| **max_amount** | **Float** | Maximum allowed amount for the refund. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionFullAllOfLinks.new(
  rel: null,
  href: null,
  type: null,
  min_amount: null,
  max_amount: null
)
```

