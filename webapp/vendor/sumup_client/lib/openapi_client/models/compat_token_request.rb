=begin
#SumUp REST API

#SumUp’s REST API operates with [JSON](https://www.json.org/json-en.html) HTTP requests and responses. The request bodies are sent through resource-oriented URLs and use the standard [HTTP response codes](https://developer.mozilla.org/docs/Web/HTTP/Status).  You can experiment and work on your integration in a sandbox that doesn't affect your regular data and doesn't process real transactions. To create a sandbox merchant account visit the [dashboard](https://me.sumup.com/settings/developer). To use the sandbox when interacting with SumUp APIs [create an API](https://me.sumup.com/settings/api-keys) key and use it for [authentication](https://developer.sumup.com/api/authentication). 

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module OpenapiClient
  class CompatTokenRequest
    attr_accessor :grant_type

    attr_accessor :client_id

    attr_accessor :client_secret

    attr_accessor :code

    attr_accessor :username

    attr_accessor :password

    attr_accessor :refresh_token

    attr_accessor :subject_token

    attr_accessor :subject_token_type

    # Space separated list of requested scopes.
    attr_accessor :scope

    # Hashed is used by legacy applications (notably cube) to submit the password in the password flow in pre-hashed format (the password is md5 hashed on the client and submitted in such format). 
    attr_accessor :hashed

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'grant_type' => :'grant_type',
        :'client_id' => :'client_id',
        :'client_secret' => :'client_secret',
        :'code' => :'code',
        :'username' => :'username',
        :'password' => :'password',
        :'refresh_token' => :'refresh_token',
        :'subject_token' => :'subject_token',
        :'subject_token_type' => :'subject_token_type',
        :'scope' => :'scope',
        :'hashed' => :'hashed'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'grant_type' => :'String',
        :'client_id' => :'String',
        :'client_secret' => :'String',
        :'code' => :'String',
        :'username' => :'String',
        :'password' => :'String',
        :'refresh_token' => :'String',
        :'subject_token' => :'String',
        :'subject_token_type' => :'String',
        :'scope' => :'String',
        :'hashed' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'grant_type',
        :'client_id',
        :'client_secret',
        :'code',
        :'username',
        :'password',
        :'refresh_token',
        :'subject_token',
        :'subject_token_type',
        :'scope',
        :'hashed'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::CompatTokenRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::CompatTokenRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'grant_type')
        self.grant_type = attributes[:'grant_type']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'client_secret')
        self.client_secret = attributes[:'client_secret']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'refresh_token')
        self.refresh_token = attributes[:'refresh_token']
      end

      if attributes.key?(:'subject_token')
        self.subject_token = attributes[:'subject_token']
      end

      if attributes.key?(:'subject_token_type')
        self.subject_token_type = attributes[:'subject_token_type']
      end

      if attributes.key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.key?(:'hashed')
        self.hashed = attributes[:'hashed']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      grant_type_validator = EnumAttributeValidator.new('String', ["authorization_code", "password", "client_credentials", "urn:ietf:params:oauth:grant-type:token-exchange", "refresh_token"])
      return false unless grant_type_validator.valid?(@grant_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] grant_type Object to be assigned
    def grant_type=(grant_type)
      validator = EnumAttributeValidator.new('String', ["authorization_code", "password", "client_credentials", "urn:ietf:params:oauth:grant-type:token-exchange", "refresh_token"])
      unless validator.valid?(grant_type)
        fail ArgumentError, "invalid value for \"grant_type\", must be one of #{validator.allowable_values}."
      end
      @grant_type = grant_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          grant_type == o.grant_type &&
          client_id == o.client_id &&
          client_secret == o.client_secret &&
          code == o.code &&
          username == o.username &&
          password == o.password &&
          refresh_token == o.refresh_token &&
          subject_token == o.subject_token &&
          subject_token_type == o.subject_token_type &&
          scope == o.scope &&
          hashed == o.hashed
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [grant_type, client_id, client_secret, code, username, password, refresh_token, subject_token, subject_token_type, scope, hashed].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
