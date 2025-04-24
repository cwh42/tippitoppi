# OpenapiClient::DoingBusinessAsAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | Address line 1 | [optional] |
| **address_line2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City | [optional] |
| **country** | **String** | Country ISO 3166-1 code | [optional] |
| **region_id** | **Float** | Country region ID | [optional] |
| **region_name** | **String** | Country region name | [optional] |
| **post_code** | **String** | Postal code | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DoingBusinessAsAddress.new(
  address_line1: null,
  address_line2: null,
  city: null,
  country: null,
  region_id: null,
  region_name: null,
  post_code: null
)
```

