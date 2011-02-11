require 'restclient'
require 'xmlsimple'
class Issue < SourceAdapter
  def initialize(source,credential)
    super(source,credential)
  end
 
  def login
    # TODO: Login to your data source here if necessary
  end
 
  def query(params=nil)
    auth=Store.get_value("username:#{current_user.login}:token")
    #Authorization: GoogleLogin auth=yourAuthValue
    puts "Accessing spreadsheet list with current user #{current_user.login} auth #{auth}"
    begin 
      res =  RestClient.get("https://spreadsheets.google.com/feeds/spreadsheets/",:Authorization=>"GoogleLogin auth=#{auth}")
      @result={}
      spreads=XmlSimple.xml_in(res.body)
      spreads["entry"].each do |entry|
        #puts "Title: #{entry['title'][0]['content']}"
        if entry["title"][0]["content"]=="IssueTracker"
          #puts  "https://spreadsheets.google.com/feeds/worksheets/#{entry.id}/private/full"
          entry["link"].each do |link|
            if link["rel"]=="http://schemas.google.com/spreadsheets/2006#worksheetsfeed"
              workurl=link["href"]
              #puts "Accessing #{workurl}"
              res2 =  RestClient.get(workurl,:Authorization=>"GoogleLogin auth=#{auth}")
              wrksheets=XmlSimple.xml_in(res2.body)
              worksheetkey=wrksheets["entry"][0]["id"]
              #puts "Worksheetkey #{worksheetkey}"
              res3=RestClient.get("#{worksheetkey}",:Authorization=>"GoogleLogin auth=#{auth}")
              #puts "Result #{res3.body}"
              tablelinks=XmlSimple.xml_in(res3.body)
              tablelinks["link"].each do |link|
                if link["rel"]=~/listfeed/
                  res4=RestClient.get("#{link['href']}",:Authorization=>"GoogleLogin auth=#{auth}")
                  tabledata=XmlSimple.xml_in(res4.body)
                  tabledata["entry"].each do |entry|
                    @result[entry["ticket"]]={"ticket"=>entry["ticket"],"status"=>entry["status"],"description"=>entry["description"],"priority"=>entry["priority"]}
                  end
                end
              end
            end
          end
        end
      end
    rescue Exception=>e
      puts "Error: " +e.inspect.to_s
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
    # raise "Please provide some code to delete a single object in the backend application using the object_id"
  end
 
  def logoff
    # TODO: Logout from the data source if necessary
  end
end