require 'ContactWsdl.rb'
require 'ContactWsdlMappingRegistry.rb'
require 'soap/rpc/driver'

module ContactWsdl

class ContactWsdl < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://secure-ausomxhma.crmondemand.com/Services/Integration"

  Methods = [
    [ "document/urn:crmondemand/ws/ecbs/contact/:ContactQueryPage",
      "contactQueryPage",
      [ ["in", "ContactQueryPage_Input", ["::SOAP::SOAPElement", "urn:crmondemand/ws/ecbs/contact/", "ContactQueryPage_Input"]],
        ["out", "ContactQueryPage_Output", ["::SOAP::SOAPElement", "urn:crmondemand/ws/ecbs/contact/", "ContactQueryPage_Output"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "document/urn:crmondemand/ws/ecbs/contact/:ContactInsert",
      "contactInsert",
      [ ["in", "ContactInsert_Input", ["::SOAP::SOAPElement", "urn:crmondemand/ws/ecbs/contact/", "ContactInsert_Input"]],
        ["out", "ContactInsert_Output", ["::SOAP::SOAPElement", "urn:crmondemand/ws/ecbs/contact/", "ContactInsert_Output"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "document/urn:crmondemand/ws/ecbs/contact/:ContactExecute",
      "contactExecute",
      [ ["in", "ContactExecute_Input", ["::SOAP::SOAPElement", "urn:crmondemand/ws/ecbs/contact/", "ContactExecute_Input"]],
        ["out", "ContactExecute_Output", ["::SOAP::SOAPElement", "urn:crmondemand/ws/ecbs/contact/", "ContactExecute_Output"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "document/urn:crmondemand/ws/ecbs/contact/:ContactUpdate",
      "contactUpdate",
      [ ["in", "ContactUpdate_Input", ["::SOAP::SOAPElement", "urn:crmondemand/ws/ecbs/contact/", "ContactUpdate_Input"]],
        ["out", "ContactUpdate_Output", ["::SOAP::SOAPElement", "urn:crmondemand/ws/ecbs/contact/", "ContactUpdate_Output"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "document/urn:crmondemand/ws/ecbs/contact/:ContactDelete",
      "contactDelete",
      [ ["in", "ContactDelete_Input", ["::SOAP::SOAPElement", "urn:crmondemand/ws/ecbs/contact/", "ContactDelete_Input"]],
        ["out", "ContactDelete_Output", ["::SOAP::SOAPElement", "urn:crmondemand/ws/ecbs/contact/", "ContactDelete_Output"]] ],
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
