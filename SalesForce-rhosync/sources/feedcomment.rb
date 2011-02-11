class Feedcomment < SourceAdapter
  def initialize(source,credential)
    super(source,credential)
  end
 
  def login
    @sessionid = Store.get_value("#{current_user.login}:session")
    @uid = Store.get_value("#{current_user.login}:uid")
    endpoint_url = Store.get_value("#{current_user.login}:endpoint_url")
    @resturl = endpoint_url.gsub(/services.*/,"services/data/v20.0") 
    @restheaders = {
       "Accept" => "*/*", 
       "Authorization" => "OAuth #{@sessionid.split('!')[1]}", 
       "X-PrettyPrint" => "1"
     }
    @postheaders = {
      "Accept" => "*/*", 
      "Content-Type" => "application/json", 
      "Authorization" => "OAuth #{@sessionid.split('!')[1]}", 
      "X-PrettyPrint" => "1"
    }
  end
 
  def query(params=nil)
    raw_data = Store.get_value("#{current_user.login}:feeddata")
    if raw_data == "" or raw_data == nil
      requesturl = @resturl + "/query/?q=" + CGI::escape("SELECT Id,ParentId,Parent.Type,Parent.Name,Type,CreatedDate,CreatedBy.name,FeedPost.body,FeedPost.Title,FeedPost.LinkURL,(SELECT FieldName,OldValue,NewValue FROM FeedTrackedChanges),(SELECT Id,CommentBody,CreatedDate,CreatedById,CreatedBy.FirstName,CreatedBy.LastName,FeedItemId FROM FeedComments ORDER BY CreatedDate) FROM NewsFeed ORDER BY CreatedDate DESC LIMIT 999")
      raw_data = RestClient.get(requesturl, @restheaders) do |response,request, result, &block| 
          case response.code 
          when 200 
            p "It worked !" 
            response.body
          when 400
            p "It failed !"
            p response.body
            raise "400 error"
          end
      end     
    end
    parsed_data = JSON.parse raw_data
    
    @result = {}
    
    parsed_data["records"].each do |record|
      if record["FeedComments"]
        record["FeedComments"]["records"].each do |comment|
          object = {}
          object["comment"] = comment["CommentBody"]
          object["timestamp"] = Time.parse(comment["CreatedDate"]).to_i.to_s
          object["id"] = comment["Id"]
          object["feedid"] = comment["FeedItemId"]
          object["creator"] = comment["CreatedBy"]["FirstName"] + " " + comment["CreatedBy"]["LastName"]
          
          @result[object["id"]] = object
        end
        
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
  
    puts "XXXXX: #{@resturl.inspect}"
    requesturl = @resturl + "/sobjects/FeedComment"
    
    post = {}
    post["CommentBody"] = create_hash["comment"]
    post["FeedItemId"] = create_hash["feedid"]
    puts post.inspect
    begin
      RestClient.post(requesturl, post.to_json, @postheaders)
    rescue Exception => e
    end
    Store.put_value("#{current_user.login}:feeddata","")
    ""
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