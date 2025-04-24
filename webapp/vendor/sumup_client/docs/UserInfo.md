# OpenapiClient::UserInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_code** | **String** |  | [optional] |
| **user_id** | **Integer** |  | [optional] |
| **merchant_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UserInfo.new(
  merchant_code: MC0X0ABC,
  user_id: 1234,
  merchant_id: 1111
)
```

