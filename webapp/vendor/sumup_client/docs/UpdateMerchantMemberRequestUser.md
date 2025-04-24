# OpenapiClient::UpdateMerchantMemberRequestUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nickname** | **String** | User&#39;s preferred name. Used for display purposes only. | [optional] |
| **password** | **String** | Password of the member to add. Only used if &#x60;is_managed_user&#x60; is true. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateMerchantMemberRequestUser.new(
  nickname: Test User,
  password: null
)
```

