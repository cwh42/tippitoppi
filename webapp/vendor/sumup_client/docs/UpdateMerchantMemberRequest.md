# OpenapiClient::UpdateMerchantMemberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **roles** | **Array&lt;String&gt;** |  | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Set of user-defined key-value pairs attached to the object. Partial updates are not supported. When updating, always submit whole metadata. | [optional] |
| **attributes** | **Hash&lt;String, Object&gt;** | Object attributes that modifiable only by SumUp applications. | [optional] |
| **user** | [**UpdateMerchantMemberRequestUser**](UpdateMerchantMemberRequestUser.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateMerchantMemberRequest.new(
  roles: null,
  metadata: {},
  attributes: {},
  user: null
)
```

