require 'rho/rhocontroller'
require 'helpers/browser_helper'

class FeedController < Rho::RhoController
  include BrowserHelper

  def alljson
    
    @feeds = Feed.find(:all)
    temp = []
    @feeds.each do |feed|
      commentstring = ""
      comments = Feedcomment.find(:all,   :conditions => {'feedid' => feed.object })
      if comments.length > 0
        commentstring = "<div class=\"comments\">#{comments.length} Comments</div>"
      end
      
      timestring = "<div class=\"timestring\">#{Time.at(feed.timestamp.to_i).strftime("%m/%d/%Y at %I:%M%p")}</div>"

      temp << { 
                :message => feed.message,
                :timestamp => feed.timestamp,
                :timestring => timestring,
                :creator => feed.creator,
                :comments => commentstring,
                :id => feed.object 
              }
    end

    all = { :feed => temp }
    render :string => ::JSON.generate(all)
    
  end
  #GET /Feed
  def index
    @feeds = Feed.find(:all)
    render
  end

  # GET /Feed/{1}
  def show
    @feed = Feed.find(@params['id'])
    if @feed
      render :action => :show
    else
      redirect :action => :index
    end
  end

  # GET /Feed/new
  def new
    @feed = Feed.new
    render :action => :new
  end

  # GET /Feed/{1}/edit
  def edit
    @feed = Feed.find(@params['id'])
    if @feed
      render :action => :edit
    else
      redirect :action => :index
    end
  end

  # POST /Feed/create
  def create
    object = { "message" => @params['message']}
    @feed = Feed.create(object)
    @feed.save
    Feed.sync
    redirect :action => :index
  end

  # POST /Feed/{1}/update
  def update
    @feed = Feed.find(@params['id'])
    @feed.update_attributes(@params['feed']) if @feed
    redirect :action => :index
  end

  # POST /Feed/{1}/delete
  def delete
    @feed = Feed.find(@params['id'])
    @feed.destroy if @feed
    redirect :action => :index
  end
end
