# OpenapiClient::Reader

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the object. Note that this identifies the instance of the physical devices pairing with your SumUp account. If you DELETE a reader, and pair the device again, the ID will be different. Do not use this ID to refer to a physical device. |  |
| **name** | **String** | Custom human-readable, user-defined name for easier identification of the reader. |  |
| **status** | [**ReaderStatus**](ReaderStatus.md) |  |  |
| **device** | [**ReaderDevice**](ReaderDevice.md) |  |  |
| **meta** | **Hash&lt;String, Object&gt;** | Set of user-defined key-value pairs attached to the object. | [optional] |
| **created_at** | **Time** | The timestamp of when the reader was created. |  |
| **updated_at** | **Time** | The timestamp of when the reader was last updated. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Reader.new(
  id: rdr_3MSAFM23CK82VSTT4BN6RWSQ65,
  name: Frontdesk,
  status: null,
  device: null,
  meta: {},
  created_at: 2023-01-18T15:16:17Z,
  updated_at: 2023-01-20T15:16:17Z
)
```

