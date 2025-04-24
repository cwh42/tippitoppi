# OpenapiClient::Device

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the device. The ID is generated on the backend on device creation. It is not to be confused with the &#x60;platform_device_id&#x60;.  |  |
| **platform_device_id** | **String** | The device identifier created by the mobile app after installation on the device. This is a UUID although iOS and Android may use different versions.  | [optional] |
| **app_id** | **String** | The client application&#39;s identifier. | [optional] |
| **app_version** | **String** | The client application&#39;s reported version. Not to confuse with the device operating system version. | [optional] |
| **name** | **String** | A human readable name for the device. In case of mobile phone&#39;s, it may be a name recognizable to the owner of the device. |  |
| **push_token** | **String** | Push token used for sending push notifications  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Device.new(
  id: 55E996A4-7F5E-44C2-B29A-869DE8A82A8A,
  platform_device_id: B87A160D-C9B8-4A25-87B4-A59036AECE61,
  app_id: ios_merchant_app,
  app_version: null,
  name: null,
  push_token: 7a8d93b3 2b6c881a 5d71e43e 6b95a7f0 1bfe62c8 f49d5e4c d28be4b8 7ec0a941,
  created_at: null,
  updated_at: null
)
```

