# OpenapiClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier for the End-User (also called Subject). |  |
| **created_at** | **Time** | Time the End-User was created.  |  |
| **updated_at** | **Time** | Time the End-User&#39;s information was last updated.  |  |
| **blocked_at** | **Time** | Time the End-User was blocked.  | [optional] |
| **email** | **String** | End-User&#39;s preferred e-mail address. Its value MUST conform to the RFC 5322 [RFC5322] addr-spec syntax. The RP MUST NOT rely upon this value being unique, for unique identification use ID instead.  |  |
| **email_verified** | **Boolean** | True if the End-User&#39;s e-mail address has been verified; otherwise false. When this Claim Value is true, this means that the we took affirmative steps to ensure that this e-mail address was controlled by the End-User at the time the verification was performed.  |  |
| **phone_number** | **String** | End-User&#39;s preferred telephone number in [E.164](https://en.wikipedia.org/wiki/E.164) format. For example, +1 (425) 555-1212 or +56 (2) 687 2400. Can be empty if the user doesn&#39;t have phone number set. |  |
| **phone_number_verified** | **Boolean** | True if the End-User&#39;s phone number has been verified; otherwise false. When this Claim Value is true, this means that we took affirmative steps to ensure that this phone number was controlled by the End-User at the time the verification was performed.  |  |
| **attributes** | **Object** | Any additional attributes associated with the user such as parameters present during the signup. | [optional] |
| **locale** | **String** | End-User&#39;s locale, represented as a BCP47 [RFC5646] language tag. This is typically an ISO 639-1 Alpha-2 [ISO639‑1] language code in lowercase and an ISO 3166-1 Alpha-2 [ISO3166‑1] country code in uppercase, separated by a dash. For example, en-US or fr-CA.  | [optional] |
| **tos_acceptance** | [**ToSAcceptance**](ToSAcceptance.md) |  | [optional] |
| **marketing_consent** | **Boolean** | True if the user has given consent to marketing communication. **This is only valid on user creation. Identity does not store or track the consent over time, should the user for example choose to revoke.**  | [readonly] |
| **zoneinfo** | **String** | String from zoneinfo time zone database representing the user&#39;s time zone. | [optional] |
| **name** | **String** | End-User&#39;s full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the End-User&#39;s locale and preferences. | [optional] |
| **nickname** | **String** | Casual name of the End-User that may or may not be the same as the given_name. For instance, a nickname value of Mike might be returned alongside a given_name value of Michael. | [optional] |
| **given_name** | **String** | Given name(s) or first name(s) of the End-User. Note that in some cultures, people can have multiple given names; all can be present, with the names being separated by space characters. | [optional] |
| **middle_name** | **String** | Middle name(s) of the End-User. Note that in some cultures, people can have multiple middle names; all can be present, with the names being separated by space characters. Also note that in some cultures, middle names are not used. | [optional] |
| **family_name** | **String** | Surname(s) or last name(s) of the End-User. Note that in some cultures, people can have multiple family names or no family name; all can be present, with the names being separated by space characters. | [optional] |
| **gender** | **String** | End-User&#39;s gender. Values defined by this specification are female and male. Other values MAY be used when neither of the defined values are applicable. | [optional] |
| **birthdate** | **Time** | End-User&#39;s birthday, represented as an ISO 8601:2004 [ISO8601‑2004] YYYY-MM-DD format. | [optional] |
| **address** | [**Address**](Address.md) |  | [optional] |
| **mfa_on_login_enabled** | **Boolean** | True if the End-User&#39;s wants to enabled MFA on login, false otherwise.  |  |
| **mfa_disabled** | **Boolean** | True if the End-User&#39;s wants to disable MFA completely, false otherwise.  |  |
| **password_updated_at** | **Time** | Time the End-User&#39;s password was last updated.  | [optional] |
| **picture** | **String** | URL of the End-User&#39;s profile picture. This URL refers to an image file (for example, a PNG, JPEG, or GIF image file), rather than to a Web page containing an image.  | [optional] |
| **is_virtual** | **Boolean** | Indicates whether a user is a managed user. Managed users are team members for which the owner of the merchant has set the password. These users have not gone through an invitation flow and cannot own merchants of their own or be invited to other merchants.  |  |
| **is_service_account** | **Boolean** | Indicates whether a user is a service account.  | [optional] |
| **feature_previews** | **Hash&lt;String, Boolean&gt;** | Experimental features that the user has enabled for themselves.  | [optional] |
| **color_scheme_preference** | **String** | User&#39;s preference for the color scheme.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::User.new(
  id: 44ca0f5b-813b-46e1-aee7-e6242010662e,
  created_at: 2022-05-03T14:46:44.185202Z,
  updated_at: 2022-05-03T14:46:44.185202Z,
  blocked_at: 2022-05-03T14:46:44.185202Z,
  email: example@sumup.com,
  email_verified: true,
  phone_number: +55115525632555,
  phone_number_verified: true,
  attributes: null,
  locale: de-AT,
  tos_acceptance: null,
  marketing_consent: true,
  zoneinfo: Europe/Paris,
  name: Anna Maria Sophie Müller,
  nickname: An,
  given_name: Anna,
  middle_name: Maria Sophie,
  family_name: Müller,
  gender: female,
  birthdate: null,
  address: null,
  mfa_on_login_enabled: true,
  mfa_disabled: true,
  password_updated_at: 2022-05-03T14:46:44.185202Z,
  picture: https://usercontent.sumup.com/u/44ca0f5b-813b-46e1-aee7-e6242010662e.png,
  is_virtual: false,
  is_service_account: false,
  feature_previews: {&quot;passkeys&quot;:true,&quot;dark_mode&quot;:true},
  color_scheme_preference: system
)
```

