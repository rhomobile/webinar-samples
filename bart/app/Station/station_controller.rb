require 'rho/rhocontroller'
require 'helpers/browser_helper'
require 'date'
require 'time'

class StationController < Rho::RhoController
  include BrowserHelper

  #GET /Station
  def index
    @stations = Station.find(:all)
    render
  end

  # GET /Station/{1}
  def show
    @station = Station.find(@params['id'])
    if @station
      @fulladdr = @station.address + ', ' +  @station.city + ', ' + @station.state 
      render :action => :show
    else
      redirect :action => :index
    end
  end

  def entering
    @station = Station.find(@params['id'])
  end
  
  def about
    @station = Station.find(@params['id'])
  end
  
  
  def routes
    @station = Station.find(@params['id'])
    @routes = Routestop.find(:all, :order => 'sort_id',  :conditions => {'station' => @station.abbr })
    #@routes.each {|x| puts x.sort_id.to_s }
    

  end    
  
end
