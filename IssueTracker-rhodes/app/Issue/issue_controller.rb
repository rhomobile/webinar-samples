require 'rho/rhocontroller'
require 'helpers/browser_helper'

class IssueController < Rho::RhoController
  include BrowserHelper

  #GET /Issue
  def index
    @issues = Issue.find(:all)
    render
  end

  # GET /Issue/{1}
  def show
    @issue = Issue.find(@params['id'])
    if @issue
      render :action => :show
    else
      redirect :action => :index
    end
  end

  # GET /Issue/new
  def new
    @issue = Issue.new
    render :action => :new
  end

  # GET /Issue/{1}/edit
  def edit
    @issue = Issue.find(@params['id'])
    if @issue
      render :action => :edit
    else
      redirect :action => :index
    end
  end

  # POST /Issue/create
  def create
    @issue = Issue.create(@params['issue'])
    redirect :action => :index
  end

  # POST /Issue/{1}/update
  def update
    @issue = Issue.find(@params['id'])
    @issue.update_attributes(@params['issue']) if @issue
    redirect :action => :index
  end

  # POST /Issue/{1}/delete
  def delete
    @issue = Issue.find(@params['id'])
    @issue.destroy if @issue
    redirect :action => :index
  end
end
