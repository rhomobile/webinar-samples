#!/usr/bin/env ruby
require 'defaultServant.rb'
require 'defaultMappingRegistry.rb'
require 'soap/rpc/standaloneServer'

class NotificationPort
  Methods = [
    [ "",
      "notifications",
      [ ["in", "request", ["::SOAP::SOAPElement", "http://soap.sforce.com/2005/09/outbound", "notifications"]],
        ["out", "response", ["::SOAP::SOAPElement", "http://soap.sforce.com/2005/09/outbound", "notificationsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]
end

class NotificationPortApp < ::SOAP::RPC::StandaloneServer
  def initialize(*arg)
    super(*arg)
    servant = NotificationPort.new
    NotificationPort::Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        @router.add_document_operation(servant, *definitions)
      else
        @router.add_rpc_operation(servant, *definitions)
      end
    end
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
  end
end

if $0 == __FILE__
  # Change listen port.
  server = NotificationPortApp.new('app', nil, '0.0.0.0', 7000)
  trap(:INT) do
    server.shutdown
  end
  server.start
end
