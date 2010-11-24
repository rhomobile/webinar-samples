require 'sources/default'
require 'sources/defaultMappingRegistry'
require 'soap/rpc/driver'

class Soap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://login.salesforce.com/services/Soap/c/20.0"

  Methods = [
    [ "",
      "login",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "login"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "loginResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}, "LoginFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"LoginFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "describeSObject",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeSObject"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeSObjectResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "describeSObjects",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeSObjects"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeSObjectsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "describeGlobal",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeGlobal"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeGlobalResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "describeDataCategoryGroups",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeDataCategoryGroups"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeDataCategoryGroupsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "describeDataCategoryGroupStructures",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeDataCategoryGroupStructures"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeDataCategoryGroupStructuresResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "describeLayout",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeLayout"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeLayoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "describeSoftphoneLayout",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeSoftphoneLayout"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeSoftphoneLayoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "describeTabs",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeTabs"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "describeTabsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "create",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "create"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "createResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidFieldFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidFieldFault", :use=>"literal", :namespace=>nil}, "UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "update",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "update"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "updateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidFieldFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidFieldFault", :use=>"literal", :namespace=>nil}, "UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "upsert",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "upsert"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "upsertResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidFieldFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidFieldFault", :use=>"literal", :namespace=>nil}, "UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "merge",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "merge"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "mergeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidFieldFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidFieldFault", :use=>"literal", :namespace=>nil}, "UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "delete",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "delete"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "deleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "undelete",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "undelete"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "undeleteResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "emptyRecycleBin",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "emptyRecycleBin"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "emptyRecycleBinResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "retrieve",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "retrieve"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "retrieveResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MalformedQueryFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"MalformedQueryFault", :use=>"literal", :namespace=>nil}, "UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidFieldFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidFieldFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "process",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "process"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "processResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "convertLead",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "convertLead"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "convertLeadResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "logout",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "logout"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "logoutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "invalidateSessions",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "invalidateSessions"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "invalidateSessionsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "getDeleted",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "getDeleted"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "getDeletedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "getUpdated",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "getUpdated"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "getUpdatedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "query",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "query"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "queryResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MalformedQueryFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"MalformedQueryFault", :use=>"literal", :namespace=>nil}, "UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidFieldFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidFieldFault", :use=>"literal", :namespace=>nil}, "InvalidQueryLocatorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidQueryLocatorFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "queryAll",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "queryAll"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "queryAllResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"MalformedQueryFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"MalformedQueryFault", :use=>"literal", :namespace=>nil}, "UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidFieldFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidFieldFault", :use=>"literal", :namespace=>nil}, "InvalidQueryLocatorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidQueryLocatorFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "queryMore",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "queryMore"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "queryMoreResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"InvalidFieldFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidFieldFault", :use=>"literal", :namespace=>nil}, "UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidQueryLocatorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidQueryLocatorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "search",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "search"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "searchResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidFieldFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidFieldFault", :use=>"literal", :namespace=>nil}, "MalformedSearchFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"MalformedSearchFault", :use=>"literal", :namespace=>nil}, "InvalidSObjectFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidSObjectFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "getServerTimestamp",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "getServerTimestamp"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "getServerTimestampResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "setPassword",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "setPassword"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "setPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidNewPasswordFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidNewPasswordFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "resetPassword",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "resetPassword"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "resetPasswordResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}, "InvalidIdFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"InvalidIdFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "getUserInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "getUserInfo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "getUserInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ],
    [ "",
      "sendEmail",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "sendEmail"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "urn:enterprise.soap.sforce.com", "sendEmailResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"UnexpectedErrorFault_"=>{:ns=>"urn:enterprise.soap.sforce.com", :encodingstyle=>"document", :name=>"UnexpectedErrorFault", :use=>"literal", :namespace=>nil}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

