require 'rho/rhocontroller'
require 'helpers/browser_helper'

class RouteController < Rho::RhoController
  include BrowserHelper

  #GET /Route
  def index
    @routes = Route.find(:all)
    render
  end

  # GET /Route/{1}
  def show
    @route = Route.find(@params['id'])
    if @route
      render :action => :show
    else
      redirect :action => :index
    end
  end

  # GET /Route/new
  def new
    @route = Route.new
    render :action => :new
  end

  # GET /Route/{1}/edit
  def edit
    @route = Route.find(@params['id'])
    if @route
      render :action => :edit
    else
      redirect :action => :index
    end
  end

  # POST /Route/create
  def create
    @route = Route.create(@params['route'])
    redirect :action => :index
  end

  # POST /Route/{1}/update
  def update
    @route = Route.find(@params['id'])
    @route.update_attributes(@params['route']) if @route
    redirect :action => :index
  end

  # POST /Route/{1}/delete
  def delete
    @route = Route.find(@params['id'])
    @route.destroy if @route
    redirect :action => :index
  end
end
