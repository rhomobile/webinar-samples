# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Signature
  include Rhom::PropertyBag
  
  #add model specifc code here
  property :signature_uri, :blob
end
