# OpenapiClient::CheckoutCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_reference** | **String** | Unique ID of the payment checkout specified by the client application when creating the checkout resource. |  |
| **amount** | **Float** | Amount of the payment. |  |
| **currency** | [**Currency**](Currency.md) |  |  |
| **merchant_code** | **String** | Unique identifying code of the merchant profile. |  |
| **pay_to_email** | **String** | Email address of the registered user (merchant) to whom the payment is made. | [optional] |
| **description** | **String** | Short description of the checkout visible in the SumUp dashboard. The description can contribute to reporting, allowing easier identification of a checkout. | [optional] |
| **return_url** | **String** | URL to which the SumUp platform sends the processing status of the payment checkout. | [optional] |
| **customer_id** | **String** | Unique identification of a customer. If specified, the checkout session and payment instrument are associated with the referenced customer. | [optional] |
| **purpose** | **String** | Purpose of the checkout. | [optional][default to &#39;CHECKOUT&#39;] |
| **id** | **String** | Unique ID of the checkout resource. | [optional][readonly] |
| **status** | **String** | Current status of the checkout. | [optional][readonly] |
| **date** | **Time** | Date and time of the creation of the payment checkout. Response format expressed according to [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) code. | [optional][readonly] |
| **valid_until** | **Time** | Date and time of the checkout expiration before which the client application needs to send a processing request. If no value is present, the checkout does not have an expiration time. | [optional] |
| **transactions** | [**Array&lt;DeactivateCheckout200ResponseTransactionsInner&gt;**](DeactivateCheckout200ResponseTransactionsInner.md) | List of transactions related to the payment. | [optional][readonly] |
| **redirect_url** | **String** | __Required__ for [APMs](https://developer.sumup.com/online-payments/apm/introduction) and __recommended__ for card payments. Refers to a url where the end user is redirected once the payment processing completes. If not specified, the [Payment Widget](https://developer.sumup.com/online-payments/tools/card-widget) renders [3DS challenge](https://developer.sumup.com/online-payments/features/3ds) within an iframe instead of performing a full-page redirect. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CheckoutCreateRequest.new(
  checkout_reference: null,
  amount: null,
  currency: null,
  merchant_code: null,
  pay_to_email: null,
  description: null,
  return_url: null,
  customer_id: null,
  purpose: null,
  id: null,
  status: null,
  date: 2020-02-29T10:56:56Z,
  valid_until: 2020-02-29T10:56:56Z,
  transactions: null,
  redirect_url: https://mysite.com/completed_purchase
)
```

