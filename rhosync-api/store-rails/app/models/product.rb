require 'rest-client'
class Product < ActiveRecord::Base
  
  after_create :push_rhosync_create
  after_update :push_rhosync_update
  after_destroy :push_rhosync_delete
  
  def push_rhosync_create
    create = { 
      :api_token => AppConfig['rhosync_api_key'], 
      :user_id => 't', :source_id => 'Product',
      :objects => {
        self.id.to_s => JSON.parse(self.to_json)['product'] 
      }
    }
    RestClient.post(
      "#{AppConfig['rhosync_url']}/api/push_objects", 
      create.to_json, 
      :content_type => :json
    )
  end
  
  def push_rhosync_update
    delete = { 
      :api_token => AppConfig['rhosync_api_key'], 
      :user_id => 't', :source_id => 'Product',
      :objects => [self.id.to_s]
    }
    RestClient.post(
      "#{AppConfig['rhosync_url']}/api/push_deletes", 
      delete.to_json, 
      :content_type => :json
    )
    update = { 
      :api_token => AppConfig['rhosync_api_key'], 
      :user_id => 't', :source_id => 'Product',
      :objects => { self.id.to_s => JSON.parse(self.to_json)['product']  }
    }
    RestClient.post(
      "#{AppConfig['rhosync_url']}/api/push_objects", 
      update.to_json, 
      :content_type => :json
    )
  end
  
  def push_rhosync_delete
    delete = { 
      :api_token => AppConfig['rhosync_api_key'], 
      :user_id => 't', :source_id => 'Product',
      :objects => [self.id.to_s]
    }
    RestClient.post(
      "#{AppConfig['rhosync_url']}/api/push_deletes", 
      delete.to_json, 
      :content_type => :json
    )
  end
end
