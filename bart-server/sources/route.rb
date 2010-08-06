class Route < SourceAdapter
  def initialize(source,credential)
    super(source,credential)
  end
 
  def login
    # TODO: Login to your data source here if necessary
  end
 
  def query(params=nil)
    @result = {}
    #first get list of stations
    
    routes = XmlSimple.xml_in open(BART_API + "route.aspx?cmd=routes&key=" + BART_KEY).read
    routes["routes"][0]["route"].each do |e|
      route = {}
      route["name"] = e["name"][0]
      route["abbr"] = e["abbr"][0]
      route["route_id"] = e["number"][0]
      route["color"] = e["color"][0]
      
      routeinfo = XmlSimple.xml_in open(BART_API + "route.aspx?cmd=routeinfo&route="+ route["route_id"] + "&key=" + BART_KEY).read
      routeinfo["routes"][0]["route"].each do |e|
        route["origin"] = e["origin"][0]
        route["destination"] = e["destination"][0]
        route["num_stations"] = e["num_stns"][0]
        route["stations"] = ""
        e["config"][0]["station"].each do |e|
          route["stations"] += (e.to_s + ",")
        end
      end
      @result[route["route_id"]] = route
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