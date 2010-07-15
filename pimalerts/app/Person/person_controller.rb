require 'rho/rhocontroller'
require 'rho/rhocontact'
require 'helpers/browser_helper'

class PersonController < Rho::RhoController
  include BrowserHelper

  #GET /Person
  def index
    @people = Rho::RhoContact.find(:all)
    render
  end

  # GET /Person/{1}
  def show
    @person = Rho::RhoContact.find(@params['id'])
    if @person
      render :action => :show
    else
      redirect :action => :index
    end
  end

  # GET /Person/new
  def new
    render :action => :new
  end

  # GET /Person/{1}/edit
  def edit
    @person = Rho::RhoContact.find(@params['id'])
    if @person
      render :action => :edit
    else
      redirect :action => :index
    end
  end

  # POST /Person/create
  def create
    @person = Rho::RhoContact.create!(@params['person'])
    redirect :action => :index
  end

  # POST /Person/{1}/update
  def update
    Rho::RhoContact.update_attributes(@params['person'])
    redirect :action => :index
  end

  # POST /Person/{1}/delete
  def delete
    Rho::RhoContact.destroy(@params['id'])
    redirect :action => :index
  end
end
