require 'xsd/qname'

module Mapping


# {urn:/crmondemand/xml/mappingservice}ListOfFieldTopElmt
#   listOfField - Mapping::ListOfField
class ListOfFieldTopElmt
  attr_accessor :listOfField

  def initialize(listOfField = nil)
    @listOfField = listOfField
  end
end

# {urn:/crmondemand/xml/mappingservice}ListOfField
class ListOfField < ::Array
end

# {urn:/crmondemand/xml/mappingservice}Field
#   lastUpdated - SOAP::SOAPString
#   displayName - (any)
#   elementName - (any)
#   dataType - (any)
class Field
  attr_accessor :lastUpdated
  attr_accessor :displayName
  attr_accessor :elementName
  attr_accessor :dataType

  def initialize(lastUpdated = nil, displayName = nil, elementName = nil, dataType = nil)
    @lastUpdated = lastUpdated
    @displayName = displayName
    @elementName = elementName
    @dataType = dataType
  end
end

# {urn:crmondemand/ws/mapping/}MappingWS_GetMapping_Input
#   objectName - SOAP::SOAPString
class MappingWS_GetMapping_Input
  attr_accessor :objectName

  def initialize(objectName = nil)
    @objectName = objectName
  end
end

# {urn:crmondemand/ws/mapping/}MappingWS_GetMapping_Output
#   objectName - SOAP::SOAPString
#   listOfField - Mapping::ListOfField
class MappingWS_GetMapping_Output
  attr_accessor :objectName
  attr_accessor :listOfField

  def initialize(objectName = nil, listOfField = nil)
    @objectName = objectName
    @listOfField = listOfField
  end
end


end
