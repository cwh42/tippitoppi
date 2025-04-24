# OpenapiClient::TransactionFullAllOfLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lat** | **Float** | Latitude value from the coordinates of the payment location (as received from the payment terminal reader). | [optional] |
| **lon** | **Float** | Longitude value from the coordinates of the payment location (as received from the payment terminal reader). | [optional] |
| **horizontal_accuracy** | **Float** | Indication of the precision of the geographical position received from the payment terminal. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionFullAllOfLocation.new(
  lat: null,
  lon: null,
  horizontal_accuracy: null
)
```

