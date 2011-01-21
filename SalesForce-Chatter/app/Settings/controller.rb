require 'rho'
require 'rho/rhocontroller'
require 'rho/rhoerror'
require 'helpers/browser_helper'
require 'json'

class SettingsController < Rho::RhoController
  include BrowserHelper
  
  def index
    @msg = @params['msg']
    render
  end

  def login
    @msg = @params['msg']
    render :action => :login, :back => '/app'
  end

  def login_callback
    errCode = @params['error_code'].to_i
    if errCode == 0
      # run sync if we were successful
      SyncEngine.dosync
    else
      if errCode == Rho::RhoError::ERR_CUSTOMSYNCSERVER
        @msg = @params['error_message']
      end
        
      if !@msg || @msg.length == 0   
        @msg = Rho::RhoError.new(errCode).message
      end
      
    end 
    WebView.navigate Rho::RhoConfig.start_path
     
  end
  
  def sync_notify
    if @params['status'] == "ok"
      WebView.execute_js("feed.DataStore.load();feed.FeedList.refresh(); feed.FeedList.setLoading(false,true);feed.FormPanel.setValues({'message':''});") if @params["source_name"] =~ /Feed/
      WebView.execute_js("feedcomment.DataStore.load();feedcomment.FeedList.refresh(); feedcomment.FeedList.setLoading(false,true);feedcomment.FormPanel.setValues({'comment':''});") if @params["source_name"] == "Feedcomment"
    end
 
    if @params['status'] == "complete"   
      WebView.execute_js("feed.DataStore.load();feed.FeedList.refresh(); feed.FeedList.setLoading(false,true);") 
    end
  end

  def do_login
    if @params['login'] and @params['password']
      begin
        SyncEngine.login(@params['login'], @params['password'], (url_for :action => :login_callback) )
        render :action => :wait
      rescue Rho::RhoError => e
        @msg = e.message
        render :action => :login
      end
    else
      @msg = Rho::RhoError.err_message(Rho::RhoError::ERR_UNATHORIZED) unless @msg && @msg.length > 0
      render :action => :login
    end
  end
  
  def logout
    SyncEngine.logout
    @msg = "You have been logged out."
    render :action => :login
  end
  
  def reset
    render :action => :reset
  end
  
  def do_reset
    Rhom::Rhom.database_full_reset
    SyncEngine.dosync
    @msg = "Database has been reset."
    redirect :action => :index, :query => {:msg => @msg}
  end
  
  def do_sync
    SyncEngine.dosync
    @msg =  "Sync has been triggered."
    redirect :action => :index, :query => {:msg => @msg}
  end
  
  #Sencha helpers
  def logged_in
    json = JSON.generate(SyncEngine.logged_in)
    render :string => json
  end
  
  
end
