# OpenapiClient::Card

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the cardholder as it appears on the payment card. |  |
| **number** | **String** | Number of the payment card (without spaces). |  |
| **expiry_year** | **String** | Year from the expiration time of the payment card. Accepted formats are &#x60;YY&#x60; and &#x60;YYYY&#x60;. |  |
| **expiry_month** | **String** | Month from the expiration time of the payment card. Accepted format is &#x60;MM&#x60;. |  |
| **cvv** | **String** | Three or four-digit card verification value (security code) of the payment card. |  |
| **zip_code** | **String** | Required five-digit ZIP code. Applicable only to merchant users in the USA. | [optional] |
| **last_4_digits** | **String** | Last 4 digits of the payment card number. | [readonly] |
| **type** | **String** | Issuing card network of the payment card. | [readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Card.new(
  name: FIRSTNAME LASTNAME,
  number: 1234567890123456,
  expiry_year: 2023,
  expiry_month: null,
  cvv: 123,
  zip_code: 12345,
  last_4_digits: 3456,
  type: null
)
```

