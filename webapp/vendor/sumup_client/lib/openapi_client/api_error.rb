=begin
#SumUp REST API

#SumUp’s REST API operates with [JSON](https://www.json.org/json-en.html) HTTP requests and responses. The request bodies are sent through resource-oriented URLs and use the standard [HTTP response codes](https://developer.mozilla.org/docs/Web/HTTP/Status).  You can experiment and work on your integration in a sandbox that doesn't affect your regular data and doesn't process real transactions. To create a sandbox merchant account visit the [dashboard](https://me.sumup.com/settings/developer). To use the sandbox when interacting with SumUp APIs [create an API](https://me.sumup.com/settings/api-keys) key and use it for [authentication](https://developer.sumup.com/api/authentication). 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

module OpenapiClient
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        if arg.key?(:message) || arg.key?('message')
          super(arg[:message] || arg['message'])
        else
          super arg
        end

        arg.each do |k, v|
          instance_variable_set "@#{k}", v
        end
      else
        super arg
        @message = arg
      end
    end

    # Override to_s to display a friendly error message
    def to_s
      message
    end

    def message
      if @message.nil?
        msg = "Error message: the server returns an error"
      else
        msg = @message
      end

      msg += "\nHTTP status code: #{code}" if code
      msg += "\nResponse headers: #{response_headers}" if response_headers
      msg += "\nResponse body: #{response_body}" if response_body

      msg
    end
  end
end
