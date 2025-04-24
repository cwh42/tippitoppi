# OpenapiClient::AppSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_preference** | **String** | Checkout preference | [optional] |
| **include_vat** | **Boolean** | Include vat. | [optional] |
| **manual_entry_tutorial** | **Boolean** | Manual entry tutorial. | [optional] |
| **mobile_payment_tutorial** | **Boolean** | Mobile payment tutorial. | [optional] |
| **tax_enabled** | **Boolean** | Tax enabled. | [optional] |
| **mobile_payment** | **String** | Mobile payment. | [optional] |
| **reader_payment** | **String** | Reader payment. | [optional] |
| **cash_payment** | **String** | Cash payment. | [optional] |
| **advanced_mode** | **String** | Advanced mode. | [optional] |
| **expected_max_transaction_amount** | **Float** | Expected max transaction amount. | [optional] |
| **manual_entry** | **String** | Manual entry. | [optional] |
| **terminal_mode_tutorial** | **Boolean** | Terminal mode tutorial. | [optional] |
| **tipping** | **String** | Tipping. | [optional] |
| **tip_rates** | **Array&lt;Float&gt;** | Tip rates. | [optional] |
| **barcode_scanner** | **String** | Barcode scanner. | [optional] |
| **referral** | **String** | Referral. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AppSettings.new(
  checkout_preference: null,
  include_vat: null,
  manual_entry_tutorial: null,
  mobile_payment_tutorial: null,
  tax_enabled: null,
  mobile_payment: null,
  reader_payment: null,
  cash_payment: null,
  advanced_mode: null,
  expected_max_transaction_amount: null,
  manual_entry: null,
  terminal_mode_tutorial: null,
  tipping: null,
  tip_rates: null,
  barcode_scanner: null,
  referral: null
)
```

