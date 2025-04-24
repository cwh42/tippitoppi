# OpenapiClient::BankAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_code** | **String** | Bank code | [optional] |
| **branch_code** | **String** | Branch code | [optional] |
| **swift** | **String** | SWIFT code | [optional] |
| **account_number** | **String** | Account number | [optional] |
| **iban** | **String** | IBAN | [optional] |
| **account_type** | **String** | Type of the account | [optional] |
| **account_category** | **String** | Account category - business or personal | [optional] |
| **account_holder_name** | **String** |  | [optional] |
| **status** | **String** | Status in the verification process | [optional] |
| **primary** | **Boolean** | The primary bank account is the one used for payouts | [optional] |
| **created_at** | **String** | Creation date of the bank account | [optional] |
| **bank_name** | **String** | Bank name | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BankAccount.new(
  bank_code: null,
  branch_code: null,
  swift: null,
  account_number: null,
  iban: null,
  account_type: null,
  account_category: null,
  account_holder_name: null,
  status: null,
  primary: null,
  created_at: null,
  bank_name: null
)
```

