# OpenapiClient::MerchantProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Unique identifying code of the merchant profile | [optional] |
| **company_name** | **String** | Company name | [optional] |
| **website** | **String** | Website | [optional] |
| **legal_type** | [**LegalType**](LegalType.md) |  | [optional] |
| **merchant_category_code** | **String** | Merchant category code | [optional] |
| **mobile_phone** | **String** | Mobile phone number | [optional] |
| **company_registration_number** | **String** | Company registration number | [optional] |
| **vat_id** | **String** | Vat ID | [optional] |
| **permanent_certificate_access_code** | **String** | Permanent certificate access code &amp;#40;Portugal&amp;#41; | [optional] |
| **nature_and_purpose** | **String** | Nature and purpose of the business | [optional] |
| **address** | [**AddressWithDetails**](AddressWithDetails.md) |  | [optional] |
| **business_owners** | [**Array&lt;BusinessOwnersInner&gt;**](BusinessOwnersInner.md) | Business owners information. | [optional] |
| **doing_business_as** | [**DoingBusinessAs**](DoingBusinessAs.md) |  | [optional] |
| **settings** | [**MerchantSettings**](MerchantSettings.md) |  | [optional] |
| **vat_rates** | [**VatRates**](VatRates.md) |  | [optional] |
| **locale** | **String** | Merchant locale &amp;#40;for internal usage only&amp;#41; | [optional] |
| **bank_accounts** | [**Array&lt;BankAccount&gt;**](BankAccount.md) |  | [optional] |
| **extdev** | **Boolean** | True if the merchant is extdev | [optional] |
| **payout_zone_migrated** | **Boolean** | True if the payout zone of this merchant is migrated | [optional] |
| **country** | **String** | Merchant country code formatted according to [ISO3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) &amp;#40;for internal usage only&amp;#41; | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MerchantProfile.new(
  merchant_code: null,
  company_name: null,
  website: null,
  legal_type: null,
  merchant_category_code: null,
  mobile_phone: null,
  company_registration_number: null,
  vat_id: null,
  permanent_certificate_access_code: null,
  nature_and_purpose: null,
  address: null,
  business_owners: null,
  doing_business_as: null,
  settings: null,
  vat_rates: null,
  locale: null,
  bank_accounts: null,
  extdev: null,
  payout_zone_migrated: null,
  country: null
)
```

