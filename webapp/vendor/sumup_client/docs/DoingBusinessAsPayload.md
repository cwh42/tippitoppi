# OpenapiClient::DoingBusinessAsPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_name** | **String** | Doing business as name | [optional] |
| **tax_id** | **String** | Doing business as Tax ID | [optional] |
| **vat_id** | **String** | Doing business as VAT ID | [optional] |
| **website** | **String** | Doing business as website | [optional] |
| **email** | **String** | Doing business as email | [optional] |
| **address** | [**AddressPayload**](AddressPayload.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DoingBusinessAsPayload.new(
  business_name: null,
  tax_id: null,
  vat_id: null,
  website: null,
  email: null,
  address: null
)
```

