=begin
#SumUp REST API

#SumUp’s REST API operates with [JSON](https://www.json.org/json-en.html) HTTP requests and responses. The request bodies are sent through resource-oriented URLs and use the standard [HTTP response codes](https://developer.mozilla.org/docs/Web/HTTP/Status).  You can experiment and work on your integration in a sandbox that doesn't affect your regular data and doesn't process real transactions. To create a sandbox merchant account visit the [dashboard](https://me.sumup.com/settings/developer). To use the sandbox when interacting with SumUp APIs [create an API](https://me.sumup.com/settings/api-keys) key and use it for [authentication](https://developer.sumup.com/api/authentication). 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'cgi'

module OpenapiClient
  class ReceiptsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve receipt details
    # Retrieves receipt specific data for a transaction.
    # @param id [String] SumUp unique transaction ID or transaction code, e.g. TS7HDYLSKD.
    # @param mid [String] Merchant code.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :tx_event_id The ID of the transaction event (refund).
    # @return [Receipt]
    def get_receipt(id, mid, opts = {})
      data, _status_code, _headers = get_receipt_with_http_info(id, mid, opts)
      data
    end

    # Retrieve receipt details
    # Retrieves receipt specific data for a transaction.
    # @param id [String] SumUp unique transaction ID or transaction code, e.g. TS7HDYLSKD.
    # @param mid [String] Merchant code.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :tx_event_id The ID of the transaction event (refund).
    # @return [Array<(Receipt, Integer, Hash)>] Receipt data, response status code and response headers
    def get_receipt_with_http_info(id, mid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReceiptsApi.get_receipt ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReceiptsApi.get_receipt"
      end
      # verify the required parameter 'mid' is set
      if @api_client.config.client_side_validation && mid.nil?
        fail ArgumentError, "Missing the required parameter 'mid' when calling ReceiptsApi.get_receipt"
      end
      # resource path
      local_var_path = '/v1.1/receipts/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'mid'] = mid
      query_params[:'tx_event_id'] = opts[:'tx_event_id'] if !opts[:'tx_event_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Receipt'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey', 'oauth2', 'oauth2']

      new_options = opts.merge(
        :operation => :"ReceiptsApi.get_receipt",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReceiptsApi#get_receipt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
