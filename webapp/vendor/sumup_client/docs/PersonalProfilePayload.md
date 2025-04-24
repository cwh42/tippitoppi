# OpenapiClient::PersonalProfilePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the user |  |
| **last_name** | **String** | Last name of the user |  |
| **date_of_birth** | **Date** | Date of birth |  |
| **mobile_phone** | **String** | Mobile phone number | [optional] |
| **national_id** | **String** | National identification id. Country specific. Ex CPF &amp;#40;Brazil&amp;#41;, DNI (Spain), PESEL (Poland) | [optional] |
| **address** | [**AddressPayload**](AddressPayload.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PersonalProfilePayload.new(
  first_name: null,
  last_name: null,
  date_of_birth: null,
  mobile_phone: null,
  national_id: null,
  address: null
)
```

