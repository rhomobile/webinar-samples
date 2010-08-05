require 'rho/rhocontroller'
require 'helpers/browser_helper'

class ScannerController < Rho::RhoController
  include BrowserHelper

  #GET /Scanner
  def index
  end

  # GET /Scanner/new
  def new
    Camera::take_picture(url_for :action => :camera_callback)
    redirect :action => :index
  end
  
  def show_barcode_info(recognized_code)
    Alert.show_popup('Barcode['+recognized_code+']')
  end
  
  def camera_callback
    WebView.navigate(url_for :action => :index)
    barcode = Barcode::barcode_recognize(Rho::RhoApplication::get_blob_path(@params['image_uri']))
    show_barcode_info(barcode)
    ""
  end

 
end
