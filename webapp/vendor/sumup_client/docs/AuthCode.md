# OpenapiClient::AuthCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response_type** | **String** | The type of the expected response. The value must be &#x60;code&#x60; to indicate that you expect to receive an authorization code. |  |
| **client_id** | **String** | The client ID of your application that was generated when you [registered it](https://developer.sumup.com/docs/register-app/). |  |
| **redirect_uri** | **String** | The URI to which the merchant user is redirected after authorizing your application to access their user&#39;s profile data and to which the authorization code is sent. The value must match exactly one of the [registered URIs](https://developer.sumup.com/docs/register-app#3-create-oauth-client-credentials) for your application. |  |
| **scope** | **String** | A space-separated list of scopes for which you request authorization. If you don&#39;t specify any scopes in the request, your application will be granted authorization for the default scopes. | [optional] |
| **state** | **String** | A unique local state that can be used for correlating requests and responses and for preventing [cross-site request forgery](https://tools.ietf.org/html/rfc6749#section-10.12). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuthCode.new(
  response_type: code,
  client_id: fOcmczrYtYMJ7Li5GjMLLcUeC9dN,
  redirect_uri: https://sample-app.example.com/callback,
  scope: payments,
  state: 2cFCsY36y95lFHk4
)
```

