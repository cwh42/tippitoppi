# OpenapiClient::ReaderDevice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | A unique identifier of the physical device (e.g. serial number). |  |
| **model** | **String** | Identifier of the model of the device. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReaderDevice.new(
  identifier: U1DT3NA00-CN,
  model: solo
)
```

