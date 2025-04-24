# OpenapiClient::ErrorExtended

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | Short description of the error. | [optional] |
| **error_code** | **String** | Platform code for the error. | [optional] |
| **param** | **String** | Parameter name (with relative location) to which the error applies. Parameters from embedded resources are displayed using dot notation. For example, &#x60;card.name&#x60; refers to the &#x60;name&#x60; parameter embedded in the &#x60;card&#x60; object. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ErrorExtended.new(
  message: null,
  error_code: null,
  param: null
)
```

