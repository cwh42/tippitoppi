# OpenapiClient::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **city** | **String** | City name from the address. | [optional] |
| **country** | **String** | Two letter country code formatted according to [ISO3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). | [optional] |
| **line_1** | **String** | First line of the address with details of the street name and number. | [optional] |
| **line_2** | **String** | Second line of the address with details of the building, unit, apartment, and floor numbers. | [optional] |
| **postal_code** | **String** | Postal code from the address. | [optional] |
| **state** | **String** | State name or abbreviation from the address. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Address.new(
  city: Berlin,
  country: DE,
  line_1: Sample street,
  line_2: ap. 5,
  postal_code: 10115,
  state: Berlin
)
```

