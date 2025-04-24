# OpenapiClient::CreateReaderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pairing_code** | **String** | The pairing code is a 8 or 9 character alphanumeric string that is displayed on a SumUp Device after initiating the pairing. It is used to link the physical device to the created pairing. |  |
| **name** | **String** | Custom human-readable, user-defined name for easier identification of the reader. | [optional] |
| **meta** | **Hash&lt;String, Object&gt;** | Set of user-defined key-value pairs attached to the object. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateReaderRequest.new(
  pairing_code: 4WLFDSBF,
  name: Frontdesk,
  meta: {}
)
```

