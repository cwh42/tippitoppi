# OpenapiClient::BankAccountPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_code** | **String** | Bank code | [optional] |
| **branch_code** | **String** | Branch code | [optional] |
| **account_number** | **String** | Account number | [optional] |
| **iban** | **String** | IBAN |  |
| **swift** | **String** | SWIFT code |  |
| **account_type** | **String** | Type of the account. | [optional] |
| **account_holder_name** | **String** | Account holder name |  |
| **check_digit** | **String** | Check digit | [optional] |
| **primary** | **Boolean** | Determines if this bank account will be primary. Default is false | [optional] |
| **status** | **String** | Determines the bank account status. | [optional] |
| **account_category** | **String** | Determines if this bank account is business or personal. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BankAccountPayload.new(
  bank_code: null,
  branch_code: null,
  account_number: null,
  iban: null,
  swift: null,
  account_type: null,
  account_holder_name: null,
  check_digit: null,
  primary: null,
  status: null,
  account_category: null
)
```

