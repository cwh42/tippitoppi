=begin
#SumUp REST API

#SumUp’s REST API operates with [JSON](https://www.json.org/json-en.html) HTTP requests and responses. The request bodies are sent through resource-oriented URLs and use the standard [HTTP response codes](https://developer.mozilla.org/docs/Web/HTTP/Status).  You can experiment and work on your integration in a sandbox that doesn't affect your regular data and doesn't process real transactions. To create a sandbox merchant account visit the [dashboard](https://me.sumup.com/settings/developer). To use the sandbox when interacting with SumUp APIs [create an API](https://me.sumup.com/settings/api-keys) key and use it for [authentication](https://developer.sumup.com/api/authentication). 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module OpenapiClient
  class PayoutsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List payouts
    # Lists ordered payouts for the merchant profile.
    # @param start_date [Date] Start date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
    # @param end_date [Date] End date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format 
    # @option opts [Integer] :limit 
    # @option opts [String] :order 
    # @return [Array<FinancialPayoutsInner>]
    def list_payouts(start_date, end_date, opts = {})
      data, _status_code, _headers = list_payouts_with_http_info(start_date, end_date, opts)
      data
    end

    # List payouts
    # Lists ordered payouts for the merchant profile.
    # @param start_date [Date] Start date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
    # @param end_date [Date] End date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format 
    # @option opts [Integer] :limit 
    # @option opts [String] :order 
    # @return [Array<(Array<FinancialPayoutsInner>, Integer, Hash)>] Array<FinancialPayoutsInner> data, response status code and response headers
    def list_payouts_with_http_info(start_date, end_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.list_payouts ...'
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling PayoutsApi.list_payouts"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling PayoutsApi.list_payouts"
      end
      allowable_values = ["json", "csv"]
      if @api_client.config.client_side_validation && opts[:'format'] && !allowable_values.include?(opts[:'format'])
        fail ArgumentError, "invalid value for \"format\", must be one of #{allowable_values}"
      end
      allowable_values = ["desc", "asc"]
      if @api_client.config.client_side_validation && opts[:'order'] && !allowable_values.include?(opts[:'order'])
        fail ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v0.1/me/financials/payouts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_date'] = start_date
      query_params[:'end_date'] = end_date
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<FinancialPayoutsInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'oauth2', 'oauth2']

      new_options = opts.merge(
        :operation => :"PayoutsApi.list_payouts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutsApi#list_payouts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List payouts
    # Lists ordered payouts for the merchant profile.
    # @param merchant_code [String] 
    # @param start_date [Date] Start date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
    # @param end_date [Date] End date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format 
    # @option opts [Integer] :limit 
    # @option opts [String] :order 
    # @return [Array<FinancialPayoutsInner>]
    def list_payouts_v1(merchant_code, start_date, end_date, opts = {})
      data, _status_code, _headers = list_payouts_v1_with_http_info(merchant_code, start_date, end_date, opts)
      data
    end

    # List payouts
    # Lists ordered payouts for the merchant profile.
    # @param merchant_code [String] 
    # @param start_date [Date] Start date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
    # @param end_date [Date] End date (in [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) format).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :format 
    # @option opts [Integer] :limit 
    # @option opts [String] :order 
    # @return [Array<(Array<FinancialPayoutsInner>, Integer, Hash)>] Array<FinancialPayoutsInner> data, response status code and response headers
    def list_payouts_v1_with_http_info(merchant_code, start_date, end_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayoutsApi.list_payouts_v1 ...'
      end
      # verify the required parameter 'merchant_code' is set
      if @api_client.config.client_side_validation && merchant_code.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_code' when calling PayoutsApi.list_payouts_v1"
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling PayoutsApi.list_payouts_v1"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling PayoutsApi.list_payouts_v1"
      end
      allowable_values = ["json", "csv"]
      if @api_client.config.client_side_validation && opts[:'format'] && !allowable_values.include?(opts[:'format'])
        fail ArgumentError, "invalid value for \"format\", must be one of #{allowable_values}"
      end
      allowable_values = ["desc", "asc"]
      if @api_client.config.client_side_validation && opts[:'order'] && !allowable_values.include?(opts[:'order'])
        fail ArgumentError, "invalid value for \"order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1.0/merchants/{merchant_code}/payouts'.sub('{' + 'merchant_code' + '}', CGI.escape(merchant_code.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start_date'] = start_date
      query_params[:'end_date'] = end_date
      query_params[:'format'] = opts[:'format'] if !opts[:'format'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<FinancialPayoutsInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'oauth2', 'oauth2']

      new_options = opts.merge(
        :operation => :"PayoutsApi.list_payouts_v1",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayoutsApi#list_payouts_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
