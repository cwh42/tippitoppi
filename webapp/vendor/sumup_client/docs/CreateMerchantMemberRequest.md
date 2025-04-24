# OpenapiClient::CreateMerchantMemberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_managed_user** | **Boolean** | True if the user is managed by the merchant. In this case, we&#39;ll created a virtual user with the provided password and nickname. | [optional] |
| **is_service_account** | **Boolean** | True if the user is a service account. It can later be used to create OAuth2 clients. | [optional] |
| **email** | **String** | Email address of the member to add. |  |
| **password** | **String** | Password of the member to add. Only used if &#x60;is_managed_user&#x60; is true. In the case of service accounts, the password is not used and can not be defined by the caller. | [optional] |
| **nickname** | **String** | Nickname of the member to add. Only used if &#x60;is_managed_user&#x60; is true. Used for display purposes only. | [optional] |
| **roles** | **Array&lt;String&gt;** | List of roles to assign to the new member. In the case of service accounts, the roles are predefined. |  |
| **metadata** | **Hash&lt;String, Object&gt;** | Set of user-defined key-value pairs attached to the object. Partial updates are not supported. When updating, always submit whole metadata. | [optional] |
| **attributes** | **Hash&lt;String, Object&gt;** | Object attributes that modifiable only by SumUp applications. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateMerchantMemberRequest.new(
  is_managed_user: null,
  is_service_account: null,
  email: null,
  password: null,
  nickname: Test User,
  roles: null,
  metadata: {},
  attributes: {}
)
```

