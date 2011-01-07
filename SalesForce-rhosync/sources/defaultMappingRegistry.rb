require 'sources/default'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsEnterpriseSoapSforceCom = "urn:enterprise.soap.sforce.com"
  NsFaultEnterpriseSoapSforceCom = "urn:fault.enterprise.soap.sforce.com"
  NsSobjectEnterpriseSoapSforceCom = "urn:sobject.enterprise.soap.sforce.com"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  EncodedRegistry.register(
    :class => SObject,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]]
    ]
  )

  EncodedRegistry.register(
    :class => AggregateResult,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AggregateResult"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => Account,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accountContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountContactRoles")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountNumber")], [0, 1]],
      ["accountPartnersFrom", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountPartnersFrom")], [0, 1]],
      ["accountPartnersTo", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountPartnersTo")], [0, 1]],
      ["active__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Active__c")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["annualRevenue", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AnnualRevenue")], [0, 1]],
      ["assets", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Assets")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["billingCity", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingCity")], [0, 1]],
      ["billingCountry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingCountry")], [0, 1]],
      ["billingPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingPostalCode")], [0, 1]],
      ["billingState", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingState")], [0, 1]],
      ["billingStreet", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingStreet")], [0, 1]],
      ["cases", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["contacts", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contacts")], [0, 1]],
      ["contracts", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contracts")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["customerPriority__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CustomerPriority__c")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fax")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["industry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Industry")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterRecord", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecord")], [0, 1]],
      ["masterRecordId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecordId")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["numberOfEmployees", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfEmployees")], [0, 1]],
      ["numberofLocations__c", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberofLocations__c")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["opportunities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunities")], [0, 1]],
      ["opportunityPartnersTo", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityPartnersTo")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["ownership", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Ownership")], [0, 1]],
      ["parent", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["partnersFrom", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PartnersFrom")], [0, 1]],
      ["partnersTo", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PartnersTo")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Rating")], [0, 1]],
      ["sLAExpirationDate__c", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SLAExpirationDate__c")], [0, 1]],
      ["sLASerialNumber__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SLASerialNumber__c")], [0, 1]],
      ["sLA__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SLA__c")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["shippingCity", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShippingCity")], [0, 1]],
      ["shippingCountry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShippingCountry")], [0, 1]],
      ["shippingPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShippingPostalCode")], [0, 1]],
      ["shippingState", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShippingState")], [0, 1]],
      ["shippingStreet", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShippingStreet")], [0, 1]],
      ["sic", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Sic")], [0, 1]],
      ["site", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Site")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["tickerSymbol", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TickerSymbol")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]],
      ["upsellOpportunity__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UpsellOpportunity__c")], [0, 1]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Website")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountContactRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountContactRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountPartner,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountPartner"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accountFrom", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountFrom")], [0, 1]],
      ["accountFromId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountFromId")], [0, 1]],
      ["accountTo", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountTo")], [0, 1]],
      ["accountToId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountToId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["reversePartnerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReversePartnerId")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AccountShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountAccessLevel")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["caseAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseAccessLevel")], [0, 1]],
      ["contactAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactAccessLevel")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunityAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityAccessLevel")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ActivityHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDate")], [0, 1]],
      ["activityType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityType")], [0, 1]],
      ["callDisposition", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDisposition")], [0, 1]],
      ["callDurationInSeconds", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDurationInSeconds")], [0, 1]],
      ["callObject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallObject")], [0, 1]],
      ["callType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["durationInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DurationInMinutes")], [0, 1]],
      ["isAllDayEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAllDayEvent")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isReminderSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReminderSet")], [0, 1]],
      ["isTask", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsTask")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Location")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Priority")], [0, 1]],
      ["reminderDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReminderDateTime")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["what", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "What")], [0, 1]],
      ["whatId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhatId")], [0, 1]],
      ["who", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Who")], [0, 1]],
      ["whoId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhoId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdditionalNumber,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AdditionalNumber"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["callCenterId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallCenterId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApexClass,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexClass"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apiVersion", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApiVersion")], [0, 1]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyCrc", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyCrc")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isValid", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsValid")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lengthWithoutComments", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LengthWithoutComments")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApexComponent,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexComponent"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apiVersion", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApiVersion")], [0, 1]],
      ["controllerKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ControllerKey")], [0, 1]],
      ["controllerType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ControllerType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["markup", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Markup")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApexLog,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexLog"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["application", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Application")], [0, 1]],
      ["durationMilliseconds", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DurationMilliseconds")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Location")], [0, 1]],
      ["logLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LogLength")], [0, 1]],
      ["logUser", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LogUser")], [0, 1]],
      ["logUserId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LogUserId")], [0, 1]],
      ["operation", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Operation")], [0, 1]],
      ["request", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Request")], [0, 1]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartTime")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApexPage,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexPage"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apiVersion", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApiVersion")], [0, 1]],
      ["controllerKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ControllerKey")], [0, 1]],
      ["controllerType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ControllerType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["markup", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Markup")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ApexTrigger,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexTrigger"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apiVersion", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApiVersion")], [0, 1]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyCrc", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyCrc")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isValid", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsValid")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lengthWithoutComments", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LengthWithoutComments")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tableEnumOrId", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TableEnumOrId")], [0, 1]],
      ["usageAfterDelete", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageAfterDelete")], [0, 1]],
      ["usageAfterInsert", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageAfterInsert")], [0, 1]],
      ["usageAfterUndelete", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageAfterUndelete")], [0, 1]],
      ["usageAfterUpdate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageAfterUpdate")], [0, 1]],
      ["usageBeforeDelete", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageBeforeDelete")], [0, 1]],
      ["usageBeforeInsert", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageBeforeInsert")], [0, 1]],
      ["usageBeforeUpdate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageBeforeUpdate")], [0, 1]],
      ["usageIsBulk", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageIsBulk")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Approval,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Approval"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["approveComment", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApproveComment")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Contract", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["requestComment", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RequestComment")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Asset,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Asset"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["cases", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["installDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "InstallDate")], [0, 1]],
      ["isCompetitorProduct", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsCompetitorProduct")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Price")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["product2", ["Product2", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2")], [0, 1]],
      ["product2Id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2Id")], [0, 1]],
      ["purchaseDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PurchaseDate")], [0, 1]],
      ["quantity", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Quantity")], [0, 1]],
      ["serialNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SerialNumber")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["usageEndDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageEndDate")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AssetFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AssetFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Asset", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AssignmentRule,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AssignmentRule"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Active")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["sobjectType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SobjectType")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AsyncApexJob,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AsyncApexJob"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apexClass", ["ApexClass", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexClass")], [0, 1]],
      ["apexClassId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexClassId")], [0, 1]],
      ["completedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompletedDate")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["extendedStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ExtendedStatus")], [0, 1]],
      ["jobItemsProcessed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "JobItemsProcessed")], [0, 1]],
      ["jobType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "JobType")], [0, 1]],
      ["lastProcessed", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastProcessed")], [0, 1]],
      ["lastProcessedOffset", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastProcessedOffset")], [0, 1]],
      ["methodName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MethodName")], [0, 1]],
      ["numberOfErrors", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfErrors")], [0, 1]],
      ["parentJobId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentJobId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["totalJobItems", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TotalJobItems")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Attachment,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachment"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyLength")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentType")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrivate")], [0, 1]],
      ["lastModifiedBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BrandTemplate,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BrandTemplate"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Value")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BusinessHours,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BusinessHours"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["cases", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["fridayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FridayEndTime")], [0, 1]],
      ["fridayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FridayStartTime")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["mondayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MondayEndTime")], [0, 1]],
      ["mondayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MondayStartTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["saturdayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SaturdayEndTime")], [0, 1]],
      ["saturdayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SaturdayStartTime")], [0, 1]],
      ["sundayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SundayEndTime")], [0, 1]],
      ["sundayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SundayStartTime")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["thursdayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ThursdayEndTime")], [0, 1]],
      ["thursdayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ThursdayStartTime")], [0, 1]],
      ["timeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimeZoneSidKey")], [0, 1]],
      ["tuesdayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TuesdayEndTime")], [0, 1]],
      ["tuesdayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TuesdayStartTime")], [0, 1]],
      ["wednesdayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WednesdayEndTime")], [0, 1]],
      ["wednesdayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WednesdayStartTime")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BusinessProcess,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BusinessProcess"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tableEnumOrId", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TableEnumOrId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CallCenter,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallCenter"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["internalName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "InternalName")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["version", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Version")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Campaign,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Campaign"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["actualCost", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActualCost")], [0, 1]],
      ["amountAllOpportunities", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AmountAllOpportunities")], [0, 1]],
      ["amountWonOpportunities", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AmountWonOpportunities")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["budgetedCost", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BudgetedCost")], [0, 1]],
      ["campaignMemberRecordTypeId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMemberRecordTypeId")], [0, 1]],
      ["campaignMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMembers")], [0, 1]],
      ["childCampaigns", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ChildCampaigns")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["endDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndDate")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["expectedResponse", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ExpectedResponse")], [0, 1]],
      ["expectedRevenue", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ExpectedRevenue")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["leads", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Leads")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["numberOfContacts", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfContacts")], [0, 1]],
      ["numberOfConvertedLeads", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfConvertedLeads")], [0, 1]],
      ["numberOfLeads", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfLeads")], [0, 1]],
      ["numberOfOpportunities", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfOpportunities")], [0, 1]],
      ["numberOfResponses", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfResponses")], [0, 1]],
      ["numberOfWonOpportunities", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfWonOpportunities")], [0, 1]],
      ["numberSent", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberSent")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["opportunities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunities")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartDate")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignMember,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMember"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["campaign", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Campaign")], [0, 1]],
      ["campaignId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignId")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["firstRespondedDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstRespondedDate")], [0, 1]],
      ["hasResponded", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasResponded")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lead", ["Lead", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Lead")], [0, 1]],
      ["leadId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignMemberStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMemberStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["campaignId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["hasResponded", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasResponded")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Label")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CampaignShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["campaign", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Campaign")], [0, 1]],
      ["campaignAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignAccessLevel")], [0, 1]],
      ["campaignId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Case,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Case"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["asset", ["Asset", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Asset")], [0, 1]],
      ["assetId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AssetId")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["caseComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseComments")], [0, 1]],
      ["caseContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseContactRoles")], [0, 1]],
      ["caseNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseNumber")], [0, 1]],
      ["caseSolutions", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseSolutions")], [0, 1]],
      ["cases", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["closedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ClosedDate")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["engineeringReqNumber__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EngineeringReqNumber__c")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["hasCommentsUnreadByOwner", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasCommentsUnreadByOwner")], [0, 1]],
      ["hasSelfServiceComments", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasSelfServiceComments")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isEscalated", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsEscalated")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["origin", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Origin")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["potentialLiability__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PotentialLiability__c")], [0, 1]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Priority")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["product__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product__c")], [0, 1]],
      ["reason", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Reason")], [0, 1]],
      ["sLAViolation__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SLAViolation__c")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["solutions", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Solutions")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["suppliedCompany", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SuppliedCompany")], [0, 1]],
      ["suppliedEmail", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SuppliedEmail")], [0, 1]],
      ["suppliedName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SuppliedName")], [0, 1]],
      ["suppliedPhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SuppliedPhone")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["teamMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamMembers")], [0, 1]],
      ["teamTemplateRecords", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamTemplateRecords")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseComment,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseComment"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["commentBody", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CommentBody")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPublished", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPublished")], [0, 1]],
      ["lastModifiedBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["parent", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseContactRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseContactRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["cases", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["casesId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CasesId")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["v_case", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Case")], [0, 1]],
      ["caseId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["v_case", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Case")], [0, 1]],
      ["caseAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseAccessLevel")], [0, 1]],
      ["caseId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseSolution,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseSolution"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["v_case", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Case")], [0, 1]],
      ["caseId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["solution", ["Solution", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Solution")], [0, 1]],
      ["solutionId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseTeamMember,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseTeamMember"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["memberId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MemberId")], [0, 1]],
      ["parent", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["teamRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamRoleId")], [0, 1]],
      ["teamTemplateMemberId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamTemplateMemberId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseTeamRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseTeamRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccessLevel")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["preferencesVisibleInCSP", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PreferencesVisibleInCSP")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseTeamTemplate,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseTeamTemplate"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseTeamTemplateMember,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseTeamTemplateMember"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["memberId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MemberId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["teamRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamRoleId")], [0, 1]],
      ["teamTemplateId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamTemplateId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CaseTeamTemplateRecord,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseTeamTemplateRecord"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["parent", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["teamTemplateId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamTemplateId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CategoryData,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CategoryData"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["categoryNodeId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CategoryNodeId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["relatedSobjectId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RelatedSobjectId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CategoryNode,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CategoryNode"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["sortStyle", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortStyle")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CollaborationGroup,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationGroup"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["collaborationType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["fullPhotoUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FullPhotoUrl")], [0, 1]],
      ["groupMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "GroupMembers")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["memberCount", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MemberCount")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["smallPhotoUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SmallPhotoUrl")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CollaborationGroupFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationGroupFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["CollaborationGroup", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CollaborationGroupMember,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationGroupMember"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["collaborationGroup", ["CollaborationGroup", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationGroup")], [0, 1]],
      ["collaborationGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationGroupId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["memberId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MemberId")], [0, 1]],
      ["notificationFrequency", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotificationFrequency")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CollaborationInvitation,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationInvitation"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["invitedUserEmail", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "InvitedUserEmail")], [0, 1]],
      ["invitedUserEmailNormalized", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "InvitedUserEmailNormalized")], [0, 1]],
      ["inviterId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "InviterId")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["optionalMessage", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionalMessage")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["sharedEntityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SharedEntityId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Community,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Community"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Contact,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountContactRoles")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["assets", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Assets")], [0, 1]],
      ["assistantName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AssistantName")], [0, 1]],
      ["assistantPhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AssistantPhone")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["birthdate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Birthdate")], [0, 1]],
      ["campaignMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMembers")], [0, 1]],
      ["caseContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseContactRoles")], [0, 1]],
      ["cases", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["contractContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractContactRoles")], [0, 1]],
      ["contractsSigned", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractsSigned")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["department", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Department")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["emailBouncedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailBouncedDate")], [0, 1]],
      ["emailBouncedReason", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailBouncedReason")], [0, 1]],
      ["emailStatuses", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailStatuses")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fax")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstName")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["homePhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HomePhone")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["languages__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Languages__c")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastCURequestDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastCURequestDate")], [0, 1]],
      ["lastCUUpdateDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastCUUpdateDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastName")], [0, 1]],
      ["leadSource", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadSource")], [0, 1]],
      ["level__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Level__c")], [0, 1]],
      ["mailingCity", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailingCity")], [0, 1]],
      ["mailingCountry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailingCountry")], [0, 1]],
      ["mailingPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailingPostalCode")], [0, 1]],
      ["mailingState", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailingState")], [0, 1]],
      ["mailingStreet", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailingStreet")], [0, 1]],
      ["masterRecord", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecord")], [0, 1]],
      ["masterRecordId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecordId")], [0, 1]],
      ["mobilePhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MobilePhone")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["opportunities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunities")], [0, 1]],
      ["opportunityContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityContactRoles")], [0, 1]],
      ["otherCity", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherCity")], [0, 1]],
      ["otherCountry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherCountry")], [0, 1]],
      ["otherPhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherPhone")], [0, 1]],
      ["otherPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherPostalCode")], [0, 1]],
      ["otherState", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherState")], [0, 1]],
      ["otherStreet", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherStreet")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["reportsTo", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReportsTo")], [0, 1]],
      ["reportsToId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReportsToId")], [0, 1]],
      ["salutation", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Salutation")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContactFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContactHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContactShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactAccessLevel")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContentDocument,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocument"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["latestPublishedVersion", ["ContentVersion", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LatestPublishedVersion")], [0, 1]],
      ["latestPublishedVersionId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LatestPublishedVersionId")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["publishStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PublishStatus")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContentDocumentFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocumentFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["ContentDocument", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContentDocumentHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocumentHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contentDocument", ["ContentDocument", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocument")], [0, 1]],
      ["contentDocumentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocumentId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContentVersion,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentVersion"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contentDocument", ["ContentDocument", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocument")], [0, 1]],
      ["contentDocumentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocumentId")], [0, 1]],
      ["contentModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentModifiedById")], [0, 1]],
      ["contentModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentModifiedDate")], [0, 1]],
      ["contentSize", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentSize")], [0, 1]],
      ["contentUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentUrl")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["featuredContentBoost", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeaturedContentBoost")], [0, 1]],
      ["featuredContentDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeaturedContentDate")], [0, 1]],
      ["fileType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FileType")], [0, 1]],
      ["firstPublishLocation", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstPublishLocation")], [0, 1]],
      ["firstPublishLocationId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstPublishLocationId")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isLatest", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsLatest")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["negativeRatingCount", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NegativeRatingCount")], [0, 1]],
      ["origin", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Origin")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["pathOnClient", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PathOnClient")], [0, 1]],
      ["positiveRatingCount", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PositiveRatingCount")], [0, 1]],
      ["publishStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PublishStatus")], [0, 1]],
      ["ratingCount", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RatingCount")], [0, 1]],
      ["reasonForChange", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReasonForChange")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tagCsv", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TagCsv")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["versionData", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "VersionData")], [0, 1]],
      ["versionNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "VersionNumber")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContentVersionHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentVersionHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contentVersion", ["ContentVersion", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentVersion")], [0, 1]],
      ["contentVersionId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentVersionId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Contract,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contract"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activatedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivatedBy")], [0, 1]],
      ["activatedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivatedById")], [0, 1]],
      ["activatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivatedDate")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["approvals", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Approvals")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["billingCity", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingCity")], [0, 1]],
      ["billingCountry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingCountry")], [0, 1]],
      ["billingPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingPostalCode")], [0, 1]],
      ["billingState", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingState")], [0, 1]],
      ["billingStreet", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingStreet")], [0, 1]],
      ["companySigned", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompanySigned")], [0, 1]],
      ["companySignedDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompanySignedDate")], [0, 1]],
      ["companySignedId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompanySignedId")], [0, 1]],
      ["contractContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractContactRoles")], [0, 1]],
      ["contractNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractNumber")], [0, 1]],
      ["contractTerm", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractTerm")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["customerSigned", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CustomerSigned")], [0, 1]],
      ["customerSignedDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CustomerSignedDate")], [0, 1]],
      ["customerSignedId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CustomerSignedId")], [0, 1]],
      ["customerSignedTitle", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CustomerSignedTitle")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["endDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndDate")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastApprovedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastApprovedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerExpirationNotice", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerExpirationNotice")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["specialTerms", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SpecialTerms")], [0, 1]],
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartDate")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["statusCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StatusCode")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContractContactRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractContactRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["contract", ["Contract", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contract")], [0, 1]],
      ["contractId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContractFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Contract", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContractHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contract", ["Contract", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contract")], [0, 1]],
      ["contractId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ContractStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["statusCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StatusCode")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CronTrigger,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CronTrigger"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["cronExpression", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CronExpression")], [0, 1]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndTime")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["nextFireTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NextFireTime")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["previousFireTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PreviousFireTime")], [0, 1]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartTime")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "State")], [0, 1]],
      ["timeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimeZoneSidKey")], [0, 1]],
      ["timesTriggered", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimesTriggered")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Dashboard,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Dashboard"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["backgroundDirection", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BackgroundDirection")], [0, 1]],
      ["backgroundEnd", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BackgroundEnd")], [0, 1]],
      ["backgroundStart", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BackgroundStart")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["folderId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FolderId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["leftSize", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeftSize")], [0, 1]],
      ["middleSize", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MiddleSize")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["rightSize", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RightSize")], [0, 1]],
      ["runningUserId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RunningUserId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["textColor", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TextColor")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["titleColor", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TitleColor")], [0, 1]],
      ["titleSize", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TitleSize")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DashboardFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DashboardFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Dashboard", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Document,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Document"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["author", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Author")], [0, 1]],
      ["authorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AuthorId")], [0, 1]],
      ["body", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyLength")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["folder", ["Folder", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Folder")], [0, 1]],
      ["folderId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FolderId")], [0, 1]],
      ["isBodySearchable", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsBodySearchable")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isInternalUseOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsInternalUseOnly")], [0, 1]],
      ["isPublic", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPublic")], [0, 1]],
      ["keywords", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Keywords")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Url")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DocumentAttachmentMap,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DocumentAttachmentMap"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["documentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DocumentId")], [0, 1]],
      ["documentSequence", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DocumentSequence")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => EmailServicesAddress,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailServicesAddress"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["authorizedSenders", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AuthorizedSenders")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["emailDomainName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailDomainName")], [0, 1]],
      ["function", ["EmailServicesFunction", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Function")], [0, 1]],
      ["functionId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FunctionId")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["localPart", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LocalPart")], [0, 1]],
      ["runAsUserId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RunAsUserId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => EmailServicesFunction,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailServicesFunction"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["addressInactiveAction", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AddressInactiveAction")], [0, 1]],
      ["addresses", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Addresses")], [0, 1]],
      ["apexClassId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexClassId")], [0, 1]],
      ["attachmentOption", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AttachmentOption")], [0, 1]],
      ["authenticationFailureAction", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AuthenticationFailureAction")], [0, 1]],
      ["authorizationFailureAction", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AuthorizationFailureAction")], [0, 1]],
      ["authorizedSenders", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AuthorizedSenders")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["errorRoutingAddress", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ErrorRoutingAddress")], [0, 1]],
      ["functionInactiveAction", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FunctionInactiveAction")], [0, 1]],
      ["functionName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FunctionName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isAuthenticationRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAuthenticationRequired")], [0, 1]],
      ["isErrorRoutingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsErrorRoutingEnabled")], [0, 1]],
      ["isTextAttachmentsAsBinary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsTextAttachmentsAsBinary")], [0, 1]],
      ["isTextTruncated", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsTextTruncated")], [0, 1]],
      ["isTlsRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsTlsRequired")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["overLimitAction", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OverLimitAction")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => EmailStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["emailTemplateName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailTemplateName")], [0, 1]],
      ["firstOpenDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstOpenDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastOpenDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastOpenDate")], [0, 1]],
      ["task", ["Task", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Task")], [0, 1]],
      ["taskId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TaskId")], [0, 1]],
      ["timesOpened", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimesOpened")], [0, 1]],
      ["who", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Who")], [0, 1]],
      ["whoId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhoId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => EmailTemplate,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailTemplate"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apiVersion", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApiVersion")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["brandTemplateId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BrandTemplateId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["encoding", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Encoding")], [0, 1]],
      ["folder", ["Folder", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Folder")], [0, 1]],
      ["folderId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FolderId")], [0, 1]],
      ["htmlValue", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HtmlValue")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastUsedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastUsedDate")], [0, 1]],
      ["markup", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Markup")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["templateStyle", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TemplateStyle")], [0, 1]],
      ["templateType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TemplateType")], [0, 1]],
      ["timesUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimesUsed")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => EntitySubscription,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EntitySubscription"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["subscriber", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subscriber")], [0, 1]],
      ["subscriberId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SubscriberId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Event,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Event"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDate")], [0, 1]],
      ["activityDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDateTime")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["durationInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DurationInMinutes")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndDateTime")], [0, 1]],
      ["eventAttendees", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EventAttendees")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["groupEventType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "GroupEventType")], [0, 1]],
      ["isAllDayEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAllDayEvent")], [0, 1]],
      ["isArchived", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsArchived")], [0, 1]],
      ["isChild", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsChild")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isGroupEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsGroupEvent")], [0, 1]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrivate")], [0, 1]],
      ["isRecurrence", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsRecurrence")], [0, 1]],
      ["isReminderSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReminderSet")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Location")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["recurrenceActivityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceActivityId")], [0, 1]],
      ["recurrenceDayOfMonth", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfMonth")], [0, 1]],
      ["recurrenceDayOfWeekMask", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfWeekMask")], [0, 1]],
      ["recurrenceEndDateOnly", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceEndDateOnly")], [0, 1]],
      ["recurrenceInstance", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInstance")], [0, 1]],
      ["recurrenceInterval", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInterval")], [0, 1]],
      ["recurrenceMonthOfYear", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceMonthOfYear")], [0, 1]],
      ["recurrenceStartDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceStartDateTime")], [0, 1]],
      ["recurrenceTimeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceTimeZoneSidKey")], [0, 1]],
      ["recurrenceType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceType")], [0, 1]],
      ["recurringEvents", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurringEvents")], [0, 1]],
      ["reminderDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReminderDateTime")], [0, 1]],
      ["showAs", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShowAs")], [0, 1]],
      ["startDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartDateTime")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["what", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "What")], [0, 1]],
      ["whatId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhatId")], [0, 1]],
      ["who", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Who")], [0, 1]],
      ["whoId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhoId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => EventAttendee,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EventAttendee"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["attendee", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attendee")], [0, 1]],
      ["attendeeId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AttendeeId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["event", ["Event", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Event")], [0, 1]],
      ["eventId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EventId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["respondedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RespondedDate")], [0, 1]],
      ["response", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Response")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => EventFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EventFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Event", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FeedComment,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComment"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["commentBody", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CommentBody")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedItemId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedItemId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FeedPost,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["contentData", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentData")], [0, 1]],
      ["contentDescription", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDescription")], [0, 1]],
      ["contentFileName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentFileName")], [0, 1]],
      ["contentSize", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentSize")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedItemId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedItemId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["linkUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LinkUrl")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FeedTrackedChange,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChange"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["feedItemId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedItemId")], [0, 1]],
      ["fieldName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FieldName")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => FiscalYearSettings,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalYearSettings"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["endDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndDate")], [0, 1]],
      ["isStandardYear", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsStandardYear")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["periodId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PeriodId")], [0, 1]],
      ["periodLabelScheme", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PeriodLabelScheme")], [0, 1]],
      ["periodPrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PeriodPrefix")], [0, 1]],
      ["periods", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Periods")], [0, 1]],
      ["quarterLabelScheme", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QuarterLabelScheme")], [0, 1]],
      ["quarterPrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QuarterPrefix")], [0, 1]],
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartDate")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["weekLabelScheme", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WeekLabelScheme")], [0, 1]],
      ["weekStartDay", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WeekStartDay")], [0, 1]],
      ["yearType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "YearType")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Folder,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Folder"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accessType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccessType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["isReadonly", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReadonly")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ForecastShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccessLevel")], [0, 1]],
      ["canSubmit", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CanSubmit")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]],
      ["userRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRoleId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Group,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Group"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["delegatedUsers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DelegatedUsers")], [0, 1]],
      ["doesIncludeBosses", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DoesIncludeBosses")], [0, 1]],
      ["doesSendEmailToMembers", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DoesSendEmailToMembers")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["groupMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "GroupMembers")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["queueSobjects", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QueueSobjects")], [0, 1]],
      ["relatedId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RelatedId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GroupMember,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "GroupMember"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["group", ["Group", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Group")], [0, 1]],
      ["groupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "GroupId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Holiday,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Holiday"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["activityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDate")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["endTimeInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndTimeInMinutes")], [0, 1]],
      ["isAllDay", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAllDay")], [0, 1]],
      ["isRecurrence", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsRecurrence")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["recurrenceDayOfMonth", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfMonth")], [0, 1]],
      ["recurrenceDayOfWeekMask", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfWeekMask")], [0, 1]],
      ["recurrenceEndDateOnly", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceEndDateOnly")], [0, 1]],
      ["recurrenceInstance", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInstance")], [0, 1]],
      ["recurrenceInterval", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInterval")], [0, 1]],
      ["recurrenceMonthOfYear", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceMonthOfYear")], [0, 1]],
      ["recurrenceStartDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceStartDate")], [0, 1]],
      ["recurrenceType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceType")], [0, 1]],
      ["startTimeInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartTimeInMinutes")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Idea,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Idea"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["categories", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Categories")], [0, 1]],
      ["comments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Comments")], [0, 1]],
      ["community", ["Community", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Community")], [0, 1]],
      ["communityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CommunityId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isHtml", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsHtml")], [0, 1]],
      ["isLocked", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsLocked")], [0, 1]],
      ["lastComment", ["IdeaComment", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastComment")], [0, 1]],
      ["lastCommentDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastCommentDate")], [0, 1]],
      ["lastCommentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastCommentId")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["numComments", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumComments")], [0, 1]],
      ["parentIdeaId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentIdeaId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["voteScore", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "VoteScore")], [0, 1]],
      ["voteTotal", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "VoteTotal")], [0, 1]],
      ["votes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Votes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => IdeaComment,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IdeaComment"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["commentBody", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CommentBody")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["idea", ["Idea", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Idea")], [0, 1]],
      ["ideaId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IdeaId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isHtml", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsHtml")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Lead,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Lead"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["annualRevenue", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AnnualRevenue")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["campaign", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Campaign")], [0, 1]],
      ["campaignMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMembers")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "City")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Company")], [0, 1]],
      ["convertedAccount", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedAccount")], [0, 1]],
      ["convertedAccountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedAccountId")], [0, 1]],
      ["convertedContact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedContact")], [0, 1]],
      ["convertedContactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedContactId")], [0, 1]],
      ["convertedDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedDate")], [0, 1]],
      ["convertedOpportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedOpportunity")], [0, 1]],
      ["convertedOpportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedOpportunityId")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Country")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["currentGenerators__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CurrentGenerators__c")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["emailBouncedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailBouncedDate")], [0, 1]],
      ["emailBouncedReason", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailBouncedReason")], [0, 1]],
      ["emailStatuses", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailStatuses")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fax")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstName")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["industry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Industry")], [0, 1]],
      ["isConverted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsConverted")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isUnreadByOwner", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsUnreadByOwner")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastName")], [0, 1]],
      ["leadSource", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadSource")], [0, 1]],
      ["masterRecord", ["Lead", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecord")], [0, 1]],
      ["masterRecordId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecordId")], [0, 1]],
      ["mobilePhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MobilePhone")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["numberOfEmployees", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfEmployees")], [0, 1]],
      ["numberofLocations__c", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberofLocations__c")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PostalCode")], [0, 1]],
      ["primary__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Primary__c")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["productInterest__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProductInterest__c")], [0, 1]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Rating")], [0, 1]],
      ["sICCode__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SICCode__c")], [0, 1]],
      ["salutation", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Salutation")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "State")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Street")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Website")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LeadFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Lead", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LeadHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lead", ["Lead", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Lead")], [0, 1]],
      ["leadId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadId")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LeadShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lead", ["Lead", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Lead")], [0, 1]],
      ["leadAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadAccessLevel")], [0, 1]],
      ["leadId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadId")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LeadStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isConverted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsConverted")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => MailmergeTemplate,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailmergeTemplate"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyLength")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Filename")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastUsedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastUsedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Name,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Alias")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastName")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["profile", ["Profile", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Profile")], [0, 1]],
      ["profileId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProfileId")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]],
      ["userRole", ["UserRole", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRole")], [0, 1]],
      ["userRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRoleId")], [0, 1]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Username")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => NewsFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewsFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Note,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Note"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrivate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => NoteAndAttachment,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NoteAndAttachment"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isNote", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsNote")], [0, 1]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrivate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OpenActivity,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivity"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDate")], [0, 1]],
      ["activityType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityType")], [0, 1]],
      ["callDisposition", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDisposition")], [0, 1]],
      ["callDurationInSeconds", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDurationInSeconds")], [0, 1]],
      ["callObject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallObject")], [0, 1]],
      ["callType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["durationInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DurationInMinutes")], [0, 1]],
      ["isAllDayEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAllDayEvent")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isReminderSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReminderSet")], [0, 1]],
      ["isTask", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsTask")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Location")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Priority")], [0, 1]],
      ["reminderDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReminderDateTime")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["what", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "What")], [0, 1]],
      ["whatId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhatId")], [0, 1]],
      ["who", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Who")], [0, 1]],
      ["whoId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhoId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Opportunity,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["accountPartners", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountPartners")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Amount")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["campaign", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Campaign")], [0, 1]],
      ["campaignId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignId")], [0, 1]],
      ["closeDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CloseDate")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["currentGenerators__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CurrentGenerators__c")], [0, 1]],
      ["deliveryInstallationStatus__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeliveryInstallationStatus__c")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["expectedRevenue", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ExpectedRevenue")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["fiscal", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fiscal")], [0, 1]],
      ["fiscalQuarter", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalQuarter")], [0, 1]],
      ["fiscalYear", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalYear")], [0, 1]],
      ["forecastCategory", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastCategory")], [0, 1]],
      ["forecastCategoryName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastCategoryName")], [0, 1]],
      ["hasOpportunityLineItem", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasOpportunityLineItem")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrivate")], [0, 1]],
      ["isWon", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsWon")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["leadSource", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadSource")], [0, 1]],
      ["mainCompetitors__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MainCompetitors__c")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["nextStep", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NextStep")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["opportunityCompetitors", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityCompetitors")], [0, 1]],
      ["opportunityContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityContactRoles")], [0, 1]],
      ["opportunityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityHistories")], [0, 1]],
      ["opportunityLineItems", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityLineItems")], [0, 1]],
      ["opportunityPartnersFrom", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityPartnersFrom")], [0, 1]],
      ["orderNumber__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OrderNumber__c")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["partners", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Partners")], [0, 1]],
      ["pricebook2", ["Pricebook2", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Pricebook2")], [0, 1]],
      ["pricebook2Id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Pricebook2Id")], [0, 1]],
      ["probability", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Probability")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["stageName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StageName")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["totalOpportunityQuantity", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TotalOpportunityQuantity")], [0, 1]],
      ["trackingNumber__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TrackingNumber__c")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OpportunityCompetitor,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityCompetitor"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["competitorName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompetitorName")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["strengths", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Strengths")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["weaknesses", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Weaknesses")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OpportunityContactRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityContactRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OpportunityFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OpportunityFieldHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityFieldHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OpportunityHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Amount")], [0, 1]],
      ["closeDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CloseDate")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["expectedRevenue", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ExpectedRevenue")], [0, 1]],
      ["forecastCategory", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastCategory")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["probability", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Probability")], [0, 1]],
      ["stageName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StageName")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OpportunityLineItem,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityLineItem"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["listPrice", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ListPrice")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["pricebookEntry", ["PricebookEntry", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PricebookEntry")], [0, 1]],
      ["pricebookEntryId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PricebookEntryId")], [0, 1]],
      ["quantity", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Quantity")], [0, 1]],
      ["serviceDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ServiceDate")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["totalPrice", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TotalPrice")], [0, 1]],
      ["unitPrice", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UnitPrice")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OpportunityPartner,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityPartner"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accountTo", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountTo")], [0, 1]],
      ["accountToId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountToId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["reversePartnerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReversePartnerId")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OpportunityShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityAccessLevel")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OpportunityStage,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityStage"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["defaultProbability", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultProbability")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["forecastCategory", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastCategory")], [0, 1]],
      ["forecastCategoryName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastCategoryName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isWon", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsWon")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OrgWideEmailAddress,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OrgWideEmailAddress"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Address")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DisplayName")], [0, 1]],
      ["isAllowAllProfiles", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAllowAllProfiles")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Organization,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Organization"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "City")], [0, 1]],
      ["complianceBccEmail", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ComplianceBccEmail")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Country")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["defaultAccountAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultAccountAccess")], [0, 1]],
      ["defaultCalendarAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultCalendarAccess")], [0, 1]],
      ["defaultCampaignAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultCampaignAccess")], [0, 1]],
      ["defaultCaseAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultCaseAccess")], [0, 1]],
      ["defaultContactAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultContactAccess")], [0, 1]],
      ["defaultLeadAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultLeadAccess")], [0, 1]],
      ["defaultLocaleSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultLocaleSidKey")], [0, 1]],
      ["defaultOpportunityAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultOpportunityAccess")], [0, 1]],
      ["defaultPricebookAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultPricebookAccess")], [0, 1]],
      ["division", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Division")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fax")], [0, 1]],
      ["fiscalYearStartMonth", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalYearStartMonth")], [0, 1]],
      ["languageLocaleKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LanguageLocaleKey")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["monthlyPageViewsEntitlement", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MonthlyPageViewsEntitlement")], [0, 1]],
      ["monthlyPageViewsUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MonthlyPageViewsUsed")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["organizationType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OrganizationType")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PostalCode")], [0, 1]],
      ["preferencesRequireOpportunityProducts", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PreferencesRequireOpportunityProducts")], [0, 1]],
      ["primaryContact", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PrimaryContact")], [0, 1]],
      ["receivesAdminInfoEmails", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReceivesAdminInfoEmails")], [0, 1]],
      ["receivesInfoEmails", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReceivesInfoEmails")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "State")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Street")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["trialExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TrialExpirationDate")], [0, 1]],
      ["uiSkin", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UiSkin")], [0, 1]],
      ["usesStartDateAsFiscalYearName", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsesStartDateAsFiscalYearName")], [0, 1]],
      ["webToCaseDefaultOrigin", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WebToCaseDefaultOrigin")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Partner,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Partner"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accountFrom", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountFrom")], [0, 1]],
      ["accountFromId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountFromId")], [0, 1]],
      ["accountTo", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountTo")], [0, 1]],
      ["accountToId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountToId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["reversePartnerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReversePartnerId")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PartnerRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PartnerRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["reverseRole", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReverseRole")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Period,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Period"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["endDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndDate")], [0, 1]],
      ["fiscalYearSettings", ["FiscalYearSettings", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalYearSettings")], [0, 1]],
      ["fiscalYearSettingsId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalYearSettingsId")], [0, 1]],
      ["isForecastPeriod", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsForecastPeriod")], [0, 1]],
      ["number", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Number")], [0, 1]],
      ["periodLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PeriodLabel")], [0, 1]],
      ["quarterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QuarterLabel")], [0, 1]],
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartDate")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Pricebook2,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Pricebook2"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isStandard", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsStandard")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["opportunities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunities")], [0, 1]],
      ["pricebookEntries", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PricebookEntries")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PricebookEntry,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PricebookEntry"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["opportunityLineItems", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityLineItems")], [0, 1]],
      ["pricebook2", ["Pricebook2", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Pricebook2")], [0, 1]],
      ["pricebook2Id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Pricebook2Id")], [0, 1]],
      ["product2", ["Product2", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2")], [0, 1]],
      ["product2Id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2Id")], [0, 1]],
      ["productCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProductCode")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["unitPrice", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UnitPrice")], [0, 1]],
      ["useStandardPrice", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UseStandardPrice")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessInstance,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstance"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["steps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Steps")], [0, 1]],
      ["stepsAndWorkitems", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StepsAndWorkitems")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["targetObject", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TargetObject")], [0, 1]],
      ["targetObjectId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TargetObjectId")], [0, 1]],
      ["workitems", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Workitems")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessInstanceHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["actor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Actor")], [0, 1]],
      ["actorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActorId")], [0, 1]],
      ["comments", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Comments")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPending", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPending")], [0, 1]],
      ["originalActor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActor")], [0, 1]],
      ["originalActorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActorId")], [0, 1]],
      ["processInstance", ["ProcessInstance", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstance")], [0, 1]],
      ["processInstanceId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceId")], [0, 1]],
      ["remindersSent", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RemindersSent")], [0, 1]],
      ["stepStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StepStatus")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["targetObject", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TargetObject")], [0, 1]],
      ["targetObjectId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TargetObjectId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessInstanceStep,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceStep"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["actor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Actor")], [0, 1]],
      ["actorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActorId")], [0, 1]],
      ["comments", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Comments")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["originalActor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActor")], [0, 1]],
      ["originalActorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActorId")], [0, 1]],
      ["processInstance", ["ProcessInstance", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstance")], [0, 1]],
      ["processInstanceId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceId")], [0, 1]],
      ["stepStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StepStatus")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessInstanceWorkitem,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceWorkitem"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["actor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Actor")], [0, 1]],
      ["actorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActorId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["originalActor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActor")], [0, 1]],
      ["originalActorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActorId")], [0, 1]],
      ["processInstance", ["ProcessInstance", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstance")], [0, 1]],
      ["processInstanceId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Product2,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["assets", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Assets")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["family", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Family")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["opportunityLineItems", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityLineItems")], [0, 1]],
      ["pricebookEntries", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PricebookEntries")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["productCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProductCode")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Product2Feed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2Feed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Product2", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Profile,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Profile"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["permissionsApiEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsApiEnabled")], [0, 1]],
      ["permissionsAuthorApex", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsAuthorApex")], [0, 1]],
      ["permissionsBulkApiHardDelete", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsBulkApiHardDelete")], [0, 1]],
      ["permissionsCanUseNewDashboardBuilder", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsCanUseNewDashboardBuilder")], [0, 1]],
      ["permissionsConvertLeads", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsConvertLeads")], [0, 1]],
      ["permissionsCreateMultiforce", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsCreateMultiforce")], [0, 1]],
      ["permissionsCustomSidebarOnAllPages", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsCustomSidebarOnAllPages")], [0, 1]],
      ["permissionsCustomizeApplication", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsCustomizeApplication")], [0, 1]],
      ["permissionsDistributeFromPersWksp", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsDistributeFromPersWksp")], [0, 1]],
      ["permissionsEditCaseComments", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditCaseComments")], [0, 1]],
      ["permissionsEditEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditEvent")], [0, 1]],
      ["permissionsEditKnowledge", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditKnowledge")], [0, 1]],
      ["permissionsEditOppLineItemUnitPrice", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditOppLineItemUnitPrice")], [0, 1]],
      ["permissionsEditPublicDocuments", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditPublicDocuments")], [0, 1]],
      ["permissionsEditReadonlyFields", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditReadonlyFields")], [0, 1]],
      ["permissionsEditReports", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditReports")], [0, 1]],
      ["permissionsEditTask", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditTask")], [0, 1]],
      ["permissionsEnableNotifications", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEnableNotifications")], [0, 1]],
      ["permissionsImportLeads", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsImportLeads")], [0, 1]],
      ["permissionsInstallMultiforce", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsInstallMultiforce")], [0, 1]],
      ["permissionsManageAnalyticSnapshots", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageAnalyticSnapshots")], [0, 1]],
      ["permissionsManageBusinessHourHolidays", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageBusinessHourHolidays")], [0, 1]],
      ["permissionsManageCallCenters", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageCallCenters")], [0, 1]],
      ["permissionsManageCases", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageCases")], [0, 1]],
      ["permissionsManageCategories", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageCategories")], [0, 1]],
      ["permissionsManageCssUsers", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageCssUsers")], [0, 1]],
      ["permissionsManageCustomReportTypes", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageCustomReportTypes")], [0, 1]],
      ["permissionsManageDashboards", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageDashboards")], [0, 1]],
      ["permissionsManageDataCategories", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageDataCategories")], [0, 1]],
      ["permissionsManageDataIntegrations", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageDataIntegrations")], [0, 1]],
      ["permissionsManageDynamicDashboards", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageDynamicDashboards")], [0, 1]],
      ["permissionsManageEmailClientConfig", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageEmailClientConfig")], [0, 1]],
      ["permissionsManageKnowledge", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageKnowledge")], [0, 1]],
      ["permissionsManageLeads", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageLeads")], [0, 1]],
      ["permissionsManageMobile", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageMobile")], [0, 1]],
      ["permissionsManageRemoteAccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageRemoteAccess")], [0, 1]],
      ["permissionsManageSelfService", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageSelfService")], [0, 1]],
      ["permissionsManageSolutions", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageSolutions")], [0, 1]],
      ["permissionsManageSynonyms", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageSynonyms")], [0, 1]],
      ["permissionsManageUsers", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageUsers")], [0, 1]],
      ["permissionsMassInlineEdit", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsMassInlineEdit")], [0, 1]],
      ["permissionsModifyAllData", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsModifyAllData")], [0, 1]],
      ["permissionsNewReportBuilder", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsNewReportBuilder")], [0, 1]],
      ["permissionsPasswordNeverExpires", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsPasswordNeverExpires")], [0, 1]],
      ["permissionsPublishMultiforce", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsPublishMultiforce")], [0, 1]],
      ["permissionsRunReports", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsRunReports")], [0, 1]],
      ["permissionsScheduleReports", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsScheduleReports")], [0, 1]],
      ["permissionsSendSitRequests", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsSendSitRequests")], [0, 1]],
      ["permissionsSolutionImport", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsSolutionImport")], [0, 1]],
      ["permissionsTransferAnyCase", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsTransferAnyCase")], [0, 1]],
      ["permissionsTransferAnyEntity", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsTransferAnyEntity")], [0, 1]],
      ["permissionsTransferAnyLead", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsTransferAnyLead")], [0, 1]],
      ["permissionsUseTeamReassignWizards", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsUseTeamReassignWizards")], [0, 1]],
      ["permissionsViewAllData", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsViewAllData")], [0, 1]],
      ["permissionsViewDataCategories", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsViewDataCategories")], [0, 1]],
      ["permissionsViewKnowledge", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsViewKnowledge")], [0, 1]],
      ["permissionsViewMyTeamsDashboards", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsViewMyTeamsDashboards")], [0, 1]],
      ["permissionsViewSetup", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsViewSetup")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["userLicense", ["UserLicense", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserLicense")], [0, 1]],
      ["userLicenseId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserLicenseId")], [0, 1]],
      ["userType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserType")], [0, 1]],
      ["users", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Users")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => QueueSobject,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QueueSobject"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["queue", ["Group", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Queue")], [0, 1]],
      ["queueId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QueueId")], [0, 1]],
      ["sobjectType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SobjectType")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => RecordType,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecordType"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["businessProcessId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BusinessProcessId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["sobjectType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SobjectType")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Report,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Report"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastRunDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastRunDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ReportFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReportFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Report", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Scontrol,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Scontrol"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["binary", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Binary")], [0, 1]],
      ["bodyLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyLength")], [0, 1]],
      ["contentSource", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentSource")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["encodingKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EncodingKey")], [0, 1]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Filename")], [0, 1]],
      ["htmlWrapper", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HtmlWrapper")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["supportsCaching", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SupportsCaching")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SelfServiceUser,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SelfServiceUser"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["languageLocaleKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LanguageLocaleKey")], [0, 1]],
      ["lastLoginDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastLoginDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastName")], [0, 1]],
      ["localeSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LocaleSidKey")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["superUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SuperUser")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["timeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimeZoneSidKey")], [0, 1]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Username")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Site,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Site"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["admin", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Admin")], [0, 1]],
      ["adminId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AdminId")], [0, 1]],
      ["analyticsTrackingCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AnalyticsTrackingCode")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["dailyBandwidthLimit", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DailyBandwidthLimit")], [0, 1]],
      ["dailyBandwidthUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DailyBandwidthUsed")], [0, 1]],
      ["dailyRequestTimeLimit", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DailyRequestTimeLimit")], [0, 1]],
      ["dailyRequestTimeUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DailyRequestTimeUsed")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["monthlyPageViewsEntitlement", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MonthlyPageViewsEntitlement")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["optionsAllowHomePage", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsAllowHomePage")], [0, 1]],
      ["optionsAllowStandardAnswersPages", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsAllowStandardAnswersPages")], [0, 1]],
      ["optionsAllowStandardIdeasPages", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsAllowStandardIdeasPages")], [0, 1]],
      ["optionsAllowStandardLookups", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsAllowStandardLookups")], [0, 1]],
      ["optionsAllowStandardSearch", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsAllowStandardSearch")], [0, 1]],
      ["optionsEnableFeeds", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsEnableFeeds")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["subdomain", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subdomain")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["topLevelDomain", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TopLevelDomain")], [0, 1]],
      ["urlPathPrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UrlPathPrefix")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SiteHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SiteHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]],
      ["site", ["Site", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Site")], [0, 1]],
      ["siteId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SiteId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Solution,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Solution"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["caseSolutions", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseSolutions")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isHtml", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsHtml")], [0, 1]],
      ["isPublished", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPublished")], [0, 1]],
      ["isPublishedInPublicKb", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPublishedInPublicKb")], [0, 1]],
      ["isReviewed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReviewed")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["solutionName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionName")], [0, 1]],
      ["solutionNote", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionNote")], [0, 1]],
      ["solutionNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionNumber")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["timesUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimesUsed")], [0, 1]],
      ["votes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Votes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SolutionFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Solution", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SolutionHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]],
      ["solution", ["Solution", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Solution")], [0, 1]],
      ["solutionId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SolutionStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["isReviewed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReviewed")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => StaticResource,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StaticResource"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyLength")], [0, 1]],
      ["cacheControl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CacheControl")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Task,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Task"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDate")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["callDisposition", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDisposition")], [0, 1]],
      ["callDurationInSeconds", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDurationInSeconds")], [0, 1]],
      ["callObject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallObject")], [0, 1]],
      ["callType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["isArchived", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsArchived")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isRecurrence", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsRecurrence")], [0, 1]],
      ["isReminderSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReminderSet")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Priority")], [0, 1]],
      ["recurrenceActivityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceActivityId")], [0, 1]],
      ["recurrenceDayOfMonth", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfMonth")], [0, 1]],
      ["recurrenceDayOfWeekMask", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfWeekMask")], [0, 1]],
      ["recurrenceEndDateOnly", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceEndDateOnly")], [0, 1]],
      ["recurrenceInstance", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInstance")], [0, 1]],
      ["recurrenceInterval", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInterval")], [0, 1]],
      ["recurrenceMonthOfYear", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceMonthOfYear")], [0, 1]],
      ["recurrenceStartDateOnly", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceStartDateOnly")], [0, 1]],
      ["recurrenceTimeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceTimeZoneSidKey")], [0, 1]],
      ["recurrenceType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceType")], [0, 1]],
      ["recurringTasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurringTasks")], [0, 1]],
      ["reminderDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReminderDateTime")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["what", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "What")], [0, 1]],
      ["whatId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhatId")], [0, 1]],
      ["who", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Who")], [0, 1]],
      ["whoId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhoId")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TaskFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TaskFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Task", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TaskPriority,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TaskPriority"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["isHighPriority", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsHighPriority")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TaskStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TaskStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SUser,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SUser"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["aboutMe", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AboutMe")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Alias")], [0, 1]],
      ["callCenterId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallCenterId")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "City")], [0, 1]],
      ["communityNickname", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CommunityNickname")], [0, 1]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompanyName")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["contractsSigned", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractsSigned")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Country")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["currentStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CurrentStatus")], [0, 1]],
      ["delegatedApproverId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DelegatedApproverId")], [0, 1]],
      ["delegatedUsers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DelegatedUsers")], [0, 1]],
      ["department", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Department")], [0, 1]],
      ["digestFrequency", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DigestFrequency")], [0, 1]],
      ["division", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Division")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["emailEncodingKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailEncodingKey")], [0, 1]],
      ["employeeNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmployeeNumber")], [0, 1]],
      ["extension", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Extension")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fax")], [0, 1]],
      ["federationIdentifier", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FederationIdentifier")], [0, 1]],
      ["feedSubscriptions", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptions")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstName")], [0, 1]],
      ["forecastEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastEnabled")], [0, 1]],
      ["fullPhotoUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FullPhotoUrl")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["languageLocaleKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LanguageLocaleKey")], [0, 1]],
      ["lastLoginDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastLoginDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastName")], [0, 1]],
      ["lastPasswordChangeDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastPasswordChangeDate")], [0, 1]],
      ["localeSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LocaleSidKey")], [0, 1]],
      ["manager", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Manager")], [0, 1]],
      ["managerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ManagerId")], [0, 1]],
      ["mobilePhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MobilePhone")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["offlinePdaTrialExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OfflinePdaTrialExpirationDate")], [0, 1]],
      ["offlineTrialExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OfflineTrialExpirationDate")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PostalCode")], [0, 1]],
      ["profile", ["Profile", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Profile")], [0, 1]],
      ["profileId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProfileId")], [0, 1]],
      ["receivesAdminInfoEmails", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReceivesAdminInfoEmails")], [0, 1]],
      ["receivesInfoEmails", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReceivesInfoEmails")], [0, 1]],
      ["smallPhotoUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SmallPhotoUrl")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "State")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Street")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["timeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimeZoneSidKey")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["userPermissionsCallCenterAutoLogin", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsCallCenterAutoLogin")], [0, 1]],
      ["userPermissionsKnowledgeUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsKnowledgeUser")], [0, 1]],
      ["userPermissionsMarketingUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsMarketingUser")], [0, 1]],
      ["userPermissionsMobileUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsMobileUser")], [0, 1]],
      ["userPermissionsOfflineUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsOfflineUser")], [0, 1]],
      ["userPermissionsSFContentUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsSFContentUser")], [0, 1]],
      ["userPermissionsSupportUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsSupportUser")], [0, 1]],
      ["userPreferences", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferences")], [0, 1]],
      ["userPreferencesActivityRemindersPopup", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesActivityRemindersPopup")], [0, 1]],
      ["userPreferencesApexPagesDeveloperMode", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesApexPagesDeveloperMode")], [0, 1]],
      ["userPreferencesDisableAutoSubForFeeds", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesDisableAutoSubForFeeds")], [0, 1]],
      ["userPreferencesEventRemindersCheckboxDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesEventRemindersCheckboxDefault")], [0, 1]],
      ["userPreferencesReminderSoundOff", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesReminderSoundOff")], [0, 1]],
      ["userPreferencesTaskRemindersCheckboxDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesTaskRemindersCheckboxDefault")], [0, 1]],
      ["userRole", ["UserRole", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRole")], [0, 1]],
      ["userRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRoleId")], [0, 1]],
      ["userType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserType")], [0, 1]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Username")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UserFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UserLicense,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserLicense"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["licenseDefinitionKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LicenseDefinitionKey")], [0, 1]],
      ["monthlyLoginsEntitlement", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MonthlyLoginsEntitlement")], [0, 1]],
      ["monthlyLoginsUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MonthlyLoginsUsed")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UserPreference,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreference"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["preference", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Preference")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["userId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserId")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Value")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UserProfileFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserProfileFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UserRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["caseAccessForAccountOwner", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseAccessForAccountOwner")], [0, 1]],
      ["contactAccessForAccountOwner", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactAccessForAccountOwner")], [0, 1]],
      ["forecastUserId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastUserId")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["mayForecastManagerShare", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MayForecastManagerShare")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["opportunityAccessForAccountOwner", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityAccessForAccountOwner")], [0, 1]],
      ["parentRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentRoleId")], [0, 1]],
      ["portalAccountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PortalAccountId")], [0, 1]],
      ["portalAccountOwnerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PortalAccountOwnerId")], [0, 1]],
      ["portalType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PortalType")], [0, 1]],
      ["rollupDescription", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RollupDescription")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["users", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Users")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Vote,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Vote"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => WebLink,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WebLink"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["displayType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DisplayType")], [0, 1]],
      ["encodingKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EncodingKey")], [0, 1]],
      ["hasMenubar", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasMenubar")], [0, 1]],
      ["hasScrollbars", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasScrollbars")], [0, 1]],
      ["hasToolbar", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasToolbar")], [0, 1]],
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Height")], [0, 1]],
      ["isProtected", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsProtected")], [0, 1]],
      ["isResizable", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsResizable")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["linkType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LinkType")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["openType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenType")], [0, 1]],
      ["pageOrSobjectType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PageOrSobjectType")], [0, 1]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Position")], [0, 1]],
      ["requireRowSelection", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RequireRowSelection")], [0, 1]],
      ["scontrolId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ScontrolId")], [0, 1]],
      ["showsLocation", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShowsLocation")], [0, 1]],
      ["showsStatus", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShowsStatus")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Url")], [0, 1]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Width")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => QueryResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "QueryResult"),
    :schema_element => [
      ["done", "SOAP::SOAPBoolean"],
      ["queryLocator", nil],
      ["records", "SObject[]", [0, nil]],
      ["size", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => SearchResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SearchResult"),
    :schema_element => [
      ["searchRecords", "SearchRecord[]", [0, nil]],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchRecord,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SearchRecord"),
    :schema_element => [
      ["record", "SObject"]
    ]
  )

  EncodedRegistry.register(
    :class => GetUpdatedResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "GetUpdatedResult"),
    :schema_element => [
      ["ids", "[]", [0, nil]],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GetDeletedResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "GetDeletedResult"),
    :schema_element => [
      ["deletedRecords", "DeletedRecord[]", [0, nil]],
      ["earliestDateAvailable", "SOAP::SOAPDateTime"],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DeletedRecord,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DeletedRecord"),
    :schema_element => [
      ["deletedDate", "SOAP::SOAPDateTime"],
      ["id", nil]
    ]
  )

  EncodedRegistry.register(
    :class => GetServerTimestampResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "GetServerTimestampResult"),
    :schema_element => [
      ["timestamp", "SOAP::SOAPDateTime"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidateSessionsResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "InvalidateSessionsResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => SetPasswordResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SetPasswordResult"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ResetPasswordResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ResetPasswordResult"),
    :schema_element => [
      ["password", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => GetUserInfoResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "GetUserInfoResult"),
    :schema_element => [
      ["accessibilityMode", "SOAP::SOAPBoolean"],
      ["currencySymbol", "SOAP::SOAPString"],
      ["orgDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["orgDisallowHtmlAttachments", "SOAP::SOAPBoolean"],
      ["orgHasPersonAccounts", "SOAP::SOAPBoolean"],
      ["organizationId", nil],
      ["organizationMultiCurrency", "SOAP::SOAPBoolean"],
      ["organizationName", "SOAP::SOAPString"],
      ["profileId", nil],
      ["roleId", nil],
      ["userDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["userEmail", "SOAP::SOAPString"],
      ["userFullName", "SOAP::SOAPString"],
      ["userId", nil],
      ["userLanguage", "SOAP::SOAPString"],
      ["userLocale", "SOAP::SOAPString"],
      ["userName", "SOAP::SOAPString"],
      ["userTimeZone", "SOAP::SOAPString"],
      ["userType", "SOAP::SOAPString"],
      ["userUiSkin", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => LoginResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "LoginResult"),
    :schema_element => [
      ["metadataServerUrl", "SOAP::SOAPString"],
      ["passwordExpired", "SOAP::SOAPBoolean"],
      ["sandbox", "SOAP::SOAPBoolean"],
      ["serverUrl", "SOAP::SOAPString"],
      ["sessionId", "SOAP::SOAPString"],
      ["userId", nil],
      ["userInfo", "GetUserInfoResult", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Error,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "Error"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "StatusCode"]
    ]
  )

  EncodedRegistry.register(
    :class => SendEmailError,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SendEmailError"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "StatusCode"],
      ["targetObjectId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => SaveResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SaveResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => UpsertResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "UpsertResult"),
    :schema_element => [
      ["created", "SOAP::SOAPBoolean"],
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => MergeRequest,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "MergeRequest"),
    :schema_element => [
      ["masterRecord", "SObject"],
      ["recordToMergeIds", "[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => MergeResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "MergeResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["mergedRecordIds", "[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"],
      ["updatedRelatedIds", "[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessRequest,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessSubmitRequest,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessSubmitRequest"),
    :schema_basetype => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]],
      ["objectId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessWorkitemRequest,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessWorkitemRequest"),
    :schema_basetype => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]],
      ["action", "SOAP::SOAPString"],
      ["workitemId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => ProcessResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessResult"),
    :schema_element => [
      ["actorIds", "[]", [0, nil]],
      ["entityId", nil],
      ["errors", "Error[]", [0, nil]],
      ["instanceId", nil],
      ["instanceStatus", "SOAP::SOAPString"],
      ["newWorkitemIds", "[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DeleteResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DeleteResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => UndeleteResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "UndeleteResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => EmptyRecycleBinResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "EmptyRecycleBinResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => LeadConvert,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "LeadConvert"),
    :schema_element => [
      ["accountId", nil],
      ["contactId", nil],
      ["convertedStatus", "SOAP::SOAPString"],
      ["doNotCreateOpportunity", "SOAP::SOAPBoolean"],
      ["leadId", nil],
      ["opportunityName", "SOAP::SOAPString"],
      ["overwriteLeadSource", "SOAP::SOAPBoolean"],
      ["ownerId", nil],
      ["sendNotificationEmail", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => LeadConvertResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "LeadConvertResult"),
    :schema_element => [
      ["accountId", nil],
      ["contactId", nil],
      ["errors", "Error[]", [0, nil]],
      ["leadId", nil],
      ["opportunityId", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSObjectResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSObjectResult"),
    :schema_element => [
      ["activateable", "SOAP::SOAPBoolean"],
      ["childRelationships", "ChildRelationship[]", [0, nil]],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["customSetting", "SOAP::SOAPBoolean"],
      ["deletable", "SOAP::SOAPBoolean"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["feedEnabled", "SOAP::SOAPBoolean"],
      ["fields", "Field[]", [0, nil]],
      ["keyPrefix", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["labelPlural", "SOAP::SOAPString"],
      ["layoutable", "SOAP::SOAPBoolean"],
      ["mergeable", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["queryable", "SOAP::SOAPBoolean"],
      ["recordTypeInfos", "RecordTypeInfo[]", [0, nil]],
      ["replicateable", "SOAP::SOAPBoolean"],
      ["retrieveable", "SOAP::SOAPBoolean"],
      ["searchable", "SOAP::SOAPBoolean"],
      ["triggerable", "SOAP::SOAPBoolean", [0, 1]],
      ["undeletable", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"],
      ["urlDetail", "SOAP::SOAPString"],
      ["urlEdit", "SOAP::SOAPString"],
      ["urlNew", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeGlobalSObjectResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeGlobalSObjectResult"),
    :schema_element => [
      ["activateable", "SOAP::SOAPBoolean"],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["customSetting", "SOAP::SOAPBoolean"],
      ["deletable", "SOAP::SOAPBoolean"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["feedEnabled", "SOAP::SOAPBoolean"],
      ["keyPrefix", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["labelPlural", "SOAP::SOAPString"],
      ["layoutable", "SOAP::SOAPBoolean"],
      ["mergeable", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["queryable", "SOAP::SOAPBoolean"],
      ["replicateable", "SOAP::SOAPBoolean"],
      ["retrieveable", "SOAP::SOAPBoolean"],
      ["searchable", "SOAP::SOAPBoolean"],
      ["triggerable", "SOAP::SOAPBoolean"],
      ["undeletable", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => ChildRelationship,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ChildRelationship"),
    :schema_element => [
      ["cascadeDelete", "SOAP::SOAPBoolean"],
      ["childSObject", "SOAP::SOAPString"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["field", "SOAP::SOAPString"],
      ["relationshipName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeGlobalResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeGlobalResult"),
    :schema_element => [
      ["encoding", "SOAP::SOAPString"],
      ["maxBatchSize", "SOAP::SOAPInt"],
      ["sobjects", "DescribeGlobalSObjectResult[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Field,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "Field"),
    :schema_element => [
      ["autoNumber", "SOAP::SOAPBoolean"],
      ["byteLength", "SOAP::SOAPInt"],
      ["calculated", "SOAP::SOAPBoolean"],
      ["calculatedFormula", "SOAP::SOAPString", [0, 1]],
      ["caseSensitive", "SOAP::SOAPBoolean"],
      ["controllerName", "SOAP::SOAPString", [0, 1]],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["defaultValueFormula", "SOAP::SOAPString", [0, 1]],
      ["defaultedOnCreate", "SOAP::SOAPBoolean"],
      ["dependentPicklist", "SOAP::SOAPBoolean", [0, 1]],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["digits", "SOAP::SOAPInt"],
      ["externalId", "SOAP::SOAPBoolean", [0, 1]],
      ["filterable", "SOAP::SOAPBoolean"],
      ["groupable", "SOAP::SOAPBoolean"],
      ["htmlFormatted", "SOAP::SOAPBoolean", [0, 1]],
      ["idLookup", "SOAP::SOAPBoolean"],
      ["inlineHelpText", "SOAP::SOAPString", [0, 1]],
      ["label", "SOAP::SOAPString"],
      ["length", "SOAP::SOAPInt"],
      ["name", "SOAP::SOAPString"],
      ["nameField", "SOAP::SOAPBoolean"],
      ["namePointing", "SOAP::SOAPBoolean", [0, 1]],
      ["nillable", "SOAP::SOAPBoolean"],
      ["picklistValues", "PicklistEntry[]", [0, nil]],
      ["precision", "SOAP::SOAPInt"],
      ["referenceTo", "SOAP::SOAPString[]", [0, nil]],
      ["relationshipName", "SOAP::SOAPString", [0, 1]],
      ["relationshipOrder", "SOAP::SOAPInt", [0, 1]],
      ["restrictedPicklist", "SOAP::SOAPBoolean"],
      ["scale", "SOAP::SOAPInt"],
      ["soapType", "SoapType"],
      ["sortable", "SOAP::SOAPBoolean", [0, 1]],
      ["type", "FieldType"],
      ["unique", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"],
      ["writeRequiresMasterRead", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PicklistEntry,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "PicklistEntry"),
    :schema_element => [
      ["active", "SOAP::SOAPBoolean"],
      ["defaultValue", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["validFor", "SOAP::SOAPBase64", [0, 1]],
      ["value", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeDataCategoryGroupResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeDataCategoryGroupResult"),
    :schema_element => [
      ["categoryCount", "SOAP::SOAPInt"],
      ["description", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeDataCategoryGroupStructureResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeDataCategoryGroupStructureResult"),
    :schema_element => [
      ["description", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"],
      ["topCategories", "DataCategory[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DataCategoryGroupSobjectTypePair,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DataCategoryGroupSobjectTypePair"),
    :schema_element => [
      ["dataCategoryGroupName", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DataCategory,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DataCategory"),
    :schema_element => [
      ["childCategories", "DataCategory[]", [0, nil]],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneLayoutResult"),
    :schema_element => [
      ["callTypes", "DescribeSoftphoneLayoutCallType[]", [1, nil]],
      ["id", nil],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutCallType,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneLayoutCallType"),
    :schema_element => [
      ["infoFields", "DescribeSoftphoneLayoutInfoField[]", [1, nil]],
      ["name", "SOAP::SOAPString"],
      ["screenPopOptions", "DescribeSoftphoneScreenPopOption[]", [0, nil]],
      ["screenPopsOpenWithin", "SOAP::SOAPString", [0, 1]],
      ["sections", "DescribeSoftphoneLayoutSection[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneScreenPopOption,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneScreenPopOption"),
    :schema_element => [
      ["matchType", "SOAP::SOAPString"],
      ["screenPopData", "SOAP::SOAPString"],
      ["screenPopType", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutInfoField,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneLayoutInfoField"),
    :schema_element => [
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutSection,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneLayoutSection"),
    :schema_element => [
      ["entityApiName", "SOAP::SOAPString"],
      ["items", "DescribeSoftphoneLayoutItem[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeSoftphoneLayoutItem,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneLayoutItem"),
    :schema_element => [
      ["itemApiName", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutResult"),
    :schema_element => [
      ["layouts", "DescribeLayout[]", [1, nil]],
      ["recordTypeMappings", "RecordTypeMapping[]", [0, nil]],
      ["recordTypeSelectorRequired", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayout,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayout"),
    :schema_element => [
      ["buttonLayoutSection", "DescribeLayoutButtonSection", [0, 1]],
      ["detailLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["editLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["id", nil],
      ["relatedLists", "RelatedList[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutSection,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutSection"),
    :schema_element => [
      ["columns", "SOAP::SOAPInt"],
      ["heading", "SOAP::SOAPString"],
      ["layoutRows", "DescribeLayoutRow[]", [1, nil]],
      ["rows", "SOAP::SOAPInt"],
      ["useCollapsibleSection", "SOAP::SOAPBoolean"],
      ["useHeading", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutButtonSection,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutButtonSection"),
    :schema_element => [
      ["detailButtons", "DescribeLayoutButton[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutRow,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutRow"),
    :schema_element => [
      ["layoutItems", "DescribeLayoutItem[]", [1, nil]],
      ["numItems", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutItem,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutItem"),
    :schema_element => [
      ["editable", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["layoutComponents", "DescribeLayoutComponent[]", [0, nil]],
      ["placeholder", "SOAP::SOAPBoolean"],
      ["required", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutButton,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutButton"),
    :schema_element => [
      ["custom", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeLayoutComponent,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutComponent"),
    :schema_element => [
      ["displayLines", "SOAP::SOAPInt"],
      ["tabOrder", "SOAP::SOAPInt"],
      ["type", "LayoutComponentType"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => RecordTypeInfo,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "RecordTypeInfo"),
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["recordTypeId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => RecordTypeMapping,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "RecordTypeMapping"),
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["layoutId", nil],
      ["name", "SOAP::SOAPString"],
      ["picklistsForRecordType", "PicklistForRecordType[]", [0, nil]],
      ["recordTypeId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => PicklistForRecordType,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "PicklistForRecordType"),
    :schema_element => [
      ["picklistName", "SOAP::SOAPString"],
      ["picklistValues", "PicklistEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedList,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "RelatedList"),
    :schema_element => [
      ["columns", "RelatedListColumn[]", [1, nil]],
      ["custom", "SOAP::SOAPBoolean"],
      ["field", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["limitRows", "SOAP::SOAPInt"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"],
      ["sort", "RelatedListSort[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedListColumn,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "RelatedListColumn"),
    :schema_element => [
      ["field", "SOAP::SOAPString"],
      ["format", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedListSort,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "RelatedListSort"),
    :schema_element => [
      ["ascending", "SOAP::SOAPBoolean"],
      ["column", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => EmailFileAttachment,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "EmailFileAttachment"),
    :schema_element => [
      ["body", "SOAP::SOAPBase64", [0, 1]],
      ["contentType", "SOAP::SOAPString", [0, 1]],
      ["fileName", "SOAP::SOAPString"],
      ["inline", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Email,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => MassEmailMessage,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "MassEmailMessage"),
    :schema_basetype => XSD::QName.new(NsEnterpriseSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["description", "SOAP::SOAPString"],
      ["targetObjectIds", "[]", [0, 250]],
      ["templateId", nil],
      ["whatIds", "[]", [0, 250]]
    ]
  )

  EncodedRegistry.register(
    :class => SingleEmailMessage,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SingleEmailMessage"),
    :schema_basetype => XSD::QName.new(NsEnterpriseSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["bccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["ccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["charset", "SOAP::SOAPString"],
      ["documentAttachments", "[]", [0, nil]],
      ["htmlBody", "SOAP::SOAPString"],
      ["inReplyTo", "SOAP::SOAPString", [0, 1]],
      ["fileAttachments", "EmailFileAttachment[]", [0, nil]],
      ["orgWideEmailAddressId", nil, [0, 1]],
      ["plainTextBody", "SOAP::SOAPString"],
      ["references", "SOAP::SOAPString", [0, 1]],
      ["targetObjectId", nil],
      ["templateId", nil],
      ["toAddresses", "SOAP::SOAPString[]", [0, 100]],
      ["whatId", nil]
    ]
  )

  EncodedRegistry.register(
    :class => SendEmailResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SendEmailResult"),
    :schema_element => [
      ["errors", "SendEmailError[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeTabSetResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeTabSetResult"),
    :schema_element => [
      ["label", "SOAP::SOAPString"],
      ["logoUrl", "SOAP::SOAPString"],
      ["namespace", "SOAP::SOAPString", [0, 1]],
      ["selected", "SOAP::SOAPBoolean"],
      ["tabs", "DescribeTab[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DescribeTab,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeTab"),
    :schema_element => [
      ["custom", "SOAP::SOAPBoolean"],
      ["iconUrl", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["miniIconUrl", "SOAP::SOAPString"],
      ["sobjectName", "SOAP::SOAPString"],
      ["url", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => PackageVersion,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "PackageVersion"),
    :schema_element => [
      ["majorNumber", "SOAP::SOAPInt"],
      ["minorNumber", "SOAP::SOAPInt"],
      ["namespace", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ApiFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => ApiQueryFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiQueryFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => LoginFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "LoginFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidQueryLocatorFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidQueryLocatorFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidNewPasswordFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidNewPasswordFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidIdFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidIdFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => UnexpectedErrorFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "UnexpectedErrorFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidFieldFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidFieldFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => InvalidSObjectFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidSObjectFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => MalformedQueryFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "MalformedQueryFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => MalformedSearchFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "MalformedSearchFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => StatusCode,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "StatusCode")
  )

  EncodedRegistry.register(
    :class => FieldType,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "fieldType")
  )

  EncodedRegistry.register(
    :class => SoapType,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "soapType")
  )

  EncodedRegistry.register(
    :class => LayoutComponentType,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "layoutComponentType")
  )

  EncodedRegistry.register(
    :class => EmailPriority,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "EmailPriority")
  )

  EncodedRegistry.register(
    :class => DebugLevel,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DebugLevel")
  )

  EncodedRegistry.register(
    :class => ExceptionCode,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ExceptionCode")
  )

  EncodedRegistry.register(
    :class => FaultCode,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "FaultCode")
  )

  LiteralRegistry.register(
    :class => SObject,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]]
    ]
  )

  LiteralRegistry.register(
    :class => AggregateResult,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AggregateResult"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => Account,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accountContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountContactRoles")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountNumber")], [0, 1]],
      ["accountPartnersFrom", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountPartnersFrom")], [0, 1]],
      ["accountPartnersTo", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountPartnersTo")], [0, 1]],
      ["active__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Active__c")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["annualRevenue", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AnnualRevenue")], [0, 1]],
      ["assets", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Assets")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["billingCity", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingCity")], [0, 1]],
      ["billingCountry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingCountry")], [0, 1]],
      ["billingPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingPostalCode")], [0, 1]],
      ["billingState", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingState")], [0, 1]],
      ["billingStreet", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingStreet")], [0, 1]],
      ["cases", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["contacts", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contacts")], [0, 1]],
      ["contracts", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contracts")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["customerPriority__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CustomerPriority__c")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fax")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["industry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Industry")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterRecord", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecord")], [0, 1]],
      ["masterRecordId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecordId")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["numberOfEmployees", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfEmployees")], [0, 1]],
      ["numberofLocations__c", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberofLocations__c")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["opportunities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunities")], [0, 1]],
      ["opportunityPartnersTo", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityPartnersTo")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["ownership", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Ownership")], [0, 1]],
      ["parent", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["partnersFrom", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PartnersFrom")], [0, 1]],
      ["partnersTo", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PartnersTo")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Rating")], [0, 1]],
      ["sLAExpirationDate__c", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SLAExpirationDate__c")], [0, 1]],
      ["sLASerialNumber__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SLASerialNumber__c")], [0, 1]],
      ["sLA__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SLA__c")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["shippingCity", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShippingCity")], [0, 1]],
      ["shippingCountry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShippingCountry")], [0, 1]],
      ["shippingPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShippingPostalCode")], [0, 1]],
      ["shippingState", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShippingState")], [0, 1]],
      ["shippingStreet", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShippingStreet")], [0, 1]],
      ["sic", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Sic")], [0, 1]],
      ["site", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Site")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["tickerSymbol", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TickerSymbol")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]],
      ["upsellOpportunity__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UpsellOpportunity__c")], [0, 1]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Website")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountContactRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountContactRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountPartner,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountPartner"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accountFrom", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountFrom")], [0, 1]],
      ["accountFromId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountFromId")], [0, 1]],
      ["accountTo", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountTo")], [0, 1]],
      ["accountToId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountToId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["reversePartnerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReversePartnerId")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AccountShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountAccessLevel")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["caseAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseAccessLevel")], [0, 1]],
      ["contactAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactAccessLevel")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunityAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityAccessLevel")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ActivityHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDate")], [0, 1]],
      ["activityType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityType")], [0, 1]],
      ["callDisposition", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDisposition")], [0, 1]],
      ["callDurationInSeconds", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDurationInSeconds")], [0, 1]],
      ["callObject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallObject")], [0, 1]],
      ["callType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["durationInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DurationInMinutes")], [0, 1]],
      ["isAllDayEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAllDayEvent")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isReminderSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReminderSet")], [0, 1]],
      ["isTask", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsTask")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Location")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Priority")], [0, 1]],
      ["reminderDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReminderDateTime")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["what", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "What")], [0, 1]],
      ["whatId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhatId")], [0, 1]],
      ["who", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Who")], [0, 1]],
      ["whoId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhoId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdditionalNumber,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AdditionalNumber"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["callCenterId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallCenterId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApexClass,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexClass"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apiVersion", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApiVersion")], [0, 1]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyCrc", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyCrc")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isValid", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsValid")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lengthWithoutComments", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LengthWithoutComments")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApexComponent,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexComponent"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apiVersion", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApiVersion")], [0, 1]],
      ["controllerKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ControllerKey")], [0, 1]],
      ["controllerType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ControllerType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["markup", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Markup")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApexLog,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexLog"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["application", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Application")], [0, 1]],
      ["durationMilliseconds", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DurationMilliseconds")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Location")], [0, 1]],
      ["logLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LogLength")], [0, 1]],
      ["logUser", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LogUser")], [0, 1]],
      ["logUserId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LogUserId")], [0, 1]],
      ["operation", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Operation")], [0, 1]],
      ["request", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Request")], [0, 1]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartTime")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApexPage,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexPage"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apiVersion", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApiVersion")], [0, 1]],
      ["controllerKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ControllerKey")], [0, 1]],
      ["controllerType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ControllerType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["markup", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Markup")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApexTrigger,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexTrigger"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apiVersion", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApiVersion")], [0, 1]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyCrc", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyCrc")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isValid", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsValid")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lengthWithoutComments", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LengthWithoutComments")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tableEnumOrId", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TableEnumOrId")], [0, 1]],
      ["usageAfterDelete", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageAfterDelete")], [0, 1]],
      ["usageAfterInsert", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageAfterInsert")], [0, 1]],
      ["usageAfterUndelete", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageAfterUndelete")], [0, 1]],
      ["usageAfterUpdate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageAfterUpdate")], [0, 1]],
      ["usageBeforeDelete", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageBeforeDelete")], [0, 1]],
      ["usageBeforeInsert", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageBeforeInsert")], [0, 1]],
      ["usageBeforeUpdate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageBeforeUpdate")], [0, 1]],
      ["usageIsBulk", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageIsBulk")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Approval,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Approval"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["approveComment", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApproveComment")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Contract", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["requestComment", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RequestComment")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Asset,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Asset"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["cases", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["installDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "InstallDate")], [0, 1]],
      ["isCompetitorProduct", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsCompetitorProduct")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["price", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Price")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["product2", ["Product2", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2")], [0, 1]],
      ["product2Id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2Id")], [0, 1]],
      ["purchaseDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PurchaseDate")], [0, 1]],
      ["quantity", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Quantity")], [0, 1]],
      ["serialNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SerialNumber")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["usageEndDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsageEndDate")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AssetFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AssetFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Asset", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AssignmentRule,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AssignmentRule"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Active")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["sobjectType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SobjectType")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AsyncApexJob,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AsyncApexJob"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apexClass", ["ApexClass", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexClass")], [0, 1]],
      ["apexClassId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexClassId")], [0, 1]],
      ["completedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompletedDate")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["extendedStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ExtendedStatus")], [0, 1]],
      ["jobItemsProcessed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "JobItemsProcessed")], [0, 1]],
      ["jobType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "JobType")], [0, 1]],
      ["lastProcessed", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastProcessed")], [0, 1]],
      ["lastProcessedOffset", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastProcessedOffset")], [0, 1]],
      ["methodName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MethodName")], [0, 1]],
      ["numberOfErrors", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfErrors")], [0, 1]],
      ["parentJobId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentJobId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["totalJobItems", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TotalJobItems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Attachment,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachment"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyLength")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentType")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrivate")], [0, 1]],
      ["lastModifiedBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BrandTemplate,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BrandTemplate"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BusinessHours,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BusinessHours"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["cases", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["fridayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FridayEndTime")], [0, 1]],
      ["fridayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FridayStartTime")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["mondayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MondayEndTime")], [0, 1]],
      ["mondayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MondayStartTime")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["saturdayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SaturdayEndTime")], [0, 1]],
      ["saturdayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SaturdayStartTime")], [0, 1]],
      ["sundayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SundayEndTime")], [0, 1]],
      ["sundayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SundayStartTime")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["thursdayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ThursdayEndTime")], [0, 1]],
      ["thursdayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ThursdayStartTime")], [0, 1]],
      ["timeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimeZoneSidKey")], [0, 1]],
      ["tuesdayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TuesdayEndTime")], [0, 1]],
      ["tuesdayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TuesdayStartTime")], [0, 1]],
      ["wednesdayEndTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WednesdayEndTime")], [0, 1]],
      ["wednesdayStartTime", ["SOAP::SOAPTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WednesdayStartTime")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BusinessProcess,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BusinessProcess"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tableEnumOrId", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TableEnumOrId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CallCenter,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallCenter"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["internalName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "InternalName")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["version", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Version")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Campaign,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Campaign"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["actualCost", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActualCost")], [0, 1]],
      ["amountAllOpportunities", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AmountAllOpportunities")], [0, 1]],
      ["amountWonOpportunities", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AmountWonOpportunities")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["budgetedCost", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BudgetedCost")], [0, 1]],
      ["campaignMemberRecordTypeId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMemberRecordTypeId")], [0, 1]],
      ["campaignMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMembers")], [0, 1]],
      ["childCampaigns", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ChildCampaigns")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["endDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndDate")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["expectedResponse", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ExpectedResponse")], [0, 1]],
      ["expectedRevenue", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ExpectedRevenue")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["leads", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Leads")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["numberOfContacts", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfContacts")], [0, 1]],
      ["numberOfConvertedLeads", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfConvertedLeads")], [0, 1]],
      ["numberOfLeads", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfLeads")], [0, 1]],
      ["numberOfOpportunities", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfOpportunities")], [0, 1]],
      ["numberOfResponses", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfResponses")], [0, 1]],
      ["numberOfWonOpportunities", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfWonOpportunities")], [0, 1]],
      ["numberSent", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberSent")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["opportunities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunities")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartDate")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignMember,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMember"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["campaign", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Campaign")], [0, 1]],
      ["campaignId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignId")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["firstRespondedDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstRespondedDate")], [0, 1]],
      ["hasResponded", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasResponded")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lead", ["Lead", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Lead")], [0, 1]],
      ["leadId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignMemberStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMemberStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["campaignId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["hasResponded", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasResponded")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Label")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CampaignShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["campaign", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Campaign")], [0, 1]],
      ["campaignAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignAccessLevel")], [0, 1]],
      ["campaignId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Case,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Case"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["asset", ["Asset", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Asset")], [0, 1]],
      ["assetId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AssetId")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["caseComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseComments")], [0, 1]],
      ["caseContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseContactRoles")], [0, 1]],
      ["caseNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseNumber")], [0, 1]],
      ["caseSolutions", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseSolutions")], [0, 1]],
      ["cases", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["closedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ClosedDate")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["engineeringReqNumber__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EngineeringReqNumber__c")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["hasCommentsUnreadByOwner", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasCommentsUnreadByOwner")], [0, 1]],
      ["hasSelfServiceComments", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasSelfServiceComments")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isEscalated", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsEscalated")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["origin", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Origin")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["potentialLiability__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PotentialLiability__c")], [0, 1]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Priority")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["product__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product__c")], [0, 1]],
      ["reason", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Reason")], [0, 1]],
      ["sLAViolation__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SLAViolation__c")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["solutions", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Solutions")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["suppliedCompany", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SuppliedCompany")], [0, 1]],
      ["suppliedEmail", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SuppliedEmail")], [0, 1]],
      ["suppliedName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SuppliedName")], [0, 1]],
      ["suppliedPhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SuppliedPhone")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["teamMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamMembers")], [0, 1]],
      ["teamTemplateRecords", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamTemplateRecords")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseComment,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseComment"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["commentBody", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CommentBody")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPublished", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPublished")], [0, 1]],
      ["lastModifiedBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["parent", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseContactRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseContactRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["cases", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["casesId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CasesId")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["v_case", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Case")], [0, 1]],
      ["caseId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["v_case", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Case")], [0, 1]],
      ["caseAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseAccessLevel")], [0, 1]],
      ["caseId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseSolution,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseSolution"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["v_case", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Case")], [0, 1]],
      ["caseId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["solution", ["Solution", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Solution")], [0, 1]],
      ["solutionId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseTeamMember,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseTeamMember"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["memberId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MemberId")], [0, 1]],
      ["parent", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["teamRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamRoleId")], [0, 1]],
      ["teamTemplateMemberId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamTemplateMemberId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseTeamRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseTeamRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccessLevel")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["preferencesVisibleInCSP", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PreferencesVisibleInCSP")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseTeamTemplate,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseTeamTemplate"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseTeamTemplateMember,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseTeamTemplateMember"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["memberId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MemberId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["teamRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamRoleId")], [0, 1]],
      ["teamTemplateId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamTemplateId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CaseTeamTemplateRecord,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseTeamTemplateRecord"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["parent", ["Case", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["teamTemplateId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TeamTemplateId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CategoryData,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CategoryData"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["categoryNodeId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CategoryNodeId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["relatedSobjectId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RelatedSobjectId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CategoryNode,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CategoryNode"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["sortStyle", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortStyle")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CollaborationGroup,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationGroup"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["collaborationType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["fullPhotoUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FullPhotoUrl")], [0, 1]],
      ["groupMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "GroupMembers")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["memberCount", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MemberCount")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["smallPhotoUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SmallPhotoUrl")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CollaborationGroupFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationGroupFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["CollaborationGroup", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CollaborationGroupMember,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationGroupMember"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["collaborationGroup", ["CollaborationGroup", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationGroup")], [0, 1]],
      ["collaborationGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationGroupId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["memberId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MemberId")], [0, 1]],
      ["notificationFrequency", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotificationFrequency")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CollaborationInvitation,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CollaborationInvitation"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["invitedUserEmail", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "InvitedUserEmail")], [0, 1]],
      ["invitedUserEmailNormalized", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "InvitedUserEmailNormalized")], [0, 1]],
      ["inviterId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "InviterId")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["optionalMessage", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionalMessage")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["sharedEntityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SharedEntityId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Community,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Community"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Contact,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountContactRoles")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["assets", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Assets")], [0, 1]],
      ["assistantName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AssistantName")], [0, 1]],
      ["assistantPhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AssistantPhone")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["birthdate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Birthdate")], [0, 1]],
      ["campaignMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMembers")], [0, 1]],
      ["caseContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseContactRoles")], [0, 1]],
      ["cases", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Cases")], [0, 1]],
      ["contractContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractContactRoles")], [0, 1]],
      ["contractsSigned", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractsSigned")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["department", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Department")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["emailBouncedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailBouncedDate")], [0, 1]],
      ["emailBouncedReason", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailBouncedReason")], [0, 1]],
      ["emailStatuses", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailStatuses")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fax")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstName")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["homePhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HomePhone")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["languages__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Languages__c")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastCURequestDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastCURequestDate")], [0, 1]],
      ["lastCUUpdateDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastCUUpdateDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastName")], [0, 1]],
      ["leadSource", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadSource")], [0, 1]],
      ["level__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Level__c")], [0, 1]],
      ["mailingCity", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailingCity")], [0, 1]],
      ["mailingCountry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailingCountry")], [0, 1]],
      ["mailingPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailingPostalCode")], [0, 1]],
      ["mailingState", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailingState")], [0, 1]],
      ["mailingStreet", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailingStreet")], [0, 1]],
      ["masterRecord", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecord")], [0, 1]],
      ["masterRecordId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecordId")], [0, 1]],
      ["mobilePhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MobilePhone")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["opportunities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunities")], [0, 1]],
      ["opportunityContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityContactRoles")], [0, 1]],
      ["otherCity", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherCity")], [0, 1]],
      ["otherCountry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherCountry")], [0, 1]],
      ["otherPhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherPhone")], [0, 1]],
      ["otherPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherPostalCode")], [0, 1]],
      ["otherState", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherState")], [0, 1]],
      ["otherStreet", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OtherStreet")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["reportsTo", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReportsTo")], [0, 1]],
      ["reportsToId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReportsToId")], [0, 1]],
      ["salutation", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Salutation")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContactFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContactHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContactShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactAccessLevel")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContentDocument,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocument"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["latestPublishedVersion", ["ContentVersion", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LatestPublishedVersion")], [0, 1]],
      ["latestPublishedVersionId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LatestPublishedVersionId")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["publishStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PublishStatus")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContentDocumentFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocumentFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["ContentDocument", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContentDocumentHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocumentHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contentDocument", ["ContentDocument", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocument")], [0, 1]],
      ["contentDocumentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocumentId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContentVersion,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentVersion"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contentDocument", ["ContentDocument", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocument")], [0, 1]],
      ["contentDocumentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDocumentId")], [0, 1]],
      ["contentModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentModifiedById")], [0, 1]],
      ["contentModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentModifiedDate")], [0, 1]],
      ["contentSize", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentSize")], [0, 1]],
      ["contentUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentUrl")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["featuredContentBoost", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeaturedContentBoost")], [0, 1]],
      ["featuredContentDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeaturedContentDate")], [0, 1]],
      ["fileType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FileType")], [0, 1]],
      ["firstPublishLocation", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstPublishLocation")], [0, 1]],
      ["firstPublishLocationId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstPublishLocationId")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isLatest", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsLatest")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["negativeRatingCount", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NegativeRatingCount")], [0, 1]],
      ["origin", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Origin")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["pathOnClient", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PathOnClient")], [0, 1]],
      ["positiveRatingCount", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PositiveRatingCount")], [0, 1]],
      ["publishStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PublishStatus")], [0, 1]],
      ["ratingCount", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RatingCount")], [0, 1]],
      ["reasonForChange", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReasonForChange")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tagCsv", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TagCsv")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["versionData", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "VersionData")], [0, 1]],
      ["versionNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "VersionNumber")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContentVersionHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentVersionHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contentVersion", ["ContentVersion", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentVersion")], [0, 1]],
      ["contentVersionId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentVersionId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Contract,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contract"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activatedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivatedBy")], [0, 1]],
      ["activatedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivatedById")], [0, 1]],
      ["activatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivatedDate")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["approvals", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Approvals")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["billingCity", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingCity")], [0, 1]],
      ["billingCountry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingCountry")], [0, 1]],
      ["billingPostalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingPostalCode")], [0, 1]],
      ["billingState", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingState")], [0, 1]],
      ["billingStreet", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BillingStreet")], [0, 1]],
      ["companySigned", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompanySigned")], [0, 1]],
      ["companySignedDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompanySignedDate")], [0, 1]],
      ["companySignedId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompanySignedId")], [0, 1]],
      ["contractContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractContactRoles")], [0, 1]],
      ["contractNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractNumber")], [0, 1]],
      ["contractTerm", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractTerm")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["customerSigned", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CustomerSigned")], [0, 1]],
      ["customerSignedDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CustomerSignedDate")], [0, 1]],
      ["customerSignedId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CustomerSignedId")], [0, 1]],
      ["customerSignedTitle", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CustomerSignedTitle")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["endDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndDate")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastApprovedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastApprovedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerExpirationNotice", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerExpirationNotice")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["specialTerms", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SpecialTerms")], [0, 1]],
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartDate")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["statusCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StatusCode")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContractContactRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractContactRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["contract", ["Contract", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contract")], [0, 1]],
      ["contractId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContractFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Contract", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContractHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contract", ["Contract", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contract")], [0, 1]],
      ["contractId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractId")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ContractStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["statusCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StatusCode")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CronTrigger,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CronTrigger"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["cronExpression", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CronExpression")], [0, 1]],
      ["endTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndTime")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["nextFireTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NextFireTime")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["previousFireTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PreviousFireTime")], [0, 1]],
      ["startTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartTime")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "State")], [0, 1]],
      ["timeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimeZoneSidKey")], [0, 1]],
      ["timesTriggered", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimesTriggered")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Dashboard,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Dashboard"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["backgroundDirection", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BackgroundDirection")], [0, 1]],
      ["backgroundEnd", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BackgroundEnd")], [0, 1]],
      ["backgroundStart", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BackgroundStart")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["folderId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FolderId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["leftSize", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeftSize")], [0, 1]],
      ["middleSize", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MiddleSize")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["rightSize", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RightSize")], [0, 1]],
      ["runningUserId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RunningUserId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["textColor", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TextColor")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["titleColor", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TitleColor")], [0, 1]],
      ["titleSize", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TitleSize")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DashboardFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DashboardFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Dashboard", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Document,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Document"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["author", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Author")], [0, 1]],
      ["authorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AuthorId")], [0, 1]],
      ["body", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyLength")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["folder", ["Folder", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Folder")], [0, 1]],
      ["folderId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FolderId")], [0, 1]],
      ["isBodySearchable", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsBodySearchable")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isInternalUseOnly", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsInternalUseOnly")], [0, 1]],
      ["isPublic", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPublic")], [0, 1]],
      ["keywords", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Keywords")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Url")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DocumentAttachmentMap,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DocumentAttachmentMap"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["documentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DocumentId")], [0, 1]],
      ["documentSequence", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DocumentSequence")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EmailServicesAddress,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailServicesAddress"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["authorizedSenders", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AuthorizedSenders")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["emailDomainName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailDomainName")], [0, 1]],
      ["function", ["EmailServicesFunction", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Function")], [0, 1]],
      ["functionId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FunctionId")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["localPart", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LocalPart")], [0, 1]],
      ["runAsUserId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RunAsUserId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EmailServicesFunction,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailServicesFunction"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["addressInactiveAction", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AddressInactiveAction")], [0, 1]],
      ["addresses", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Addresses")], [0, 1]],
      ["apexClassId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApexClassId")], [0, 1]],
      ["attachmentOption", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AttachmentOption")], [0, 1]],
      ["authenticationFailureAction", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AuthenticationFailureAction")], [0, 1]],
      ["authorizationFailureAction", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AuthorizationFailureAction")], [0, 1]],
      ["authorizedSenders", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AuthorizedSenders")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["errorRoutingAddress", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ErrorRoutingAddress")], [0, 1]],
      ["functionInactiveAction", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FunctionInactiveAction")], [0, 1]],
      ["functionName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FunctionName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isAuthenticationRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAuthenticationRequired")], [0, 1]],
      ["isErrorRoutingEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsErrorRoutingEnabled")], [0, 1]],
      ["isTextAttachmentsAsBinary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsTextAttachmentsAsBinary")], [0, 1]],
      ["isTextTruncated", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsTextTruncated")], [0, 1]],
      ["isTlsRequired", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsTlsRequired")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["overLimitAction", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OverLimitAction")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EmailStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["emailTemplateName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailTemplateName")], [0, 1]],
      ["firstOpenDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstOpenDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastOpenDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastOpenDate")], [0, 1]],
      ["task", ["Task", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Task")], [0, 1]],
      ["taskId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TaskId")], [0, 1]],
      ["timesOpened", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimesOpened")], [0, 1]],
      ["who", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Who")], [0, 1]],
      ["whoId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhoId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EmailTemplate,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailTemplate"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["apiVersion", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ApiVersion")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["brandTemplateId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BrandTemplateId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["encoding", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Encoding")], [0, 1]],
      ["folder", ["Folder", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Folder")], [0, 1]],
      ["folderId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FolderId")], [0, 1]],
      ["htmlValue", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HtmlValue")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastUsedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastUsedDate")], [0, 1]],
      ["markup", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Markup")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["templateStyle", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TemplateStyle")], [0, 1]],
      ["templateType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TemplateType")], [0, 1]],
      ["timesUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimesUsed")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EntitySubscription,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EntitySubscription"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["subscriber", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subscriber")], [0, 1]],
      ["subscriberId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SubscriberId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Event,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Event"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDate")], [0, 1]],
      ["activityDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDateTime")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["durationInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DurationInMinutes")], [0, 1]],
      ["endDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndDateTime")], [0, 1]],
      ["eventAttendees", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EventAttendees")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["groupEventType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "GroupEventType")], [0, 1]],
      ["isAllDayEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAllDayEvent")], [0, 1]],
      ["isArchived", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsArchived")], [0, 1]],
      ["isChild", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsChild")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isGroupEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsGroupEvent")], [0, 1]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrivate")], [0, 1]],
      ["isRecurrence", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsRecurrence")], [0, 1]],
      ["isReminderSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReminderSet")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Location")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["recurrenceActivityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceActivityId")], [0, 1]],
      ["recurrenceDayOfMonth", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfMonth")], [0, 1]],
      ["recurrenceDayOfWeekMask", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfWeekMask")], [0, 1]],
      ["recurrenceEndDateOnly", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceEndDateOnly")], [0, 1]],
      ["recurrenceInstance", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInstance")], [0, 1]],
      ["recurrenceInterval", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInterval")], [0, 1]],
      ["recurrenceMonthOfYear", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceMonthOfYear")], [0, 1]],
      ["recurrenceStartDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceStartDateTime")], [0, 1]],
      ["recurrenceTimeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceTimeZoneSidKey")], [0, 1]],
      ["recurrenceType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceType")], [0, 1]],
      ["recurringEvents", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurringEvents")], [0, 1]],
      ["reminderDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReminderDateTime")], [0, 1]],
      ["showAs", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShowAs")], [0, 1]],
      ["startDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartDateTime")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["what", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "What")], [0, 1]],
      ["whatId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhatId")], [0, 1]],
      ["who", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Who")], [0, 1]],
      ["whoId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhoId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EventAttendee,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EventAttendee"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["attendee", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attendee")], [0, 1]],
      ["attendeeId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AttendeeId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["event", ["Event", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Event")], [0, 1]],
      ["eventId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EventId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["respondedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RespondedDate")], [0, 1]],
      ["response", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Response")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EventFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EventFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Event", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FeedComment,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComment"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["commentBody", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CommentBody")], [0, 1]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedItemId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedItemId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FeedPost,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["contentData", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentData")], [0, 1]],
      ["contentDescription", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentDescription")], [0, 1]],
      ["contentFileName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentFileName")], [0, 1]],
      ["contentSize", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentSize")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedItemId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedItemId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["linkUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LinkUrl")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FeedTrackedChange,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChange"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["feedItemId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedItemId")], [0, 1]],
      ["fieldName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FieldName")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FiscalYearSettings,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalYearSettings"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["endDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndDate")], [0, 1]],
      ["isStandardYear", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsStandardYear")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["periodId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PeriodId")], [0, 1]],
      ["periodLabelScheme", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PeriodLabelScheme")], [0, 1]],
      ["periodPrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PeriodPrefix")], [0, 1]],
      ["periods", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Periods")], [0, 1]],
      ["quarterLabelScheme", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QuarterLabelScheme")], [0, 1]],
      ["quarterPrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QuarterPrefix")], [0, 1]],
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartDate")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["weekLabelScheme", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WeekLabelScheme")], [0, 1]],
      ["weekStartDay", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WeekStartDay")], [0, 1]],
      ["yearType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "YearType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Folder,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Folder"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accessType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccessType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["isReadonly", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReadonly")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ForecastShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccessLevel")], [0, 1]],
      ["canSubmit", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CanSubmit")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]],
      ["userRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRoleId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Group,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Group"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["delegatedUsers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DelegatedUsers")], [0, 1]],
      ["doesIncludeBosses", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DoesIncludeBosses")], [0, 1]],
      ["doesSendEmailToMembers", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DoesSendEmailToMembers")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["groupMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "GroupMembers")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["queueSobjects", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QueueSobjects")], [0, 1]],
      ["relatedId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RelatedId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GroupMember,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "GroupMember"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["group", ["Group", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Group")], [0, 1]],
      ["groupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "GroupId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Holiday,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Holiday"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["activityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDate")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["endTimeInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndTimeInMinutes")], [0, 1]],
      ["isAllDay", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAllDay")], [0, 1]],
      ["isRecurrence", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsRecurrence")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["recurrenceDayOfMonth", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfMonth")], [0, 1]],
      ["recurrenceDayOfWeekMask", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfWeekMask")], [0, 1]],
      ["recurrenceEndDateOnly", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceEndDateOnly")], [0, 1]],
      ["recurrenceInstance", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInstance")], [0, 1]],
      ["recurrenceInterval", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInterval")], [0, 1]],
      ["recurrenceMonthOfYear", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceMonthOfYear")], [0, 1]],
      ["recurrenceStartDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceStartDate")], [0, 1]],
      ["recurrenceType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceType")], [0, 1]],
      ["startTimeInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartTimeInMinutes")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Idea,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Idea"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["categories", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Categories")], [0, 1]],
      ["comments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Comments")], [0, 1]],
      ["community", ["Community", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Community")], [0, 1]],
      ["communityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CommunityId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isHtml", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsHtml")], [0, 1]],
      ["isLocked", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsLocked")], [0, 1]],
      ["lastComment", ["IdeaComment", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastComment")], [0, 1]],
      ["lastCommentDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastCommentDate")], [0, 1]],
      ["lastCommentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastCommentId")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["numComments", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumComments")], [0, 1]],
      ["parentIdeaId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentIdeaId")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["voteScore", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "VoteScore")], [0, 1]],
      ["voteTotal", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "VoteTotal")], [0, 1]],
      ["votes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Votes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => IdeaComment,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IdeaComment"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["commentBody", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CommentBody")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["idea", ["Idea", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Idea")], [0, 1]],
      ["ideaId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IdeaId")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isHtml", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsHtml")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Lead,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Lead"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["annualRevenue", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AnnualRevenue")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["campaign", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Campaign")], [0, 1]],
      ["campaignMembers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignMembers")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "City")], [0, 1]],
      ["company", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Company")], [0, 1]],
      ["convertedAccount", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedAccount")], [0, 1]],
      ["convertedAccountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedAccountId")], [0, 1]],
      ["convertedContact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedContact")], [0, 1]],
      ["convertedContactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedContactId")], [0, 1]],
      ["convertedDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedDate")], [0, 1]],
      ["convertedOpportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedOpportunity")], [0, 1]],
      ["convertedOpportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ConvertedOpportunityId")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Country")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["currentGenerators__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CurrentGenerators__c")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["emailBouncedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailBouncedDate")], [0, 1]],
      ["emailBouncedReason", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailBouncedReason")], [0, 1]],
      ["emailStatuses", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailStatuses")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fax")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstName")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["industry", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Industry")], [0, 1]],
      ["isConverted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsConverted")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isUnreadByOwner", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsUnreadByOwner")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastName")], [0, 1]],
      ["leadSource", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadSource")], [0, 1]],
      ["masterRecord", ["Lead", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecord")], [0, 1]],
      ["masterRecordId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterRecordId")], [0, 1]],
      ["mobilePhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MobilePhone")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["numberOfEmployees", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberOfEmployees")], [0, 1]],
      ["numberofLocations__c", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NumberofLocations__c")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PostalCode")], [0, 1]],
      ["primary__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Primary__c")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["productInterest__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProductInterest__c")], [0, 1]],
      ["rating", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Rating")], [0, 1]],
      ["sICCode__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SICCode__c")], [0, 1]],
      ["salutation", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Salutation")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "State")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Street")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["website", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Website")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LeadFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Lead", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LeadHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lead", ["Lead", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Lead")], [0, 1]],
      ["leadId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadId")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LeadShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lead", ["Lead", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Lead")], [0, 1]],
      ["leadAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadAccessLevel")], [0, 1]],
      ["leadId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadId")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LeadStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isConverted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsConverted")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => MailmergeTemplate,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MailmergeTemplate"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyLength")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Filename")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastUsedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastUsedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Name,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Alias")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastName")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["profile", ["Profile", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Profile")], [0, 1]],
      ["profileId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProfileId")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]],
      ["userRole", ["UserRole", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRole")], [0, 1]],
      ["userRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRoleId")], [0, 1]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Username")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NewsFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewsFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Note,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Note"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrivate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NoteAndAttachment,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NoteAndAttachment"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isNote", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsNote")], [0, 1]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrivate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OpenActivity,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivity"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDate")], [0, 1]],
      ["activityType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityType")], [0, 1]],
      ["callDisposition", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDisposition")], [0, 1]],
      ["callDurationInSeconds", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDurationInSeconds")], [0, 1]],
      ["callObject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallObject")], [0, 1]],
      ["callType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["durationInMinutes", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DurationInMinutes")], [0, 1]],
      ["isAllDayEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAllDayEvent")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isReminderSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReminderSet")], [0, 1]],
      ["isTask", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsTask")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["location", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Location")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Priority")], [0, 1]],
      ["reminderDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReminderDateTime")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["what", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "What")], [0, 1]],
      ["whatId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhatId")], [0, 1]],
      ["who", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Who")], [0, 1]],
      ["whoId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhoId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Opportunity,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["accountPartners", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountPartners")], [0, 1]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Amount")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["campaign", ["Campaign", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Campaign")], [0, 1]],
      ["campaignId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CampaignId")], [0, 1]],
      ["closeDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CloseDate")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["currentGenerators__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CurrentGenerators__c")], [0, 1]],
      ["deliveryInstallationStatus__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeliveryInstallationStatus__c")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["expectedRevenue", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ExpectedRevenue")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["fiscal", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fiscal")], [0, 1]],
      ["fiscalQuarter", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalQuarter")], [0, 1]],
      ["fiscalYear", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalYear")], [0, 1]],
      ["forecastCategory", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastCategory")], [0, 1]],
      ["forecastCategoryName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastCategoryName")], [0, 1]],
      ["hasOpportunityLineItem", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasOpportunityLineItem")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrivate", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrivate")], [0, 1]],
      ["isWon", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsWon")], [0, 1]],
      ["lastActivityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastActivityDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["leadSource", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LeadSource")], [0, 1]],
      ["mainCompetitors__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MainCompetitors__c")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["nextStep", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NextStep")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["opportunityCompetitors", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityCompetitors")], [0, 1]],
      ["opportunityContactRoles", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityContactRoles")], [0, 1]],
      ["opportunityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityHistories")], [0, 1]],
      ["opportunityLineItems", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityLineItems")], [0, 1]],
      ["opportunityPartnersFrom", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityPartnersFrom")], [0, 1]],
      ["orderNumber__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OrderNumber__c")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["partners", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Partners")], [0, 1]],
      ["pricebook2", ["Pricebook2", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Pricebook2")], [0, 1]],
      ["pricebook2Id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Pricebook2Id")], [0, 1]],
      ["probability", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Probability")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["shares", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Shares")], [0, 1]],
      ["stageName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StageName")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["totalOpportunityQuantity", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TotalOpportunityQuantity")], [0, 1]],
      ["trackingNumber__c", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TrackingNumber__c")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OpportunityCompetitor,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityCompetitor"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["competitorName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompetitorName")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["strengths", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Strengths")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["weaknesses", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Weaknesses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OpportunityContactRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityContactRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OpportunityFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OpportunityFieldHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityFieldHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OpportunityHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["amount", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Amount")], [0, 1]],
      ["closeDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CloseDate")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["expectedRevenue", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ExpectedRevenue")], [0, 1]],
      ["forecastCategory", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastCategory")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["probability", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Probability")], [0, 1]],
      ["stageName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StageName")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OpportunityLineItem,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityLineItem"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["listPrice", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ListPrice")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["pricebookEntry", ["PricebookEntry", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PricebookEntry")], [0, 1]],
      ["pricebookEntryId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PricebookEntryId")], [0, 1]],
      ["quantity", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Quantity")], [0, 1]],
      ["serviceDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ServiceDate")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["totalPrice", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TotalPrice")], [0, 1]],
      ["unitPrice", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UnitPrice")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OpportunityPartner,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityPartner"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accountTo", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountTo")], [0, 1]],
      ["accountToId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountToId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["reversePartnerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReversePartnerId")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OpportunityShare,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityShare"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityAccessLevel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityAccessLevel")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["rowCause", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RowCause")], [0, 1]],
      ["userOrGroupId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserOrGroupId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OpportunityStage,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityStage"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["defaultProbability", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultProbability")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["forecastCategory", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastCategory")], [0, 1]],
      ["forecastCategoryName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastCategoryName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isWon", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsWon")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrgWideEmailAddress,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OrgWideEmailAddress"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["address", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Address")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DisplayName")], [0, 1]],
      ["isAllowAllProfiles", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsAllowAllProfiles")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Organization,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Organization"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "City")], [0, 1]],
      ["complianceBccEmail", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ComplianceBccEmail")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Country")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["defaultAccountAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultAccountAccess")], [0, 1]],
      ["defaultCalendarAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultCalendarAccess")], [0, 1]],
      ["defaultCampaignAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultCampaignAccess")], [0, 1]],
      ["defaultCaseAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultCaseAccess")], [0, 1]],
      ["defaultContactAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultContactAccess")], [0, 1]],
      ["defaultLeadAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultLeadAccess")], [0, 1]],
      ["defaultLocaleSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultLocaleSidKey")], [0, 1]],
      ["defaultOpportunityAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultOpportunityAccess")], [0, 1]],
      ["defaultPricebookAccess", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DefaultPricebookAccess")], [0, 1]],
      ["division", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Division")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fax")], [0, 1]],
      ["fiscalYearStartMonth", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalYearStartMonth")], [0, 1]],
      ["languageLocaleKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LanguageLocaleKey")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["monthlyPageViewsEntitlement", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MonthlyPageViewsEntitlement")], [0, 1]],
      ["monthlyPageViewsUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MonthlyPageViewsUsed")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["organizationType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OrganizationType")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PostalCode")], [0, 1]],
      ["preferencesRequireOpportunityProducts", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PreferencesRequireOpportunityProducts")], [0, 1]],
      ["primaryContact", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PrimaryContact")], [0, 1]],
      ["receivesAdminInfoEmails", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReceivesAdminInfoEmails")], [0, 1]],
      ["receivesInfoEmails", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReceivesInfoEmails")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "State")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Street")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["trialExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TrialExpirationDate")], [0, 1]],
      ["uiSkin", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UiSkin")], [0, 1]],
      ["usesStartDateAsFiscalYearName", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UsesStartDateAsFiscalYearName")], [0, 1]],
      ["webToCaseDefaultOrigin", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WebToCaseDefaultOrigin")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Partner,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Partner"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["accountFrom", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountFrom")], [0, 1]],
      ["accountFromId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountFromId")], [0, 1]],
      ["accountTo", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountTo")], [0, 1]],
      ["accountToId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountToId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPrimary", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPrimary")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["opportunity", ["Opportunity", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunity")], [0, 1]],
      ["opportunityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityId")], [0, 1]],
      ["reversePartnerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReversePartnerId")], [0, 1]],
      ["role", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Role")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PartnerRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PartnerRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["reverseRole", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReverseRole")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Period,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Period"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["endDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EndDate")], [0, 1]],
      ["fiscalYearSettings", ["FiscalYearSettings", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalYearSettings")], [0, 1]],
      ["fiscalYearSettingsId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FiscalYearSettingsId")], [0, 1]],
      ["isForecastPeriod", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsForecastPeriod")], [0, 1]],
      ["number", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Number")], [0, 1]],
      ["periodLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PeriodLabel")], [0, 1]],
      ["quarterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QuarterLabel")], [0, 1]],
      ["startDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StartDate")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Pricebook2,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Pricebook2"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isStandard", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsStandard")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["opportunities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Opportunities")], [0, 1]],
      ["pricebookEntries", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PricebookEntries")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PricebookEntry,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PricebookEntry"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["opportunityLineItems", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityLineItems")], [0, 1]],
      ["pricebook2", ["Pricebook2", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Pricebook2")], [0, 1]],
      ["pricebook2Id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Pricebook2Id")], [0, 1]],
      ["product2", ["Product2", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2")], [0, 1]],
      ["product2Id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2Id")], [0, 1]],
      ["productCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProductCode")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["unitPrice", ["SOAP::SOAPDouble", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UnitPrice")], [0, 1]],
      ["useStandardPrice", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UseStandardPrice")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessInstance,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstance"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["steps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Steps")], [0, 1]],
      ["stepsAndWorkitems", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StepsAndWorkitems")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["targetObject", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TargetObject")], [0, 1]],
      ["targetObjectId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TargetObjectId")], [0, 1]],
      ["workitems", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Workitems")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessInstanceHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["actor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Actor")], [0, 1]],
      ["actorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActorId")], [0, 1]],
      ["comments", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Comments")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isPending", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPending")], [0, 1]],
      ["originalActor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActor")], [0, 1]],
      ["originalActorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActorId")], [0, 1]],
      ["processInstance", ["ProcessInstance", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstance")], [0, 1]],
      ["processInstanceId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceId")], [0, 1]],
      ["remindersSent", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RemindersSent")], [0, 1]],
      ["stepStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StepStatus")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["targetObject", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TargetObject")], [0, 1]],
      ["targetObjectId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TargetObjectId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessInstanceStep,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceStep"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["actor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Actor")], [0, 1]],
      ["actorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActorId")], [0, 1]],
      ["comments", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Comments")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["originalActor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActor")], [0, 1]],
      ["originalActorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActorId")], [0, 1]],
      ["processInstance", ["ProcessInstance", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstance")], [0, 1]],
      ["processInstanceId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceId")], [0, 1]],
      ["stepStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StepStatus")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessInstanceWorkitem,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceWorkitem"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["actor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Actor")], [0, 1]],
      ["actorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActorId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["originalActor", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActor")], [0, 1]],
      ["originalActorId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OriginalActorId")], [0, 1]],
      ["processInstance", ["ProcessInstance", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstance")], [0, 1]],
      ["processInstanceId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstanceId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Product2,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["assets", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Assets")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["family", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Family")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["notes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Notes")], [0, 1]],
      ["notesAndAttachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NotesAndAttachments")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["opportunityLineItems", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityLineItems")], [0, 1]],
      ["pricebookEntries", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PricebookEntries")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["productCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProductCode")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Product2Feed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Product2Feed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Product2", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Profile,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Profile"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["permissionsApiEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsApiEnabled")], [0, 1]],
      ["permissionsAuthorApex", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsAuthorApex")], [0, 1]],
      ["permissionsBulkApiHardDelete", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsBulkApiHardDelete")], [0, 1]],
      ["permissionsCanUseNewDashboardBuilder", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsCanUseNewDashboardBuilder")], [0, 1]],
      ["permissionsConvertLeads", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsConvertLeads")], [0, 1]],
      ["permissionsCreateMultiforce", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsCreateMultiforce")], [0, 1]],
      ["permissionsCustomSidebarOnAllPages", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsCustomSidebarOnAllPages")], [0, 1]],
      ["permissionsCustomizeApplication", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsCustomizeApplication")], [0, 1]],
      ["permissionsDistributeFromPersWksp", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsDistributeFromPersWksp")], [0, 1]],
      ["permissionsEditCaseComments", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditCaseComments")], [0, 1]],
      ["permissionsEditEvent", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditEvent")], [0, 1]],
      ["permissionsEditKnowledge", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditKnowledge")], [0, 1]],
      ["permissionsEditOppLineItemUnitPrice", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditOppLineItemUnitPrice")], [0, 1]],
      ["permissionsEditPublicDocuments", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditPublicDocuments")], [0, 1]],
      ["permissionsEditReadonlyFields", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditReadonlyFields")], [0, 1]],
      ["permissionsEditReports", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditReports")], [0, 1]],
      ["permissionsEditTask", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEditTask")], [0, 1]],
      ["permissionsEnableNotifications", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsEnableNotifications")], [0, 1]],
      ["permissionsImportLeads", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsImportLeads")], [0, 1]],
      ["permissionsInstallMultiforce", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsInstallMultiforce")], [0, 1]],
      ["permissionsManageAnalyticSnapshots", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageAnalyticSnapshots")], [0, 1]],
      ["permissionsManageBusinessHourHolidays", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageBusinessHourHolidays")], [0, 1]],
      ["permissionsManageCallCenters", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageCallCenters")], [0, 1]],
      ["permissionsManageCases", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageCases")], [0, 1]],
      ["permissionsManageCategories", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageCategories")], [0, 1]],
      ["permissionsManageCssUsers", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageCssUsers")], [0, 1]],
      ["permissionsManageCustomReportTypes", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageCustomReportTypes")], [0, 1]],
      ["permissionsManageDashboards", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageDashboards")], [0, 1]],
      ["permissionsManageDataCategories", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageDataCategories")], [0, 1]],
      ["permissionsManageDataIntegrations", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageDataIntegrations")], [0, 1]],
      ["permissionsManageDynamicDashboards", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageDynamicDashboards")], [0, 1]],
      ["permissionsManageEmailClientConfig", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageEmailClientConfig")], [0, 1]],
      ["permissionsManageKnowledge", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageKnowledge")], [0, 1]],
      ["permissionsManageLeads", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageLeads")], [0, 1]],
      ["permissionsManageMobile", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageMobile")], [0, 1]],
      ["permissionsManageRemoteAccess", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageRemoteAccess")], [0, 1]],
      ["permissionsManageSelfService", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageSelfService")], [0, 1]],
      ["permissionsManageSolutions", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageSolutions")], [0, 1]],
      ["permissionsManageSynonyms", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageSynonyms")], [0, 1]],
      ["permissionsManageUsers", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsManageUsers")], [0, 1]],
      ["permissionsMassInlineEdit", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsMassInlineEdit")], [0, 1]],
      ["permissionsModifyAllData", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsModifyAllData")], [0, 1]],
      ["permissionsNewReportBuilder", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsNewReportBuilder")], [0, 1]],
      ["permissionsPasswordNeverExpires", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsPasswordNeverExpires")], [0, 1]],
      ["permissionsPublishMultiforce", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsPublishMultiforce")], [0, 1]],
      ["permissionsRunReports", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsRunReports")], [0, 1]],
      ["permissionsScheduleReports", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsScheduleReports")], [0, 1]],
      ["permissionsSendSitRequests", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsSendSitRequests")], [0, 1]],
      ["permissionsSolutionImport", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsSolutionImport")], [0, 1]],
      ["permissionsTransferAnyCase", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsTransferAnyCase")], [0, 1]],
      ["permissionsTransferAnyEntity", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsTransferAnyEntity")], [0, 1]],
      ["permissionsTransferAnyLead", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsTransferAnyLead")], [0, 1]],
      ["permissionsUseTeamReassignWizards", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsUseTeamReassignWizards")], [0, 1]],
      ["permissionsViewAllData", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsViewAllData")], [0, 1]],
      ["permissionsViewDataCategories", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsViewDataCategories")], [0, 1]],
      ["permissionsViewKnowledge", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsViewKnowledge")], [0, 1]],
      ["permissionsViewMyTeamsDashboards", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsViewMyTeamsDashboards")], [0, 1]],
      ["permissionsViewSetup", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PermissionsViewSetup")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["userLicense", ["UserLicense", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserLicense")], [0, 1]],
      ["userLicenseId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserLicenseId")], [0, 1]],
      ["userType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserType")], [0, 1]],
      ["users", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Users")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => QueueSobject,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QueueSobject"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["queue", ["Group", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Queue")], [0, 1]],
      ["queueId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "QueueId")], [0, 1]],
      ["sobjectType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SobjectType")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RecordType,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecordType"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["businessProcessId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BusinessProcessId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["sobjectType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SobjectType")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Report,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Report"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastRunDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastRunDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ReportFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReportFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Report", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Scontrol,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Scontrol"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["binary", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Binary")], [0, 1]],
      ["bodyLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyLength")], [0, 1]],
      ["contentSource", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentSource")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["developerName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DeveloperName")], [0, 1]],
      ["encodingKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EncodingKey")], [0, 1]],
      ["filename", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Filename")], [0, 1]],
      ["htmlWrapper", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HtmlWrapper")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["supportsCaching", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SupportsCaching")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SelfServiceUser,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SelfServiceUser"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstName")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["languageLocaleKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LanguageLocaleKey")], [0, 1]],
      ["lastLoginDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastLoginDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastName")], [0, 1]],
      ["localeSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LocaleSidKey")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["superUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SuperUser")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["timeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimeZoneSidKey")], [0, 1]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Username")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Site,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Site"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["admin", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Admin")], [0, 1]],
      ["adminId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AdminId")], [0, 1]],
      ["analyticsTrackingCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AnalyticsTrackingCode")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["dailyBandwidthLimit", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DailyBandwidthLimit")], [0, 1]],
      ["dailyBandwidthUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DailyBandwidthUsed")], [0, 1]],
      ["dailyRequestTimeLimit", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DailyRequestTimeLimit")], [0, 1]],
      ["dailyRequestTimeUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DailyRequestTimeUsed")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["monthlyPageViewsEntitlement", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MonthlyPageViewsEntitlement")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["optionsAllowHomePage", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsAllowHomePage")], [0, 1]],
      ["optionsAllowStandardAnswersPages", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsAllowStandardAnswersPages")], [0, 1]],
      ["optionsAllowStandardIdeasPages", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsAllowStandardIdeasPages")], [0, 1]],
      ["optionsAllowStandardLookups", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsAllowStandardLookups")], [0, 1]],
      ["optionsAllowStandardSearch", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsAllowStandardSearch")], [0, 1]],
      ["optionsEnableFeeds", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OptionsEnableFeeds")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["subdomain", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subdomain")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["topLevelDomain", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TopLevelDomain")], [0, 1]],
      ["urlPathPrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UrlPathPrefix")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SiteHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SiteHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]],
      ["site", ["Site", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Site")], [0, 1]],
      ["siteId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SiteId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Solution,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Solution"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["activityHistories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityHistories")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["caseSolutions", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseSolutions")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["events", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Events")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["histories", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Histories")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isHtml", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsHtml")], [0, 1]],
      ["isPublished", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPublished")], [0, 1]],
      ["isPublishedInPublicKb", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsPublishedInPublicKb")], [0, 1]],
      ["isReviewed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReviewed")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["openActivities", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenActivities")], [0, 1]],
      ["owner", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["processInstances", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessInstances")], [0, 1]],
      ["processSteps", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProcessSteps")], [0, 1]],
      ["solutionName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionName")], [0, 1]],
      ["solutionNote", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionNote")], [0, 1]],
      ["solutionNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionNumber")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["tasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Tasks")], [0, 1]],
      ["timesUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimesUsed")], [0, 1]],
      ["votes", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Votes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SolutionFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Solution", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SolutionHistory,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionHistory"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["field", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Field")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["newValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NewValue")], [0, 1]],
      ["oldValue", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OldValue")], [0, 1]],
      ["solution", ["Solution", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Solution")], [0, 1]],
      ["solutionId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SolutionStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SolutionStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["isReviewed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReviewed")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => StaticResource,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "StaticResource"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["body", ["SOAP::SOAPBase64", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Body")], [0, 1]],
      ["bodyLength", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "BodyLength")], [0, 1]],
      ["cacheControl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CacheControl")], [0, 1]],
      ["contentType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContentType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Task,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Task"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["account", ["Account", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Account")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["activityDate", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ActivityDate")], [0, 1]],
      ["attachments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Attachments")], [0, 1]],
      ["callDisposition", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDisposition")], [0, 1]],
      ["callDurationInSeconds", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallDurationInSeconds")], [0, 1]],
      ["callObject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallObject")], [0, 1]],
      ["callType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallType")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["isArchived", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsArchived")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["isRecurrence", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsRecurrence")], [0, 1]],
      ["isReminderSet", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsReminderSet")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["owner", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Owner")], [0, 1]],
      ["ownerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OwnerId")], [0, 1]],
      ["priority", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Priority")], [0, 1]],
      ["recurrenceActivityId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceActivityId")], [0, 1]],
      ["recurrenceDayOfMonth", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfMonth")], [0, 1]],
      ["recurrenceDayOfWeekMask", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceDayOfWeekMask")], [0, 1]],
      ["recurrenceEndDateOnly", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceEndDateOnly")], [0, 1]],
      ["recurrenceInstance", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInstance")], [0, 1]],
      ["recurrenceInterval", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceInterval")], [0, 1]],
      ["recurrenceMonthOfYear", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceMonthOfYear")], [0, 1]],
      ["recurrenceStartDateOnly", ["SOAP::SOAPDate", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceStartDateOnly")], [0, 1]],
      ["recurrenceTimeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceTimeZoneSidKey")], [0, 1]],
      ["recurrenceType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurrenceType")], [0, 1]],
      ["recurringTasks", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RecurringTasks")], [0, 1]],
      ["reminderDateTime", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReminderDateTime")], [0, 1]],
      ["status", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Status")], [0, 1]],
      ["subject", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Subject")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["what", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "What")], [0, 1]],
      ["whatId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhatId")], [0, 1]],
      ["who", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Who")], [0, 1]],
      ["whoId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WhoId")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TaskFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TaskFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Task", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TaskPriority,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TaskPriority"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["isHighPriority", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsHighPriority")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TaskStatus,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TaskStatus"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isClosed", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsClosed")], [0, 1]],
      ["isDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDefault")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["sortOrder", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SortOrder")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SUser,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SUser"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["aboutMe", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AboutMe")], [0, 1]],
      ["accountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "AccountId")], [0, 1]],
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Alias")], [0, 1]],
      ["callCenterId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CallCenterId")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "City")], [0, 1]],
      ["communityNickname", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CommunityNickname")], [0, 1]],
      ["companyName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CompanyName")], [0, 1]],
      ["contact", ["Contact", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Contact")], [0, 1]],
      ["contactId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactId")], [0, 1]],
      ["contractsSigned", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContractsSigned")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Country")], [0, 1]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["currentStatus", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CurrentStatus")], [0, 1]],
      ["delegatedApproverId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DelegatedApproverId")], [0, 1]],
      ["delegatedUsers", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DelegatedUsers")], [0, 1]],
      ["department", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Department")], [0, 1]],
      ["digestFrequency", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DigestFrequency")], [0, 1]],
      ["division", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Division")], [0, 1]],
      ["email", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Email")], [0, 1]],
      ["emailEncodingKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmailEncodingKey")], [0, 1]],
      ["employeeNumber", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EmployeeNumber")], [0, 1]],
      ["extension", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Extension")], [0, 1]],
      ["fax", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Fax")], [0, 1]],
      ["federationIdentifier", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FederationIdentifier")], [0, 1]],
      ["feedSubscriptions", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptions")], [0, 1]],
      ["feedSubscriptionsForEntity", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedSubscriptionsForEntity")], [0, 1]],
      ["feeds", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Feeds")], [0, 1]],
      ["firstName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FirstName")], [0, 1]],
      ["forecastEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastEnabled")], [0, 1]],
      ["fullPhotoUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FullPhotoUrl")], [0, 1]],
      ["isActive", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsActive")], [0, 1]],
      ["languageLocaleKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LanguageLocaleKey")], [0, 1]],
      ["lastLoginDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastLoginDate")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["lastName", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastName")], [0, 1]],
      ["lastPasswordChangeDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastPasswordChangeDate")], [0, 1]],
      ["localeSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LocaleSidKey")], [0, 1]],
      ["manager", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Manager")], [0, 1]],
      ["managerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ManagerId")], [0, 1]],
      ["mobilePhone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MobilePhone")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["offlinePdaTrialExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OfflinePdaTrialExpirationDate")], [0, 1]],
      ["offlineTrialExpirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OfflineTrialExpirationDate")], [0, 1]],
      ["phone", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Phone")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PostalCode")], [0, 1]],
      ["profile", ["Profile", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Profile")], [0, 1]],
      ["profileId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ProfileId")], [0, 1]],
      ["receivesAdminInfoEmails", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReceivesAdminInfoEmails")], [0, 1]],
      ["receivesInfoEmails", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ReceivesInfoEmails")], [0, 1]],
      ["smallPhotoUrl", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SmallPhotoUrl")], [0, 1]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "State")], [0, 1]],
      ["street", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Street")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["timeZoneSidKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "TimeZoneSidKey")], [0, 1]],
      ["title", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Title")], [0, 1]],
      ["userPermissionsCallCenterAutoLogin", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsCallCenterAutoLogin")], [0, 1]],
      ["userPermissionsKnowledgeUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsKnowledgeUser")], [0, 1]],
      ["userPermissionsMarketingUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsMarketingUser")], [0, 1]],
      ["userPermissionsMobileUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsMobileUser")], [0, 1]],
      ["userPermissionsOfflineUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsOfflineUser")], [0, 1]],
      ["userPermissionsSFContentUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsSFContentUser")], [0, 1]],
      ["userPermissionsSupportUser", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPermissionsSupportUser")], [0, 1]],
      ["userPreferences", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferences")], [0, 1]],
      ["userPreferencesActivityRemindersPopup", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesActivityRemindersPopup")], [0, 1]],
      ["userPreferencesApexPagesDeveloperMode", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesApexPagesDeveloperMode")], [0, 1]],
      ["userPreferencesDisableAutoSubForFeeds", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesDisableAutoSubForFeeds")], [0, 1]],
      ["userPreferencesEventRemindersCheckboxDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesEventRemindersCheckboxDefault")], [0, 1]],
      ["userPreferencesReminderSoundOff", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesReminderSoundOff")], [0, 1]],
      ["userPreferencesTaskRemindersCheckboxDefault", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreferencesTaskRemindersCheckboxDefault")], [0, 1]],
      ["userRole", ["UserRole", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRole")], [0, 1]],
      ["userRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRoleId")], [0, 1]],
      ["userType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserType")], [0, 1]],
      ["username", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Username")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserLicense,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserLicense"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["licenseDefinitionKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LicenseDefinitionKey")], [0, 1]],
      ["monthlyLoginsEntitlement", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MonthlyLoginsEntitlement")], [0, 1]],
      ["monthlyLoginsUsed", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MonthlyLoginsUsed")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserPreference,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserPreference"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["preference", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Preference")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["userId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserId")], [0, 1]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserProfileFeed,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserProfileFeed"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["feedComments", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedComments")], [0, 1]],
      ["feedPost", ["FeedPost", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPost")], [0, 1]],
      ["feedPostId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedPostId")], [0, 1]],
      ["feedTrackedChanges", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "FeedTrackedChanges")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UserRole,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "UserRole"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["caseAccessForAccountOwner", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CaseAccessForAccountOwner")], [0, 1]],
      ["contactAccessForAccountOwner", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ContactAccessForAccountOwner")], [0, 1]],
      ["forecastUserId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ForecastUserId")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["mayForecastManagerShare", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MayForecastManagerShare")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["opportunityAccessForAccountOwner", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpportunityAccessForAccountOwner")], [0, 1]],
      ["parentRoleId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentRoleId")], [0, 1]],
      ["portalAccountId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PortalAccountId")], [0, 1]],
      ["portalAccountOwnerId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PortalAccountOwnerId")], [0, 1]],
      ["portalType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PortalType")], [0, 1]],
      ["rollupDescription", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RollupDescription")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["users", ["QueryResult", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Users")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Vote,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Vote"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["isDeleted", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsDeleted")], [0, 1]],
      ["parent", ["Name", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Parent")], [0, 1]],
      ["parentId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ParentId")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => WebLink,
    :schema_type => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "WebLink"),
    :schema_basetype => XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "sObject"),
    :schema_element => [
      ["fieldsToNull", "SOAP::SOAPString[]", [0, nil]],
      ["id", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Id")]],
      ["createdBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedBy")], [0, 1]],
      ["createdById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedById")], [0, 1]],
      ["createdDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "CreatedDate")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Description")], [0, 1]],
      ["displayType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "DisplayType")], [0, 1]],
      ["encodingKey", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "EncodingKey")], [0, 1]],
      ["hasMenubar", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasMenubar")], [0, 1]],
      ["hasScrollbars", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasScrollbars")], [0, 1]],
      ["hasToolbar", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "HasToolbar")], [0, 1]],
      ["height", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Height")], [0, 1]],
      ["isProtected", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsProtected")], [0, 1]],
      ["isResizable", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "IsResizable")], [0, 1]],
      ["lastModifiedBy", ["SUser", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedBy")], [0, 1]],
      ["lastModifiedById", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedById")], [0, 1]],
      ["lastModifiedDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LastModifiedDate")], [0, 1]],
      ["linkType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "LinkType")], [0, 1]],
      ["masterLabel", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "MasterLabel")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Name")], [0, 1]],
      ["namespacePrefix", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "NamespacePrefix")], [0, 1]],
      ["openType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "OpenType")], [0, 1]],
      ["pageOrSobjectType", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "PageOrSobjectType")], [0, 1]],
      ["position", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Position")], [0, 1]],
      ["requireRowSelection", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "RequireRowSelection")], [0, 1]],
      ["scontrolId", [nil, XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ScontrolId")], [0, 1]],
      ["showsLocation", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShowsLocation")], [0, 1]],
      ["showsStatus", ["SOAP::SOAPBoolean", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "ShowsStatus")], [0, 1]],
      ["systemModstamp", ["SOAP::SOAPDateTime", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "SystemModstamp")], [0, 1]],
      ["url", ["SOAP::SOAPString", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Url")], [0, 1]],
      ["width", ["SOAP::SOAPInt", XSD::QName.new(NsSobjectEnterpriseSoapSforceCom, "Width")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => QueryResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "QueryResult"),
    :schema_element => [
      ["done", "SOAP::SOAPBoolean"],
      ["queryLocator", nil],
      ["records", "SObject[]", [0, nil]],
      ["size", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SearchResult"),
    :schema_element => [
      ["searchRecords", "SearchRecord[]", [0, nil]],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchRecord,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SearchRecord"),
    :schema_element => [
      ["record", "SObject"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdatedResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "GetUpdatedResult"),
    :schema_element => [
      ["ids", "[]", [0, nil]],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeletedResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "GetDeletedResult"),
    :schema_element => [
      ["deletedRecords", "DeletedRecord[]", [0, nil]],
      ["earliestDateAvailable", "SOAP::SOAPDateTime"],
      ["latestDateCovered", "SOAP::SOAPDateTime"],
      ["sforceReserved", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeletedRecord,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DeletedRecord"),
    :schema_element => [
      ["deletedDate", "SOAP::SOAPDateTime"],
      ["id", nil]
    ]
  )

  LiteralRegistry.register(
    :class => GetServerTimestampResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "GetServerTimestampResult"),
    :schema_element => [
      ["timestamp", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidateSessionsResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "InvalidateSessionsResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => SetPasswordResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SetPasswordResult"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResetPasswordResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ResetPasswordResult"),
    :schema_element => [
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfoResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "GetUserInfoResult"),
    :schema_element => [
      ["accessibilityMode", "SOAP::SOAPBoolean"],
      ["currencySymbol", "SOAP::SOAPString"],
      ["orgDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["orgDisallowHtmlAttachments", "SOAP::SOAPBoolean"],
      ["orgHasPersonAccounts", "SOAP::SOAPBoolean"],
      ["organizationId", nil],
      ["organizationMultiCurrency", "SOAP::SOAPBoolean"],
      ["organizationName", "SOAP::SOAPString"],
      ["profileId", nil],
      ["roleId", nil],
      ["userDefaultCurrencyIsoCode", "SOAP::SOAPString"],
      ["userEmail", "SOAP::SOAPString"],
      ["userFullName", "SOAP::SOAPString"],
      ["userId", nil],
      ["userLanguage", "SOAP::SOAPString"],
      ["userLocale", "SOAP::SOAPString"],
      ["userName", "SOAP::SOAPString"],
      ["userTimeZone", "SOAP::SOAPString"],
      ["userType", "SOAP::SOAPString"],
      ["userUiSkin", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "LoginResult"),
    :schema_element => [
      ["metadataServerUrl", "SOAP::SOAPString"],
      ["passwordExpired", "SOAP::SOAPBoolean"],
      ["sandbox", "SOAP::SOAPBoolean"],
      ["serverUrl", "SOAP::SOAPString"],
      ["sessionId", "SOAP::SOAPString"],
      ["userId", nil],
      ["userInfo", "GetUserInfoResult", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Error,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "Error"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "StatusCode"]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmailError,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SendEmailError"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["message", "SOAP::SOAPString"],
      ["statusCode", "StatusCode"],
      ["targetObjectId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => SaveResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SaveResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpsertResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "UpsertResult"),
    :schema_element => [
      ["created", "SOAP::SOAPBoolean"],
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MergeRequest,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "MergeRequest"),
    :schema_element => [
      ["masterRecord", "SObject"],
      ["recordToMergeIds", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MergeResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "MergeResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["mergedRecordIds", "[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"],
      ["updatedRelatedIds", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessRequest,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessSubmitRequest,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessSubmitRequest"),
    :schema_basetype => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]],
      ["objectId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessWorkitemRequest,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessWorkitemRequest"),
    :schema_basetype => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessRequest"),
    :schema_element => [
      ["comments", "SOAP::SOAPString"],
      ["nextApproverIds", "[]", [0, nil]],
      ["action", "SOAP::SOAPString"],
      ["workitemId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ProcessResult"),
    :schema_element => [
      ["actorIds", "[]", [0, nil]],
      ["entityId", nil],
      ["errors", "Error[]", [0, nil]],
      ["instanceId", nil],
      ["instanceStatus", "SOAP::SOAPString"],
      ["newWorkitemIds", "[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DeleteResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UndeleteResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "UndeleteResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => EmptyRecycleBinResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "EmptyRecycleBinResult"),
    :schema_element => [
      ["errors", "Error[]", [0, nil]],
      ["id", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LeadConvert,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "LeadConvert"),
    :schema_element => [
      ["accountId", nil],
      ["contactId", nil],
      ["convertedStatus", "SOAP::SOAPString"],
      ["doNotCreateOpportunity", "SOAP::SOAPBoolean"],
      ["leadId", nil],
      ["opportunityName", "SOAP::SOAPString"],
      ["overwriteLeadSource", "SOAP::SOAPBoolean"],
      ["ownerId", nil],
      ["sendNotificationEmail", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => LeadConvertResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "LeadConvertResult"),
    :schema_element => [
      ["accountId", nil],
      ["contactId", nil],
      ["errors", "Error[]", [0, nil]],
      ["leadId", nil],
      ["opportunityId", nil],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjectResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSObjectResult"),
    :schema_element => [
      ["activateable", "SOAP::SOAPBoolean"],
      ["childRelationships", "ChildRelationship[]", [0, nil]],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["customSetting", "SOAP::SOAPBoolean"],
      ["deletable", "SOAP::SOAPBoolean"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["feedEnabled", "SOAP::SOAPBoolean"],
      ["fields", "Field[]", [0, nil]],
      ["keyPrefix", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["labelPlural", "SOAP::SOAPString"],
      ["layoutable", "SOAP::SOAPBoolean"],
      ["mergeable", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["queryable", "SOAP::SOAPBoolean"],
      ["recordTypeInfos", "RecordTypeInfo[]", [0, nil]],
      ["replicateable", "SOAP::SOAPBoolean"],
      ["retrieveable", "SOAP::SOAPBoolean"],
      ["searchable", "SOAP::SOAPBoolean"],
      ["triggerable", "SOAP::SOAPBoolean", [0, 1]],
      ["undeletable", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"],
      ["urlDetail", "SOAP::SOAPString"],
      ["urlEdit", "SOAP::SOAPString"],
      ["urlNew", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeGlobalSObjectResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeGlobalSObjectResult"),
    :schema_element => [
      ["activateable", "SOAP::SOAPBoolean"],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["customSetting", "SOAP::SOAPBoolean"],
      ["deletable", "SOAP::SOAPBoolean"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["feedEnabled", "SOAP::SOAPBoolean"],
      ["keyPrefix", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["labelPlural", "SOAP::SOAPString"],
      ["layoutable", "SOAP::SOAPBoolean"],
      ["mergeable", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["queryable", "SOAP::SOAPBoolean"],
      ["replicateable", "SOAP::SOAPBoolean"],
      ["retrieveable", "SOAP::SOAPBoolean"],
      ["searchable", "SOAP::SOAPBoolean"],
      ["triggerable", "SOAP::SOAPBoolean"],
      ["undeletable", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => ChildRelationship,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "ChildRelationship"),
    :schema_element => [
      ["cascadeDelete", "SOAP::SOAPBoolean"],
      ["childSObject", "SOAP::SOAPString"],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["field", "SOAP::SOAPString"],
      ["relationshipName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeGlobalResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeGlobalResult"),
    :schema_element => [
      ["encoding", "SOAP::SOAPString"],
      ["maxBatchSize", "SOAP::SOAPInt"],
      ["sobjects", "DescribeGlobalSObjectResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Field,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "Field"),
    :schema_element => [
      ["autoNumber", "SOAP::SOAPBoolean"],
      ["byteLength", "SOAP::SOAPInt"],
      ["calculated", "SOAP::SOAPBoolean"],
      ["calculatedFormula", "SOAP::SOAPString", [0, 1]],
      ["caseSensitive", "SOAP::SOAPBoolean"],
      ["controllerName", "SOAP::SOAPString", [0, 1]],
      ["createable", "SOAP::SOAPBoolean"],
      ["custom", "SOAP::SOAPBoolean"],
      ["defaultValueFormula", "SOAP::SOAPString", [0, 1]],
      ["defaultedOnCreate", "SOAP::SOAPBoolean"],
      ["dependentPicklist", "SOAP::SOAPBoolean", [0, 1]],
      ["deprecatedAndHidden", "SOAP::SOAPBoolean"],
      ["digits", "SOAP::SOAPInt"],
      ["externalId", "SOAP::SOAPBoolean", [0, 1]],
      ["filterable", "SOAP::SOAPBoolean"],
      ["groupable", "SOAP::SOAPBoolean"],
      ["htmlFormatted", "SOAP::SOAPBoolean", [0, 1]],
      ["idLookup", "SOAP::SOAPBoolean"],
      ["inlineHelpText", "SOAP::SOAPString", [0, 1]],
      ["label", "SOAP::SOAPString"],
      ["length", "SOAP::SOAPInt"],
      ["name", "SOAP::SOAPString"],
      ["nameField", "SOAP::SOAPBoolean"],
      ["namePointing", "SOAP::SOAPBoolean", [0, 1]],
      ["nillable", "SOAP::SOAPBoolean"],
      ["picklistValues", "PicklistEntry[]", [0, nil]],
      ["precision", "SOAP::SOAPInt"],
      ["referenceTo", "SOAP::SOAPString[]", [0, nil]],
      ["relationshipName", "SOAP::SOAPString", [0, 1]],
      ["relationshipOrder", "SOAP::SOAPInt", [0, 1]],
      ["restrictedPicklist", "SOAP::SOAPBoolean"],
      ["scale", "SOAP::SOAPInt"],
      ["soapType", "SoapType"],
      ["sortable", "SOAP::SOAPBoolean", [0, 1]],
      ["type", "FieldType"],
      ["unique", "SOAP::SOAPBoolean"],
      ["updateable", "SOAP::SOAPBoolean"],
      ["writeRequiresMasterRead", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PicklistEntry,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "PicklistEntry"),
    :schema_element => [
      ["active", "SOAP::SOAPBoolean"],
      ["defaultValue", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["validFor", "SOAP::SOAPBase64", [0, 1]],
      ["value", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeDataCategoryGroupResult"),
    :schema_element => [
      ["categoryCount", "SOAP::SOAPInt"],
      ["description", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupStructureResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeDataCategoryGroupStructureResult"),
    :schema_element => [
      ["description", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"],
      ["topCategories", "DataCategory[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DataCategoryGroupSobjectTypePair,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DataCategoryGroupSobjectTypePair"),
    :schema_element => [
      ["dataCategoryGroupName", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DataCategory,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DataCategory"),
    :schema_element => [
      ["childCategories", "DataCategory[]", [0, nil]],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneLayoutResult"),
    :schema_element => [
      ["callTypes", "DescribeSoftphoneLayoutCallType[]", [1, nil]],
      ["id", nil],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutCallType,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneLayoutCallType"),
    :schema_element => [
      ["infoFields", "DescribeSoftphoneLayoutInfoField[]", [1, nil]],
      ["name", "SOAP::SOAPString"],
      ["screenPopOptions", "DescribeSoftphoneScreenPopOption[]", [0, nil]],
      ["screenPopsOpenWithin", "SOAP::SOAPString", [0, 1]],
      ["sections", "DescribeSoftphoneLayoutSection[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneScreenPopOption,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneScreenPopOption"),
    :schema_element => [
      ["matchType", "SOAP::SOAPString"],
      ["screenPopData", "SOAP::SOAPString"],
      ["screenPopType", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutInfoField,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneLayoutInfoField"),
    :schema_element => [
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutSection,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneLayoutSection"),
    :schema_element => [
      ["entityApiName", "SOAP::SOAPString"],
      ["items", "DescribeSoftphoneLayoutItem[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutItem,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeSoftphoneLayoutItem"),
    :schema_element => [
      ["itemApiName", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutResult"),
    :schema_element => [
      ["layouts", "DescribeLayout[]", [1, nil]],
      ["recordTypeMappings", "RecordTypeMapping[]", [0, nil]],
      ["recordTypeSelectorRequired", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayout,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayout"),
    :schema_element => [
      ["buttonLayoutSection", "DescribeLayoutButtonSection", [0, 1]],
      ["detailLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["editLayoutSections", "DescribeLayoutSection[]", [0, nil]],
      ["id", nil],
      ["relatedLists", "RelatedList[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutSection,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutSection"),
    :schema_element => [
      ["columns", "SOAP::SOAPInt"],
      ["heading", "SOAP::SOAPString"],
      ["layoutRows", "DescribeLayoutRow[]", [1, nil]],
      ["rows", "SOAP::SOAPInt"],
      ["useCollapsibleSection", "SOAP::SOAPBoolean"],
      ["useHeading", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutButtonSection,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutButtonSection"),
    :schema_element => [
      ["detailButtons", "DescribeLayoutButton[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutRow,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutRow"),
    :schema_element => [
      ["layoutItems", "DescribeLayoutItem[]", [1, nil]],
      ["numItems", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutItem,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutItem"),
    :schema_element => [
      ["editable", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["layoutComponents", "DescribeLayoutComponent[]", [0, nil]],
      ["placeholder", "SOAP::SOAPBoolean"],
      ["required", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutButton,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutButton"),
    :schema_element => [
      ["custom", "SOAP::SOAPBoolean"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutComponent,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeLayoutComponent"),
    :schema_element => [
      ["displayLines", "SOAP::SOAPInt"],
      ["tabOrder", "SOAP::SOAPInt"],
      ["type", "LayoutComponentType"],
      ["value", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RecordTypeInfo,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "RecordTypeInfo"),
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["name", "SOAP::SOAPString"],
      ["recordTypeId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => RecordTypeMapping,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "RecordTypeMapping"),
    :schema_element => [
      ["available", "SOAP::SOAPBoolean"],
      ["defaultRecordTypeMapping", "SOAP::SOAPBoolean"],
      ["layoutId", nil],
      ["name", "SOAP::SOAPString"],
      ["picklistsForRecordType", "PicklistForRecordType[]", [0, nil]],
      ["recordTypeId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => PicklistForRecordType,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "PicklistForRecordType"),
    :schema_element => [
      ["picklistName", "SOAP::SOAPString"],
      ["picklistValues", "PicklistEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedList,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "RelatedList"),
    :schema_element => [
      ["columns", "RelatedListColumn[]", [1, nil]],
      ["custom", "SOAP::SOAPBoolean"],
      ["field", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["limitRows", "SOAP::SOAPInt"],
      ["name", "SOAP::SOAPString"],
      ["sobject", "SOAP::SOAPString"],
      ["sort", "RelatedListSort[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedListColumn,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "RelatedListColumn"),
    :schema_element => [
      ["field", "SOAP::SOAPString"],
      ["format", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedListSort,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "RelatedListSort"),
    :schema_element => [
      ["ascending", "SOAP::SOAPBoolean"],
      ["column", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => EmailFileAttachment,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "EmailFileAttachment"),
    :schema_element => [
      ["body", "SOAP::SOAPBase64", [0, 1]],
      ["contentType", "SOAP::SOAPString", [0, 1]],
      ["fileName", "SOAP::SOAPString"],
      ["inline", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Email,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MassEmailMessage,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "MassEmailMessage"),
    :schema_basetype => XSD::QName.new(NsEnterpriseSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["description", "SOAP::SOAPString"],
      ["targetObjectIds", "[]", [0, 250]],
      ["templateId", nil],
      ["whatIds", "[]", [0, 250]]
    ]
  )

  LiteralRegistry.register(
    :class => SingleEmailMessage,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SingleEmailMessage"),
    :schema_basetype => XSD::QName.new(NsEnterpriseSoapSforceCom, "Email"),
    :schema_element => [
      ["bccSender", "SOAP::SOAPBoolean"],
      ["emailPriority", "EmailPriority"],
      ["replyTo", "SOAP::SOAPString"],
      ["saveAsActivity", "SOAP::SOAPBoolean"],
      ["senderDisplayName", "SOAP::SOAPString"],
      ["subject", "SOAP::SOAPString"],
      ["useSignature", "SOAP::SOAPBoolean"],
      ["bccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["ccAddresses", "SOAP::SOAPString[]", [0, 25]],
      ["charset", "SOAP::SOAPString"],
      ["documentAttachments", "[]", [0, nil]],
      ["htmlBody", "SOAP::SOAPString"],
      ["inReplyTo", "SOAP::SOAPString", [0, 1]],
      ["fileAttachments", "EmailFileAttachment[]", [0, nil]],
      ["orgWideEmailAddressId", nil, [0, 1]],
      ["plainTextBody", "SOAP::SOAPString"],
      ["references", "SOAP::SOAPString", [0, 1]],
      ["targetObjectId", nil],
      ["templateId", nil],
      ["toAddresses", "SOAP::SOAPString[]", [0, 100]],
      ["whatId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmailResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "SendEmailResult"),
    :schema_element => [
      ["errors", "SendEmailError[]", [0, nil]],
      ["success", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeTabSetResult,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeTabSetResult"),
    :schema_element => [
      ["label", "SOAP::SOAPString"],
      ["logoUrl", "SOAP::SOAPString"],
      ["namespace", "SOAP::SOAPString", [0, 1]],
      ["selected", "SOAP::SOAPBoolean"],
      ["tabs", "DescribeTab[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeTab,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DescribeTab"),
    :schema_element => [
      ["custom", "SOAP::SOAPBoolean"],
      ["iconUrl", "SOAP::SOAPString"],
      ["label", "SOAP::SOAPString"],
      ["miniIconUrl", "SOAP::SOAPString"],
      ["sobjectName", "SOAP::SOAPString"],
      ["url", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => PackageVersion,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "PackageVersion"),
    :schema_element => [
      ["majorNumber", "SOAP::SOAPInt"],
      ["minorNumber", "SOAP::SOAPInt"],
      ["namespace", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ApiFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => ApiQueryFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiQueryFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "LoginFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidQueryLocatorFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidQueryLocatorFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidNewPasswordFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidNewPasswordFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidIdFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidIdFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => UnexpectedErrorFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "UnexpectedErrorFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidFieldFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidFieldFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidSObjectFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidSObjectFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedQueryFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "MalformedQueryFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedSearchFault,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "MalformedSearchFault"),
    :schema_basetype => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ApiQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => StatusCode,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "StatusCode")
  )

  LiteralRegistry.register(
    :class => FieldType,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "fieldType")
  )

  LiteralRegistry.register(
    :class => SoapType,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "soapType")
  )

  LiteralRegistry.register(
    :class => LayoutComponentType,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "layoutComponentType")
  )

  LiteralRegistry.register(
    :class => EmailPriority,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "EmailPriority")
  )

  LiteralRegistry.register(
    :class => DebugLevel,
    :schema_type => XSD::QName.new(NsEnterpriseSoapSforceCom, "DebugLevel")
  )

  LiteralRegistry.register(
    :class => ExceptionCode,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "ExceptionCode")
  )

  LiteralRegistry.register(
    :class => FaultCode,
    :schema_type => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "FaultCode")
  )

  LiteralRegistry.register(
    :class => Login,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "login"),
    :schema_element => [
      ["username", "SOAP::SOAPString"],
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "loginResponse"),
    :schema_element => [
      ["result", "LoginResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObject,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeSObject"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjectResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeSObjectResponse"),
    :schema_element => [
      ["result", "DescribeSObjectResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjects,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeSObjects"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString[]", [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSObjectsResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeSObjectsResponse"),
    :schema_element => [
      ["result", "DescribeSObjectResult[]", [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeGlobal,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeGlobal"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DescribeGlobalResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeGlobalResponse"),
    :schema_element => [
      ["result", "DescribeGlobalResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroups,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeDataCategoryGroups"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString[]", [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupsResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeDataCategoryGroupsResponse"),
    :schema_element => [
      ["result", "DescribeDataCategoryGroupResult[]", [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupStructures,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeDataCategoryGroupStructures"),
    :schema_element => [
      ["pairs", "DataCategoryGroupSobjectTypePair[]", [0, 100]],
      ["topCategoriesOnly", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeDataCategoryGroupStructuresResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeDataCategoryGroupStructuresResponse"),
    :schema_element => [
      ["result", "DescribeDataCategoryGroupStructureResult[]", [0, 100]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayout_,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeLayout"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"],
      ["recordTypeIds", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeLayoutResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeLayoutResponse"),
    :schema_element => [
      ["result", "DescribeLayoutResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayout,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeSoftphoneLayout"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DescribeSoftphoneLayoutResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeSoftphoneLayoutResponse"),
    :schema_element => [
      ["result", "DescribeSoftphoneLayoutResult"]
    ]
  )

  LiteralRegistry.register(
    :class => DescribeTabs,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeTabs"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => DescribeTabsResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "describeTabsResponse"),
    :schema_element => [
      ["result", "DescribeTabSetResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Create,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "create"),
    :schema_element => [
      ["sObjects", "SObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "createResponse"),
    :schema_element => [
      ["result", "SaveResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmail,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "sendEmail"),
    :schema_element => [
      ["messages", "Email[]", [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => SendEmailResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "sendEmailResponse"),
    :schema_element => [
      ["result", "SendEmailResult[]", [0, 10]]
    ]
  )

  LiteralRegistry.register(
    :class => Update,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "update"),
    :schema_element => [
      ["sObjects", "SObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "updateResponse"),
    :schema_element => [
      ["result", "SaveResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Upsert,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "upsert"),
    :schema_element => [
      ["externalIDFieldName", "SOAP::SOAPString"],
      ["sObjects", "SObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UpsertResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "upsertResponse"),
    :schema_element => [
      ["result", "UpsertResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Merge,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "merge"),
    :schema_element => [
      ["request", "MergeRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => MergeResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "mergeResponse"),
    :schema_element => [
      ["result", "MergeResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Delete,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "delete"),
    :schema_element => [
      ["ids", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "deleteResponse"),
    :schema_element => [
      ["result", "DeleteResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Undelete,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "undelete"),
    :schema_element => [
      ["ids", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => UndeleteResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "undeleteResponse"),
    :schema_element => [
      ["result", "UndeleteResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EmptyRecycleBin,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "emptyRecycleBin"),
    :schema_element => [
      ["ids", "[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => EmptyRecycleBinResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "emptyRecycleBinResponse"),
    :schema_element => [
      ["result", "EmptyRecycleBinResult[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => C_Process,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "process"),
    :schema_element => [
      ["actions", "ProcessRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "processResponse"),
    :schema_element => [
      ["result", "ProcessResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Retrieve,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "retrieve"),
    :schema_element => [
      ["fieldList", "SOAP::SOAPString"],
      ["sObjectType", "SOAP::SOAPString"],
      ["ids", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => RetrieveResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "retrieveResponse"),
    :schema_element => [
      ["result", "SObject[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ConvertLead,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "convertLead"),
    :schema_element => [
      ["leadConverts", "LeadConvert[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ConvertLeadResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "convertLeadResponse"),
    :schema_element => [
      ["result", "LeadConvertResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdated,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "getUpdated"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"],
      ["startDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUpdatedResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "getUpdatedResponse"),
    :schema_element => [
      ["result", "GetUpdatedResult"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeleted,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "getDeleted"),
    :schema_element => [
      ["sObjectType", "SOAP::SOAPString"],
      ["startDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetDeletedResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "getDeletedResponse"),
    :schema_element => [
      ["result", "GetDeletedResult"]
    ]
  )

  LiteralRegistry.register(
    :class => Logout,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "logout"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => LogoutResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "logoutResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => InvalidateSessions,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "invalidateSessions"),
    :schema_element => [
      ["sessionIds", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidateSessionsResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "invalidateSessionsResponse"),
    :schema_element => [
      ["result", "InvalidateSessionsResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Query,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "query"),
    :schema_element => [
      ["queryString", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "queryResponse"),
    :schema_element => [
      ["result", "QueryResult"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryAll,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "queryAll"),
    :schema_element => [
      ["queryString", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryAllResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "queryAllResponse"),
    :schema_element => [
      ["result", "QueryResult"]
    ]
  )

  LiteralRegistry.register(
    :class => QueryMore,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "queryMore"),
    :schema_element => [
      ["queryLocator", nil]
    ]
  )

  LiteralRegistry.register(
    :class => QueryMoreResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "queryMoreResponse"),
    :schema_element => [
      ["result", "QueryResult"]
    ]
  )

  LiteralRegistry.register(
    :class => Search,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "search"),
    :schema_element => [
      ["searchString", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "searchResponse"),
    :schema_element => [
      ["result", "SearchResult"]
    ]
  )

  LiteralRegistry.register(
    :class => GetServerTimestamp,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "getServerTimestamp"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetServerTimestampResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "getServerTimestampResponse"),
    :schema_element => [
      ["result", "GetServerTimestampResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SetPassword,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "setPassword"),
    :schema_element => [
      ["userId", nil],
      ["password", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => SetPasswordResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "setPasswordResponse"),
    :schema_element => [
      ["result", "SetPasswordResult"]
    ]
  )

  LiteralRegistry.register(
    :class => ResetPassword,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "resetPassword"),
    :schema_element => [
      ["userId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => ResetPasswordResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "resetPasswordResponse"),
    :schema_element => [
      ["result", "ResetPasswordResult"]
    ]
  )

  LiteralRegistry.register(
    :class => GetUserInfo,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "getUserInfo"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetUserInfoResponse,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "getUserInfoResponse"),
    :schema_element => [
      ["result", "GetUserInfoResult"]
    ]
  )

  LiteralRegistry.register(
    :class => SessionHeader,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "SessionHeader"),
    :schema_element => [
      ["sessionId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginScopeHeader,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "LoginScopeHeader"),
    :schema_element => [
      ["organizationId", nil],
      ["portalId", nil, [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => QueryOptions,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "QueryOptions"),
    :schema_element => [
      ["batchSize", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DebuggingHeader,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "DebuggingHeader"),
    :schema_element => [
      ["debugLevel", "DebugLevel"]
    ]
  )

  LiteralRegistry.register(
    :class => DebuggingInfo,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "DebuggingInfo"),
    :schema_element => [
      ["debugLog", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => PackageVersionHeader,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "PackageVersionHeader"),
    :schema_element => [
      ["packageVersions", "PackageVersion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AllowFieldTruncationHeader,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "AllowFieldTruncationHeader"),
    :schema_element => [
      ["allowFieldTruncation", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => DisableFeedTrackingHeader,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "DisableFeedTrackingHeader"),
    :schema_element => [
      ["disableFeedTracking", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AllOrNoneHeader,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "AllOrNoneHeader"),
    :schema_element => [
      ["allOrNone", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => MruHeader,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "MruHeader"),
    :schema_element => [
      ["updateMru", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => EmailHeader,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "EmailHeader"),
    :schema_element => [
      ["triggerAutoResponseEmail", "SOAP::SOAPBoolean"],
      ["triggerOtherEmail", "SOAP::SOAPBoolean"],
      ["triggerUserEmail", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AssignmentRuleHeader,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "AssignmentRuleHeader"),
    :schema_element => [
      ["assignmentRuleId", nil],
      ["useDefaultRule", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UserTerritoryDeleteHeader,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "UserTerritoryDeleteHeader"),
    :schema_element => [
      ["transferToUserId", nil]
    ]
  )

  LiteralRegistry.register(
    :class => LocaleOptions,
    :schema_name => XSD::QName.new(NsEnterpriseSoapSforceCom, "LocaleOptions"),
    :schema_element => [
      ["language", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApiFault,
    :schema_name => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "fault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => LoginFault,
    :schema_name => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "LoginFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidQueryLocatorFault,
    :schema_name => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidQueryLocatorFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidNewPasswordFault,
    :schema_name => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidNewPasswordFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidIdFault,
    :schema_name => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidIdFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => UnexpectedErrorFault,
    :schema_name => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "UnexpectedErrorFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidFieldFault,
    :schema_name => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidFieldFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => InvalidSObjectFault,
    :schema_name => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "InvalidSObjectFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedQueryFault,
    :schema_name => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "MalformedQueryFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => MalformedSearchFault,
    :schema_name => XSD::QName.new(NsFaultEnterpriseSoapSforceCom, "MalformedSearchFault"),
    :schema_element => [
      ["exceptionCode", "ExceptionCode"],
      ["exceptionMessage", "SOAP::SOAPString"],
      ["row", "SOAP::SOAPInt"],
      ["column", "SOAP::SOAPInt"]
    ]
  )
end
