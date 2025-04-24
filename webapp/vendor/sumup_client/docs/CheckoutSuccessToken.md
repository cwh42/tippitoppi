# OpenapiClient::CheckoutSuccessToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_reference** | **String** | Unique ID of the payment checkout specified by the client application when creating the checkout resource. | [optional] |
| **amount** | **Float** | Amount of the payment. | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **pay_to_email** | **String** | Email address of the registered user (merchant) to whom the payment is made. | [optional] |
| **merchant_code** | **String** | Unique identifying code of the merchant profile. | [optional] |
| **description** | **String** | Short description of the checkout visible in the SumUp dashboard. The description can contribute to reporting, allowing easier identification of a checkout. | [optional] |
| **id** | **String** | Unique ID of the checkout resource. | [optional][readonly] |
| **status** | **String** | Current status of the checkout. | [optional][readonly] |
| **date** | **Time** | Date and time of the creation of the payment checkout. Response format expressed according to [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) code. | [optional][readonly] |
| **transaction_code** | **String** | Transaction code of the successful transaction with which the payment for the checkout is completed. | [optional][readonly] |
| **transaction_id** | **String** | Transaction ID of the successful transaction with which the payment for the checkout is completed. | [optional][readonly] |
| **merchant_name** | **String** | Name of the merchant | [optional] |
| **redirect_url** | **String** | Refers to a url where the end user is redirected once the payment processing completes. | [optional] |
| **customer_id** | **String** | Unique identification of a customer. If specified, the checkout session and payment instrument are associated with the referenced customer. | [optional] |
| **payment_instrument** | [**CheckoutSuccessAllOfPaymentInstrument**](CheckoutSuccessAllOfPaymentInstrument.md) |  | [optional] |
| **transactions** | [**Array&lt;DeactivateCheckout200ResponseTransactionsInner&gt;**](DeactivateCheckout200ResponseTransactionsInner.md) | List of transactions related to the payment. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CheckoutSuccessToken.new(
  checkout_reference: null,
  amount: 10.1,
  currency: null,
  pay_to_email: null,
  merchant_code: null,
  description: null,
  id: null,
  status: null,
  date: 2020-02-29T10:56:56Z,
  transaction_code: TEENSK4W2K,
  transaction_id: 410fc44a-5956-44e1-b5cc-19c6f8d727a4,
  merchant_name: Sample Merchant,
  redirect_url: https://mysite.com/completed_purchase,
  customer_id: null,
  payment_instrument: null,
  transactions: null
)
```

