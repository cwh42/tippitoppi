# OpenapiClient::MembershipResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the resource the membership is in. |  |
| **type** | **Hash&lt;String, String&gt;** |  |  |
| **name** | **String** | Display name of the resource. |  |
| **logo** | **String** | Logo fo the resource. | [optional] |
| **created_at** | **Time** | The timestamp of when the membership resource was created. |  |
| **updated_at** | **Time** | The timestamp of when the membership resource was last updated. |  |
| **attributes** | **Hash&lt;String, Object&gt;** | Object attributes that modifiable only by SumUp applications. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MembershipResource.new(
  id: M2DDT39A,
  type: merchant,
  name: Acme Corp,
  logo: https://images.sumup.com/img_2x4y6z8a0b1c2d3e4f5g6h7j8k.png,
  created_at: 2023-01-20T15:16:17Z,
  updated_at: 2023-01-20T15:16:17Z,
  attributes: {}
)
```

