require 'rho/rhocontroller'
require 'helpers/browser_helper'

class PersonController < Rho::RhoController
  include BrowserHelper
  $saved = nil
  $choosed = {}
  
  
  def choose
     puts "Choose date/time"

     flag = @params['flag']
     title = @params['title']
     if flag == '0' or flag == '1' or flag == '2'
       $saved = nil
       # preset_time = Time.parse("2009-10-20 14:30:00")
       # puts "Parsed Time Object: #{preset_time.inspect.to_s}"
       # DateTimePicker.choose( url_for( :action => :datetime_callback ), title, preset_time, flag.to_i, Marshal.dump(flag) )
       DateTimePicker.choose( url_for( :action => :datetime_callback ), title, Time.new, flag.to_i, Marshal.dump(flag) )
     end
     #redirect :action => :index
     ""
   end
  
   def save
      $saved = 1
      redirect :action => :index
    end
  
    def datetime_callback
      puts "datetime_callback"

      $status = @params['status']
      if $status == 'ok'
        $dt = Time.at( @params['result'].to_i )
        flag = Marshal.load(@params['opaque'])
        format = case flag
          when "0" then '%F %T'
          when "1" then '%F'
          when "2" then '%T'
          else '%F %T'
        end
        $choosed[flag] = $dt.strftime( format )
        #WebView::refresh
      end

      WebView.navigate( url_for :action => :index )

      #reply on the callback
      #render :action => :index
      ""
    end
    
  #GET /Person
  def index
    @people = Person.find(:all)
    @menu = {
       "Go Home" => :home,
       "Product" => "/app/Product"
     }
    render
  end

  # GET /Person/{1}
  def show
    @person = Person.find(@params['id'])
    if @person
      render :action => :show
    else
      redirect :action => :index
    end
  end

  # GET /Person/new
  def new
    @person = Person.new
    render :action => :new
  end

  # GET /Person/{1}/edit
  def edit
    @person = Person.find(@params['id'])
    if @person
      render :action => :edit
    else
      redirect :action => :index
    end
  end

  # POST /Person/create
  def create
    @person = Person.new(@params['person'])
    @person.save
    redirect :action => :index
  end

  # POST /Person/{1}/update
  def update
    @person = Person.find(@params['id'])
    @person.update_attributes(@params['person']) if @person
    redirect :action => :index
  end

  # POST /Person/{1}/delete
  def delete
    @person = Person.find(@params['id'])
    @person.destroy if @person
    redirect :action => :index
  end
end
