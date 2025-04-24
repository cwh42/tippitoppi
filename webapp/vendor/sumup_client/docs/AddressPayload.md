# OpenapiClient::AddressPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | Address line 1 |  |
| **address_line2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City |  |
| **country** | **String** | Country ISO 3166-1 code |  |
| **region_id** | **Float** | Country region id | [optional] |
| **region_name** | **String** | Country region name | [optional] |
| **post_code** | **String** | Postal code |  |
| **landline** | **String** | Landline number | [optional] |
| **first_name** | **String** | First name | [optional] |
| **last_name** | **String** | Last name | [optional] |
| **company** | **String** | Company name | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressPayload.new(
  address_line1: null,
  address_line2: null,
  city: null,
  country: null,
  region_id: null,
  region_name: null,
  post_code: null,
  landline: null,
  first_name: null,
  last_name: null,
  company: null
)
```

