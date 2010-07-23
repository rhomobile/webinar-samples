require 'json'
require 'rest_client'

class Product < SourceAdapter
  
  def initialize(source,credential)
    @base = 'http://localhost:3000/products'
    super(source,credential)
  end
 
  def query(params=nil)
    parsed=JSON.parse(RestClient.get("#{@base}.json").body)
    
    @result={}
    parsed.each { |item|@result[item["product"]["id"].to_s]=item["product"] } if parsed    
    @result
  end
 
  def create(create_hash)
    res = RestClient.post(@base,:product => create_hash)
    
    # after create we are redirected to the new record. 
    # We need to get the id of that record and return it as part of create
    # so rhosync can establish a link from its temporary object on the 
    # client to this newly created object on the server
    JSON.parse(RestClient.get("#{res.headers[:location]}.json").body)["product"]["id"]
  end
 
  def update(update_hash) 
    obj_id = update_hash['id']
    update_hash.delete('id')   
    RestClient.put("#{@base}/#{obj_id}",:product => update_hash)
  end
 
  def delete(object_id)   
    RestClient.delete("#{@base}/#{object_id['id']}")
  end
end