require 'rubygems'
gem 'soap4r'

require 'wsse_authentication.rb'
require 'ContactWsdlDriver.rb'
require 'mappingClient.rb'
require 'loadconfig.rb'

class Contact < SourceAdapter
	@@displayNames = {}

  def initialize(source,credential)
	super(source,credential)
  end
 
  def login
    puts 'Contact > login'
    	puts 'Contact > login.syncing display names'
    	### Connects to the mapping service and syncs the display names
    begin
  		mappingClient = Mapping::MappingClient.new("Contact")
 		@@displayNames = mappingClient.get_fields 
  	rescue Errno::EADDRNOTAVAIL => e
  		puts 'Connection Error: ' << e.to_s
  		puts 'Retrying connection'
  		retry
  	rescue SOAP::FaultError => e
  		puts 'SOAP error occured: ' << e.inspect
  	rescue Exception => e
  	  puts 'Other error: ' << e.inspect
  	  raise e
  	end
    
	
  end
 
  def query(params=nil)
  	puts 'Contact > query'
 begin
 	### Loads the configuration data from the config.xml then connects to the Contact webservice and populates @result
  		loadConfig = LoadConfig.new()
  		endpoint_url = loadConfig.get_url
  		#endpoint_url = ARGV.shift
		obj = ContactWsdl::ContactWsdl.new(endpoint_url)
		obj.headerhandler << WsseAuthHeader.new(Store.get_value('User'),Store.get_value('Password'))
  		
  		@result = {}
  		
  		contactQuery = ContactWsdl::ContactQuery.new()
  		@@displayNames.each_key {|key| 
			contactQuery.instance_variable_set("@#{key}", "") # similar to SELECT *, this pulls every field with a display name
		}
		
  		
  	contactQuery.id = ""
		contactQuery.xmlattr_searchspec=("[ContactFirstName] ~LIKE '*'") # Query for all contacts
		listOfContact = ContactWsdl::ListOfContactQuery.new(contactQuery)
		
		contactQueryPage_Input = ContactWsdl::ContactQueryPage_Input.new()
		contactQueryPage_Input.listOfContact = listOfContact
		
		contactQueryPage_Output = obj.contactQueryPage(contactQueryPage_Input)
		
		contactQueryPage_Output.listOfContact.contact.each do |contact|
			entry = {}
			@@displayNames.each_key {|key|
				entry[key]=contact.instance_variable_get("@#{key}")
			}
			#puts contact.methods.to_s
			@result[contact.id.to_s] = entry
		end
		
		puts 'synced ' << @result.length.to_s << ' contact entries'
		
	rescue Errno::EADDRNOTAVAIL => e
		puts 'Connection Error: ' << e.to_s
		puts 'Retrying connection'
		retry
	rescue SOAP::FaultError => e
		puts 'SOAP error occured: ' << e.inspect
	end 

	puts 'Contact > query.finished'
  
  end
 
  def sync
	# Manipulate @result before it is saved, or save it 
	# yourself using the Rhosync::Store interface.
	# By default, super is called below which simply saves @result
	super
  end
 
  ### Loads the configuration data from the config.xml then connects to the Contact webservice and creates a new contact
  def create(create_hash,blob=nil)
	begin
  	 	puts 'Contact > create'
		puts create_hash.inspect
  	 	
  		loadConfig = LoadConfig.new()
  		endpoint_url = loadConfig.get_url
  		#endpoint_url = ARGV.shift
		obj = ContactWsdl::ContactWsdl.new(endpoint_url)
		obj.headerhandler << WsseAuthHeader.new(Store.get_value('username'),Store.get_value('password'))
  		
  		
  		contactData = ContactWsdl::ContactData.new()
  		create_hash.each_key {|key| 
			contactData.instance_variable_set("@#{key}", create_hash[key])
		}
		
		listOfContact = ContactWsdl::ListOfContactData.new(contactData)
		
		contactInsert_Input = ContactWsdl::ContactInsert_Input.new()
		contactInsert_Input.listOfContact = listOfContact
		
		contactInsert_Output = obj.contactInsert(contactInsert_Input)
		
		@returnId = nil
		contactInsert_Output.listOfContact.contact.each do |contacts|
			puts "ModifiedById: #{contacts.modifiedById}"
			puts "CreatedById: #{contacts.createdById}"
			puts "Id: #{contacts.id}"
			puts "CreatedBy: #{contacts.createdBy}"
			puts "ModifiedBy: #{contacts.modifiedBy}"
			
			@returnId = contacts.id.to_s
		end
		
		puts 'Contact > create.finished'
  		
  		return @returnId

	rescue Errno::EADDRNOTAVAIL => e
		puts 'Connection Error: ' << e.to_s
		puts 'Retrying connection'
		retry
	rescue SOAP::FaultError => e
		puts 'SOAP error occured: ' << e.inspect
	end 

  end
 
  ### Loads the configuration data from the config.xml then connects to the Contact webservice and updates an existing contact
  def update(update_hash)
	begin
  	 	puts 'Contact > update'
  	 	puts update_hash.inspect
  	 	
  		loadConfig = LoadConfig.new()
  		endpoint_url = loadConfig.get_url
  		#endpoint_url = ARGV.shift
		obj = ContactWsdl::ContactWsdl.new(endpoint_url)
		obj.headerhandler << WsseAuthHeader.new(Store.get_value('username'),Store.get_value('password'))
  		
  		
  		contactData = ContactWsdl::ContactData.new()
  		update_hash.each_key {|key| 
			contactData.instance_variable_set("@#{key}", update_hash[key])
		}
		
		listOfContact = ContactWsdl::ListOfContactData.new(contactData)
		
		contactUpdate_Input = ContactWsdl::ContactUpdate_Input.new()
		contactUpdate_Input.listOfContact = listOfContact
		
		contactUpdate_Output = obj.contactUpdate(contactUpdate_Input)
		
		contactUpdate_Output.listOfContact.contact.each do |contacts|
			puts "ModifiedById: #{contacts.modifiedById}"
			puts "CreatedById: #{contacts.createdById}"
			puts "Id: #{contacts.id}"
			puts "CreatedBy: #{contacts.createdBy}"
			puts "ModifiedBy: #{contacts.modifiedBy}"
			
		end
		
		puts 'Contact > update.finished'
	rescue Errno::EADDRNOTAVAIL => e
		puts 'Connection Error: ' << e.to_s
		puts 'Retrying connection'
		retry
	rescue SOAP::FaultError => e
		puts 'SOAP error occured: ' << e.inspect
	end 
  
  end
 
  ### Loads the configuration data from the config.xml then connects to the Contact webservice and deletes an existing contact
  def delete(object_id)
	begin
		puts 'Contact > delete'
		puts object_id["id"]
		
		loadConfig = LoadConfig.new()
  		endpoint_url = loadConfig.get_url
  		#endpoint_url = ARGV.shift
		obj = ContactWsdl::ContactWsdl.new(endpoint_url)
		obj.headerhandler << WsseAuthHeader.new(Store.get_value('username'),Store.get_value('password'))
  		
		
		contactData = ContactWsdl::ContactData.new()
		
		contactData.id = object_id["id"]
		
		listOfContact = ContactWsdl::ListOfContactData.new(contactData)
		
		contactDelete_Input = ContactWsdl::ContactDelete_Input.new()
		contactDelete_Input.listOfContact = listOfContact
		
		contactDelete_Output = obj.contactDelete(contactDelete_Input)
		
		contactDelete_Output.listOfContact.contact.each do |contacts|
			puts "ModifiedById: #{contacts.modifiedById}"
			puts "CreatedById: #{contacts.createdById}"
			puts "Id: #{contacts.id}"
			puts "CreatedBy: #{contacts.createdBy}"
			puts "ModifiedBy: #{contacts.modifiedBy}"	
		end
			
		puts 'Contact > delete.finished'
	rescue Errno::EADDRNOTAVAIL => e
		puts 'Connection Error: ' << e.to_s
		puts 'Retrying connection'
		retry
	rescue SOAP::FaultError => e
		puts 'SOAP error occured: ' << e.inspect
	end 

  end
 
  def logoff
  	puts 'Contact > logoff'
	# TODO: Logout from the data source if necessary
  end
  

end
