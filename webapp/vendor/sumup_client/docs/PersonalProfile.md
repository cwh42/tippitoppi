# OpenapiClient::PersonalProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the user | [optional] |
| **last_name** | **String** | Last name of the user | [optional] |
| **date_of_birth** | **String** | Date of birth | [optional] |
| **mobile_phone** | **String** | Mobile phone number | [optional] |
| **address** | [**AddressWithDetails**](AddressWithDetails.md) |  | [optional] |
| **complete** | **Boolean** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PersonalProfile.new(
  first_name: null,
  last_name: null,
  date_of_birth: null,
  mobile_phone: null,
  address: null,
  complete: null
)
```

