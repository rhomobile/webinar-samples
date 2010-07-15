require 'rho/rhocontroller'
require 'helpers/browser_helper'

class ImageController < Rho::RhoController
  include BrowserHelper

  #GET /Image
  def index
    @images = Image.find(:all)
    render
  end

  # GET /Image/new
  def new
    Camera::take_picture(url_for :action => :camera_callback)
    ""
  end
  
  def edit
    Camera::choose_picture(url_for :action => :camera_callback)
    ""
  end
  
  def camera_callback
    if @params['status'] == 'ok'
      image = Image.new({'image_uri' => @params['image_uri']})
      image.save
    end
    
    WebView.navigate( url_for :action => :index )
    ""
  end
  
  def upload_image
    @image = Image.find(@params['id'])
    realpath = Rho::RhoApplication::get_blob_path(@image.image_uri)
    Rho::AsyncHttp.upload_file( 
      :url => "http://some.service.here.com/upload"),
      :filename => realpath,
      :callback => (url_for :action => :http_callback )
    )
    
    redirect :action => :index
    
  end
  

  # POST /Image/{1}/delete
  def delete
    @image = Image.find(@params['id'])
    @image.destroy if @image
    redirect :action => :index
  end

end
