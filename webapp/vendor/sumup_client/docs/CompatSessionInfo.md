# OpenapiClient::CompatSessionInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | The provided access token. |  |
| **legacy_token** | **String** | Same value as the &#x60;access_token&#x60; field. Exists for compatibility reasons. |  |
| **merchant_code** | **String** | The merchant code of the merchant the user is currently logged in to. | [optional] |
| **scope** | **String** | Space separated list of the scopes the token authorizes the user for |  |
| **client_id** | **String** | The client id of the client the token was issued for. |  |
| **user_id** | **Integer** | The user id of the user the token was issued for. | [optional] |
| **merchant_id** | **Integer** | The merchant id of the merchant the user is currently logged in to. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CompatSessionInfo.new(
  access_token: null,
  legacy_token: null,
  merchant_code: null,
  scope: null,
  client_id: null,
  user_id: null,
  merchant_id: null
)
```

