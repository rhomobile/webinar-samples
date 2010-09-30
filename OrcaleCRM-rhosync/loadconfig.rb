require "rexml/document"

class LoadConfig
	def initialize()
		@objects = {}
		@types = {}
		@wsdlurl
		
		file = File.new( "config.xml" )
		doc = REXML::Document.new file
		
		@wsdlurl = doc.root.attributes["endpointurl"]
		
		doc.elements.each("config/object") {|object|
			e = {}
			f = Array.new
			
			object.elements.each {|field|
				e[field.elements["elementName"].text] = field.elements["type"].text		
				f[f.size] = field.elements["elementName"].text
			}
			@types[object.attributes["name"]] = e
			@objects[object.attributes["name"]] = f
		}
	end
	
	def get_fields(objectName)
		return @objects[objectName]	
	end
	
	def get_type(objectName, fieldName)
		return @types[objectName][fieldName]
	end
	
	def get_url
		return @wsdlurl
	end
	
	def get_types
		return @types
	end
	
	def get_objects
		return @objects
	end
	
end

#if __FILE__ == $0
#	LC = LoadConfig.new()
#	objects = LC.get_objects
#	puts objects.inspect
#	types = LC.get_types
#	puts types.inspect
#	puts LC.get_fields("Account")
#	puts LC.get_type("Account", "accountName")
#	puts LC.get_url
#end

