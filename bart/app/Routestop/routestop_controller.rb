require 'rho/rhocontroller'
require 'helpers/browser_helper'

class RoutestopController < Rho::RhoController
  include BrowserHelper

  #GET /Routestop
  def index
    @routestops = Routestop.find(:all)
    render
  end

  # GET /Routestop/{1}
  def show
    @routestop = Routestop.find(@params['id'])
    if @routestop
      render :action => :show
    else
      redirect :action => :index
    end
  end

  # GET /Routestop/new
  def new
    @routestop = Routestop.new
    render :action => :new
  end

  # GET /Routestop/{1}/edit
  def edit
    @routestop = Routestop.find(@params['id'])
    if @routestop
      render :action => :edit
    else
      redirect :action => :index
    end
  end

  # POST /Routestop/create
  def create
    @routestop = Routestop.create(@params['routestop'])
    redirect :action => :index
  end

  # POST /Routestop/{1}/update
  def update
    @routestop = Routestop.find(@params['id'])
    @routestop.update_attributes(@params['routestop']) if @routestop
    redirect :action => :index
  end

  # POST /Routestop/{1}/delete
  def delete
    @routestop = Routestop.find(@params['id'])
    @routestop.destroy if @routestop
    redirect :action => :index
  end
end
