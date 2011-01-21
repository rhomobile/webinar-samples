require 'rho/rhocontroller'
require 'helpers/browser_helper'

class FeedcommentController < Rho::RhoController
  include BrowserHelper

  def alljson
    
    @comments = Feedcomment.find(:all,   :conditions => {'feedid' => @params['feedid'] })
    temp = []
    @comments.each do |comment|
      
      timestring = "<div class=\"timestring\">#{Time.at(comment.timestamp.to_i).strftime("%m/%d/%Y at %I:%M%p")}</div>"

      temp << { 
                :message => comment.comment,
                :timestamp => comment.timestamp,
                :timestring => timestring,
                :creator => comment.creator,
                :id => comment.object 
              }
    end
    
    puts temp.inspect

    all = { :feedcomment => temp }
    render :string => ::JSON.generate(all)
    
  end

  #GET /Feedcomment
  def index
    @feedcomments = Feedcomment.find(:all)
    render
  end

  # GET /Feedcomment/{1}
  def show
    @feedcomment = Feedcomment.find(@params['id'])
    if @feedcomment
      render :action => :show
    else
      redirect :action => :index
    end
  end

  # GET /Feedcomment/new
  def new
    @feedcomment = Feedcomment.new
    render :action => :new
  end

  # GET /Feedcomment/{1}/edit
  def edit
    @feedcomment = Feedcomment.find(@params['id'])
    if @feedcomment
      render :action => :edit
    else
      redirect :action => :index
    end
  end

  # POST /Feedcomment/create
  def create
    object = { "comment" => @params['comment'], "feedid" => @params['id']}
    @feedcomment = Feedcomment.create(object)
    @feedcomment.save
    puts Feedcomment.find(:all).inspect
    SyncEngine.dosync
    redirect :action => :index
  end

  # POST /Feedcomment/{1}/update
  def update
    @feedcomment = Feedcomment.find(@params['id'])
    @feedcomment.update_attributes(@params['feedcomment']) if @feedcomment
    redirect :action => :index
  end

  # POST /Feedcomment/{1}/delete
  def delete
    @feedcomment = Feedcomment.find(@params['id'])
    @feedcomment.destroy if @feedcomment
    redirect :action => :index
  end
end
