# OpenapiClient::DoingBusinessAs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_name** | **String** | Doing business as name | [optional] |
| **company_registration_number** | **String** | Doing business as company registration number | [optional] |
| **vat_id** | **String** | Doing business as VAT ID | [optional] |
| **website** | **String** | Doing business as website | [optional] |
| **email** | **String** | Doing business as email | [optional] |
| **address** | [**DoingBusinessAsAddress**](DoingBusinessAsAddress.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DoingBusinessAs.new(
  business_name: null,
  company_registration_number: null,
  vat_id: null,
  website: null,
  email: null,
  address: null
)
```

