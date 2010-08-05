require 'rho/rhocontroller'
require 'helpers/browser_helper'

class SignatureController < Rho::RhoController
  include BrowserHelper

  #GET /Signature
  def index
    @signatures = Signature.find(:all)
    render
  end


  # GET /Signature/new
  def new
    SignatureTool::take_signature(url_for :action => :signature_callback)
    redirect :action => :index
  end

  def signature_callback
    if @params['status'] == 'ok'
      signature = Signature.new({'signature_uri' => @params['signature_uri']})
      signature.save
    end
    WebView.navigate(url_for :action => :index)
    ""
  end
  

  # POST /Signature/{1}/delete
  def delete
    @signature = Signature.find(@params['id'])
    @signature.destroy if @signature
    redirect :action => :index
  end
end
