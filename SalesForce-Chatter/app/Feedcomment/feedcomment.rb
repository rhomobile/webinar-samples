# The model has already been created by the framework, and extends Rhom::RhomObject
# You can add more methods here
class Feedcomment
  include Rhom::PropertyBag

  # Uncomment the following line to enable sync with Feedcomment.
  enable :sync
  set :sync_priority, 10
  #add model specifc code here
end
