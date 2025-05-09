# OpenapiClient::Affiliate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | Application ID of the affiliate. It is a unique identifier for the application and should be set by the integrator in the [Affiliate Keys](https://developer.sumup.com/affiliate-keys) page.  |  |
| **key** | **String** | Key of the affiliate. It is a unique identifier for the key  and should be generated by the integrator in the [Affiliate Keys](https://developer.sumup.com/affiliate-keys) page.  |  |
| **foreign_transaction_id** | **String** | Foreign transaction ID of the affiliate. It is a unique identifier for the transaction. It can be used later to fetch the transaction details via the [Transactions API](https://developer.sumup.com/api/transactions/get).  |  |
| **tags** | **Hash&lt;String, Object&gt;** | Additional metadata for the transaction. It is key-value object that can be associated with the transaction.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Affiliate.new(
  app_id: com.example.app,
  key: 123e4567-e89b-12d3-a456-426614174000,
  foreign_transaction_id: 123456,
  tags: {}
)
```

