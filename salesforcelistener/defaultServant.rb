require 'default.rb'
require 'rubygems'
require 'json'
require 'rest_client'

class NotificationPort
  # SYNOPSIS
  #   notifications(request)
  #
  # ARGS
  #   request         Notifications - {http://soap.sforce.com/2005/09/outbound}notifications
  #
  # RETURNS
  #   response        NotificationsResponse - {http://soap.sforce.com/2005/09/outbound}notificationsResponse
  #
  def notifications(request)
    p "Got Message"
    p [request.notification[0].sObject.id]
    p [request.notification[0].sObject.ownerId]

    resturl = request.partnerUrl.gsub(/services.*/,"services/data/v20.0/sobjects")
    
    parsed=
    JSON.parse(
      RestClient.get(
        "#{resturl}/User/#{request.notification[0].sObject.ownerId}", 
        {
          "Accept" => "*/*", 
          "Authorization" => "OAuth #{request.sessionId.split('!')[1]}", 
          "X-PrettyPrint" => "1"
        }
      ).body
    )
    
    parsed_contact=
    JSON.parse(
      RestClient.get(
        "#{resturl}/Contact/#{request.notification[0].sObject.id}", 
        {
          "Accept" => "*/*", 
          "Authorization" => "OAuth #{request.sessionId.split('!')[1]}", 
          "X-PrettyPrint" => "1"
        }
      ).body
    )
    
    
    p "Username: #{parsed["Username"]}"
    
    
    server = "http://localhost:9292"
    login = "rhoadmin"
    password = ""

    res = RestClient.post("#{server}/login", { :login => login, :password => password }.to_json, :content_type => :json)
    token = RestClient.post("#{server}/api/get_api_token",'',{ :cookies => res.cookies })
    
    
    ping_params = {
      :api_token => token,
      :user_id => parsed["Username"],
      :sources => ["Scontact"],
      :vibrate => "2",
      :message => "#{parsed_contact["Name"]} contact has been updated",
      :sound => '',
      :badge => "0"
    }
    p ping_params.inspect
    RestClient.post("#{server}/api/ping",ping_params.to_json, :content_type => :json)
    
    ackResponse = NotificationsResponse.new
    ackResponse.ack = true
    return ackResponse
  end
end

