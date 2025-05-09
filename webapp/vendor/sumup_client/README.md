# openapi_client

OpenapiClient - the Ruby gem for the SumUp REST API

SumUp’s REST API operates with [JSON](https://www.json.org/json-en.html) HTTP requests and responses. The request bodies are sent through resource-oriented URLs and use the standard [HTTP response codes](https://developer.mozilla.org/docs/Web/HTTP/Status).

You can experiment and work on your integration in a sandbox that doesn't affect your regular data and doesn't process real transactions. To create a sandbox merchant account visit the [dashboard](https://me.sumup.com/settings/developer). To use the sandbox when interacting with SumUp APIs [create an API](https://me.sumup.com/settings/api-keys) key and use it for [authentication](https://developer.sumup.com/api/authentication).


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Generator version: 7.9.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: apiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end

api_instance = OpenapiClient::CheckoutsApi.new
opts = {
  checkout_create_request: OpenapiClient::CheckoutCreateRequest.new({checkout_reference: 'checkout_reference_example', amount: 3.56, currency: OpenapiClient::Currency::BGN, merchant_code: 'merchant_code_example'}) # CheckoutCreateRequest | 
}

begin
  #Create a checkout
  result = api_instance.create_checkout(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CheckoutsApi->create_checkout: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.sumup.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::CheckoutsApi* | [**create_checkout**](docs/CheckoutsApi.md#create_checkout) | **POST** /v0.1/checkouts | Create a checkout
*OpenapiClient::CheckoutsApi* | [**deactivate_checkout**](docs/CheckoutsApi.md#deactivate_checkout) | **DELETE** /v0.1/checkouts/{id} | Deactivate a checkout
*OpenapiClient::CheckoutsApi* | [**get_checkout**](docs/CheckoutsApi.md#get_checkout) | **GET** /v0.1/checkouts/{id} | Retrieve a checkout
*OpenapiClient::CheckoutsApi* | [**get_payment_methods**](docs/CheckoutsApi.md#get_payment_methods) | **GET** /v0.1/merchants/{merchant_code}/payment-methods | Get available payment methods
*OpenapiClient::CheckoutsApi* | [**list_checkouts**](docs/CheckoutsApi.md#list_checkouts) | **GET** /v0.1/checkouts | List checkouts
*OpenapiClient::CheckoutsApi* | [**process_checkout**](docs/CheckoutsApi.md#process_checkout) | **PUT** /v0.1/checkouts/{id} | Process a checkout
*OpenapiClient::CustomersApi* | [**create_customer**](docs/CustomersApi.md#create_customer) | **POST** /v0.1/customers | Create a customer
*OpenapiClient::CustomersApi* | [**deactivate_payment_instrument**](docs/CustomersApi.md#deactivate_payment_instrument) | **DELETE** /v0.1/customers/{customer_id}/payment-instruments/{token} | Deactivate a payment instrument
*OpenapiClient::CustomersApi* | [**get_customer**](docs/CustomersApi.md#get_customer) | **GET** /v0.1/customers/{customer_id} | Retrieve a customer
*OpenapiClient::CustomersApi* | [**list_payment_instruments**](docs/CustomersApi.md#list_payment_instruments) | **GET** /v0.1/customers/{customer_id}/payment-instruments | List payment instruments
*OpenapiClient::CustomersApi* | [**update_customer**](docs/CustomersApi.md#update_customer) | **PUT** /v0.1/customers/{customer_id} | Update a customer
*OpenapiClient::MembersApi* | [**create_merchant_member**](docs/MembersApi.md#create_merchant_member) | **POST** /v0.1/merchants/{merchant_code}/members | Create a member
*OpenapiClient::MembersApi* | [**delete_merchant_member**](docs/MembersApi.md#delete_merchant_member) | **DELETE** /v0.1/merchants/{merchant_code}/members/{member_id} | Delete a member
*OpenapiClient::MembersApi* | [**get_merchant_member**](docs/MembersApi.md#get_merchant_member) | **GET** /v0.1/merchants/{merchant_code}/members/{member_id} | Retrieve a member
*OpenapiClient::MembersApi* | [**list_merchant_members**](docs/MembersApi.md#list_merchant_members) | **GET** /v0.1/merchants/{merchant_code}/members | List members
*OpenapiClient::MembersApi* | [**update_merchant_member**](docs/MembersApi.md#update_merchant_member) | **PUT** /v0.1/merchants/{merchant_code}/members/{member_id} | Update a member
*OpenapiClient::MembershipsApi* | [**list_memberships**](docs/MembershipsApi.md#list_memberships) | **GET** /v0.1/memberships | List memberships
*OpenapiClient::MerchantApi* | [**get_account**](docs/MerchantApi.md#get_account) | **GET** /v0.1/me | Retrieve a profile
*OpenapiClient::MerchantApi* | [**get_doing_business_as**](docs/MerchantApi.md#get_doing_business_as) | **GET** /v0.1/me/merchant-profile/doing-business-as | Retrieve DBA
*OpenapiClient::MerchantApi* | [**get_merchant_profile**](docs/MerchantApi.md#get_merchant_profile) | **GET** /v0.1/me/merchant-profile | Retrieve a merchant profile
*OpenapiClient::MerchantApi* | [**get_personal_profile**](docs/MerchantApi.md#get_personal_profile) | **GET** /v0.1/me/personal-profile | Retrieve a personal profile
*OpenapiClient::MerchantApi* | [**get_settings**](docs/MerchantApi.md#get_settings) | **GET** /v0.1/me/merchant-profile/settings | Get settings
*OpenapiClient::MerchantApi* | [**list_bank_accounts**](docs/MerchantApi.md#list_bank_accounts) | **GET** /v0.1/me/merchant-profile/bank-accounts | List bank accounts
*OpenapiClient::MerchantApi* | [**list_bank_accounts_v11**](docs/MerchantApi.md#list_bank_accounts_v11) | **GET** /v1.1/merchants/{merchant_code}/bank-accounts | List bank accounts
*OpenapiClient::PayoutsApi* | [**list_payouts**](docs/PayoutsApi.md#list_payouts) | **GET** /v0.1/me/financials/payouts | List payouts
*OpenapiClient::PayoutsApi* | [**list_payouts_v1**](docs/PayoutsApi.md#list_payouts_v1) | **GET** /v1.0/merchants/{merchant_code}/payouts | List payouts
*OpenapiClient::ReadersApi* | [**create_reader**](docs/ReadersApi.md#create_reader) | **POST** /v0.1/merchants/{merchant_code}/readers | Create a Reader
*OpenapiClient::ReadersApi* | [**create_reader_checkout**](docs/ReadersApi.md#create_reader_checkout) | **POST** /v0.1/merchants/{merchant_code}/readers/{id}/checkout | Create a Reader Checkout
*OpenapiClient::ReadersApi* | [**create_reader_terminate**](docs/ReadersApi.md#create_reader_terminate) | **POST** /v0.1/merchants/{merchant_code}/readers/{id}/terminate | Create a Reader Terminate action
*OpenapiClient::ReadersApi* | [**delete_reader**](docs/ReadersApi.md#delete_reader) | **DELETE** /v0.1/merchants/{merchant_code}/readers/{id} | Delete a reader
*OpenapiClient::ReadersApi* | [**get_reader**](docs/ReadersApi.md#get_reader) | **GET** /v0.1/merchants/{merchant_code}/readers/{id} | Retrieve a Reader
*OpenapiClient::ReadersApi* | [**list_readers**](docs/ReadersApi.md#list_readers) | **GET** /v0.1/merchants/{merchant_code}/readers | List Readers
*OpenapiClient::ReadersApi* | [**update_reader**](docs/ReadersApi.md#update_reader) | **PATCH** /v0.1/merchants/{merchant_code}/readers/{id} | Update a Reader
*OpenapiClient::ReceiptsApi* | [**get_receipt**](docs/ReceiptsApi.md#get_receipt) | **GET** /v1.1/receipts/{id} | Retrieve receipt details
*OpenapiClient::RolesApi* | [**create_merchant_role**](docs/RolesApi.md#create_merchant_role) | **POST** /v0.1/merchants/{merchant_code}/roles | Create a role
*OpenapiClient::RolesApi* | [**delete_merchant_role**](docs/RolesApi.md#delete_merchant_role) | **DELETE** /v0.1/merchants/{merchant_code}/roles/{role_id} | Delete a role
*OpenapiClient::RolesApi* | [**get_merchant_role**](docs/RolesApi.md#get_merchant_role) | **GET** /v0.1/merchants/{merchant_code}/roles/{role_id} | Retrieve a role
*OpenapiClient::RolesApi* | [**list_merchant_roles**](docs/RolesApi.md#list_merchant_roles) | **GET** /v0.1/merchants/{merchant_code}/roles | List roles
*OpenapiClient::RolesApi* | [**update_merchant_role**](docs/RolesApi.md#update_merchant_role) | **PATCH** /v0.1/merchants/{merchant_code}/roles/{role_id} | Update a role
*OpenapiClient::SubaccountsApi* | [**compat_get_operator**](docs/SubaccountsApi.md#compat_get_operator) | **GET** /v0.1/me/accounts/{operator_id} | Retrieve an operator
*OpenapiClient::SubaccountsApi* | [**create_sub_account**](docs/SubaccountsApi.md#create_sub_account) | **POST** /v0.1/me/accounts | Create an operator
*OpenapiClient::SubaccountsApi* | [**deactivate_sub_account**](docs/SubaccountsApi.md#deactivate_sub_account) | **DELETE** /v0.1/me/accounts/{operator_id} | Disable an operator
*OpenapiClient::SubaccountsApi* | [**list_sub_accounts**](docs/SubaccountsApi.md#list_sub_accounts) | **GET** /v0.1/me/accounts | List operators
*OpenapiClient::SubaccountsApi* | [**update_sub_account**](docs/SubaccountsApi.md#update_sub_account) | **PUT** /v0.1/me/accounts/{operator_id} | Update an operator
*OpenapiClient::TransactionsApi* | [**get_transaction**](docs/TransactionsApi.md#get_transaction) | **GET** /v0.1/me/transactions | Retrieve a transaction
*OpenapiClient::TransactionsApi* | [**get_transaction_v2_1**](docs/TransactionsApi.md#get_transaction_v2_1) | **GET** /v2.1/merchants/{merchant_code}/transactions | Retrieve a transaction
*OpenapiClient::TransactionsApi* | [**list_transactions**](docs/TransactionsApi.md#list_transactions) | **GET** /v0.1/me/transactions/history | List transactions
*OpenapiClient::TransactionsApi* | [**list_transactions_v2_1**](docs/TransactionsApi.md#list_transactions_v2_1) | **GET** /v2.1/merchants/{merchant_code}/transactions/history | List transactions
*OpenapiClient::TransactionsApi* | [**refund_transaction**](docs/TransactionsApi.md#refund_transaction) | **POST** /v0.1/me/refund/{txn_id} | Refund a transaction


## Documentation for Models

 - [OpenapiClient::Account](docs/Account.md)
 - [OpenapiClient::Address](docs/Address.md)
 - [OpenapiClient::AddressPayload](docs/AddressPayload.md)
 - [OpenapiClient::AddressWithDetails](docs/AddressWithDetails.md)
 - [OpenapiClient::Affiliate](docs/Affiliate.md)
 - [OpenapiClient::AppSettings](docs/AppSettings.md)
 - [OpenapiClient::AuthCode](docs/AuthCode.md)
 - [OpenapiClient::AuthToken](docs/AuthToken.md)
 - [OpenapiClient::AuthorizationContext](docs/AuthorizationContext.md)
 - [OpenapiClient::AuthorizationContextExt](docs/AuthorizationContextExt.md)
 - [OpenapiClient::BankAccount](docs/BankAccount.md)
 - [OpenapiClient::BankAccountPayload](docs/BankAccountPayload.md)
 - [OpenapiClient::BusinessOwnersInner](docs/BusinessOwnersInner.md)
 - [OpenapiClient::Card](docs/Card.md)
 - [OpenapiClient::CardResponse](docs/CardResponse.md)
 - [OpenapiClient::Checkout](docs/Checkout.md)
 - [OpenapiClient::CheckoutAccepted](docs/CheckoutAccepted.md)
 - [OpenapiClient::CheckoutAcceptedNextStep](docs/CheckoutAcceptedNextStep.md)
 - [OpenapiClient::CheckoutAcceptedNextStepPayload](docs/CheckoutAcceptedNextStepPayload.md)
 - [OpenapiClient::CheckoutCreateRequest](docs/CheckoutCreateRequest.md)
 - [OpenapiClient::CheckoutProcessMixin](docs/CheckoutProcessMixin.md)
 - [OpenapiClient::CheckoutSuccess](docs/CheckoutSuccess.md)
 - [OpenapiClient::CheckoutSuccessAllOfPaymentInstrument](docs/CheckoutSuccessAllOfPaymentInstrument.md)
 - [OpenapiClient::CheckoutSuccessToken](docs/CheckoutSuccessToken.md)
 - [OpenapiClient::ClassicContext](docs/ClassicContext.md)
 - [OpenapiClient::CompatError](docs/CompatError.md)
 - [OpenapiClient::CompatIntrospectionError](docs/CompatIntrospectionError.md)
 - [OpenapiClient::CompatSessionInfo](docs/CompatSessionInfo.md)
 - [OpenapiClient::CompatToken](docs/CompatToken.md)
 - [OpenapiClient::CompatTokenRequest](docs/CompatTokenRequest.md)
 - [OpenapiClient::CountryDetails](docs/CountryDetails.md)
 - [OpenapiClient::CreateMerchantMemberRequest](docs/CreateMerchantMemberRequest.md)
 - [OpenapiClient::CreateMerchantRoleRequest](docs/CreateMerchantRoleRequest.md)
 - [OpenapiClient::CreateReaderCheckout](docs/CreateReaderCheckout.md)
 - [OpenapiClient::CreateReaderCheckout201Response](docs/CreateReaderCheckout201Response.md)
 - [OpenapiClient::CreateReaderCheckout201ResponseData](docs/CreateReaderCheckout201ResponseData.md)
 - [OpenapiClient::CreateReaderCheckout400Response](docs/CreateReaderCheckout400Response.md)
 - [OpenapiClient::CreateReaderCheckout400ResponseErrors](docs/CreateReaderCheckout400ResponseErrors.md)
 - [OpenapiClient::CreateReaderCheckout422Response](docs/CreateReaderCheckout422Response.md)
 - [OpenapiClient::CreateReaderCheckout500Response](docs/CreateReaderCheckout500Response.md)
 - [OpenapiClient::CreateReaderCheckout500ResponseErrors](docs/CreateReaderCheckout500ResponseErrors.md)
 - [OpenapiClient::CreateReaderCheckout502Response](docs/CreateReaderCheckout502Response.md)
 - [OpenapiClient::CreateReaderCheckout502ResponseErrors](docs/CreateReaderCheckout502ResponseErrors.md)
 - [OpenapiClient::CreateReaderCheckout504Response](docs/CreateReaderCheckout504Response.md)
 - [OpenapiClient::CreateReaderCheckout504ResponseErrors](docs/CreateReaderCheckout504ResponseErrors.md)
 - [OpenapiClient::CreateReaderCheckoutAmount](docs/CreateReaderCheckoutAmount.md)
 - [OpenapiClient::CreateReaderRequest](docs/CreateReaderRequest.md)
 - [OpenapiClient::CreateSubAccountRequest](docs/CreateSubAccountRequest.md)
 - [OpenapiClient::CreateSubAccountRequestPermissions](docs/CreateSubAccountRequestPermissions.md)
 - [OpenapiClient::Currency](docs/Currency.md)
 - [OpenapiClient::Customer](docs/Customer.md)
 - [OpenapiClient::DeactivateCheckout200Response](docs/DeactivateCheckout200Response.md)
 - [OpenapiClient::DeactivateCheckout200ResponseTransactionsInner](docs/DeactivateCheckout200ResponseTransactionsInner.md)
 - [OpenapiClient::DetailsError](docs/DetailsError.md)
 - [OpenapiClient::DetailsErrorFailedConstraintsInner](docs/DetailsErrorFailedConstraintsInner.md)
 - [OpenapiClient::Device](docs/Device.md)
 - [OpenapiClient::DeviceRequest](docs/DeviceRequest.md)
 - [OpenapiClient::DoingBusinessAs](docs/DoingBusinessAs.md)
 - [OpenapiClient::DoingBusinessAsAddress](docs/DoingBusinessAsAddress.md)
 - [OpenapiClient::DoingBusinessAsPayload](docs/DoingBusinessAsPayload.md)
 - [OpenapiClient::Error](docs/Error.md)
 - [OpenapiClient::ErrorExtended](docs/ErrorExtended.md)
 - [OpenapiClient::ErrorForbidden](docs/ErrorForbidden.md)
 - [OpenapiClient::Event](docs/Event.md)
 - [OpenapiClient::EventStatus](docs/EventStatus.md)
 - [OpenapiClient::EventType](docs/EventType.md)
 - [OpenapiClient::FinancialPayoutsInner](docs/FinancialPayoutsInner.md)
 - [OpenapiClient::GetPaymentMethods200Response](docs/GetPaymentMethods200Response.md)
 - [OpenapiClient::GetPaymentMethods200ResponseAvailablePaymentMethodsInner](docs/GetPaymentMethods200ResponseAvailablePaymentMethodsInner.md)
 - [OpenapiClient::Invite](docs/Invite.md)
 - [OpenapiClient::LegacyOTP](docs/LegacyOTP.md)
 - [OpenapiClient::LegalType](docs/LegalType.md)
 - [OpenapiClient::Link](docs/Link.md)
 - [OpenapiClient::LinkRefund](docs/LinkRefund.md)
 - [OpenapiClient::ListMemberships200Response](docs/ListMemberships200Response.md)
 - [OpenapiClient::ListMerchantMembers200Response](docs/ListMerchantMembers200Response.md)
 - [OpenapiClient::ListMerchantRoles200Response](docs/ListMerchantRoles200Response.md)
 - [OpenapiClient::ListReaders200Response](docs/ListReaders200Response.md)
 - [OpenapiClient::ListTransactionsV21200Response](docs/ListTransactionsV21200Response.md)
 - [OpenapiClient::MandatePayload](docs/MandatePayload.md)
 - [OpenapiClient::MandateResponse](docs/MandateResponse.md)
 - [OpenapiClient::Member](docs/Member.md)
 - [OpenapiClient::Membership](docs/Membership.md)
 - [OpenapiClient::MembershipResource](docs/MembershipResource.md)
 - [OpenapiClient::MembershipStatus](docs/MembershipStatus.md)
 - [OpenapiClient::MembershipUser](docs/MembershipUser.md)
 - [OpenapiClient::MembershipUserClassic](docs/MembershipUserClassic.md)
 - [OpenapiClient::MerchantAccount](docs/MerchantAccount.md)
 - [OpenapiClient::MerchantProfile](docs/MerchantProfile.md)
 - [OpenapiClient::MerchantProfilePayload](docs/MerchantProfilePayload.md)
 - [OpenapiClient::MerchantProfilePayloadDoingBusinessAs](docs/MerchantProfilePayloadDoingBusinessAs.md)
 - [OpenapiClient::MerchantSettings](docs/MerchantSettings.md)
 - [OpenapiClient::MerchantSettingsPayload](docs/MerchantSettingsPayload.md)
 - [OpenapiClient::OTP](docs/OTP.md)
 - [OpenapiClient::OTPChannel](docs/OTPChannel.md)
 - [OpenapiClient::Operator](docs/Operator.md)
 - [OpenapiClient::PaymentInstrumentCard](docs/PaymentInstrumentCard.md)
 - [OpenapiClient::PaymentInstrumentResponse](docs/PaymentInstrumentResponse.md)
 - [OpenapiClient::PaymentInstrumentResponseCard](docs/PaymentInstrumentResponseCard.md)
 - [OpenapiClient::Permissions](docs/Permissions.md)
 - [OpenapiClient::PersonalDetails](docs/PersonalDetails.md)
 - [OpenapiClient::PersonalProfile](docs/PersonalProfile.md)
 - [OpenapiClient::PersonalProfilePayload](docs/PersonalProfilePayload.md)
 - [OpenapiClient::Preauth](docs/Preauth.md)
 - [OpenapiClient::ProcessCheckout400Response](docs/ProcessCheckout400Response.md)
 - [OpenapiClient::Product](docs/Product.md)
 - [OpenapiClient::Reader](docs/Reader.md)
 - [OpenapiClient::ReaderCheckoutStatusChange](docs/ReaderCheckoutStatusChange.md)
 - [OpenapiClient::ReaderCheckoutStatusChangePayload](docs/ReaderCheckoutStatusChangePayload.md)
 - [OpenapiClient::ReaderDevice](docs/ReaderDevice.md)
 - [OpenapiClient::ReaderStatus](docs/ReaderStatus.md)
 - [OpenapiClient::Receipt](docs/Receipt.md)
 - [OpenapiClient::ReceiptAcquirerData](docs/ReceiptAcquirerData.md)
 - [OpenapiClient::ReceiptCard](docs/ReceiptCard.md)
 - [OpenapiClient::ReceiptEvent](docs/ReceiptEvent.md)
 - [OpenapiClient::ReceiptMerchantData](docs/ReceiptMerchantData.md)
 - [OpenapiClient::ReceiptMerchantDataMerchantProfile](docs/ReceiptMerchantDataMerchantProfile.md)
 - [OpenapiClient::ReceiptMerchantDataMerchantProfileAddress](docs/ReceiptMerchantDataMerchantProfileAddress.md)
 - [OpenapiClient::ReceiptTransaction](docs/ReceiptTransaction.md)
 - [OpenapiClient::ReceiptTransactionProductsInner](docs/ReceiptTransactionProductsInner.md)
 - [OpenapiClient::ReceiptTransactionVatRatesInner](docs/ReceiptTransactionVatRatesInner.md)
 - [OpenapiClient::RefundTransactionRequest](docs/RefundTransactionRequest.md)
 - [OpenapiClient::Role](docs/Role.md)
 - [OpenapiClient::SampleBody](docs/SampleBody.md)
 - [OpenapiClient::SignatureContext](docs/SignatureContext.md)
 - [OpenapiClient::SignupContext](docs/SignupContext.md)
 - [OpenapiClient::SignupVerificationStatus](docs/SignupVerificationStatus.md)
 - [OpenapiClient::TimeoffsetDetails](docs/TimeoffsetDetails.md)
 - [OpenapiClient::ToSAcceptance](docs/ToSAcceptance.md)
 - [OpenapiClient::TokenError](docs/TokenError.md)
 - [OpenapiClient::TransactionEvent](docs/TransactionEvent.md)
 - [OpenapiClient::TransactionFull](docs/TransactionFull.md)
 - [OpenapiClient::TransactionFullAllOfLinks](docs/TransactionFullAllOfLinks.md)
 - [OpenapiClient::TransactionFullAllOfLocation](docs/TransactionFullAllOfLocation.md)
 - [OpenapiClient::TransactionHistory](docs/TransactionHistory.md)
 - [OpenapiClient::TransactionMixinBase](docs/TransactionMixinBase.md)
 - [OpenapiClient::TransactionMixinCheckout](docs/TransactionMixinCheckout.md)
 - [OpenapiClient::TransactionMixinHistory](docs/TransactionMixinHistory.md)
 - [OpenapiClient::UpdateCustomerRequest](docs/UpdateCustomerRequest.md)
 - [OpenapiClient::UpdateMerchantMemberRequest](docs/UpdateMerchantMemberRequest.md)
 - [OpenapiClient::UpdateMerchantMemberRequestUser](docs/UpdateMerchantMemberRequestUser.md)
 - [OpenapiClient::UpdateMerchantRoleRequest](docs/UpdateMerchantRoleRequest.md)
 - [OpenapiClient::UpdateReaderRequest](docs/UpdateReaderRequest.md)
 - [OpenapiClient::UpdateSubAccountRequest](docs/UpdateSubAccountRequest.md)
 - [OpenapiClient::User](docs/User.md)
 - [OpenapiClient::UserInfo](docs/UserInfo.md)
 - [OpenapiClient::ValidatedToken](docs/ValidatedToken.md)
 - [OpenapiClient::ValidationError](docs/ValidationError.md)
 - [OpenapiClient::VatRates](docs/VatRates.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### apiKey

- **Type**: Bearer authentication

### oauth2


- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - payments: Make payments by creating and processing checkouts.
  - transactions.history: View transactions and transaction history.
  - user.profile_readonly: View user profile details.
  - user.profile: View and manage your user profile.
  - user.app-settings: View and manage the SumUp mobile application settings.
  - payment_instruments: Manage customers and their payment instruments.
  - user.payout-settings: View and manage your payout settings.
  - user.subaccounts: View and manage the user profile details of your employee.

### oauth2


- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://api.sumup.com/authorize
- **Scopes**: 
  - payments: Make payments by creating and processing checkouts.
  - transactions.history: View transactions and transaction history.
  - user.profile_readonly: View user profile details.
  - user.profile: View and manage your user profile.
  - user.app-settings: View and manage the SumUp mobile application settings.
  - payment_instruments: Manage customers and their payment instruments.
  - user.payout-settings: View and manage your payout settings.
  - user.subaccounts: View and manage the user profile details of your employees.

