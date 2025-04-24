# OpenapiClient::UpdateMerchantRoleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | User-defined name of the role. | [optional] |
| **permissions** | **Array&lt;String&gt;** | User&#39;s permissions. | [optional] |
| **description** | **String** | User-defined description of the role. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateMerchantRoleRequest.new(
  name: Senior Shop Manager II,
  permissions: [&quot;members_list&quot;,&quot;members_read&quot;,&quot;members_view&quot;,&quot;members_write&quot;,&quot;members_delete&quot;],
  description: Manges the shop and the employees.
)
```

