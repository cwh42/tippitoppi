# OpenapiClient::DeviceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_device_id** | **String** | The device identifier created by the mobile app after installation on the device. This is a UUID although iOS and Android may use different versions.  | [optional] |
| **app_id** | **String** | client id of the app | [optional] |
| **app_version** | **String** | App version of the device | [optional] |
| **name** | **String** | Human readable name of the device. |  |
| **push_token** | **String** | Push token used for sending push notifications  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeviceRequest.new(
  platform_device_id: B87A160D-C9B8-4A25-87B4-A59036AECE61,
  app_id: ios_merchant_app,
  app_version: 2.59.16,
  name: John&#39;s iPhone,
  push_token: 7a8d93b3 2b6c881a 5d71e43e 6b95a7f0 1bfe62c8 f49d5e4c d28be4b8 7ec0a941
)
```

