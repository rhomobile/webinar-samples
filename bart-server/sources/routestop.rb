class Routestop < SourceAdapter
  def initialize(source,credential)
    super(source,credential)
  end
 
  def login
    # TODO: Login to your data source here if necessary
  end
 
  def query(params=nil)
    @result = {}
    resultlist = []
    #first get list of routes
    routes = XmlSimple.xml_in open(BART_API + "route.aspx?cmd=routes&key=" + BART_KEY).read
    routes["routes"][0]["route"].each do |e|
      number = e["number"][0]
      
      routesched = XmlSimple.xml_in open(BART_API + "sched.aspx?cmd=routesched&route=" + number + "&key=" + BART_KEY).read
      unless routesched["route"][0]["train"].nil?
        routesched["route"][0]["train"].each do |e|
          e["stop"].each do |s|
            stop = {}
            stop["route"] = number
            stop["date"] = routesched["date"][0]
            stop["train"] = e["index"]
            stop["station"] = s["station"]
            stop["bikes"] = s["bikeflag"]
            stop["time"] = s["origTime"]
            resultlist << stop

          end
        end
      end
    end
    
    resultlist.sort! do |x,y| 
       sort = x["route"].to_i <=> y["route"].to_i 
       sort = Time.parse(x["time"]).to_i <=> Time.parse(y["time"]).to_i if sort == 0 and x["time"] and y["time"]
       sort
     end   
    i = 0

     resultlist.each do |x|
       x["sort_id"] = "%07d" % i
        @result[i.to_s] = x
        i = i + 1
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