# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Image
  include Rhom::PropertyBag
  
  #add model specifc code here
  enable :sync
  
  property :image_uri, :blob
  
end
