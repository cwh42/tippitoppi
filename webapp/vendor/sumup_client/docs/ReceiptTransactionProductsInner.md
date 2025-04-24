# OpenapiClient::ReceiptTransactionProductsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Product name. | [optional] |
| **description** | **String** | Product description. | [optional] |
| **price** | **Float** | Product price. | [optional] |
| **quantity** | **Integer** | Product quantity. | [optional] |
| **total_price** | **Float** | Quantity x product price. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReceiptTransactionProductsInner.new(
  name: null,
  description: null,
  price: null,
  quantity: null,
  total_price: null
)
```

