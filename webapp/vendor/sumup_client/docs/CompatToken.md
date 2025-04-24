# OpenapiClient::CompatToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  |  |
| **token_type** | **String** |  |  |
| **expires_in** | **Integer** | The TTL of the token in seconds. |  |
| **refresh_token** | **String** |  | [optional] |
| **scope** | **String** | Space separated list of scopes effective for this token. |  |
| **issued_token_type** | **String** |  | [optional] |
| **account_type** | **String** | Type of the account of the user this token was issued for. Present only for internal clients in password flow.  | [optional] |
| **consent_reused** | **Boolean** | Used to support the OAuth2 authorization flow handled by gateway. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CompatToken.new(
  access_token: null,
  token_type: null,
  expires_in: null,
  refresh_token: null,
  scope: null,
  issued_token_type: null,
  account_type: null,
  consent_reused: null
)
```

