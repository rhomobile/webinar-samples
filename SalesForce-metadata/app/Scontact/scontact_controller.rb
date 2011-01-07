require 'rho/rhocontroller'
require 'helpers/browser_helper'

class ScontactController < Rho::RhoController
  include BrowserHelper

  #GET /Scontact
  def index
    if @params["account"]
       @scontacts = Scontact.find(:all, :conditions => {'account_id' => @params["account"]})
     else
       @scontacts = Scontact.find(:all)
     end
     render
  end

  # GET /Scontact/{1}
  def show
    @scontact = Scontact.find(@params['id'])
    puts @scontact.inspect
    puts Scontact.metadata.inspect
    if @scontact
      @saccount = Saccount.find(@scontact.account_id)
      render :action => :show
    else
      redirect :action => :index
    end
  end

  # GET /Scontact/new
  def new
    @scontact = Scontact.new
    render :action => :new
  end

  # GET /Scontact/{1}/edit
  def edit
    @scontact = Scontact.find(@params['id'])
    if @scontact
      render :action => :edit
    else
      redirect :action => :index
    end
  end

  # POST /Scontact/create
  def create
    @scontact = Scontact.create(@params['scontact'])
    redirect :action => :index
  end

  # POST /Scontact/{1}/update
  def update
    @scontact = Scontact.find(@params['id'])
    @scontact.update_attributes(@params['scontact']) if @scontact
    redirect :action => :index
  end

  # POST /Scontact/{1}/delete
  def delete
    @scontact = Scontact.find(@params['id'])
    @scontact.destroy if @scontact
    redirect :action => :index
  end
end
