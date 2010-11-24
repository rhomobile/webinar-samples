require 'rho'
require 'rho/rhocontroller'
require 'rho/rhoerror'
require 'helpers/browser_helper'

class SettingsController < Rho::RhoController
  include BrowserHelper
    
  def rotation_callback
    WebView.refresh
  end
  
  def my_login
    System::set_screen_rotation_notification(url_for(:action => :rotation_callback),"")
    
    if System.get_property('has_network') == true
      $UseRhosync = true
      SyncEngine.login(" "," ", (url_for :action => :my_login_callback) )
      render :action => :wait
    else
      $UseRhosync = false
      WebView.navigate("/public/ui/theoracle/index.html")
    end
  end
  
  def my_sync
    if System.get_property('has_network') == true
      $UseRhosync = true
      Contact.set_notification("/app/Settings/sync_notify",'')
      SyncEngine.dosync
      render :action => :wait
    end
  end
  
  def my_login_callback
    SyncEngine.dosync
  end
  
  def sync_notify
    puts 'sync_notify: ' + @params.inspect  
    status = @params['status'] ? @params['status'] : ""
 
    if status == "in_progress"  
        #do nothing
    elsif status == "complete" || status == "ok"
          WebView.navigate ("/public/ui/theoracle/index.html")
    elsif status == "error"
          err_code = @params['error_code'].to_i
          rho_error = Rho::RhoError.new(err_code)
 
          @msg = @params['error_message'] if err_code == Rho::RhoError::ERR_CUSTOMSYNCSERVER
          @msg = rho_error.message() unless @msg && @msg.length > 0   
 
          if  rho_error.unknown_client?(@params['error_message'])
            Rhom::Rhom.database_client_reset
            SyncEngine.dosync
          end    
    end
  end
end
