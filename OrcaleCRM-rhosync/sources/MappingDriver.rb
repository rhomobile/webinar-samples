require 'Mapping.rb'
require 'MappingMappingRegistry.rb'
require 'soap/rpc/driver'

module Mapping

class Default_Binding_Mapping < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://secure-ausomxhma.crmondemand.com/Services/Integration"

  Methods = [
    [ "document/urn:crmondemand/ws/mapping/:GetMapping",
      "getMapping",
      [ ["in", "MappingWS_GetMapping_Input", ["::SOAP::SOAPElement", "urn:crmondemand/ws/mapping/", "MappingWS_GetMapping_Input"]],
        ["out", "MappingWS_GetMapping_Output", ["::SOAP::SOAPElement", "urn:crmondemand/ws/mapping/", "MappingWS_GetMapping_Output"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
