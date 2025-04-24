# OpenapiClient::Customer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Unique ID of the customer. |  |
| **personal_details** | [**PersonalDetails**](PersonalDetails.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Customer.new(
  customer_id: 831ff8d4cd5958ab5670,
  personal_details: null
)
```

