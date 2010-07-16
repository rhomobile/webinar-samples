require 'rho/rhocontroller'
require 'helpers/browser_helper'

class AccelController < Rho::RhoController
  include BrowserHelper

  def accel
    @readings = Accelerometer.get_readings
  end

  def accel2
    @readings = Accelerometer.get_readings

    $rollx = ($rollx + @readings[0]) / 2
    $rolly = ($rolly + @readings[1]) / 2
    $rollz = ($rollz + @readings[2]) / 2
    
    @readings[0] = $rollx
    @readings[1] = $rolly
    @readings[2] = $rollz
    
    @readings[0] = -1.0 if @readings[0] < -1.0
    @readings[1] = -1.0 if @readings[1] < -1.0
    @readings[2] = -1.0 if @readings[2] < -1.0

    @readings[0] = 1.0 if @readings[0] > 1.0
    @readings[1] = 1.0 if @readings[1] > 1.0
    @readings[2] = 1.0 if @readings[2] > 1.0
     
    render :layout => false
  end
  
  def anim
    $filter = 0.1;
    $rollx = 0.0;
    $rolly = 0.0;
    $rollz = 0.0;
    render :layout => false
  end
  
end
