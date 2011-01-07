gem 'soap4r'
require 'defaultDriver'
require 'json'
require 'rest_client'

class Scontact < SourceAdapter
  def initialize(source,credential)
    super(source,credential)
  end
 
  def login

    auth = ClientAuthHeaderHandler.new
    @sessionid = Store.get_value("#{current_user.login}:session")
    auth.sessionid =  @sessionid
    endpoint_url = Store.get_value("#{current_user.login}:endpoint_url")
    @force = Soap.new(endpoint_url)
    @force.headerhandler << auth

    resturl = endpoint_url.gsub(/services.*/,"services/data/v20.0/sobjects")

    @customfields = []
    puts "#{resturl}/Contact/describe/"
    puts "Authorization: OAuth #{@sessionid.split('!')[1]}"
    parsed=
    JSON.parse(
      RestClient.get(
        "#{resturl}/Contact/describe/", 
        {
          "Accept" => "*/*", 
          "Authorization" => "OAuth #{@sessionid.split('!')[1]}", 
          "X-PrettyPrint" => "1"
        }
      ).body
    )
    
    parsed["fields"].each do |field|
      @customfields << field if field["name"] =~ /__c/
    end

  end

  def metadata
    show = []
    edit = []
    @customfields.each do |f|
      key = f["name"]
      key[0] = key[0,1].downcase
      
      field = {
        :label => f["label"],
        :value => "{{@scontact/#{key}}}",
        :type => 'labeledvalueli'
      }
      editfield = {
         :label => f["label"],
         :value => "{{@scontact/#{key}}}",
         :name => "scontact[#{key}]",
         :type => 'labeledinputli'
       }      
      show << field
      edit << editfield
    end
    
    {'showfields' => {:type => 'view', :children => show}, 'editfields' => {:type => 'view', :children => edit} }.to_json
  end
  
  def query(params=nil)
    
    @result = {}
    
    fieldquery = ""
    @customfields.each do |f|
      fieldquery << ",#{f["name"]}"
    end
    
    querystr = QueryAll.new("SELECT Id,AccountId,Name,Phone,Email#{fieldquery} from Contact")
    contacts = @force.query(querystr).result.records
    contacts.each do |a|
      puts a.inspect
      @result[a.id] = { "id" => a.id, "name" => a.name, "phone" => a.phone, "email" => a.email, "account_id" => a.accountId }
      @customfields.each do |f|
        key = f["name"]
        key[0] = key[0,1].downcase
        @result[a.id][f["name"]] = a[key]
      end
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

  end
 
  def update(update_hash)
    # TODO: Update an existing record in your backend data source
    contact = Contact.new
    names = update_hash["name"].split(' ') if update_hash["name"]
    
    contact.id = update_hash["id"]
    contact.firstName = names[0] if update_hash["name"]
    contact.lastName = names[1] if update_hash["name"]
    contact.phone = update_hash["phone"]
    contact.email = update_hash["email"]
    result = @force.update(Update.new([contact]))
    puts result.inspect
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