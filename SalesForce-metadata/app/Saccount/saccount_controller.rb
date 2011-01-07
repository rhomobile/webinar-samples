require 'rho/rhocontroller'
require 'helpers/browser_helper'

class SaccountController < Rho::RhoController
  include BrowserHelper

  #GET /Saccount
  def index
    @saccounts = Saccount.find(:all)
    render
  end

  # GET /Saccount/{1}
  def show
    @saccount = Saccount.find(@params['id'])
    if @saccount
      render :action => :show
    else
      redirect :action => :index
    end
  end

  # GET /Saccount/new
  def new
    @saccount = Saccount.new
    render :action => :new
  end

  # GET /Saccount/{1}/edit
  def edit
    @saccount = Saccount.find(@params['id'])
    if @saccount
      render :action => :edit
    else
      redirect :action => :index
    end
  end

  # POST /Saccount/create
  def create
    @saccount = Saccount.create(@params['saccount'])
    redirect :action => :index
  end

  # POST /Saccount/{1}/update
  def update
    @saccount = Saccount.find(@params['id'])
    @saccount.update_attributes(@params['saccount']) if @saccount
    redirect :action => :index
  end

  # POST /Saccount/{1}/delete
  def delete
    @saccount = Saccount.find(@params['id'])
    @saccount.destroy if @saccount
    redirect :action => :index
  end
end
