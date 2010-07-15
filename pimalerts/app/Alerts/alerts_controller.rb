require 'rho/rhocontroller'
require 'helpers/browser_helper'

class AlertsController < Rho::RhoController
  include BrowserHelper

  #GET /Alerts
  def index
    @title = "index"
    render
  end

  def show_popup
    @title = "Popup"
    Alert.show_popup "Hello there"
    render :action => :index
  end
  
  def show_popup2
    @title = "Popup2"
    Alert.show_popup :title => "This is a popup", :message => "Custom message", :icon => :info,
      :buttons => ["Yes", "No", {:id => 'cancel', :title => "Cancel"}],
      :callback => url_for(:action => :popup_callback)
    render :action => :index
  end
  
  def popup_callback
    id = @params['button_id']
    title = @params['button_title']
    puts "POPUP CALLBACK: #{id}, #{title}"
    WebView.navigate url_for(:action => :index)
  end
  
  def show_popup3
    @title = "Popup3"
    Alert.show_popup :title => "Wait", :message => "Please wait 3 seconds"
    sleep 3
    Alert.hide_popup
    render :action => :index
  end
  
  def vibrate
    @title = "vibrate"
    Alert.vibrate
    render :action => :index
  end
  
  def vibrate10
    @title = "vibrate10"
    Alert.vibrate 10000
    render :action => :index
  end
  
  def play_file1
    @title = "playfile1"
    Alert.play_file "/public/20 Flip Strings.mp3"
    render :action => :index
  end

  def play_file2
    @title = "playfile2"
    Alert.play_file "/public/information_bar.wav"
    render :action => :index
  end
  
  
  
end
