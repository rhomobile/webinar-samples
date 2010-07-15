require 'rho/rhoapplication'

class AppApplication < Rho::RhoApplication
  def initialize
    # Tab items are loaded left->right, @tabs[0] is leftmost tab in the tab-bar
    @tabs = [
        {:label => "Index", :action => '/app', :icon => "/public/images/android/btn_radio_on.png", :reload => true},
        {:label => "Person", :action => '/app/Person', :icon => ""},
        {:label => "Product", :action => '/app/Product', :icon => ""}
      ]

    @@tabbar = nil
    # Important to call super _after_ you define @tabs!
    
#    @@toolbar = [
#        {:action => :back, :icon => '/public/images/iui-logo-touch-icon.png'},
#        {:action => :home }
#      ]
    
    super
    
    @default_menu = {
      "Go Home" => :home,
      "Person" => "/app/Person",
      "Product" => "/app/Product"
    }
  end
end
