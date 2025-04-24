# OpenapiClient::ReceiptTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_code** | **String** | Transaction code. | [optional] |
| **amount** | **String** | Transaction amount. | [optional] |
| **vat_amount** | **String** | Transaction VAT amount. | [optional] |
| **tip_amount** | **String** | Tip amount (included in transaction amount). | [optional] |
| **currency** | **String** | Transaction currency. | [optional] |
| **timestamp** | **Time** | Time created at. | [optional] |
| **status** | **String** | Transaction processing status. | [optional] |
| **payment_type** | **String** | Transaction type. | [optional] |
| **entry_mode** | **String** | Transaction entry mode. | [optional] |
| **verification_method** | **String** | Cardholder verification method. | [optional] |
| **card** | [**ReceiptCard**](ReceiptCard.md) |  | [optional] |
| **installments_count** | **Integer** | Number of installments. | [optional] |
| **products** | [**Array&lt;ReceiptTransactionProductsInner&gt;**](ReceiptTransactionProductsInner.md) | Products | [optional] |
| **vat_rates** | [**Array&lt;ReceiptTransactionVatRatesInner&gt;**](ReceiptTransactionVatRatesInner.md) | Vat rates. | [optional] |
| **events** | [**Array&lt;ReceiptEvent&gt;**](ReceiptEvent.md) | Events | [optional] |
| **receipt_no** | **String** | Receipt number | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReceiptTransaction.new(
  transaction_code: null,
  amount: null,
  vat_amount: null,
  tip_amount: null,
  currency: null,
  timestamp: null,
  status: null,
  payment_type: null,
  entry_mode: null,
  verification_method: null,
  card: null,
  installments_count: null,
  products: null,
  vat_rates: null,
  events: null,
  receipt_no: null
)
```

