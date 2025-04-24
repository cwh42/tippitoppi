# OpenapiClient::Membership

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the membership. |  |
| **resource_id** | **String** | ID of the resource the membership is in. |  |
| **type** | **String** | Type of the resource the membership is in. |  |
| **roles** | **Array&lt;String&gt;** | User&#39;s roles. |  |
| **permissions** | **Array&lt;String&gt;** | User&#39;s permissions. |  |
| **created_at** | **Time** | The timestamp of when the membership was created. |  |
| **updated_at** | **Time** | The timestamp of when the membership was last updated. |  |
| **invite** | [**Invite**](Invite.md) |  | [optional] |
| **status** | [**MembershipStatus**](MembershipStatus.md) |  |  |
| **metadata** | **Hash&lt;String, Object&gt;** | Set of user-defined key-value pairs attached to the object. Partial updates are not supported. When updating, always submit whole metadata. | [optional] |
| **attributes** | **Hash&lt;String, Object&gt;** | Object attributes that modifiable only by SumUp applications. | [optional] |
| **resource** | [**MembershipResource**](MembershipResource.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Membership.new(
  id: mem_WZsm7QTPhVrompscmPhoGTXXcrd58fr9MOhP,
  resource_id: M2DDT39A,
  type: merchant,
  roles: [&quot;role_admin&quot;],
  permissions: [&quot;members_read&quot;,&quot;members_write&quot;,&quot;create_moto_payments&quot;,&quot;full_transaction_history_view&quot;,&quot;refund_transactions&quot;,&quot;create_referral&quot;,&quot;developer_settings_edit&quot;,&quot;developer_settings_access&quot;],
  created_at: 2023-01-20T15:16:17Z,
  updated_at: 2023-01-20T15:16:17Z,
  invite: null,
  status: null,
  metadata: {},
  attributes: {},
  resource: null
)
```

