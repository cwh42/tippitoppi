# OpenapiClient::Product

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the product from the merchant&#39;s catalog. | [optional] |
| **price** | **Float** | Price of the product without VAT. | [optional] |
| **vat_rate** | **Float** | VAT rate applicable to the product. | [optional] |
| **single_vat_amount** | **Float** | Amount of the VAT for a single product item (calculated as the product of &#x60;price&#x60; and &#x60;vat_rate&#x60;, i.e. &#x60;single_vat_amount &#x3D; price * vat_rate&#x60;). | [optional] |
| **price_with_vat** | **Float** | Price of a single product item with VAT. | [optional] |
| **vat_amount** | **Float** | Total VAT amount for the purchase (calculated as the product of &#x60;single_vat_amount&#x60; and &#x60;quantity&#x60;, i.e. &#x60;vat_amount &#x3D; single_vat_amount * quantity&#x60;). | [optional] |
| **quantity** | **Float** | Number of product items for the purchase. | [optional] |
| **total_price** | **Float** | Total price of the product items without VAT (calculated as the product of &#x60;price&#x60; and &#x60;quantity&#x60;, i.e. &#x60;total_price &#x3D; price * quantity&#x60;). | [optional] |
| **total_with_vat** | **Float** | Total price of the product items including VAT (calculated as the product of &#x60;price_with_vat&#x60; and &#x60;quantity&#x60;, i.e. &#x60;total_with_vat &#x3D; price_with_vat * quantity&#x60;). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Product.new(
  name: null,
  price: null,
  vat_rate: null,
  single_vat_amount: null,
  price_with_vat: null,
  vat_amount: null,
  quantity: null,
  total_price: null,
  total_with_vat: null
)
```

