# OpenapiClient::AuthorizationContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** |  |  |
| **scp** | **Array&lt;String&gt;** |  |  |
| **ext** | [**AuthorizationContextExt**](AuthorizationContextExt.md) |  | [optional] |
| **sub** | **String** |  | [optional] |
| **aud** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuthorizationContext.new(
  client_id: null,
  scp: null,
  ext: null,
  sub: null,
  aud: null
)
```

