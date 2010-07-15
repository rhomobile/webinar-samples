require 'rho/rhocontroller'
require 'helpers/browser_helper'

class PersonController < Rho::RhoController
  include BrowserHelper

  #GET /Person
  def index
    @people = Person.find(:all)
    @people.each do |person|
      person.showuri = url_for :action => :show, :id => person.object
    end
    render
  end

  # GET /Person/{1}
  def show
    @person = Person.find(@params['id'])
    if @person
      render :action => :show
    else
      redirect :action => :index
    end
  end

  # GET /Person/new
  def new
    @person = Person.new
    render :action => :new
  end

  # GET /Person/{1}/edit
  def edit
    @person = Person.find(@params['id'])
    if @person
      render :action => :edit
    else
      redirect :action => :index
    end
  end

  # POST /Person/create
  def create
    @person = Person.new(@params['person'])
    @person.save
    redirect :action => :index
  end

  # POST /Person/{1}/update
  def update
    @person = Person.find(@params['id'])
    @person.update_attributes(@params['person']) if @person
    redirect :action => :index
  end

  # POST /Person/{1}/delete
  def delete
    @person = Person.find(@params['id'])
    @person.destroy if @person
    redirect :action => :index
  end
end
