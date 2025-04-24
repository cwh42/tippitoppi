# OpenapiClient::MerchantAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**Account**](Account.md) |  | [optional] |
| **personal_profile** | [**PersonalProfile**](PersonalProfile.md) |  | [optional] |
| **merchant_profile** | [**MerchantProfile**](MerchantProfile.md) |  | [optional] |
| **app_settings** | [**AppSettings**](AppSettings.md) |  | [optional] |
| **permissions** | [**Permissions**](Permissions.md) |  | [optional] |
| **is_migrated_payleven_br** | **Boolean** | Merchant comes from payleven BR migration | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MerchantAccount.new(
  account: null,
  personal_profile: null,
  merchant_profile: null,
  app_settings: null,
  permissions: null,
  is_migrated_payleven_br: null
)
```

