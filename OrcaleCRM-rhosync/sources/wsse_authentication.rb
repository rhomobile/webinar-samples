require 'soap/header/simplehandler'
require 'soap/element'
require 'xsd/datatypes'

class WsseAuthHeader < SOAP::Header::Handler
	NAMESPACE = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd'
	#USERNAME = 'PARIVEDASOL/ALLEN_NGUYEN@LIVE.COM'
	#PASSWORD = 'Pariveda1'
	@username = nil
	@password = nil
	
	def initialize(username=nil,password=nil)
		@username = username
		@password = password
		super(XSD::QName.new(NAMESPACE, 'Security'))
	end
	
	def on_outbound
		security = SOAP::SOAPElement.new('wsse:Security')
    	security.extraattr['xmlns:wsse'] = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd'
    	unt = SOAP::SOAPElement.new('wsse:UsernameToken')
    	unt.extraattr['wsu:Id'] = 'UsernameToken-23935034'
    	unt.extraattr['xmlns:wsu'] = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd'
    	un = SOAP::SOAPElement.new('wsse:Username', @username)
    	unt.add(un)
    	pw = SOAP::SOAPElement.new('wsse:Password', @password)
    	pw.extraattr['Type'] = 'http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText'
    	unt.add(pw)
    	security.add(unt)
    	return SOAP::SOAPHeaderItem.new(security, true)
	end
end