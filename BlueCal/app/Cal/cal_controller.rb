require 'rho/rhocontroller'
require 'helpers/browser_helper'
require 'rho/rhoevent.rb'
require 'rho/rhobluetooth'

require 'date'

class CalController < Rho::RhoController
  include BrowserHelper
  MONTHS = ["January", "February", "March", "April", "May", "June", "July", "August", "September","October","November","December"]
  
  def event_on_day?(day)
    @@events.each do |e|
      eventday = Date.civil(e['start_date'].year,e['start_date'].mon,e['start_date'].day)
      return true if eventday == day
    end
    false
  end
  
  def events_for_day(day)
    events = []
    @@events.each do |e|
      eventday = Date.civil(e['start_date'].year,e['start_date'].mon,e['start_date'].day)
      events << e if eventday == day
    end
    events
  end
  
  def class_for_day(day)
    klass = ""
    if event_on_day? day
      klass= 'class="date_has_event"'
    else
      klass= 'class="today"' if Date.today == day
    end
    klass
  end
  
  def text_for_day(day)
    text = day.mday.to_s
    if event_on_day? day
      text << '<div class="events"><ul>'
      events_for_day(day).each do |e|
        text << "<li><span class=\"title\">#{e['title']} at #{e['start_date'].strftime("%I:%M%p")}</span>"
        text << "<span class=\"desc\">#{e['notes']}</span>"
        text << "<span><input style=\"font-size:20px;\" type=\"submit\" value=\"Send Meeting\" onclick=\"javascript:window.location='#{url_for :action => 'send_day', :id => e['id']}';\"/></span></li>"
      end
      text << '</ul></div>'
    end
    text
  end
  
  def gencal(month,year)
    
    
    first = Date.civil(year, month, 1)
    last  = Date.civil(year, month, -1)
    today = Date.today
    cal = ""
    day = first
    
    @@events = Rho::RhoEvent.find(:all, :start_date => first, :end_date => last, :find_type => 'starting', 
            :include_repeating => true)
  
    
    #first week
    cal << "<tr>\n"
    cal << "<td class=\"padding\" colspan=\"#{first.cwday - 1}\"></td>\n"
    (8-first.cwday).times do |x|
      
      cal << "<td #{class_for_day(day)}>#{text_for_day(day)}</td>\n"
      day = day + 1
    end
    cal << "</tr>"
    oweek = day.cweek
    cal << "<tr>"
    while day.mday <= last.mday && day.mon == last.mon do
      if day.cweek != oweek
        cal <<"</tr><tr>"
        oweek = day.cweek
      end

      cal << "<td #{class_for_day(day)}>#{text_for_day(day)}</td>\n"
      day = day + 1
    end
    cal << "<td class=\"padding\" colspan=\"#{7- last.cwday}\"></td>\n" if last.cwday < 7
    cal << "</tr>"
    cal
  end
  
  #GET /Cal
  def index
    @month = 10
    @caltext = gencal(10,2010)
    @cals = Cal.find(:all)
    render
  end

  @@connected_device = ""
  @@id_to_send = nil
  @@sender = false
  def send_day
    @@sender = true
    @@id_to_send = @params["id"]
    if Rho::BluetoothManager.is_bluetooth_available then
      Rho::BluetoothManager.set_device_name('BlueCal Sender')
      Rho::BluetoothManager.create_session(Rho::BluetoothManager::ROLE_SERVER, url_for( :action => :connection_callback))
    end
    render
  end
  
  def receive_day
    if Rho::BluetoothManager.is_bluetooth_available then
      Rho::BluetoothManager.set_device_name('BlueCal')
      Rho::BluetoothManager.create_session(Rho::BluetoothManager::ROLE_CLIENT, url_for( :action => :connection_callback))
    end
    render :action => :send_day
  end
 
  def connection_callback 
    if @params['status'] == Rho::BluetoothManager::OK
       @@connected_device = @params['connected_device_name']
       puts "CONNECTED: " + @@connected_device
       Rho::BluetoothSession.set_callback(@@connected_device, url_for( :action => :session_callback))
       if @@sender
         puts "id to send: #{@@id_to_send}"
         @@events.each do |e|
           puts "id: #{e['id']}"
           if "{#{e['id']}}" == @@id_to_send
             str = Rho::RhoSupport.url_encode(Marshal.dump(e))
             Rho::BluetoothSession.write_string(@@connected_device, str) 
             break
           end
         end
       end
    end
    WebView.navigate(url_for :action => :index)
  end 
 
 
 
  def session_callback
    puts "SESSION CALLBACK"
    unless @@sender
      if @params['connected_device_name'] == @@connected_device
        if @params['event_type'] == Rho::BluetoothSession::SESSION_INPUT_DATA_RECEIVED
          puts "DATA RECEIVE"
          while Rho::BluetoothSession.get_status(@@connected_device) > 0
            str = Rho::BluetoothSession.read_string(@@connected_device)
            puts "GOT STRING: #{str}"
            e = Marshal.load(Rho::RhoSupport.url_decode(str))
            puts "E: #{e.inspect}"
            e['id'] = nil
            Rho::RhoEvent.create!(e)
            Alert.show_popup("Added: " + e['title'])
            WebView.navigate(url_for :action => :index)
            
            # use readed string

          end
        end
      end
    	
    end
  end
  # GET /Cal/{1}
  def show
    @cal = Cal.find(@params['id'])
    if @cal
      render :action => :show
    else
      redirect :action => :index
    end
  end

  # GET /Cal/new
  def new
    @cal = Cal.new
    render :action => :new
  end

  # GET /Cal/{1}/edit
  def edit
    @cal = Cal.find(@params['id'])
    if @cal
      render :action => :edit
    else
      redirect :action => :index
    end
  end

  # POST /Cal/create
  def create
    @cal = Cal.create(@params['cal'])
    redirect :action => :index
  end

  # POST /Cal/{1}/update
  def update
    @cal = Cal.find(@params['id'])
    @cal.update_attributes(@params['cal']) if @cal
    redirect :action => :index
  end

  # POST /Cal/{1}/delete
  def delete
    @cal = Cal.find(@params['id'])
    @cal.destroy if @cal
    redirect :action => :index
  end
end
