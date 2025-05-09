=begin
#SumUp REST API

#SumUp’s REST API operates with [JSON](https://www.json.org/json-en.html) HTTP requests and responses. The request bodies are sent through resource-oriented URLs and use the standard [HTTP response codes](https://developer.mozilla.org/docs/Web/HTTP/Status).  You can experiment and work on your integration in a sandbox that doesn't affect your regular data and doesn't process real transactions. To create a sandbox merchant account visit the [dashboard](https://me.sumup.com/settings/developer). To use the sandbox when interacting with SumUp APIs [create an API](https://me.sumup.com/settings/api-keys) key and use it for [authentication](https://developer.sumup.com/api/authentication). 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::RolesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RolesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::RolesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RolesApi' do
    it 'should create an instance of RolesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::RolesApi)
    end
  end

  # unit tests for create_merchant_role
  # Create a role
  # Create a custom role for the merchant. Roles are defined by the set of permissions that they grant to the members that they are assigned to.
  # @param merchant_code Merchant code.
  # @param create_merchant_role_request 
  # @param [Hash] opts the optional parameters
  # @return [Role]
  describe 'create_merchant_role test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_merchant_role
  # Delete a role
  # Delete a custom role.
  # @param merchant_code Merchant code.
  # @param role_id The ID of the role to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_merchant_role test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_merchant_role
  # Retrieve a role
  # Retrieve a custom role by ID.
  # @param merchant_code Merchant code.
  # @param role_id The ID of the role to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [Role]
  describe 'get_merchant_role test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_merchant_roles
  # List roles
  # List merchant&#39;s custom roles.
  # @param merchant_code Merchant code.
  # @param [Hash] opts the optional parameters
  # @return [ListMerchantRoles200Response]
  describe 'list_merchant_roles test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_merchant_role
  # Update a role
  # Update a custom role.
  # @param merchant_code Merchant code.
  # @param role_id The ID of the role to retrieve.
  # @param update_merchant_role_request 
  # @param [Hash] opts the optional parameters
  # @return [Role]
  describe 'update_merchant_role test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
