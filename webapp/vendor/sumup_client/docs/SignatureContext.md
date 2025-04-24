# OpenapiClient::SignatureContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body_digest** | **String** |  | [optional] |
| **meta** | **Object** | Application-specific data provided by the signer which should be used when authorizing request together with &#x60;body_digest&#x60;. | [optional] |
| **amr** | **Array&lt;String&gt;** | Method used to authenticate the requester when obtaining the signature. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SignatureContext.new(
  body_digest: null,
  meta: null,
  amr: [&quot;otp&quot;]
)
```

