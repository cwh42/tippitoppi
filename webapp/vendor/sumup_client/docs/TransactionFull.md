# OpenapiClient::TransactionFull

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
| **product_summary** | **String** | Short description of the payment. The value is taken from the &#x60;description&#x60; property of the related checkout resource. | [optional] |
| **payouts_total** | **Integer** | Total number of payouts to the registered user specified in the &#x60;user&#x60; property. | [optional] |
| **payouts_received** | **Integer** | Number of payouts that are made to the registered user specified in the &#x60;user&#x60; property. | [optional] |
| **payout_plan** | **String** | Payout plan of the registered user at the time when the transaction was made. | [optional] |
| **username** | **String** | Email address of the registered user (merchant) to whom the payment is made. | [optional] |
| **lat** | **Float** | Latitude value from the coordinates of the payment location (as received from the payment terminal reader). | [optional] |
| **lon** | **Float** | Longitude value from the coordinates of the payment location (as received from the payment terminal reader). | [optional] |
| **horizontal_accuracy** | **Float** | Indication of the precision of the geographical position received from the payment terminal. | [optional] |
| **simple_payment_type** | **String** | Simple name of the payment type. | [optional] |
| **verification_method** | **String** | Verification method used for the transaction. | [optional] |
| **card** | [**CardResponse**](CardResponse.md) |  | [optional] |
| **local_time** | **Time** | Local date and time of the creation of the transaction. | [optional] |
| **payout_type** | **String** | Payout type for the transaction. | [optional] |
| **products** | [**Array&lt;Product&gt;**](Product.md) | List of products from the merchant&#39;s catalogue for which the transaction serves as a payment. | [optional] |
| **vat_rates** | **Array&lt;Object&gt;** | List of VAT rates applicable to the transaction. | [optional] |
| **transaction_events** | [**Array&lt;TransactionEvent&gt;**](TransactionEvent.md) | List of transaction events related to the transaction. | [optional] |
| **simple_status** | **String** | Status generated from the processing status and the latest transaction state. | [optional] |
| **links** | [**Array&lt;TransactionFullAllOfLinks&gt;**](TransactionFullAllOfLinks.md) | List of hyperlinks for accessing related resources. | [optional] |
| **events** | [**Array&lt;Event&gt;**](Event.md) | List of events related to the transaction. | [optional] |
| **location** | [**TransactionFullAllOfLocation**](TransactionFullAllOfLocation.md) |  | [optional] |
| **tax_enabled** | **Boolean** | Indicates whether tax deduction is enabled for the transaction. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionFull.new(
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
  internal_id: 1763892018,
  product_summary: null,
  payouts_total: null,
  payouts_received: null,
  payout_plan: null,
  username: null,
  lat: null,
  lon: null,
  horizontal_accuracy: null,
  simple_payment_type: null,
  verification_method: null,
  card: null,
  local_time: null,
  payout_type: null,
  products: null,
  vat_rates: null,
  transaction_events: null,
  simple_status: null,
  links: null,
  events: null,
  location: null,
  tax_enabled: null
)
```

