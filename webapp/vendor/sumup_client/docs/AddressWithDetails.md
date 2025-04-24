# OpenapiClient::AddressWithDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | Address line 1 | [optional] |
| **address_line2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City | [optional] |
| **country** | **String** | Country ISO 3166-1 code | [optional] |
| **region_id** | **Float** | Country region id | [optional] |
| **region_name** | **String** | Region name | [optional] |
| **region_code** | **String** | Region code | [optional] |
| **post_code** | **String** | Postal code | [optional] |
| **landline** | **String** | Landline number | [optional] |
| **first_name** | **String** | undefined | [optional] |
| **last_name** | **String** | undefined | [optional] |
| **company** | **String** | undefined | [optional] |
| **country_details** | [**CountryDetails**](CountryDetails.md) |  | [optional] |
| **timeoffset_details** | [**TimeoffsetDetails**](TimeoffsetDetails.md) |  | [optional] |
| **state_id** | **String** | undefined | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressWithDetails.new(
  address_line1: null,
  address_line2: null,
  city: null,
  country: null,
  region_id: null,
  region_name: null,
  region_code: null,
  post_code: null,
  landline: null,
  first_name: null,
  last_name: null,
  company: null,
  country_details: null,
  timeoffset_details: null,
  state_id: null
)
```

