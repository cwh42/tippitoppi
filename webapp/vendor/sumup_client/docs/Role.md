# OpenapiClient::Role

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the role. |  |
| **name** | **String** | User-defined name of the role. |  |
| **description** | **String** | User-defined description of the role. | [optional] |
| **permissions** | **Array&lt;String&gt;** | List of permission granted by this role. |  |
| **is_predefined** | **Boolean** | True if the role is provided by SumUp. |  |
| **metadata** | **Hash&lt;String, Object&gt;** | Set of user-defined key-value pairs attached to the object. Partial updates are not supported. When updating, always submit whole metadata. | [optional] |
| **created_at** | **Time** | The timestamp of when the role was created. |  |
| **updated_at** | **Time** | The timestamp of when the role was last updated. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Role.new(
  id: role_WZsm7QTPhVrompscmPhoGTXXcrd58fr9MOhP,
  name: Senior Shop Manager II,
  description: Manges the shop and the employees.,
  permissions: [&quot;members_list&quot;,&quot;members_read&quot;,&quot;members_view&quot;,&quot;members_write&quot;,&quot;members_delete&quot;],
  is_predefined: true,
  metadata: {},
  created_at: 2023-01-20T15:16:17Z,
  updated_at: 2023-01-20T15:16:17Z
)
```

