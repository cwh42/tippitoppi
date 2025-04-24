# OpenapiClient::TransactionMixinCheckout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** | Unique code of the registered merchant to whom the payment is made. | [optional] |
| **vat_amount** | **Float** | Amount of the applicable VAT (out of the total transaction amount). | [optional] |
| **tip_amount** | **Float** | Amount of the tip (out of the total transaction amount). | [optional] |
| **entry_mode** | **String** | Entry mode of the payment details. | [optional] |
| **auth_code** | **String** | Authorization code for the transaction sent by the payment card issuer or bank. Applicable only to card payments. | [optional] |
| **internal_id** | **Integer** | Internal unique ID of the transaction on the SumUp platform. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionMixinCheckout.new(
  merchant_code: MH4H92C7,
  vat_amount: 6,
  tip_amount: 3,
  entry_mode: null,
  auth_code: 053201,
  internal_id: 1763892018
)
```

