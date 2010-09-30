class Station < SourceAdapter
  def initialize(source,credential)
    super(source,credential)
  end
 
  def login
  end
 
  def query(params=nil)
    @result = {}
    
    stns = XmlSimple.xml_in open(BART_API + "stn.aspx?cmd=stns&key=" + BART_KEY).read
    stns["stations"][0]["station"].each do |e|
      station = {}
      station["name"] = e["name"][0]
      station["abbr"] = e["abbr"][0]
      station["address"] = e["address"][0]
      station["city"] = e["city"][0]
      station["county"] = e["county"][0]
      station["state"] = e["state"][0]
      station["zip"] = e["zipcode"][0]
      
      stnaccess = XmlSimple.xml_in open(BART_API + "stn.aspx?cmd=stnaccess&orig=" + station["abbr"] + "&key=" + BART_KEY).read
      stnaccess["stations"][0]["station"].each do |e|
         station["parking"] = e["parking_flag"]
         station["lockers"] = e["locker_flag"]
         station["bikeracks"] = e["bike_flag"]
         station["entering"] = e["entering"][0]
       end if stnaccess["stations"][0]["station"]
       
       stninfo = XmlSimple.xml_in open(BART_API + "stn.aspx?cmd=stninfo&orig=" + station["abbr"] + "&key=" + BART_KEY).read
       stninfo["stations"][0]["station"].each do |e|
         station["lat"] = e["gtfs_latitude"][0]
         station["long"] = e["gtfs_longitude"][0]
         station["intro"] = e["intro"][0]
         station["cross"] = e["cross_street"][0]
       end  if stninfo["stations"][0]["station"]
       
       @result[station["abbr"]] = station
    end  if stns["stations"][0]["station"]
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