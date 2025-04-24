# OpenapiClient::DetailsError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Short title of the error. | [optional] |
| **details** | **String** | Details of the error. | [optional] |
| **status** | **Float** | The status code. | [optional] |
| **failed_constraints** | [**Array&lt;DetailsErrorFailedConstraintsInner&gt;**](DetailsErrorFailedConstraintsInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DetailsError.new(
  title: null,
  details: null,
  status: null,
  failed_constraints: null
)
```

