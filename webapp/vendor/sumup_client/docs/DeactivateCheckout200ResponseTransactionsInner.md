# OpenapiClient::DeactivateCheckout200ResponseTransactionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID of the transaction. | [optional] |
| **transaction_code** | **String** | Transaction code returned by the acquirer/processing entity after processing the transaction. | [optional] |
| **amount** | **Float** | Total amount of the transaction. | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **timestamp** | **Time** | Date and time of the creation of the transaction. Response format expressed according to [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) code. | [optional] |
| **status** | **String** | Current status of the transaction. | [optional] |
| **payment_type** | **String** | Payment type used for the transaction. | [optional] |
| **installments_count** | **Integer** | Current number of the installment for deferred payments. | [optional] |
| **merchant_code** | **String** | Unique code of the registered merchant to whom the payment is made. | [optional] |
| **vat_amount** | **Float** | Amount of the applicable VAT (out of the total transaction amount). | [optional] |
| **tip_amount** | **Float** | Amount of the tip (out of the total transaction amount). | [optional] |
| **entry_mode** | **String** | Entry mode of the payment details. | [optional] |
| **auth_code** | **String** | Authorization code for the transaction sent by the payment card issuer or bank. Applicable only to card payments. | [optional] |
| **internal_id** | **Integer** | Internal unique ID of the transaction on the SumUp platform. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeactivateCheckout200ResponseTransactionsInner.new(
  id: 6b425463-3e1b-431d-83fa-1e51c2925e99,
  transaction_code: TEENSK4W2K,
  amount: 10.1,
  currency: null,
  timestamp: 2020-02-29T10:56:56.876Z,
  status: null,
  payment_type: null,
  installments_count: null,
  merchant_code: MH4H92C7,
  vat_amount: 6,
  tip_amount: 3,
  entry_mode: null,
  auth_code: 053201,
  internal_id: 1763892018
)
```

