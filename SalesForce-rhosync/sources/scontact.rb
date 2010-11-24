gem 'soap4r'
require 'defaultDriver'

class Scontact < SourceAdapter
  def initialize(source,credential)
    super(source,credential)
  end
 
  def login

    auth = ClientAuthHeaderHandler.new
    auth.sessionid = Store.get_value("#{current_user.login}:session")
    endpoint_url = Store.get_value("#{current_user.login}:endpoint_url")
    @force = Soap.new(endpoint_url)
    @force.headerhandler << auth

  end
 
  def query(params=nil)
    @result = {}
    
    querystr = QueryAll.new("SELECT Id,AccountId,Name,Phone,Email from Contact")
    contacts = @force.query(querystr).result.records
    contacts.each do |a|
      @result[a.id] = { "id" => a.id, "name" => a.name, "phone" => a.phone, "email" => a.email, "account_id" => a.accountId } 
    end
    
  end
  
  def sync
    # Manipulate @result before it is saved, or save it 
    # yourself using the Rhosync::Store interface.
    # By default, super is called below which simply saves @result
    super
  end
 
  def create(create_hash,blob=nil)
    # TODO: Create a new record in your backend data source
    # If your rhodes rhom object contains image/binary data 
    # (has the image_uri attribute), then a blob will be provided
    raise "Please provide some code to create a single record in the backend data source using the create_hash"
  end
 
  def update(update_hash)
    # TODO: Update an existing record in your backend data source
    raise "Please provide some code to update a single record in the backend data source using the update_hash"
  end
 
  def delete(object_id)
    # TODO: write some code here if applicable
    # be sure to have a hash key and value for "object"
    # for now, we'll say that its OK to not have a delete operation
    # raise "Please provide some code to delete a single object in the backend application using the hash values in name_value_list"
  end
 
  def logoff
    # TODO: Logout from the data source if necessary
  end
end