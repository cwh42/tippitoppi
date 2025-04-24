# OpenapiClient::DeactivateCheckout200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkout_reference** | **String** | Unique ID of the payment checkout specified by the client application when creating the checkout resource. | [optional] |
| **id** | **String** | Unique ID of the checkout resource. | [optional][readonly] |
| **amount** | **Float** | Amount of the payment. | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **pay_to_email** | **String** | Email address of the registered user (merchant) to whom the payment is made. | [optional] |
| **merchant_code** | **String** | Unique identifying code of the merchant profile. | [optional] |
| **description** | **String** | Short description of the checkout visible in the SumUp dashboard. The description can contribute to reporting, allowing easier identification of a checkout. | [optional] |
| **purpose** | **String** | Purpose of the checkout creation initially | [optional] |
| **status** | **String** | Current status of the checkout. | [optional][readonly] |
| **date** | **Time** | Date and time of the creation of the payment checkout. Response format expressed according to [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) code. | [optional][readonly] |
| **valid_until** | **Time** | Date and time of the checkout expiration before which the client application needs to send a processing request. If no value is present, the checkout does not have an expiration time. | [optional][readonly] |
| **merchant_name** | **String** | Merchant name | [optional] |
| **merchant_country** | **String** | The merchant&#39;s country | [optional] |
| **transactions** | [**Array&lt;DeactivateCheckout200ResponseTransactionsInner&gt;**](DeactivateCheckout200ResponseTransactionsInner.md) | List of transactions related to the payment. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeactivateCheckout200Response.new(
  checkout_reference: null,
  id: null,
  amount: null,
  currency: null,
  pay_to_email: null,
  merchant_code: null,
  description: null,
  purpose: null,
  status: null,
  date: 2020-02-29T10:56:56Z,
  valid_until: 2020-02-29T10:56:56Z,
  merchant_name: null,
  merchant_country: null,
  transactions: null
)
```

