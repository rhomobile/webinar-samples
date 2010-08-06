require 'rho'
require 'rho/rhocontroller'
require 'rho/rhoerror'
require 'helpers/browser_helper'

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

  def sync_callback
    puts @params.inspect
    if @params["status"] == "ok"
      if @params["source_name"] == "Station"
        js = "document.getElementById('login').innerHTML=\"Loading Routes: 0%\";"
        WebView.execute_js(js)
      elsif @params["source_name"] == "Route"
        js = "document.getElementById('login').innerHTML=\"Loading Stops: 0%\";"
        WebView.execute_js(js)
      elsif @params["source_name"] == "Routestop"
        js = "document.getElementById('login').innerHTML=\"Loading completed\";"
        WebView.execute_js(js)
        sleep 1
        WebView.navigate Rho::RhoConfig.start_path 
      end
    elsif @params["status"] == "in_progress"
      name = @params["source_name"]
      name = "Stops" if name == "Routestop"
      js = "document.getElementById('login').innerHTML=\"Loading #{name}: #{(@params["cumulative_count"].to_f/@params["total_count"].to_f * 100).to_i}%\";"
      WebView.execute_js(js)
    end
  end

  def login_callback
    errCode = @params['error_code'].to_i
    if errCode == 0
      # run sync if we were successful
      #WebView.navigate Rho::RhoConfig.options_path
      SyncEngine.dosync
    else
      if errCode == Rho::RhoError::ERR_CUSTOMSYNCSERVER
        @msg = @params['error_message']
      end
        
      if !@msg || @msg.length == 0   
        @msg = Rho::RhoError.new(errCode).message
      end
      
      WebView.navigate Rho::RhoConfig.start_path
    end  
  end

  def do_login
    if @params['login'] and @params['password']
      begin
        SyncEngine.set_notification(-1,url_for(:action => :sync_callback),"")
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
end
