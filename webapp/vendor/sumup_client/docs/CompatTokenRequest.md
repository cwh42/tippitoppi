# OpenapiClient::CompatTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** |  | [optional] |
| **client_id** | **String** |  | [optional] |
| **client_secret** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **password** | **String** |  | [optional] |
| **refresh_token** | **String** |  | [optional] |
| **subject_token** | **String** |  | [optional] |
| **subject_token_type** | **String** |  | [optional] |
| **scope** | **String** | Space separated list of requested scopes. | [optional] |
| **hashed** | **Boolean** | Hashed is used by legacy applications (notably cube) to submit the password in the password flow in pre-hashed format (the password is md5 hashed on the client and submitted in such format).  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CompatTokenRequest.new(
  grant_type: null,
  client_id: null,
  client_secret: null,
  code: null,
  username: null,
  password: correct horse batter staple,
  refresh_token: null,
  subject_token: null,
  subject_token_type: null,
  scope: null,
  hashed: null
)
```

