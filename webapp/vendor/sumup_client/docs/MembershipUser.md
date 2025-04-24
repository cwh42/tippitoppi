# OpenapiClient::MembershipUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier for the End-User (also called Subject). |  |
| **email** | **String** | End-User&#39;s preferred e-mail address. Its value MUST conform to the RFC 5322 [RFC5322] addr-spec syntax. The RP MUST NOT rely upon this value being unique, for unique identification use ID instead. |  |
| **mfa_on_login_enabled** | **Boolean** | True if the user has enabled MFA on login. |  |
| **virtual_user** | **Boolean** | True if the user is a virtual user (operator). |  |
| **service_account_user** | **Boolean** | True if the user is a service account. |  |
| **disabled_at** | **Time** | Time when the user has been disabled. Applies only to virtual users (&#x60;virtual_user: true&#x60;). | [optional] |
| **nickname** | **String** | User&#39;s preferred name. Used for display purposes only. | [optional] |
| **picture** | **String** | URL of the End-User&#39;s profile picture. This URL refers to an image file (for example, a PNG, JPEG, or GIF image file), rather than to a Web page containing an image. | [optional] |
| **classic** | [**MembershipUserClassic**](MembershipUserClassic.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MembershipUser.new(
  id: 44ca0f5b-813b-46e1-aee7-e6242010662e,
  email: example@sumup.com,
  mfa_on_login_enabled: true,
  virtual_user: false,
  service_account_user: false,
  disabled_at: null,
  nickname: Test User,
  picture: https://usercontent.sumup.com/44ca0f5b-813b-46e1-aee7-e6242010662e.png,
  classic: null
)
```

