require 'restclient'
class Application < Rhosync::Base
  class << self
    def authenticate(username,password,session)
      # test with 
      # curl -d "Email=adam@rhomobile.com&Passwd=password314&service=wise&source=rhomobile-trilog-0.1" https://www.google.com/accounts/ClientLogin
      res =  RestClient.post("https://www.google.com/accounts/ClientLogin",
       "Email=#{username}&Passwd=#{password}&service=wise&source=rhomobile-trilog-0.1")
      auth=res.split("\n")[2]
      authkey=auth.split("=")[1]
      puts "Storing with #{username}"
      Store.put_value("username:#{username}:token",authkey )
      puts "Auth is: #{authkey}"
      true
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
    def store_blob(object,field_name,blob)
      super #=> returns blob[:tempfile]
    end
  end
end

Application.initializer(ROOT_PATH)