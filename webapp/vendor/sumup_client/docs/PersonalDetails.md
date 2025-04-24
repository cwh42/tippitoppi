# OpenapiClient::PersonalDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the customer. | [optional] |
| **last_name** | **String** | Last name of the customer. | [optional] |
| **email** | **String** | Email address of the customer. | [optional] |
| **phone** | **String** | Phone number of the customer. | [optional] |
| **birth_date** | **Date** | Date of birth of the customer. | [optional] |
| **tax_id** | **String** | An identification number user for tax purposes (e.g. CPF) | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PersonalDetails.new(
  first_name: John,
  last_name: Doe,
  email: user@example.com,
  phone: +491635559723,
  birth_date: Fri Dec 31 01:00:00 CET 1993,
  tax_id: 423.378.593-47,
  address: null
)
```

