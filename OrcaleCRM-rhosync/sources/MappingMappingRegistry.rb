require 'Mapping.rb'
require 'soap/mapping'

module Mapping

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsMapping = "urn:crmondemand/ws/mapping/"
  NsMappingservice = "urn:/crmondemand/xml/mappingservice"

  EncodedRegistry.register(
    :class => Mapping::ListOfFieldTopElmt,
    :schema_type => XSD::QName.new(NsMappingservice, "ListOfFieldTopElmt"),
    :schema_element => [
      ["listOfField", ["Mapping::ListOfField", XSD::QName.new(NsMappingservice, "ListOfField")]]
    ]
  )

  EncodedRegistry.register(
    :class => Mapping::ListOfField,
    :schema_type => XSD::QName.new(NsMappingservice, "ListOfField"),
    :schema_element => [
      ["field", ["Mapping::Field[]", XSD::QName.new(NsMappingservice, "Field")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Mapping::Field,
    :schema_type => XSD::QName.new(NsMappingservice, "Field"),
    :schema_element => [
      ["lastUpdated", ["SOAP::SOAPString", XSD::QName.new(NsMappingservice, "LastUpdated")], [0, 1]],
      ["displayName", [nil, XSD::QName.new(NsMappingservice, "DisplayName")], [0, 1]],
      ["elementName", [nil, XSD::QName.new(NsMappingservice, "ElementName")], [0, 1]],
      ["dataType", [nil, XSD::QName.new(NsMappingservice, "DataType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Mapping::ListOfFieldTopElmt,
    :schema_type => XSD::QName.new(NsMappingservice, "ListOfFieldTopElmt"),
    :schema_element => [
      ["listOfField", ["Mapping::ListOfField", XSD::QName.new(NsMappingservice, "ListOfField")]]
    ]
  )

  LiteralRegistry.register(
    :class => Mapping::ListOfField,
    :schema_type => XSD::QName.new(NsMappingservice, "ListOfField"),
    :schema_element => [
      ["field", ["Mapping::Field[]", XSD::QName.new(NsMappingservice, "Field")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Mapping::Field,
    :schema_type => XSD::QName.new(NsMappingservice, "Field"),
    :schema_element => [
      ["lastUpdated", ["SOAP::SOAPString", XSD::QName.new(NsMappingservice, "LastUpdated")], [0, 1]],
      ["displayName", [nil, XSD::QName.new(NsMappingservice, "DisplayName")], [0, 1]],
      ["elementName", [nil, XSD::QName.new(NsMappingservice, "ElementName")], [0, 1]],
      ["dataType", [nil, XSD::QName.new(NsMappingservice, "DataType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Mapping::ListOfField,
    :schema_name => XSD::QName.new(NsMappingservice, "ListOfField"),
    :schema_element => [
      ["field", ["Mapping::Field[]", XSD::QName.new(NsMappingservice, "Field")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Mapping::MappingWS_GetMapping_Input,
    :schema_name => XSD::QName.new(NsMapping, "MappingWS_GetMapping_Input"),
    :schema_element => [
      ["objectName", ["SOAP::SOAPString", XSD::QName.new(NsMapping, "ObjectName")]]
    ]
  )

  LiteralRegistry.register(
    :class => Mapping::MappingWS_GetMapping_Output,
    :schema_name => XSD::QName.new(NsMapping, "MappingWS_GetMapping_Output"),
    :schema_element => [
      ["objectName", ["SOAP::SOAPString", XSD::QName.new(NsMapping, "ObjectName")]],
      ["listOfField", ["Mapping::ListOfField", XSD::QName.new(NsMappingservice, "ListOfField")]]
    ]
  )
end

end
