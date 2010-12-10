require 'rho/rhocontroller'
require 'helpers/browser_helper'
require 'json'

class ScontactController < Rho::RhoController
  include BrowserHelper

  def alljson
    
    @contacts = Scontact.find(:all)
    temp = []
    @contacts.each do |contact|
      temp << { 
                :name => contact.name,
                :phone => contact.phone,
                :email => contact.email,
                :account_id => contact.account_id,
                :id => contact.object 
              }
    end

    all = { :contacts => temp }
    render :string => ::JSON.generate(all)
    
  end

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
    contact = {}
    contact["name"] = @params["name"]
    contact["phone"] = @params["phone"]
    contact["email"] = @params["email"]
    @scontact = Scontact.find(@params['id'])
    @scontact.update_attributes(contact) if @scontact
    render :string => "0"
  end

  # POST /Scontact/{1}/delete
  def delete
    @scontact = Scontact.find(@params['id'])
    @scontact.destroy if @scontact
    redirect :action => :index
  end
end
