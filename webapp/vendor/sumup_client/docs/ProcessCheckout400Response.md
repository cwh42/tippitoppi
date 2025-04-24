# OpenapiClient::ProcessCheckout400Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::ProcessCheckout400Response.openapi_one_of
# =>
# [
#   :'Array<ErrorExtended>',
#   :'ErrorExtended'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::ProcessCheckout400Response.build(data)
# => #<Array<ErrorExtended>:0x00007fdd4aab02a0>

OpenapiClient::ProcessCheckout400Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<ErrorExtended>`
- `ErrorExtended`
- `nil` (if no type matches)

