require 'rubygems'
gem 'soap4r'

require 'MappingDriver.rb'
require 'wsse_authentication.rb'
require 'loadconfig.rb'


module Mapping

class MappingClient
	
	def initialize(objectName)

	
		loadConfig = LoadConfig.new()

		endpoint_url = loadConfig.get_url
		#endpoint_url = ARGV.shift
		mappingobj = Default_Binding_Mapping.new(endpoint_url)
		
		mappingobj.headerhandler << WsseAuthHeader.new(Store.get_value('User'),Store.get_value('Password'))
		
		mappingWS_GetMapping_Input = MappingWS_GetMapping_Input.new(objectName)
	
		mappingWS_GetMapping_Output = mappingobj.getMapping(mappingWS_GetMapping_Input)
	
		@fields = {}
	

		mappingWS_GetMapping_Output.listOfField.each do |field|
			elementNamedowncase = field.elementName.downcase
			eName = field.elementName
			eName[0] = elementNamedowncase[0]
			@fields[eName.to_s] = field.displayName
		end	

	end
	
	def get_fields
		return @fields
	end
end

end

#if __FILE__ == $0
#MC = Mapping::MappingClient.new("Account")
#fields = MC.get_fields
#puts fields.inspect
#end