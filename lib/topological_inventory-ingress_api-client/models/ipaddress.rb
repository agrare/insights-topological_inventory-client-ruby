=begin
#Topological Inventory Ingress API

#Topological Inventory Ingress API

OpenAPI spec version: 0.0.2
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'date'

module TopologicalInventoryIngressApiClient
  class Ipaddress
    attr_accessor :archived_at

    attr_accessor :extra

    attr_accessor :ipaddress

    attr_accessor :kind

    attr_accessor :network_adapter

    attr_accessor :orchestration_stack

    attr_accessor :resource_timestamp

    attr_accessor :source_created_at

    attr_accessor :source_deleted_at

    attr_accessor :source_ref

    attr_accessor :source_region

    attr_accessor :subnet

    attr_accessor :subscription

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
        :'archived_at' => :'archived_at',
        :'extra' => :'extra',
        :'ipaddress' => :'ipaddress',
        :'kind' => :'kind',
        :'network_adapter' => :'network_adapter',
        :'orchestration_stack' => :'orchestration_stack',
        :'resource_timestamp' => :'resource_timestamp',
        :'source_created_at' => :'source_created_at',
        :'source_deleted_at' => :'source_deleted_at',
        :'source_ref' => :'source_ref',
        :'source_region' => :'source_region',
        :'subnet' => :'subnet',
        :'subscription' => :'subscription'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'archived_at' => :'DateTime',
        :'extra' => :'Object',
        :'ipaddress' => :'String',
        :'kind' => :'String',
        :'network_adapter' => :'NetworkAdapterReference',
        :'orchestration_stack' => :'OrchestrationStackReference',
        :'resource_timestamp' => :'DateTime',
        :'source_created_at' => :'DateTime',
        :'source_deleted_at' => :'DateTime',
        :'source_ref' => :'String',
        :'source_region' => :'SourceRegionReference',
        :'subnet' => :'SubnetReference',
        :'subscription' => :'SubscriptionReference'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'archived_at')
        self.archived_at = attributes[:'archived_at']
      end

      if attributes.has_key?(:'extra')
        self.extra = attributes[:'extra']
      end

      if attributes.has_key?(:'ipaddress')
        self.ipaddress = attributes[:'ipaddress']
      end

      if attributes.has_key?(:'kind')
        self.kind = attributes[:'kind']
      end

      if attributes.has_key?(:'network_adapter')
        self.network_adapter = attributes[:'network_adapter']
      end

      if attributes.has_key?(:'orchestration_stack')
        self.orchestration_stack = attributes[:'orchestration_stack']
      end

      if attributes.has_key?(:'resource_timestamp')
        self.resource_timestamp = attributes[:'resource_timestamp']
      end

      if attributes.has_key?(:'source_created_at')
        self.source_created_at = attributes[:'source_created_at']
      end

      if attributes.has_key?(:'source_deleted_at')
        self.source_deleted_at = attributes[:'source_deleted_at']
      end

      if attributes.has_key?(:'source_ref')
        self.source_ref = attributes[:'source_ref']
      end

      if attributes.has_key?(:'source_region')
        self.source_region = attributes[:'source_region']
      end

      if attributes.has_key?(:'subnet')
        self.subnet = attributes[:'subnet']
      end

      if attributes.has_key?(:'subscription')
        self.subscription = attributes[:'subscription']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @kind.nil?
        invalid_properties.push('invalid value for "kind", kind cannot be nil.')
      end

      if @source_ref.nil?
        invalid_properties.push('invalid value for "source_ref", source_ref cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @kind.nil?
      kind_validator = EnumAttributeValidator.new('String', ['private', 'public', 'elastic'])
      return false unless kind_validator.valid?(@kind)
      return false if @source_ref.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kind Object to be assigned
    def kind=(kind)
      validator = EnumAttributeValidator.new('String', ['private', 'public', 'elastic'])
      unless validator.valid?(kind)
        fail ArgumentError, 'invalid value for "kind", must be one of #{validator.allowable_values}.'
      end
      @kind = kind
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          archived_at == o.archived_at &&
          extra == o.extra &&
          ipaddress == o.ipaddress &&
          kind == o.kind &&
          network_adapter == o.network_adapter &&
          orchestration_stack == o.orchestration_stack &&
          resource_timestamp == o.resource_timestamp &&
          source_created_at == o.source_created_at &&
          source_deleted_at == o.source_deleted_at &&
          source_ref == o.source_ref &&
          source_region == o.source_region &&
          subnet == o.subnet &&
          subscription == o.subscription
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [archived_at, extra, ipaddress, kind, network_adapter, orchestration_stack, resource_timestamp, source_created_at, source_deleted_at, source_ref, source_region, subnet, subscription].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = TopologicalInventoryIngressApiClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
