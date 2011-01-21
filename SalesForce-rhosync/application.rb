require 'rubygems'
gem 'soap4r'
require 'sources/defaultDriver'


class Application < Rhosync::Base
  class << self
    def authenticate(username,password,session)
      success = false
      
      endpoint_url = 'https://login.salesforce.com/services/Soap/c/20.0'

      obj = Soap.new(endpoint_url)
      login = Login.new(username,password)

      begin
        result = obj.login(login).result
        puts result.inspect
        Store.put_value("#{username}:metadata_url",result.serverUrl)
        Store.put_value("#{username}:endpoint_url",result.serverUrl)
        Store.put_value("#{username}:session",result.sessionId)
        Store.put_value("#{username}:uid",result.userId)
        
        success = true
      rescue Exception => e
        puts "Login Error"
        raise e
      end
      
      success     
    end
    
    # Add hooks for application startup here
    # Don't forget to call super at the end!
    def initializer(path)
      super
    end
    
    # Calling super here returns rack tempfile path:
    # i.e. /var/folders/J4/J4wGJ-r6H7S313GEZ-Xx5E+++TI
    # Note: This tempfile is removed when server stops or crashes...
    # See http://rack.rubyforge.org/doc/Multipart.html for more info
    # 
    # Override this by creating a copy of the file somewhere
    # and returning the path to that file (then don't call super!):
    # i.e. /mnt/myimages/soccer.png
    def store_blob(blob)
      super #=> returns blob[:tempfile]
    end
  end
end

Application.initializer(ROOT_PATH)