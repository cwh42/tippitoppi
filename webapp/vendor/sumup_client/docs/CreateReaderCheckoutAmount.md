# OpenapiClient::CreateReaderCheckoutAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Integer** | Total amount of the transaction. It must be a positive integer.  |  |
| **currency** | **String** | Currency ISO 4217 code |  |
| **minor_unit** | **Integer** | The minor units of the currency. It represents the number of decimals of the currency. For the currencies CLP, COP and HUF, the minor unit is 0.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateReaderCheckoutAmount.new(
  value: 1000,
  currency: EUR,
  minor_unit: 2
)
```

