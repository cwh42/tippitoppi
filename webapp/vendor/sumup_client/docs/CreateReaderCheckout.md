# OpenapiClient::CreateReaderCheckout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the checkout to be shown in the Merchant Sales  | [optional] |
| **card_type** | **String** | The card type of the card used for the transaction. Is is required only for some countries (e.g: Brazil).  | [optional] |
| **installments** | **Integer** | Number of installments for the transaction. It may vary according to the merchant country. For example, in Brazil, the maximum number of installments is 12.  | [optional] |
| **return_url** | **String** | Webhook URL to which the payment result will be sent. It must be a HTTPS url.  | [optional] |
| **total_amount** | [**CreateReaderCheckoutAmount**](CreateReaderCheckoutAmount.md) |  |  |
| **tip_rates** | **Array&lt;Float&gt;** | List of tipping rates to be displayed to the cardholder. The rates are in percentage and should be between 0.01 and 0.99. The list should be sorted in ascending order.  | [optional] |
| **affiliate** | [**Affiliate**](Affiliate.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateReaderCheckout.new(
  description: null,
  card_type: credit,
  installments: 1,
  return_url: https://www.example.com,
  total_amount: null,
  tip_rates: null,
  affiliate: null
)
```

