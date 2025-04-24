# OpenapiClient::MerchantProfilePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **legal_type_id** | **Float** | Id of the legal type of the merchant |  |
| **merchant_category_code** | **String** | Merchant category code |  |
| **company_name** | **String** | Company name |  |
| **company_registration_number** | **String** | Company registration number |  |
| **vat_id** | **String** | Vat ID | [optional] |
| **permanent_certificate_access_code** | **String** | Payment certificate access code | [optional] |
| **website** | **String** | Company website | [optional] |
| **nature_and_purpose** | **String** | Nature and purpose of the business. Required for the following merchant category codes: 5999, 7392, 8999, 5694, 5969, 7299, 7399 | [optional] |
| **mobile_phone** | **String** | Mobile number | [optional] |
| **address** | [**AddressPayload**](AddressPayload.md) |  |  |
| **doing_business_as** | [**MerchantProfilePayloadDoingBusinessAs**](MerchantProfilePayloadDoingBusinessAs.md) |  | [optional] |
| **business_owners** | [**Array&lt;BusinessOwnersInner&gt;**](BusinessOwnersInner.md) | Business owners information. | [optional] |
| **is_test_account** | **Boolean** | Defines if the profile nature is for testing | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MerchantProfilePayload.new(
  legal_type_id: null,
  merchant_category_code: null,
  company_name: null,
  company_registration_number: null,
  vat_id: null,
  permanent_certificate_access_code: null,
  website: null,
  nature_and_purpose: null,
  mobile_phone: null,
  address: null,
  doing_business_as: null,
  business_owners: null,
  is_test_account: null
)
```

