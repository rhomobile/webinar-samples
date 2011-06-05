require 'rho/rhoapplication'
require 'nfc'
class AppApplication < Rho::RhoApplication
  def initialize
    # Tab items are loaded left->right, @tabs[0] is leftmost tab in the tab-bar
    # Super must be called *after* settings @tabs!
    @tabs = nil
    #To remove default toolbar uncomment next line:
    #@@toolbar = nil
    super

    # Uncomment to set sync notification callback to /app/Settings/sync_notify.
    # SyncEngine::set_objectnotify_url("/app/Settings/sync_notify")
    # SyncEngine.set_notification(-1, "/app/Settings/sync_notify", '')
  end
  
  def on_activate_app
    Rho::NFCManager.enable
    
    Rho::NFCManager.set_nfc_callback("/app/Nfc/nfc_callback")
    Rho::NFCManager.set_nfc_tech_callback("/app/Nfc/nfc_tech_callback")
    
    Rho::NFCManager.perform_open_application_event
  end
end
