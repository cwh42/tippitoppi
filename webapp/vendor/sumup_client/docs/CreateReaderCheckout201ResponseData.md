# OpenapiClient::CreateReaderCheckout201ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_transaction_id** | **String** | The client transaction ID is a unique identifier for the transaction that is generated for the client. It can be used later to fetch the transaction details via the [Transactions API](https://developer.sumup.com/api/transactions/get).  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateReaderCheckout201ResponseData.new(
  client_transaction_id: 123e4567-e89b-12d3-a456-426614174000
)
```

