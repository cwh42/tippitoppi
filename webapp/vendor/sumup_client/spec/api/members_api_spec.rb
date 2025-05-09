=begin
#SumUp REST API

#SumUp’s REST API operates with [JSON](https://www.json.org/json-en.html) HTTP requests and responses. The request bodies are sent through resource-oriented URLs and use the standard [HTTP response codes](https://developer.mozilla.org/docs/Web/HTTP/Status).  You can experiment and work on your integration in a sandbox that doesn't affect your regular data and doesn't process real transactions. To create a sandbox merchant account visit the [dashboard](https://me.sumup.com/settings/developer). To use the sandbox when interacting with SumUp APIs [create an API](https://me.sumup.com/settings/api-keys) key and use it for [authentication](https://developer.sumup.com/api/authentication). 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::MembersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MembersApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::MembersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MembersApi' do
    it 'should create an instance of MembersApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::MembersApi)
    end
  end

  # unit tests for create_merchant_member
  # Create a member
  # Create a merchant member.
  # @param merchant_code Merchant code.
  # @param create_merchant_member_request 
  # @param [Hash] opts the optional parameters
  # @return [Member]
  describe 'create_merchant_member test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_merchant_member
  # Delete a member
  # Deletes a merchant member.
  # @param merchant_code Merchant code.
  # @param member_id The ID of the member to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_merchant_member test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_merchant_member
  # Retrieve a member
  # Retrieve a merchant member.
  # @param merchant_code Merchant code.
  # @param member_id The ID of the member to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [Member]
  describe 'get_merchant_member test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_merchant_members
  # List members
  # Lists merchant members.
  # @param merchant_code Merchant code.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset Offset of the first member to return.
  # @option opts [Integer] :limit Maximum number of members to return.
  # @option opts [Boolean] :scroll Indicates to skip count query.
  # @option opts [String] :email Filter the returned members by email address prefix.
  # @option opts [MembershipStatus] :status Filter the returned members by the membership status.
  # @option opts [Array<String>] :roles Filter the returned members by role.
  # @return [ListMerchantMembers200Response]
  describe 'list_merchant_members test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_merchant_member
  # Update a member
  # Update the merchant member.
  # @param merchant_code Merchant code.
  # @param member_id The ID of the member to retrieve.
  # @param update_merchant_member_request 
  # @param [Hash] opts the optional parameters
  # @return [Member]
  describe 'update_merchant_member test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
