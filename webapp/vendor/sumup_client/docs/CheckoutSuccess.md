# OpenapiClient::CheckoutSuccess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_reference** | **String** | Unique ID of the payment checkout specified by the client application when creating the checkout resource. | [optional] |
| **amount** | **Float** | Amount of the payment. | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **pay_to_email** | **String** | Email address of the registered user (merchant) to whom the payment is made. | [optional] |
| **merchant_code** | **String** | Unique identifying code of the merchant profile. | [optional] |
| **description** | **String** | Short description of the checkout visible in the SumUp dashboard. The description can contribute to reporting, allowing easier identification of a checkout. | [optional] |
| **return_url** | **String** | URL to which the SumUp platform sends the processing status of the payment checkout. | [optional] |
| **id** | **String** | Unique ID of the checkout resource. | [optional][readonly] |
| **status** | **String** | Current status of the checkout. | [optional] |
| **date** | **Time** | Date and time of the creation of the payment checkout. Response format expressed according to [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) code. | [optional] |
| **valid_until** | **Time** | Date and time of the checkout expiration before which the client application needs to send a processing request. If no value is present, the checkout does not have an expiration time. | [optional] |
| **customer_id** | **String** | Unique identification of a customer. If specified, the checkout session and payment instrument are associated with the referenced customer. | [optional] |
| **mandate** | [**MandateResponse**](MandateResponse.md) |  | [optional] |
| **transactions** | [**Array&lt;DeactivateCheckout200ResponseTransactionsInner&gt;**](DeactivateCheckout200ResponseTransactionsInner.md) | List of transactions related to the payment. | [optional] |
| **transaction_code** | **String** | Transaction code of the successful transaction with which the payment for the checkout is completed. | [optional][readonly] |
| **transaction_id** | **String** | Transaction ID of the successful transaction with which the payment for the checkout is completed. | [optional][readonly] |
| **merchant_name** | **String** | Name of the merchant | [optional] |
| **redirect_url** | **String** | Refers to a url where the end user is redirected once the payment processing completes. | [optional] |
| **payment_instrument** | [**CheckoutSuccessAllOfPaymentInstrument**](CheckoutSuccessAllOfPaymentInstrument.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CheckoutSuccess.new(
  checkout_reference: null,
  amount: 10.1,
  currency: null,
  pay_to_email: null,
  merchant_code: null,
  description: null,
  return_url: null,
  id: 4e425463-3e1b-431d-83fa-1e51c2925e99,
  status: null,
  date: 2020-02-29T10:56:56Z,
  valid_until: 2020-02-29T10:56:56Z,
  customer_id: 831ff8d4cd5958ab5670,
  mandate: null,
  transactions: null,
  transaction_code: TEENSK4W2K,
  transaction_id: 410fc44a-5956-44e1-b5cc-19c6f8d727a4,
  merchant_name: Sample Merchant,
  redirect_url: https://mysite.com/completed_purchase,
  payment_instrument: null
)
```

