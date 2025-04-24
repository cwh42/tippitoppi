# OpenapiClient::AuthToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | The grant type used for obtaining an access token. |  |
| **client_id** | **String** | The client ID of your application that was generated when you [registered it](https://developer.sumup.com/docs/register-app). |  |
| **client_secret** | **String** | The client secret of your application that was generated when you [registered it](https://developer.sumup.com/docs/register-app). |  |
| **code** | **String** | The authorization code that you received from requesting an authorization code. |  |
| **refresh_token** | **String** | A **required** parameter when generating a refresh token. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuthToken.new(
  grant_type: refresh_token,
  client_id: fOcmczrYtYMJ7Li5GjMLLcUeC9dN,
  client_secret: 717bd571b54297494cd7a79b491e8f2c1da6189c4cc2d3481380e8366eef539c,
  code: be366ce9fccd0c337d1da29b31d06dd1135ab95401562883,
  refresh_token: d180031bfe9bac36c336e5746637810272546865e9c9586012f462a56f3fe9af
)
```

