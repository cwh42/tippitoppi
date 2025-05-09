=begin
#SumUp REST API

#SumUp’s REST API operates with [JSON](https://www.json.org/json-en.html) HTTP requests and responses. The request bodies are sent through resource-oriented URLs and use the standard [HTTP response codes](https://developer.mozilla.org/docs/Web/HTTP/Status).  You can experiment and work on your integration in a sandbox that doesn't affect your regular data and doesn't process real transactions. To create a sandbox merchant account visit the [dashboard](https://me.sumup.com/settings/developer). To use the sandbox when interacting with SumUp APIs [create an API](https://me.sumup.com/settings/api-keys) key and use it for [authentication](https://developer.sumup.com/api/authentication). 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::CheckoutsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CheckoutsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::CheckoutsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CheckoutsApi' do
    it 'should create an instance of CheckoutsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::CheckoutsApi)
    end
  end

  # unit tests for create_checkout
  # Create a checkout
  # Creates a new payment checkout resource. The unique &#x60;checkout_reference&#x60; created by this request, is used for further manipulation of the checkout.  For 3DS checkouts, add the &#x60;redirect_url&#x60; parameter to your request body schema.  Follow by processing a checkout to charge the provided payment instrument. 
  # @param [Hash] opts the optional parameters
  # @option opts [CheckoutCreateRequest] :checkout_create_request 
  # @return [Checkout]
  describe 'create_checkout test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for deactivate_checkout
  # Deactivate a checkout
  # Deactivates an identified checkout resource. If the checkout has already been processed it can not be deactivated.
  # @param id Unique ID of the checkout resource.
  # @param [Hash] opts the optional parameters
  # @return [DeactivateCheckout200Response]
  describe 'deactivate_checkout test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_checkout
  # Retrieve a checkout
  # Retrieves an identified checkout resource. Use this request after processing a checkout to confirm its status and inform the end user respectively.
  # @param id Unique ID of the checkout resource.
  # @param [Hash] opts the optional parameters
  # @return [CheckoutSuccess]
  describe 'get_checkout test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_payment_methods
  # Get available payment methods
  # Get payment methods available for the given merchant to use with a checkout.
  # @param merchant_code The SumUp merchant code.
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :amount The amount for which the payment methods should be eligible, in major units. Note that currency must also be provided when filtering by amount.
  # @option opts [String] :currency The currency for which the payment methods should be eligible.
  # @return [GetPaymentMethods200Response]
  describe 'get_payment_methods test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_checkouts
  # List checkouts
  # Lists created checkout resources according to the applied &#x60;checkout_reference&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :checkout_reference Filters the list of checkout resources by the unique ID of the checkout.
  # @return [Array<CheckoutSuccess>]
  describe 'list_checkouts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for process_checkout
  # Process a checkout
  # Processing a checkout will attempt to charge the provided payment instrument for the amount of the specified checkout resource initiated in the &#x60;Create a checkout&#x60; endpoint.  Follow this request with &#x60;Retrieve a checkout&#x60; to confirm its status. 
  # @param id Unique ID of the checkout resource.
  # @param [Hash] opts the optional parameters
  # @option opts [CheckoutProcessMixin] :checkout_process_mixin Details of the payment instrument for processing the checkout.
  # @return [CheckoutSuccess]
  describe 'process_checkout test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
