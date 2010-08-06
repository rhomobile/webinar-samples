# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Route
  include Rhom::PropertyBag
  
  #add model specifc code here
  enable :sync
  set :sync_priority, 2
end
