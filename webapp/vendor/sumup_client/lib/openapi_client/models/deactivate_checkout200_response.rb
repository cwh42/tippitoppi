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
  # Details of the deleted checkout.
  class DeactivateCheckout200Response
    # Unique ID of the payment checkout specified by the client application when creating the checkout resource.
    attr_accessor :checkout_reference

    # Unique ID of the checkout resource.
    attr_accessor :id

    # Amount of the payment.
    attr_accessor :amount

    attr_accessor :currency

    # Email address of the registered user (merchant) to whom the payment is made.
    attr_accessor :pay_to_email

    # Unique identifying code of the merchant profile.
    attr_accessor :merchant_code

    # Short description of the checkout visible in the SumUp dashboard. The description can contribute to reporting, allowing easier identification of a checkout.
    attr_accessor :description

    # Purpose of the checkout creation initially
    attr_accessor :purpose

    # Current status of the checkout.
    attr_accessor :status

    # Date and time of the creation of the payment checkout. Response format expressed according to [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) code.
    attr_accessor :date

    # Date and time of the checkout expiration before which the client application needs to send a processing request. If no value is present, the checkout does not have an expiration time.
    attr_accessor :valid_until

    # Merchant name
    attr_accessor :merchant_name

    # The merchant's country
    attr_accessor :merchant_country

    # List of transactions related to the payment.
    attr_accessor :transactions

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
        :'checkout_reference' => :'checkout_reference',
        :'id' => :'id',
        :'amount' => :'amount',
        :'currency' => :'currency',
        :'pay_to_email' => :'pay_to_email',
        :'merchant_code' => :'merchant_code',
        :'description' => :'description',
        :'purpose' => :'purpose',
        :'status' => :'status',
        :'date' => :'date',
        :'valid_until' => :'valid_until',
        :'merchant_name' => :'merchant_name',
        :'merchant_country' => :'merchant_country',
        :'transactions' => :'transactions'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'checkout_reference' => :'String',
        :'id' => :'String',
        :'amount' => :'Float',
        :'currency' => :'Currency',
        :'pay_to_email' => :'String',
        :'merchant_code' => :'String',
        :'description' => :'String',
        :'purpose' => :'String',
        :'status' => :'String',
        :'date' => :'Time',
        :'valid_until' => :'Time',
        :'merchant_name' => :'String',
        :'merchant_country' => :'String',
        :'transactions' => :'Array<DeactivateCheckout200ResponseTransactionsInner>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'valid_until',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::DeactivateCheckout200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::DeactivateCheckout200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'checkout_reference')
        self.checkout_reference = attributes[:'checkout_reference']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'pay_to_email')
        self.pay_to_email = attributes[:'pay_to_email']
      end

      if attributes.key?(:'merchant_code')
        self.merchant_code = attributes[:'merchant_code']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'purpose')
        self.purpose = attributes[:'purpose']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'valid_until')
        self.valid_until = attributes[:'valid_until']
      end

      if attributes.key?(:'merchant_name')
        self.merchant_name = attributes[:'merchant_name']
      end

      if attributes.key?(:'merchant_country')
        self.merchant_country = attributes[:'merchant_country']
      end

      if attributes.key?(:'transactions')
        if (value = attributes[:'transactions']).is_a?(Array)
          self.transactions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@checkout_reference.nil? && @checkout_reference.to_s.length > 90
        invalid_properties.push('invalid value for "checkout_reference", the character length must be smaller than or equal to 90.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@checkout_reference.nil? && @checkout_reference.to_s.length > 90
      purpose_validator = EnumAttributeValidator.new('String', ["SETUP_RECURRING_PAYMENT", "CHECKOUT"])
      return false unless purpose_validator.valid?(@purpose)
      status_validator = EnumAttributeValidator.new('String', ["EXPIRED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] checkout_reference Value to be assigned
    def checkout_reference=(checkout_reference)
      if checkout_reference.nil?
        fail ArgumentError, 'checkout_reference cannot be nil'
      end

      if checkout_reference.to_s.length > 90
        fail ArgumentError, 'invalid value for "checkout_reference", the character length must be smaller than or equal to 90.'
      end

      @checkout_reference = checkout_reference
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] purpose Object to be assigned
    def purpose=(purpose)
      validator = EnumAttributeValidator.new('String', ["SETUP_RECURRING_PAYMENT", "CHECKOUT"])
      unless validator.valid?(purpose)
        fail ArgumentError, "invalid value for \"purpose\", must be one of #{validator.allowable_values}."
      end
      @purpose = purpose
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["EXPIRED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] transactions Value to be assigned
    def transactions=(transactions)
      if transactions.nil?
        fail ArgumentError, 'transactions cannot be nil'
      end

      @transactions = transactions
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          checkout_reference == o.checkout_reference &&
          id == o.id &&
          amount == o.amount &&
          currency == o.currency &&
          pay_to_email == o.pay_to_email &&
          merchant_code == o.merchant_code &&
          description == o.description &&
          purpose == o.purpose &&
          status == o.status &&
          date == o.date &&
          valid_until == o.valid_until &&
          merchant_name == o.merchant_name &&
          merchant_country == o.merchant_country &&
          transactions == o.transactions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [checkout_reference, id, amount, currency, pay_to_email, merchant_code, description, purpose, status, date, valid_until, merchant_name, merchant_country, transactions].hash
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
