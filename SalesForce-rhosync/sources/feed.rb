class Feed < SourceAdapter
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
    #pull the comments and the feeds
    requesturl = @resturl + "/query/?q=" + CGI::escape("SELECT Id,ParentId,Parent.Type,Parent.Name,Type,CreatedDate,CreatedBy.name,FeedPost.body,FeedPost.Title,FeedPost.LinkURL,(SELECT FieldName,OldValue,NewValue FROM FeedTrackedChanges),(SELECT Id,CommentBody,CreatedDate,CreatedById,CreatedBy.FirstName,CreatedBy.LastName,FeedItemId FROM FeedComments ORDER BY CreatedDate) FROM NewsFeed ORDER BY CreatedDate DESC")
    
    raw_data = RestClient.get(requesturl, @restheaders).body
    
    #store in the redis datastore for the feedcomment adapter
    Store.put_value("#{current_user.login}:feeddata", raw_data)

    parsed_data = JSON.parse raw_data
    
    #puts parsed_data.inspect
    
    # Feed item:
    # Created by
    # timestamp (seconds)
    # Message
    # link
    # link title
    # type
    # (client side: comment count)
    # id
    
    @result = {}
    
    parsed_data["records"].each do |record|
      object = {}
      object["id"] = record["Id"]
      object["timestamp"] = Time.parse(record["CreatedDate"]).to_i.to_s
      object["creator"] = record["CreatedBy"]["Name"]
      object["type"] = record["Type"]
 
      if record["Type"] == "UserStatus" or record["Type"] == "TextPost"
        object["message"] = record["FeedPost"]["Body"] 
      elsif record["Type"] == "ContentPost"
        object["message"] = record["FeedPost"]["Body"] + " <br/><b>Uploaded file:</b> " + record["FeedPost"]["Title"]
      elsif record["Type"] == "LinkPost"
        object["message"] = record["FeedPost"]["Body"] 
        object["linktitle"] = record["FeedPost"]["Title"]
        object["link"] = record["FeedPost"]["LinkUrl"]
      elsif record["Type"] == "TrackedChange"
        field = record["FeedTrackedChanges"]["records"][0]["FieldName"]
        if field == "created"
          object["message"] = "Created #{record["Parent"]["Type"]}: #{record["Parent"]["Name"]}"
        else
          #TODO: get label for field instead of name
          #TODO: handle more than one change
          fieldname = record["FeedTrackedChanges"]["records"][0]["FieldName"].split(".")[-1]
          oldv = record["FeedTrackedChanges"]["records"][0]["OldValue"]
          newv = record["FeedTrackedChanges"]["records"][0]["NewValue"]
          object["message"] = "Modified #{record["Parent"]["Type"]}: <b>#{record["Parent"]["Name"]}</b>. Changed #{fieldname} from #{oldv} to #{newv}"
        end
      end
      
      @result[object["id"]] = object
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
    requesturl = @resturl + "/sobjects/User/#{@uid}?_HttpMethod=PATCH"
    
    post = {}
    post["CurrentStatus"] = create_hash["message"]
    RestClient.post(requesturl, post.to_json, @postheaders)
    
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