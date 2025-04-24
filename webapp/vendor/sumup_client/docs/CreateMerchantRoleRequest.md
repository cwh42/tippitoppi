# OpenapiClient::CreateMerchantRoleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | User-defined name of the role. |  |
| **permissions** | **Array&lt;String&gt;** | User&#39;s permissions. |  |
| **metadata** | **Hash&lt;String, Object&gt;** | Set of user-defined key-value pairs attached to the object. Partial updates are not supported. When updating, always submit whole metadata. | [optional] |
| **description** | **String** | User-defined description of the role. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateMerchantRoleRequest.new(
  name: Senior Shop Manager II,
  permissions: [&quot;members_list&quot;,&quot;members_read&quot;,&quot;members_view&quot;,&quot;members_write&quot;,&quot;members_delete&quot;],
  metadata: {},
  description: Manges the shop and the employees.
)
```

