require 'xsd/qname'

# {urn:sobject.enterprise.soap.sforce.com}sObject
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
class SObject
  attr_accessor :fieldsToNull
  attr_accessor :id

  def initialize(fieldsToNull = [], id = nil)
    @fieldsToNull = fieldsToNull
    @id = id
  end
end

# {urn:sobject.enterprise.soap.sforce.com}AggregateResult
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
class AggregateResult < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize(fieldsToNull = [], id = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @__xmlele_any = nil
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Account
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountContactRoles - QueryResult
#   accountNumber - SOAP::SOAPString
#   accountPartnersFrom - QueryResult
#   accountPartnersTo - QueryResult
#   active__c - SOAP::SOAPString
#   activityHistories - QueryResult
#   annualRevenue - SOAP::SOAPDouble
#   assets - QueryResult
#   attachments - QueryResult
#   billingCity - SOAP::SOAPString
#   billingCountry - SOAP::SOAPString
#   billingPostalCode - SOAP::SOAPString
#   billingState - SOAP::SOAPString
#   billingStreet - SOAP::SOAPString
#   cases - QueryResult
#   contacts - QueryResult
#   contracts - QueryResult
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   customerPriority__c - SOAP::SOAPString
#   description - SOAP::SOAPString
#   events - QueryResult
#   fax - SOAP::SOAPString
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   histories - QueryResult
#   industry - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   lastActivityDate - SOAP::SOAPDate
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   masterRecord - Account
#   masterRecordId - (any)
#   name - SOAP::SOAPString
#   notes - QueryResult
#   notesAndAttachments - QueryResult
#   numberOfEmployees - SOAP::SOAPInt
#   numberofLocations__c - SOAP::SOAPDouble
#   openActivities - QueryResult
#   opportunities - QueryResult
#   opportunityPartnersTo - QueryResult
#   owner - User
#   ownerId - (any)
#   ownership - SOAP::SOAPString
#   parent - Account
#   parentId - (any)
#   partnersFrom - QueryResult
#   partnersTo - QueryResult
#   phone - SOAP::SOAPString
#   processInstances - QueryResult
#   processSteps - QueryResult
#   rating - SOAP::SOAPString
#   sLAExpirationDate__c - SOAP::SOAPDate
#   sLASerialNumber__c - SOAP::SOAPString
#   sLA__c - SOAP::SOAPString
#   shares - QueryResult
#   shippingCity - SOAP::SOAPString
#   shippingCountry - SOAP::SOAPString
#   shippingPostalCode - SOAP::SOAPString
#   shippingState - SOAP::SOAPString
#   shippingStreet - SOAP::SOAPString
#   sic - SOAP::SOAPString
#   site - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tasks - QueryResult
#   tickerSymbol - SOAP::SOAPString
#   type - SOAP::SOAPString
#   upsellOpportunity__c - SOAP::SOAPString
#   website - SOAP::SOAPString
class Account < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountContactRoles
  attr_accessor :accountNumber
  attr_accessor :accountPartnersFrom
  attr_accessor :accountPartnersTo
  attr_accessor :active__c
  attr_accessor :activityHistories
  attr_accessor :annualRevenue
  attr_accessor :assets
  attr_accessor :attachments
  attr_accessor :billingCity
  attr_accessor :billingCountry
  attr_accessor :billingPostalCode
  attr_accessor :billingState
  attr_accessor :billingStreet
  attr_accessor :cases
  attr_accessor :contacts
  attr_accessor :contracts
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :customerPriority__c
  attr_accessor :description
  attr_accessor :events
  attr_accessor :fax
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :histories
  attr_accessor :industry
  attr_accessor :isDeleted
  attr_accessor :lastActivityDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :masterRecord
  attr_accessor :masterRecordId
  attr_accessor :name
  attr_accessor :notes
  attr_accessor :notesAndAttachments
  attr_accessor :numberOfEmployees
  attr_accessor :numberofLocations__c
  attr_accessor :openActivities
  attr_accessor :opportunities
  attr_accessor :opportunityPartnersTo
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :ownership
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :partnersFrom
  attr_accessor :partnersTo
  attr_accessor :phone
  attr_accessor :processInstances
  attr_accessor :processSteps
  attr_accessor :rating
  attr_accessor :sLAExpirationDate__c
  attr_accessor :sLASerialNumber__c
  attr_accessor :sLA__c
  attr_accessor :shares
  attr_accessor :shippingCity
  attr_accessor :shippingCountry
  attr_accessor :shippingPostalCode
  attr_accessor :shippingState
  attr_accessor :shippingStreet
  attr_accessor :sic
  attr_accessor :site
  attr_accessor :systemModstamp
  attr_accessor :tasks
  attr_accessor :tickerSymbol
  attr_accessor :type
  attr_accessor :upsellOpportunity__c
  attr_accessor :website

  def initialize(fieldsToNull = [], id = nil, accountContactRoles = nil, accountNumber = nil, accountPartnersFrom = nil, accountPartnersTo = nil, active__c = nil, activityHistories = nil, annualRevenue = nil, assets = nil, attachments = nil, billingCity = nil, billingCountry = nil, billingPostalCode = nil, billingState = nil, billingStreet = nil, cases = nil, contacts = nil, contracts = nil, createdBy = nil, createdById = nil, createdDate = nil, customerPriority__c = nil, description = nil, events = nil, fax = nil, feedSubscriptionsForEntity = nil, feeds = nil, histories = nil, industry = nil, isDeleted = nil, lastActivityDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, masterRecord = nil, masterRecordId = nil, name = nil, notes = nil, notesAndAttachments = nil, numberOfEmployees = nil, numberofLocations__c = nil, openActivities = nil, opportunities = nil, opportunityPartnersTo = nil, owner = nil, ownerId = nil, ownership = nil, parent = nil, parentId = nil, partnersFrom = nil, partnersTo = nil, phone = nil, processInstances = nil, processSteps = nil, rating = nil, sLAExpirationDate__c = nil, sLASerialNumber__c = nil, sLA__c = nil, shares = nil, shippingCity = nil, shippingCountry = nil, shippingPostalCode = nil, shippingState = nil, shippingStreet = nil, sic = nil, site = nil, systemModstamp = nil, tasks = nil, tickerSymbol = nil, type = nil, upsellOpportunity__c = nil, website = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountContactRoles = accountContactRoles
    @accountNumber = accountNumber
    @accountPartnersFrom = accountPartnersFrom
    @accountPartnersTo = accountPartnersTo
    @active__c = active__c
    @activityHistories = activityHistories
    @annualRevenue = annualRevenue
    @assets = assets
    @attachments = attachments
    @billingCity = billingCity
    @billingCountry = billingCountry
    @billingPostalCode = billingPostalCode
    @billingState = billingState
    @billingStreet = billingStreet
    @cases = cases
    @contacts = contacts
    @contracts = contracts
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @customerPriority__c = customerPriority__c
    @description = description
    @events = events
    @fax = fax
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @histories = histories
    @industry = industry
    @isDeleted = isDeleted
    @lastActivityDate = lastActivityDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @masterRecord = masterRecord
    @masterRecordId = masterRecordId
    @name = name
    @notes = notes
    @notesAndAttachments = notesAndAttachments
    @numberOfEmployees = numberOfEmployees
    @numberofLocations__c = numberofLocations__c
    @openActivities = openActivities
    @opportunities = opportunities
    @opportunityPartnersTo = opportunityPartnersTo
    @owner = owner
    @ownerId = ownerId
    @ownership = ownership
    @parent = parent
    @parentId = parentId
    @partnersFrom = partnersFrom
    @partnersTo = partnersTo
    @phone = phone
    @processInstances = processInstances
    @processSteps = processSteps
    @rating = rating
    @sLAExpirationDate__c = sLAExpirationDate__c
    @sLASerialNumber__c = sLASerialNumber__c
    @sLA__c = sLA__c
    @shares = shares
    @shippingCity = shippingCity
    @shippingCountry = shippingCountry
    @shippingPostalCode = shippingPostalCode
    @shippingState = shippingState
    @shippingStreet = shippingStreet
    @sic = sic
    @site = site
    @systemModstamp = systemModstamp
    @tasks = tasks
    @tickerSymbol = tickerSymbol
    @type = type
    @upsellOpportunity__c = upsellOpportunity__c
    @website = website
  end
end

# {urn:sobject.enterprise.soap.sforce.com}AccountContactRole
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountId - (any)
#   contact - Contact
#   contactId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   isPrimary - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   role - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class AccountContactRole < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountId
  attr_accessor :contact
  attr_accessor :contactId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :isPrimary
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :role
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, account = nil, accountId = nil, contact = nil, contactId = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, isPrimary = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, role = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountId = accountId
    @contact = contact
    @contactId = contactId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @isPrimary = isPrimary
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @role = role
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}AccountFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Account
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class AccountFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}AccountHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountId - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   field - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   newValue - (any)
#   oldValue - (any)
class AccountHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :field
  attr_accessor :isDeleted
  attr_accessor :newValue
  attr_accessor :oldValue

  def initialize(fieldsToNull = [], id = nil, account = nil, accountId = nil, createdBy = nil, createdById = nil, createdDate = nil, field = nil, isDeleted = nil, newValue = nil, oldValue = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountId = accountId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @field = field
    @isDeleted = isDeleted
    @newValue = newValue
    @oldValue = oldValue
  end
end

# {urn:sobject.enterprise.soap.sforce.com}AccountPartner
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountFrom - Account
#   accountFromId - (any)
#   accountTo - Account
#   accountToId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   isPrimary - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   opportunity - Opportunity
#   opportunityId - (any)
#   reversePartnerId - (any)
#   role - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class AccountPartner < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountFrom
  attr_accessor :accountFromId
  attr_accessor :accountTo
  attr_accessor :accountToId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :isPrimary
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :opportunity
  attr_accessor :opportunityId
  attr_accessor :reversePartnerId
  attr_accessor :role
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, accountFrom = nil, accountFromId = nil, accountTo = nil, accountToId = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, isPrimary = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, opportunity = nil, opportunityId = nil, reversePartnerId = nil, role = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountFrom = accountFrom
    @accountFromId = accountFromId
    @accountTo = accountTo
    @accountToId = accountToId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @isPrimary = isPrimary
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @opportunity = opportunity
    @opportunityId = opportunityId
    @reversePartnerId = reversePartnerId
    @role = role
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}AccountShare
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountAccessLevel - SOAP::SOAPString
#   accountId - (any)
#   caseAccessLevel - SOAP::SOAPString
#   contactAccessLevel - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   opportunityAccessLevel - SOAP::SOAPString
#   rowCause - SOAP::SOAPString
#   userOrGroupId - (any)
class AccountShare < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountAccessLevel
  attr_accessor :accountId
  attr_accessor :caseAccessLevel
  attr_accessor :contactAccessLevel
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :opportunityAccessLevel
  attr_accessor :rowCause
  attr_accessor :userOrGroupId

  def initialize(fieldsToNull = [], id = nil, account = nil, accountAccessLevel = nil, accountId = nil, caseAccessLevel = nil, contactAccessLevel = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, opportunityAccessLevel = nil, rowCause = nil, userOrGroupId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountAccessLevel = accountAccessLevel
    @accountId = accountId
    @caseAccessLevel = caseAccessLevel
    @contactAccessLevel = contactAccessLevel
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @opportunityAccessLevel = opportunityAccessLevel
    @rowCause = rowCause
    @userOrGroupId = userOrGroupId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ActivityHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountId - (any)
#   activityDate - SOAP::SOAPDate
#   activityType - SOAP::SOAPString
#   callDisposition - SOAP::SOAPString
#   callDurationInSeconds - SOAP::SOAPInt
#   callObject - SOAP::SOAPString
#   callType - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   durationInMinutes - SOAP::SOAPInt
#   isAllDayEvent - SOAP::SOAPBoolean
#   isClosed - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   isReminderSet - SOAP::SOAPBoolean
#   isTask - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   location - SOAP::SOAPString
#   owner - Name
#   ownerId - (any)
#   priority - SOAP::SOAPString
#   reminderDateTime - SOAP::SOAPDateTime
#   status - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   what - Name
#   whatId - (any)
#   who - Name
#   whoId - (any)
class ActivityHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountId
  attr_accessor :activityDate
  attr_accessor :activityType
  attr_accessor :callDisposition
  attr_accessor :callDurationInSeconds
  attr_accessor :callObject
  attr_accessor :callType
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :durationInMinutes
  attr_accessor :isAllDayEvent
  attr_accessor :isClosed
  attr_accessor :isDeleted
  attr_accessor :isReminderSet
  attr_accessor :isTask
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :location
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :priority
  attr_accessor :reminderDateTime
  attr_accessor :status
  attr_accessor :subject
  attr_accessor :systemModstamp
  attr_accessor :what
  attr_accessor :whatId
  attr_accessor :who
  attr_accessor :whoId

  def initialize(fieldsToNull = [], id = nil, account = nil, accountId = nil, activityDate = nil, activityType = nil, callDisposition = nil, callDurationInSeconds = nil, callObject = nil, callType = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, durationInMinutes = nil, isAllDayEvent = nil, isClosed = nil, isDeleted = nil, isReminderSet = nil, isTask = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, location = nil, owner = nil, ownerId = nil, priority = nil, reminderDateTime = nil, status = nil, subject = nil, systemModstamp = nil, what = nil, whatId = nil, who = nil, whoId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountId = accountId
    @activityDate = activityDate
    @activityType = activityType
    @callDisposition = callDisposition
    @callDurationInSeconds = callDurationInSeconds
    @callObject = callObject
    @callType = callType
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @durationInMinutes = durationInMinutes
    @isAllDayEvent = isAllDayEvent
    @isClosed = isClosed
    @isDeleted = isDeleted
    @isReminderSet = isReminderSet
    @isTask = isTask
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @location = location
    @owner = owner
    @ownerId = ownerId
    @priority = priority
    @reminderDateTime = reminderDateTime
    @status = status
    @subject = subject
    @systemModstamp = systemModstamp
    @what = what
    @whatId = whatId
    @who = who
    @whoId = whoId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}AdditionalNumber
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   callCenterId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class AdditionalNumber < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :callCenterId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :phone
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, callCenterId = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, phone = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @callCenterId = callCenterId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @phone = phone
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ApexClass
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   apiVersion - SOAP::SOAPDouble
#   body - SOAP::SOAPString
#   bodyCrc - SOAP::SOAPDouble
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isValid - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lengthWithoutComments - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   status - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class ApexClass < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :apiVersion
  attr_accessor :body
  attr_accessor :bodyCrc
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isValid
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lengthWithoutComments
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :status
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, apiVersion = nil, body = nil, bodyCrc = nil, createdBy = nil, createdById = nil, createdDate = nil, isValid = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lengthWithoutComments = nil, name = nil, namespacePrefix = nil, status = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @apiVersion = apiVersion
    @body = body
    @bodyCrc = bodyCrc
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isValid = isValid
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lengthWithoutComments = lengthWithoutComments
    @name = name
    @namespacePrefix = namespacePrefix
    @status = status
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ApexComponent
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   apiVersion - SOAP::SOAPDouble
#   controllerKey - SOAP::SOAPString
#   controllerType - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   markup - SOAP::SOAPString
#   masterLabel - SOAP::SOAPString
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class ApexComponent < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :apiVersion
  attr_accessor :controllerKey
  attr_accessor :controllerType
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :markup
  attr_accessor :masterLabel
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, apiVersion = nil, controllerKey = nil, controllerType = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, markup = nil, masterLabel = nil, name = nil, namespacePrefix = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @apiVersion = apiVersion
    @controllerKey = controllerKey
    @controllerType = controllerType
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @markup = markup
    @masterLabel = masterLabel
    @name = name
    @namespacePrefix = namespacePrefix
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ApexLog
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   application - SOAP::SOAPString
#   durationMilliseconds - SOAP::SOAPInt
#   lastModifiedDate - SOAP::SOAPDateTime
#   location - SOAP::SOAPString
#   logLength - SOAP::SOAPInt
#   logUser - Name
#   logUserId - (any)
#   operation - SOAP::SOAPString
#   request - SOAP::SOAPString
#   startTime - SOAP::SOAPDateTime
#   status - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class ApexLog < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :application
  attr_accessor :durationMilliseconds
  attr_accessor :lastModifiedDate
  attr_accessor :location
  attr_accessor :logLength
  attr_accessor :logUser
  attr_accessor :logUserId
  attr_accessor :operation
  attr_accessor :request
  attr_accessor :startTime
  attr_accessor :status
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, application = nil, durationMilliseconds = nil, lastModifiedDate = nil, location = nil, logLength = nil, logUser = nil, logUserId = nil, operation = nil, request = nil, startTime = nil, status = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @application = application
    @durationMilliseconds = durationMilliseconds
    @lastModifiedDate = lastModifiedDate
    @location = location
    @logLength = logLength
    @logUser = logUser
    @logUserId = logUserId
    @operation = operation
    @request = request
    @startTime = startTime
    @status = status
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ApexPage
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   apiVersion - SOAP::SOAPDouble
#   controllerKey - SOAP::SOAPString
#   controllerType - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   markup - SOAP::SOAPString
#   masterLabel - SOAP::SOAPString
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class ApexPage < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :apiVersion
  attr_accessor :controllerKey
  attr_accessor :controllerType
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :markup
  attr_accessor :masterLabel
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, apiVersion = nil, controllerKey = nil, controllerType = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, markup = nil, masterLabel = nil, name = nil, namespacePrefix = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @apiVersion = apiVersion
    @controllerKey = controllerKey
    @controllerType = controllerType
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @markup = markup
    @masterLabel = masterLabel
    @name = name
    @namespacePrefix = namespacePrefix
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ApexTrigger
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   apiVersion - SOAP::SOAPDouble
#   body - SOAP::SOAPString
#   bodyCrc - SOAP::SOAPDouble
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isValid - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lengthWithoutComments - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   status - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tableEnumOrId - SOAP::SOAPString
#   usageAfterDelete - SOAP::SOAPBoolean
#   usageAfterInsert - SOAP::SOAPBoolean
#   usageAfterUndelete - SOAP::SOAPBoolean
#   usageAfterUpdate - SOAP::SOAPBoolean
#   usageBeforeDelete - SOAP::SOAPBoolean
#   usageBeforeInsert - SOAP::SOAPBoolean
#   usageBeforeUpdate - SOAP::SOAPBoolean
#   usageIsBulk - SOAP::SOAPBoolean
class ApexTrigger < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :apiVersion
  attr_accessor :body
  attr_accessor :bodyCrc
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isValid
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lengthWithoutComments
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :status
  attr_accessor :systemModstamp
  attr_accessor :tableEnumOrId
  attr_accessor :usageAfterDelete
  attr_accessor :usageAfterInsert
  attr_accessor :usageAfterUndelete
  attr_accessor :usageAfterUpdate
  attr_accessor :usageBeforeDelete
  attr_accessor :usageBeforeInsert
  attr_accessor :usageBeforeUpdate
  attr_accessor :usageIsBulk

  def initialize(fieldsToNull = [], id = nil, apiVersion = nil, body = nil, bodyCrc = nil, createdBy = nil, createdById = nil, createdDate = nil, isValid = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lengthWithoutComments = nil, name = nil, namespacePrefix = nil, status = nil, systemModstamp = nil, tableEnumOrId = nil, usageAfterDelete = nil, usageAfterInsert = nil, usageAfterUndelete = nil, usageAfterUpdate = nil, usageBeforeDelete = nil, usageBeforeInsert = nil, usageBeforeUpdate = nil, usageIsBulk = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @apiVersion = apiVersion
    @body = body
    @bodyCrc = bodyCrc
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isValid = isValid
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lengthWithoutComments = lengthWithoutComments
    @name = name
    @namespacePrefix = namespacePrefix
    @status = status
    @systemModstamp = systemModstamp
    @tableEnumOrId = tableEnumOrId
    @usageAfterDelete = usageAfterDelete
    @usageAfterInsert = usageAfterInsert
    @usageAfterUndelete = usageAfterUndelete
    @usageAfterUpdate = usageAfterUpdate
    @usageBeforeDelete = usageBeforeDelete
    @usageBeforeInsert = usageBeforeInsert
    @usageBeforeUpdate = usageBeforeUpdate
    @usageIsBulk = usageIsBulk
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Approval
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   approveComment - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   owner - User
#   ownerId - (any)
#   parent - Contract
#   parentId - (any)
#   requestComment - SOAP::SOAPString
#   status - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class Approval < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :approveComment
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :requestComment
  attr_accessor :status
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, approveComment = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, owner = nil, ownerId = nil, parent = nil, parentId = nil, requestComment = nil, status = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @approveComment = approveComment
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @owner = owner
    @ownerId = ownerId
    @parent = parent
    @parentId = parentId
    @requestComment = requestComment
    @status = status
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Asset
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountId - (any)
#   activityHistories - QueryResult
#   attachments - QueryResult
#   cases - QueryResult
#   contact - Contact
#   contactId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   events - QueryResult
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   installDate - SOAP::SOAPDate
#   isCompetitorProduct - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   notes - QueryResult
#   notesAndAttachments - QueryResult
#   openActivities - QueryResult
#   price - SOAP::SOAPDouble
#   processInstances - QueryResult
#   processSteps - QueryResult
#   product2 - Product2
#   product2Id - (any)
#   purchaseDate - SOAP::SOAPDate
#   quantity - SOAP::SOAPDouble
#   serialNumber - SOAP::SOAPString
#   status - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tasks - QueryResult
#   usageEndDate - SOAP::SOAPDate
class Asset < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountId
  attr_accessor :activityHistories
  attr_accessor :attachments
  attr_accessor :cases
  attr_accessor :contact
  attr_accessor :contactId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :events
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :installDate
  attr_accessor :isCompetitorProduct
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :notes
  attr_accessor :notesAndAttachments
  attr_accessor :openActivities
  attr_accessor :price
  attr_accessor :processInstances
  attr_accessor :processSteps
  attr_accessor :product2
  attr_accessor :product2Id
  attr_accessor :purchaseDate
  attr_accessor :quantity
  attr_accessor :serialNumber
  attr_accessor :status
  attr_accessor :systemModstamp
  attr_accessor :tasks
  attr_accessor :usageEndDate

  def initialize(fieldsToNull = [], id = nil, account = nil, accountId = nil, activityHistories = nil, attachments = nil, cases = nil, contact = nil, contactId = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, events = nil, feedSubscriptionsForEntity = nil, feeds = nil, installDate = nil, isCompetitorProduct = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, notes = nil, notesAndAttachments = nil, openActivities = nil, price = nil, processInstances = nil, processSteps = nil, product2 = nil, product2Id = nil, purchaseDate = nil, quantity = nil, serialNumber = nil, status = nil, systemModstamp = nil, tasks = nil, usageEndDate = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountId = accountId
    @activityHistories = activityHistories
    @attachments = attachments
    @cases = cases
    @contact = contact
    @contactId = contactId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @events = events
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @installDate = installDate
    @isCompetitorProduct = isCompetitorProduct
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @notes = notes
    @notesAndAttachments = notesAndAttachments
    @openActivities = openActivities
    @price = price
    @processInstances = processInstances
    @processSteps = processSteps
    @product2 = product2
    @product2Id = product2Id
    @purchaseDate = purchaseDate
    @quantity = quantity
    @serialNumber = serialNumber
    @status = status
    @systemModstamp = systemModstamp
    @tasks = tasks
    @usageEndDate = usageEndDate
  end
end

# {urn:sobject.enterprise.soap.sforce.com}AssetFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Asset
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class AssetFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}AssignmentRule
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   active - SOAP::SOAPBoolean
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   sobjectType - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class AssignmentRule < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :active
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :sobjectType
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, active = nil, createdBy = nil, createdById = nil, createdDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, sobjectType = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @active = active
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @sobjectType = sobjectType
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}AsyncApexJob
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   apexClass - ApexClass
#   apexClassId - (any)
#   completedDate - SOAP::SOAPDateTime
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   extendedStatus - SOAP::SOAPString
#   jobItemsProcessed - SOAP::SOAPInt
#   jobType - SOAP::SOAPString
#   lastProcessed - SOAP::SOAPString
#   lastProcessedOffset - SOAP::SOAPInt
#   methodName - SOAP::SOAPString
#   numberOfErrors - SOAP::SOAPInt
#   parentJobId - (any)
#   status - SOAP::SOAPString
#   totalJobItems - SOAP::SOAPInt
class AsyncApexJob < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :apexClass
  attr_accessor :apexClassId
  attr_accessor :completedDate
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :extendedStatus
  attr_accessor :jobItemsProcessed
  attr_accessor :jobType
  attr_accessor :lastProcessed
  attr_accessor :lastProcessedOffset
  attr_accessor :methodName
  attr_accessor :numberOfErrors
  attr_accessor :parentJobId
  attr_accessor :status
  attr_accessor :totalJobItems

  def initialize(fieldsToNull = [], id = nil, apexClass = nil, apexClassId = nil, completedDate = nil, createdBy = nil, createdById = nil, createdDate = nil, extendedStatus = nil, jobItemsProcessed = nil, jobType = nil, lastProcessed = nil, lastProcessedOffset = nil, methodName = nil, numberOfErrors = nil, parentJobId = nil, status = nil, totalJobItems = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @apexClass = apexClass
    @apexClassId = apexClassId
    @completedDate = completedDate
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @extendedStatus = extendedStatus
    @jobItemsProcessed = jobItemsProcessed
    @jobType = jobType
    @lastProcessed = lastProcessed
    @lastProcessedOffset = lastProcessedOffset
    @methodName = methodName
    @numberOfErrors = numberOfErrors
    @parentJobId = parentJobId
    @status = status
    @totalJobItems = totalJobItems
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Attachment
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   body - SOAP::SOAPBase64
#   bodyLength - SOAP::SOAPInt
#   contentType - SOAP::SOAPString
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   isPrivate - SOAP::SOAPBoolean
#   lastModifiedBy - Name
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   owner - Name
#   ownerId - (any)
#   parent - Name
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
class Attachment < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :body
  attr_accessor :bodyLength
  attr_accessor :contentType
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :isDeleted
  attr_accessor :isPrivate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, body = nil, bodyLength = nil, contentType = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, isDeleted = nil, isPrivate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, owner = nil, ownerId = nil, parent = nil, parentId = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @body = body
    @bodyLength = bodyLength
    @contentType = contentType
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @isDeleted = isDeleted
    @isPrivate = isPrivate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @owner = owner
    @ownerId = ownerId
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}BrandTemplate
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   developerName - SOAP::SOAPString
#   isActive - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   value - SOAP::SOAPString
class BrandTemplate < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :developerName
  attr_accessor :isActive
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :systemModstamp
  attr_accessor :value

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, developerName = nil, isActive = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, namespacePrefix = nil, systemModstamp = nil, value = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @developerName = developerName
    @isActive = isActive
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @namespacePrefix = namespacePrefix
    @systemModstamp = systemModstamp
    @value = value
  end
end

# {urn:sobject.enterprise.soap.sforce.com}BusinessHours
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   cases - QueryResult
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   fridayEndTime - SOAP::SOAPTime
#   fridayStartTime - SOAP::SOAPTime
#   isActive - SOAP::SOAPBoolean
#   isDefault - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   mondayEndTime - SOAP::SOAPTime
#   mondayStartTime - SOAP::SOAPTime
#   name - SOAP::SOAPString
#   saturdayEndTime - SOAP::SOAPTime
#   saturdayStartTime - SOAP::SOAPTime
#   sundayEndTime - SOAP::SOAPTime
#   sundayStartTime - SOAP::SOAPTime
#   systemModstamp - SOAP::SOAPDateTime
#   thursdayEndTime - SOAP::SOAPTime
#   thursdayStartTime - SOAP::SOAPTime
#   timeZoneSidKey - SOAP::SOAPString
#   tuesdayEndTime - SOAP::SOAPTime
#   tuesdayStartTime - SOAP::SOAPTime
#   wednesdayEndTime - SOAP::SOAPTime
#   wednesdayStartTime - SOAP::SOAPTime
class BusinessHours < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :cases
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :fridayEndTime
  attr_accessor :fridayStartTime
  attr_accessor :isActive
  attr_accessor :isDefault
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :mondayEndTime
  attr_accessor :mondayStartTime
  attr_accessor :name
  attr_accessor :saturdayEndTime
  attr_accessor :saturdayStartTime
  attr_accessor :sundayEndTime
  attr_accessor :sundayStartTime
  attr_accessor :systemModstamp
  attr_accessor :thursdayEndTime
  attr_accessor :thursdayStartTime
  attr_accessor :timeZoneSidKey
  attr_accessor :tuesdayEndTime
  attr_accessor :tuesdayStartTime
  attr_accessor :wednesdayEndTime
  attr_accessor :wednesdayStartTime

  def initialize(fieldsToNull = [], id = nil, cases = nil, createdBy = nil, createdById = nil, createdDate = nil, fridayEndTime = nil, fridayStartTime = nil, isActive = nil, isDefault = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, mondayEndTime = nil, mondayStartTime = nil, name = nil, saturdayEndTime = nil, saturdayStartTime = nil, sundayEndTime = nil, sundayStartTime = nil, systemModstamp = nil, thursdayEndTime = nil, thursdayStartTime = nil, timeZoneSidKey = nil, tuesdayEndTime = nil, tuesdayStartTime = nil, wednesdayEndTime = nil, wednesdayStartTime = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @cases = cases
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @fridayEndTime = fridayEndTime
    @fridayStartTime = fridayStartTime
    @isActive = isActive
    @isDefault = isDefault
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @mondayEndTime = mondayEndTime
    @mondayStartTime = mondayStartTime
    @name = name
    @saturdayEndTime = saturdayEndTime
    @saturdayStartTime = saturdayStartTime
    @sundayEndTime = sundayEndTime
    @sundayStartTime = sundayStartTime
    @systemModstamp = systemModstamp
    @thursdayEndTime = thursdayEndTime
    @thursdayStartTime = thursdayStartTime
    @timeZoneSidKey = timeZoneSidKey
    @tuesdayEndTime = tuesdayEndTime
    @tuesdayStartTime = tuesdayStartTime
    @wednesdayEndTime = wednesdayEndTime
    @wednesdayStartTime = wednesdayStartTime
  end
end

# {urn:sobject.enterprise.soap.sforce.com}BusinessProcess
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   isActive - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tableEnumOrId - SOAP::SOAPString
class BusinessProcess < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :isActive
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :systemModstamp
  attr_accessor :tableEnumOrId

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, isActive = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, namespacePrefix = nil, systemModstamp = nil, tableEnumOrId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @isActive = isActive
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @namespacePrefix = namespacePrefix
    @systemModstamp = systemModstamp
    @tableEnumOrId = tableEnumOrId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CallCenter
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   internalName - SOAP::SOAPString
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   version - SOAP::SOAPDouble
class CallCenter < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :internalName
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :systemModstamp
  attr_accessor :version

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, internalName = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, systemModstamp = nil, version = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @internalName = internalName
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @systemModstamp = systemModstamp
    @version = version
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Campaign
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   activityHistories - QueryResult
#   actualCost - SOAP::SOAPDouble
#   amountAllOpportunities - SOAP::SOAPDouble
#   amountWonOpportunities - SOAP::SOAPDouble
#   attachments - QueryResult
#   budgetedCost - SOAP::SOAPDouble
#   campaignMemberRecordTypeId - (any)
#   campaignMembers - QueryResult
#   childCampaigns - QueryResult
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   endDate - SOAP::SOAPDate
#   events - QueryResult
#   expectedResponse - SOAP::SOAPDouble
#   expectedRevenue - SOAP::SOAPDouble
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   isActive - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   lastActivityDate - SOAP::SOAPDate
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   leads - QueryResult
#   name - SOAP::SOAPString
#   numberOfContacts - SOAP::SOAPInt
#   numberOfConvertedLeads - SOAP::SOAPInt
#   numberOfLeads - SOAP::SOAPInt
#   numberOfOpportunities - SOAP::SOAPInt
#   numberOfResponses - SOAP::SOAPInt
#   numberOfWonOpportunities - SOAP::SOAPInt
#   numberSent - SOAP::SOAPDouble
#   openActivities - QueryResult
#   opportunities - QueryResult
#   owner - User
#   ownerId - (any)
#   parent - Campaign
#   parentId - (any)
#   processInstances - QueryResult
#   processSteps - QueryResult
#   shares - QueryResult
#   startDate - SOAP::SOAPDate
#   status - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tasks - QueryResult
#   type - SOAP::SOAPString
class Campaign < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :activityHistories
  attr_accessor :actualCost
  attr_accessor :amountAllOpportunities
  attr_accessor :amountWonOpportunities
  attr_accessor :attachments
  attr_accessor :budgetedCost
  attr_accessor :campaignMemberRecordTypeId
  attr_accessor :campaignMembers
  attr_accessor :childCampaigns
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :endDate
  attr_accessor :events
  attr_accessor :expectedResponse
  attr_accessor :expectedRevenue
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :isActive
  attr_accessor :isDeleted
  attr_accessor :lastActivityDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :leads
  attr_accessor :name
  attr_accessor :numberOfContacts
  attr_accessor :numberOfConvertedLeads
  attr_accessor :numberOfLeads
  attr_accessor :numberOfOpportunities
  attr_accessor :numberOfResponses
  attr_accessor :numberOfWonOpportunities
  attr_accessor :numberSent
  attr_accessor :openActivities
  attr_accessor :opportunities
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :processInstances
  attr_accessor :processSteps
  attr_accessor :shares
  attr_accessor :startDate
  attr_accessor :status
  attr_accessor :systemModstamp
  attr_accessor :tasks
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, activityHistories = nil, actualCost = nil, amountAllOpportunities = nil, amountWonOpportunities = nil, attachments = nil, budgetedCost = nil, campaignMemberRecordTypeId = nil, campaignMembers = nil, childCampaigns = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, endDate = nil, events = nil, expectedResponse = nil, expectedRevenue = nil, feedSubscriptionsForEntity = nil, feeds = nil, isActive = nil, isDeleted = nil, lastActivityDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, leads = nil, name = nil, numberOfContacts = nil, numberOfConvertedLeads = nil, numberOfLeads = nil, numberOfOpportunities = nil, numberOfResponses = nil, numberOfWonOpportunities = nil, numberSent = nil, openActivities = nil, opportunities = nil, owner = nil, ownerId = nil, parent = nil, parentId = nil, processInstances = nil, processSteps = nil, shares = nil, startDate = nil, status = nil, systemModstamp = nil, tasks = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @activityHistories = activityHistories
    @actualCost = actualCost
    @amountAllOpportunities = amountAllOpportunities
    @amountWonOpportunities = amountWonOpportunities
    @attachments = attachments
    @budgetedCost = budgetedCost
    @campaignMemberRecordTypeId = campaignMemberRecordTypeId
    @campaignMembers = campaignMembers
    @childCampaigns = childCampaigns
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @endDate = endDate
    @events = events
    @expectedResponse = expectedResponse
    @expectedRevenue = expectedRevenue
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @isActive = isActive
    @isDeleted = isDeleted
    @lastActivityDate = lastActivityDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @leads = leads
    @name = name
    @numberOfContacts = numberOfContacts
    @numberOfConvertedLeads = numberOfConvertedLeads
    @numberOfLeads = numberOfLeads
    @numberOfOpportunities = numberOfOpportunities
    @numberOfResponses = numberOfResponses
    @numberOfWonOpportunities = numberOfWonOpportunities
    @numberSent = numberSent
    @openActivities = openActivities
    @opportunities = opportunities
    @owner = owner
    @ownerId = ownerId
    @parent = parent
    @parentId = parentId
    @processInstances = processInstances
    @processSteps = processSteps
    @shares = shares
    @startDate = startDate
    @status = status
    @systemModstamp = systemModstamp
    @tasks = tasks
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CampaignFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Campaign
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class CampaignFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CampaignMember
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   campaign - Campaign
#   campaignId - (any)
#   contact - Contact
#   contactId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   firstRespondedDate - SOAP::SOAPDate
#   hasResponded - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lead - Lead
#   leadId - (any)
#   status - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class CampaignMember < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :campaign
  attr_accessor :campaignId
  attr_accessor :contact
  attr_accessor :contactId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :firstRespondedDate
  attr_accessor :hasResponded
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lead
  attr_accessor :leadId
  attr_accessor :status
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, campaign = nil, campaignId = nil, contact = nil, contactId = nil, createdBy = nil, createdById = nil, createdDate = nil, firstRespondedDate = nil, hasResponded = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lead = nil, leadId = nil, status = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @campaign = campaign
    @campaignId = campaignId
    @contact = contact
    @contactId = contactId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @firstRespondedDate = firstRespondedDate
    @hasResponded = hasResponded
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lead = lead
    @leadId = leadId
    @status = status
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CampaignMemberStatus
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   campaignId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   hasResponded - SOAP::SOAPBoolean
#   isDefault - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   label - SOAP::SOAPString
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   sortOrder - SOAP::SOAPInt
#   systemModstamp - SOAP::SOAPDateTime
class CampaignMemberStatus < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :campaignId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :hasResponded
  attr_accessor :isDefault
  attr_accessor :isDeleted
  attr_accessor :label
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :sortOrder
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, campaignId = nil, createdBy = nil, createdById = nil, createdDate = nil, hasResponded = nil, isDefault = nil, isDeleted = nil, label = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, sortOrder = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @campaignId = campaignId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @hasResponded = hasResponded
    @isDefault = isDefault
    @isDeleted = isDeleted
    @label = label
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @sortOrder = sortOrder
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CampaignShare
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   campaign - Campaign
#   campaignAccessLevel - SOAP::SOAPString
#   campaignId - (any)
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   rowCause - SOAP::SOAPString
#   userOrGroupId - (any)
class CampaignShare < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :campaign
  attr_accessor :campaignAccessLevel
  attr_accessor :campaignId
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :rowCause
  attr_accessor :userOrGroupId

  def initialize(fieldsToNull = [], id = nil, campaign = nil, campaignAccessLevel = nil, campaignId = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, rowCause = nil, userOrGroupId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @campaign = campaign
    @campaignAccessLevel = campaignAccessLevel
    @campaignId = campaignId
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @rowCause = rowCause
    @userOrGroupId = userOrGroupId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Case
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountId - (any)
#   activityHistories - QueryResult
#   asset - Asset
#   assetId - (any)
#   attachments - QueryResult
#   caseComments - QueryResult
#   caseContactRoles - QueryResult
#   caseNumber - SOAP::SOAPString
#   caseSolutions - QueryResult
#   cases - QueryResult
#   closedDate - SOAP::SOAPDateTime
#   contact - Contact
#   contactId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   engineeringReqNumber__c - SOAP::SOAPString
#   events - QueryResult
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   hasCommentsUnreadByOwner - SOAP::SOAPBoolean
#   hasSelfServiceComments - SOAP::SOAPBoolean
#   histories - QueryResult
#   isClosed - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   isEscalated - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   openActivities - QueryResult
#   origin - SOAP::SOAPString
#   owner - Name
#   ownerId - (any)
#   parent - Case
#   parentId - (any)
#   potentialLiability__c - SOAP::SOAPString
#   priority - SOAP::SOAPString
#   processInstances - QueryResult
#   processSteps - QueryResult
#   product__c - SOAP::SOAPString
#   reason - SOAP::SOAPString
#   sLAViolation__c - SOAP::SOAPString
#   shares - QueryResult
#   solutions - QueryResult
#   status - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   suppliedCompany - SOAP::SOAPString
#   suppliedEmail - SOAP::SOAPString
#   suppliedName - SOAP::SOAPString
#   suppliedPhone - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tasks - QueryResult
#   teamMembers - QueryResult
#   teamTemplateRecords - QueryResult
#   type - SOAP::SOAPString
class Case < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountId
  attr_accessor :activityHistories
  attr_accessor :asset
  attr_accessor :assetId
  attr_accessor :attachments
  attr_accessor :caseComments
  attr_accessor :caseContactRoles
  attr_accessor :caseNumber
  attr_accessor :caseSolutions
  attr_accessor :cases
  attr_accessor :closedDate
  attr_accessor :contact
  attr_accessor :contactId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :engineeringReqNumber__c
  attr_accessor :events
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :hasCommentsUnreadByOwner
  attr_accessor :hasSelfServiceComments
  attr_accessor :histories
  attr_accessor :isClosed
  attr_accessor :isDeleted
  attr_accessor :isEscalated
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :openActivities
  attr_accessor :origin
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :potentialLiability__c
  attr_accessor :priority
  attr_accessor :processInstances
  attr_accessor :processSteps
  attr_accessor :product__c
  attr_accessor :reason
  attr_accessor :sLAViolation__c
  attr_accessor :shares
  attr_accessor :solutions
  attr_accessor :status
  attr_accessor :subject
  attr_accessor :suppliedCompany
  attr_accessor :suppliedEmail
  attr_accessor :suppliedName
  attr_accessor :suppliedPhone
  attr_accessor :systemModstamp
  attr_accessor :tasks
  attr_accessor :teamMembers
  attr_accessor :teamTemplateRecords
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, account = nil, accountId = nil, activityHistories = nil, asset = nil, assetId = nil, attachments = nil, caseComments = nil, caseContactRoles = nil, caseNumber = nil, caseSolutions = nil, cases = nil, closedDate = nil, contact = nil, contactId = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, engineeringReqNumber__c = nil, events = nil, feedSubscriptionsForEntity = nil, feeds = nil, hasCommentsUnreadByOwner = nil, hasSelfServiceComments = nil, histories = nil, isClosed = nil, isDeleted = nil, isEscalated = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, openActivities = nil, origin = nil, owner = nil, ownerId = nil, parent = nil, parentId = nil, potentialLiability__c = nil, priority = nil, processInstances = nil, processSteps = nil, product__c = nil, reason = nil, sLAViolation__c = nil, shares = nil, solutions = nil, status = nil, subject = nil, suppliedCompany = nil, suppliedEmail = nil, suppliedName = nil, suppliedPhone = nil, systemModstamp = nil, tasks = nil, teamMembers = nil, teamTemplateRecords = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountId = accountId
    @activityHistories = activityHistories
    @asset = asset
    @assetId = assetId
    @attachments = attachments
    @caseComments = caseComments
    @caseContactRoles = caseContactRoles
    @caseNumber = caseNumber
    @caseSolutions = caseSolutions
    @cases = cases
    @closedDate = closedDate
    @contact = contact
    @contactId = contactId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @engineeringReqNumber__c = engineeringReqNumber__c
    @events = events
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @hasCommentsUnreadByOwner = hasCommentsUnreadByOwner
    @hasSelfServiceComments = hasSelfServiceComments
    @histories = histories
    @isClosed = isClosed
    @isDeleted = isDeleted
    @isEscalated = isEscalated
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @openActivities = openActivities
    @origin = origin
    @owner = owner
    @ownerId = ownerId
    @parent = parent
    @parentId = parentId
    @potentialLiability__c = potentialLiability__c
    @priority = priority
    @processInstances = processInstances
    @processSteps = processSteps
    @product__c = product__c
    @reason = reason
    @sLAViolation__c = sLAViolation__c
    @shares = shares
    @solutions = solutions
    @status = status
    @subject = subject
    @suppliedCompany = suppliedCompany
    @suppliedEmail = suppliedEmail
    @suppliedName = suppliedName
    @suppliedPhone = suppliedPhone
    @systemModstamp = systemModstamp
    @tasks = tasks
    @teamMembers = teamMembers
    @teamTemplateRecords = teamTemplateRecords
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseComment
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   commentBody - SOAP::SOAPString
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   isPublished - SOAP::SOAPBoolean
#   lastModifiedBy - Name
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   parent - Case
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
class CaseComment < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :commentBody
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :isPublished
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, commentBody = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, isPublished = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, parent = nil, parentId = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @commentBody = commentBody
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @isPublished = isPublished
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseContactRole
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   cases - Case
#   casesId - (any)
#   contact - Contact
#   contactId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   role - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class CaseContactRole < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :cases
  attr_accessor :casesId
  attr_accessor :contact
  attr_accessor :contactId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :role
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, cases = nil, casesId = nil, contact = nil, contactId = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, role = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @cases = cases
    @casesId = casesId
    @contact = contact
    @contactId = contactId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @role = role
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Case
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class CaseFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   m_case - Case
#   caseId - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   field - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   newValue - (any)
#   oldValue - (any)
class CaseHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :caseId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :field
  attr_accessor :isDeleted
  attr_accessor :newValue
  attr_accessor :oldValue

  def m_case
    @v_case
  end

  def m_case=(value)
    @v_case = value
  end

  def initialize(fieldsToNull = [], id = nil, v_case = nil, caseId = nil, createdBy = nil, createdById = nil, createdDate = nil, field = nil, isDeleted = nil, newValue = nil, oldValue = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @v_case = v_case
    @caseId = caseId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @field = field
    @isDeleted = isDeleted
    @newValue = newValue
    @oldValue = oldValue
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseShare
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   m_case - Case
#   caseAccessLevel - SOAP::SOAPString
#   caseId - (any)
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   rowCause - SOAP::SOAPString
#   userOrGroupId - (any)
class CaseShare < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :caseAccessLevel
  attr_accessor :caseId
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :rowCause
  attr_accessor :userOrGroupId

  def m_case
    @v_case
  end

  def m_case=(value)
    @v_case = value
  end

  def initialize(fieldsToNull = [], id = nil, v_case = nil, caseAccessLevel = nil, caseId = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, rowCause = nil, userOrGroupId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @v_case = v_case
    @caseAccessLevel = caseAccessLevel
    @caseId = caseId
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @rowCause = rowCause
    @userOrGroupId = userOrGroupId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseSolution
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   m_case - Case
#   caseId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   solution - Solution
#   solutionId - (any)
#   systemModstamp - SOAP::SOAPDateTime
class CaseSolution < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :caseId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :solution
  attr_accessor :solutionId
  attr_accessor :systemModstamp

  def m_case
    @v_case
  end

  def m_case=(value)
    @v_case = value
  end

  def initialize(fieldsToNull = [], id = nil, v_case = nil, caseId = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, solution = nil, solutionId = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @v_case = v_case
    @caseId = caseId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @solution = solution
    @solutionId = solutionId
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseStatus
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isClosed - SOAP::SOAPBoolean
#   isDefault - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   masterLabel - SOAP::SOAPString
#   sortOrder - SOAP::SOAPInt
#   systemModstamp - SOAP::SOAPDateTime
class CaseStatus < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isClosed
  attr_accessor :isDefault
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :masterLabel
  attr_accessor :sortOrder
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, isClosed = nil, isDefault = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, masterLabel = nil, sortOrder = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isClosed = isClosed
    @isDefault = isDefault
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @masterLabel = masterLabel
    @sortOrder = sortOrder
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseTeamMember
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   memberId - (any)
#   parent - Case
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   teamRoleId - (any)
#   teamTemplateMemberId - (any)
class CaseTeamMember < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :memberId
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :teamRoleId
  attr_accessor :teamTemplateMemberId

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, memberId = nil, parent = nil, parentId = nil, systemModstamp = nil, teamRoleId = nil, teamTemplateMemberId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @memberId = memberId
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @teamRoleId = teamRoleId
    @teamTemplateMemberId = teamTemplateMemberId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseTeamRole
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accessLevel - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   preferencesVisibleInCSP - SOAP::SOAPBoolean
#   systemModstamp - SOAP::SOAPDateTime
class CaseTeamRole < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accessLevel
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :preferencesVisibleInCSP
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, accessLevel = nil, createdBy = nil, createdById = nil, createdDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, preferencesVisibleInCSP = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accessLevel = accessLevel
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @preferencesVisibleInCSP = preferencesVisibleInCSP
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseTeamTemplate
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class CaseTeamTemplate < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseTeamTemplateMember
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   memberId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   teamRoleId - (any)
#   teamTemplateId - (any)
class CaseTeamTemplateMember < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :memberId
  attr_accessor :systemModstamp
  attr_accessor :teamRoleId
  attr_accessor :teamTemplateId

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, memberId = nil, systemModstamp = nil, teamRoleId = nil, teamTemplateId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @memberId = memberId
    @systemModstamp = systemModstamp
    @teamRoleId = teamRoleId
    @teamTemplateId = teamTemplateId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CaseTeamTemplateRecord
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   parent - Case
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   teamTemplateId - (any)
class CaseTeamTemplateRecord < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :teamTemplateId

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, parent = nil, parentId = nil, systemModstamp = nil, teamTemplateId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @teamTemplateId = teamTemplateId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CategoryData
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   categoryNodeId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   relatedSobjectId - (any)
#   systemModstamp - SOAP::SOAPDateTime
class CategoryData < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :categoryNodeId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :relatedSobjectId
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, categoryNodeId = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, relatedSobjectId = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @categoryNodeId = categoryNodeId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @relatedSobjectId = relatedSobjectId
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CategoryNode
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   masterLabel - SOAP::SOAPString
#   parentId - (any)
#   sortOrder - SOAP::SOAPInt
#   sortStyle - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class CategoryNode < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :masterLabel
  attr_accessor :parentId
  attr_accessor :sortOrder
  attr_accessor :sortStyle
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, masterLabel = nil, parentId = nil, sortOrder = nil, sortStyle = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @masterLabel = masterLabel
    @parentId = parentId
    @sortOrder = sortOrder
    @sortStyle = sortStyle
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CollaborationGroup
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   collaborationType - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   fullPhotoUrl - SOAP::SOAPString
#   groupMembers - QueryResult
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   memberCount - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   owner - User
#   ownerId - (any)
#   smallPhotoUrl - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class CollaborationGroup < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :collaborationType
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :fullPhotoUrl
  attr_accessor :groupMembers
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :memberCount
  attr_accessor :name
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :smallPhotoUrl
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, collaborationType = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, feedSubscriptionsForEntity = nil, feeds = nil, fullPhotoUrl = nil, groupMembers = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, memberCount = nil, name = nil, owner = nil, ownerId = nil, smallPhotoUrl = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @collaborationType = collaborationType
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @fullPhotoUrl = fullPhotoUrl
    @groupMembers = groupMembers
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @memberCount = memberCount
    @name = name
    @owner = owner
    @ownerId = ownerId
    @smallPhotoUrl = smallPhotoUrl
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CollaborationGroupFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - CollaborationGroup
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class CollaborationGroupFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CollaborationGroupMember
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   collaborationGroup - CollaborationGroup
#   collaborationGroupId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   memberId - (any)
#   notificationFrequency - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class CollaborationGroupMember < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :collaborationGroup
  attr_accessor :collaborationGroupId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :memberId
  attr_accessor :notificationFrequency
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, collaborationGroup = nil, collaborationGroupId = nil, createdBy = nil, createdById = nil, createdDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, memberId = nil, notificationFrequency = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @collaborationGroup = collaborationGroup
    @collaborationGroupId = collaborationGroupId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @memberId = memberId
    @notificationFrequency = notificationFrequency
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CollaborationInvitation
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   invitedUserEmail - SOAP::SOAPString
#   invitedUserEmailNormalized - SOAP::SOAPString
#   inviterId - (any)
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   optionalMessage - SOAP::SOAPString
#   parentId - (any)
#   sharedEntityId - (any)
#   status - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class CollaborationInvitation < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :invitedUserEmail
  attr_accessor :invitedUserEmailNormalized
  attr_accessor :inviterId
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :optionalMessage
  attr_accessor :parentId
  attr_accessor :sharedEntityId
  attr_accessor :status
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, invitedUserEmail = nil, invitedUserEmailNormalized = nil, inviterId = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, optionalMessage = nil, parentId = nil, sharedEntityId = nil, status = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @invitedUserEmail = invitedUserEmail
    @invitedUserEmailNormalized = invitedUserEmailNormalized
    @inviterId = inviterId
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @optionalMessage = optionalMessage
    @parentId = parentId
    @sharedEntityId = sharedEntityId
    @status = status
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Community
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   isActive - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class Community < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :isActive
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, isActive = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @isActive = isActive
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Contact
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountContactRoles - QueryResult
#   accountId - (any)
#   activityHistories - QueryResult
#   assets - QueryResult
#   assistantName - SOAP::SOAPString
#   assistantPhone - SOAP::SOAPString
#   attachments - QueryResult
#   birthdate - SOAP::SOAPDate
#   campaignMembers - QueryResult
#   caseContactRoles - QueryResult
#   cases - QueryResult
#   contractContactRoles - QueryResult
#   contractsSigned - QueryResult
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   department - SOAP::SOAPString
#   description - SOAP::SOAPString
#   email - SOAP::SOAPString
#   emailBouncedDate - SOAP::SOAPDateTime
#   emailBouncedReason - SOAP::SOAPString
#   emailStatuses - QueryResult
#   events - QueryResult
#   fax - SOAP::SOAPString
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   firstName - SOAP::SOAPString
#   histories - QueryResult
#   homePhone - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   languages__c - SOAP::SOAPString
#   lastActivityDate - SOAP::SOAPDate
#   lastCURequestDate - SOAP::SOAPDateTime
#   lastCUUpdateDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lastName - SOAP::SOAPString
#   leadSource - SOAP::SOAPString
#   level__c - SOAP::SOAPString
#   mailingCity - SOAP::SOAPString
#   mailingCountry - SOAP::SOAPString
#   mailingPostalCode - SOAP::SOAPString
#   mailingState - SOAP::SOAPString
#   mailingStreet - SOAP::SOAPString
#   masterRecord - Contact
#   masterRecordId - (any)
#   mobilePhone - SOAP::SOAPString
#   name - SOAP::SOAPString
#   notes - QueryResult
#   notesAndAttachments - QueryResult
#   openActivities - QueryResult
#   opportunities - QueryResult
#   opportunityContactRoles - QueryResult
#   otherCity - SOAP::SOAPString
#   otherCountry - SOAP::SOAPString
#   otherPhone - SOAP::SOAPString
#   otherPostalCode - SOAP::SOAPString
#   otherState - SOAP::SOAPString
#   otherStreet - SOAP::SOAPString
#   owner - User
#   ownerId - (any)
#   phone - SOAP::SOAPString
#   processInstances - QueryResult
#   processSteps - QueryResult
#   reportsTo - Contact
#   reportsToId - (any)
#   salutation - SOAP::SOAPString
#   shares - QueryResult
#   systemModstamp - SOAP::SOAPDateTime
#   tasks - QueryResult
#   title - SOAP::SOAPString
class Contact < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountContactRoles
  attr_accessor :accountId
  attr_accessor :activityHistories
  attr_accessor :assets
  attr_accessor :assistantName
  attr_accessor :assistantPhone
  attr_accessor :attachments
  attr_accessor :birthdate
  attr_accessor :campaignMembers
  attr_accessor :caseContactRoles
  attr_accessor :cases
  attr_accessor :contractContactRoles
  attr_accessor :contractsSigned
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :department
  attr_accessor :description
  attr_accessor :email
  attr_accessor :emailBouncedDate
  attr_accessor :emailBouncedReason
  attr_accessor :emailStatuses
  attr_accessor :events
  attr_accessor :fax
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :firstName
  attr_accessor :histories
  attr_accessor :homePhone
  attr_accessor :isDeleted
  attr_accessor :languages__c
  attr_accessor :lastActivityDate
  attr_accessor :lastCURequestDate
  attr_accessor :lastCUUpdateDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lastName
  attr_accessor :leadSource
  attr_accessor :level__c
  attr_accessor :mailingCity
  attr_accessor :mailingCountry
  attr_accessor :mailingPostalCode
  attr_accessor :mailingState
  attr_accessor :mailingStreet
  attr_accessor :masterRecord
  attr_accessor :masterRecordId
  attr_accessor :mobilePhone
  attr_accessor :name
  attr_accessor :notes
  attr_accessor :notesAndAttachments
  attr_accessor :openActivities
  attr_accessor :opportunities
  attr_accessor :opportunityContactRoles
  attr_accessor :otherCity
  attr_accessor :otherCountry
  attr_accessor :otherPhone
  attr_accessor :otherPostalCode
  attr_accessor :otherState
  attr_accessor :otherStreet
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :phone
  attr_accessor :processInstances
  attr_accessor :processSteps
  attr_accessor :reportsTo
  attr_accessor :reportsToId
  attr_accessor :salutation
  attr_accessor :shares
  attr_accessor :systemModstamp
  attr_accessor :tasks
  attr_accessor :title

  def initialize(fieldsToNull = [], id = nil, account = nil, accountContactRoles = nil, accountId = nil, activityHistories = nil, assets = nil, assistantName = nil, assistantPhone = nil, attachments = nil, birthdate = nil, campaignMembers = nil, caseContactRoles = nil, cases = nil, contractContactRoles = nil, contractsSigned = nil, createdBy = nil, createdById = nil, createdDate = nil, department = nil, description = nil, email = nil, emailBouncedDate = nil, emailBouncedReason = nil, emailStatuses = nil, events = nil, fax = nil, feedSubscriptionsForEntity = nil, feeds = nil, firstName = nil, histories = nil, homePhone = nil, isDeleted = nil, languages__c = nil, lastActivityDate = nil, lastCURequestDate = nil, lastCUUpdateDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lastName = nil, leadSource = nil, level__c = nil, mailingCity = nil, mailingCountry = nil, mailingPostalCode = nil, mailingState = nil, mailingStreet = nil, masterRecord = nil, masterRecordId = nil, mobilePhone = nil, name = nil, notes = nil, notesAndAttachments = nil, openActivities = nil, opportunities = nil, opportunityContactRoles = nil, otherCity = nil, otherCountry = nil, otherPhone = nil, otherPostalCode = nil, otherState = nil, otherStreet = nil, owner = nil, ownerId = nil, phone = nil, processInstances = nil, processSteps = nil, reportsTo = nil, reportsToId = nil, salutation = nil, shares = nil, systemModstamp = nil, tasks = nil, title = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountContactRoles = accountContactRoles
    @accountId = accountId
    @activityHistories = activityHistories
    @assets = assets
    @assistantName = assistantName
    @assistantPhone = assistantPhone
    @attachments = attachments
    @birthdate = birthdate
    @campaignMembers = campaignMembers
    @caseContactRoles = caseContactRoles
    @cases = cases
    @contractContactRoles = contractContactRoles
    @contractsSigned = contractsSigned
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @department = department
    @description = description
    @email = email
    @emailBouncedDate = emailBouncedDate
    @emailBouncedReason = emailBouncedReason
    @emailStatuses = emailStatuses
    @events = events
    @fax = fax
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @firstName = firstName
    @histories = histories
    @homePhone = homePhone
    @isDeleted = isDeleted
    @languages__c = languages__c
    @lastActivityDate = lastActivityDate
    @lastCURequestDate = lastCURequestDate
    @lastCUUpdateDate = lastCUUpdateDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lastName = lastName
    @leadSource = leadSource
    @level__c = level__c
    @mailingCity = mailingCity
    @mailingCountry = mailingCountry
    @mailingPostalCode = mailingPostalCode
    @mailingState = mailingState
    @mailingStreet = mailingStreet
    @masterRecord = masterRecord
    @masterRecordId = masterRecordId
    @mobilePhone = mobilePhone
    @name = name
    @notes = notes
    @notesAndAttachments = notesAndAttachments
    @openActivities = openActivities
    @opportunities = opportunities
    @opportunityContactRoles = opportunityContactRoles
    @otherCity = otherCity
    @otherCountry = otherCountry
    @otherPhone = otherPhone
    @otherPostalCode = otherPostalCode
    @otherState = otherState
    @otherStreet = otherStreet
    @owner = owner
    @ownerId = ownerId
    @phone = phone
    @processInstances = processInstances
    @processSteps = processSteps
    @reportsTo = reportsTo
    @reportsToId = reportsToId
    @salutation = salutation
    @shares = shares
    @systemModstamp = systemModstamp
    @tasks = tasks
    @title = title
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContactFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Contact
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class ContactFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContactHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   contact - Contact
#   contactId - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   field - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   newValue - (any)
#   oldValue - (any)
class ContactHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :contact
  attr_accessor :contactId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :field
  attr_accessor :isDeleted
  attr_accessor :newValue
  attr_accessor :oldValue

  def initialize(fieldsToNull = [], id = nil, contact = nil, contactId = nil, createdBy = nil, createdById = nil, createdDate = nil, field = nil, isDeleted = nil, newValue = nil, oldValue = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @contact = contact
    @contactId = contactId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @field = field
    @isDeleted = isDeleted
    @newValue = newValue
    @oldValue = oldValue
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContactShare
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   contact - Contact
#   contactAccessLevel - SOAP::SOAPString
#   contactId - (any)
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   rowCause - SOAP::SOAPString
#   userOrGroupId - (any)
class ContactShare < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :contact
  attr_accessor :contactAccessLevel
  attr_accessor :contactId
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :rowCause
  attr_accessor :userOrGroupId

  def initialize(fieldsToNull = [], id = nil, contact = nil, contactAccessLevel = nil, contactId = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, rowCause = nil, userOrGroupId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @contact = contact
    @contactAccessLevel = contactAccessLevel
    @contactId = contactId
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @rowCause = rowCause
    @userOrGroupId = userOrGroupId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContentDocument
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   histories - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   latestPublishedVersion - ContentVersion
#   latestPublishedVersionId - (any)
#   owner - User
#   ownerId - (any)
#   publishStatus - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   title - SOAP::SOAPString
class ContentDocument < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :histories
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :latestPublishedVersion
  attr_accessor :latestPublishedVersionId
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :publishStatus
  attr_accessor :systemModstamp
  attr_accessor :title

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedSubscriptionsForEntity = nil, feeds = nil, histories = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, latestPublishedVersion = nil, latestPublishedVersionId = nil, owner = nil, ownerId = nil, publishStatus = nil, systemModstamp = nil, title = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @histories = histories
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @latestPublishedVersion = latestPublishedVersion
    @latestPublishedVersionId = latestPublishedVersionId
    @owner = owner
    @ownerId = ownerId
    @publishStatus = publishStatus
    @systemModstamp = systemModstamp
    @title = title
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContentDocumentFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - ContentDocument
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class ContentDocumentFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContentDocumentHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   contentDocument - ContentDocument
#   contentDocumentId - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   field - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   newValue - (any)
#   oldValue - (any)
class ContentDocumentHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :contentDocument
  attr_accessor :contentDocumentId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :field
  attr_accessor :isDeleted
  attr_accessor :newValue
  attr_accessor :oldValue

  def initialize(fieldsToNull = [], id = nil, contentDocument = nil, contentDocumentId = nil, createdBy = nil, createdById = nil, createdDate = nil, field = nil, isDeleted = nil, newValue = nil, oldValue = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @contentDocument = contentDocument
    @contentDocumentId = contentDocumentId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @field = field
    @isDeleted = isDeleted
    @newValue = newValue
    @oldValue = oldValue
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContentVersion
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   contentDocument - ContentDocument
#   contentDocumentId - (any)
#   contentModifiedById - (any)
#   contentModifiedDate - SOAP::SOAPDateTime
#   contentSize - SOAP::SOAPInt
#   contentUrl - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   featuredContentBoost - SOAP::SOAPInt
#   featuredContentDate - SOAP::SOAPDate
#   fileType - SOAP::SOAPString
#   firstPublishLocation - Name
#   firstPublishLocationId - (any)
#   histories - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   isLatest - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   negativeRatingCount - SOAP::SOAPInt
#   origin - SOAP::SOAPString
#   owner - User
#   ownerId - (any)
#   pathOnClient - SOAP::SOAPString
#   positiveRatingCount - SOAP::SOAPInt
#   publishStatus - SOAP::SOAPString
#   ratingCount - SOAP::SOAPInt
#   reasonForChange - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tagCsv - SOAP::SOAPString
#   title - SOAP::SOAPString
#   versionData - SOAP::SOAPBase64
#   versionNumber - SOAP::SOAPString
class ContentVersion < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :contentDocument
  attr_accessor :contentDocumentId
  attr_accessor :contentModifiedById
  attr_accessor :contentModifiedDate
  attr_accessor :contentSize
  attr_accessor :contentUrl
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :featuredContentBoost
  attr_accessor :featuredContentDate
  attr_accessor :fileType
  attr_accessor :firstPublishLocation
  attr_accessor :firstPublishLocationId
  attr_accessor :histories
  attr_accessor :isDeleted
  attr_accessor :isLatest
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :negativeRatingCount
  attr_accessor :origin
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :pathOnClient
  attr_accessor :positiveRatingCount
  attr_accessor :publishStatus
  attr_accessor :ratingCount
  attr_accessor :reasonForChange
  attr_accessor :systemModstamp
  attr_accessor :tagCsv
  attr_accessor :title
  attr_accessor :versionData
  attr_accessor :versionNumber

  def initialize(fieldsToNull = [], id = nil, contentDocument = nil, contentDocumentId = nil, contentModifiedById = nil, contentModifiedDate = nil, contentSize = nil, contentUrl = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, featuredContentBoost = nil, featuredContentDate = nil, fileType = nil, firstPublishLocation = nil, firstPublishLocationId = nil, histories = nil, isDeleted = nil, isLatest = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, negativeRatingCount = nil, origin = nil, owner = nil, ownerId = nil, pathOnClient = nil, positiveRatingCount = nil, publishStatus = nil, ratingCount = nil, reasonForChange = nil, systemModstamp = nil, tagCsv = nil, title = nil, versionData = nil, versionNumber = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @contentDocument = contentDocument
    @contentDocumentId = contentDocumentId
    @contentModifiedById = contentModifiedById
    @contentModifiedDate = contentModifiedDate
    @contentSize = contentSize
    @contentUrl = contentUrl
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @featuredContentBoost = featuredContentBoost
    @featuredContentDate = featuredContentDate
    @fileType = fileType
    @firstPublishLocation = firstPublishLocation
    @firstPublishLocationId = firstPublishLocationId
    @histories = histories
    @isDeleted = isDeleted
    @isLatest = isLatest
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @negativeRatingCount = negativeRatingCount
    @origin = origin
    @owner = owner
    @ownerId = ownerId
    @pathOnClient = pathOnClient
    @positiveRatingCount = positiveRatingCount
    @publishStatus = publishStatus
    @ratingCount = ratingCount
    @reasonForChange = reasonForChange
    @systemModstamp = systemModstamp
    @tagCsv = tagCsv
    @title = title
    @versionData = versionData
    @versionNumber = versionNumber
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContentVersionHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   contentVersion - ContentVersion
#   contentVersionId - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   field - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   newValue - (any)
#   oldValue - (any)
class ContentVersionHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :contentVersion
  attr_accessor :contentVersionId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :field
  attr_accessor :isDeleted
  attr_accessor :newValue
  attr_accessor :oldValue

  def initialize(fieldsToNull = [], id = nil, contentVersion = nil, contentVersionId = nil, createdBy = nil, createdById = nil, createdDate = nil, field = nil, isDeleted = nil, newValue = nil, oldValue = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @contentVersion = contentVersion
    @contentVersionId = contentVersionId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @field = field
    @isDeleted = isDeleted
    @newValue = newValue
    @oldValue = oldValue
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Contract
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountId - (any)
#   activatedBy - User
#   activatedById - (any)
#   activatedDate - SOAP::SOAPDateTime
#   activityHistories - QueryResult
#   approvals - QueryResult
#   attachments - QueryResult
#   billingCity - SOAP::SOAPString
#   billingCountry - SOAP::SOAPString
#   billingPostalCode - SOAP::SOAPString
#   billingState - SOAP::SOAPString
#   billingStreet - SOAP::SOAPString
#   companySigned - User
#   companySignedDate - SOAP::SOAPDate
#   companySignedId - (any)
#   contractContactRoles - QueryResult
#   contractNumber - SOAP::SOAPString
#   contractTerm - SOAP::SOAPInt
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   customerSigned - Contact
#   customerSignedDate - SOAP::SOAPDate
#   customerSignedId - (any)
#   customerSignedTitle - SOAP::SOAPString
#   description - SOAP::SOAPString
#   endDate - SOAP::SOAPDate
#   events - QueryResult
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   histories - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   lastActivityDate - SOAP::SOAPDate
#   lastApprovedDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   notes - QueryResult
#   notesAndAttachments - QueryResult
#   openActivities - QueryResult
#   owner - User
#   ownerExpirationNotice - SOAP::SOAPString
#   ownerId - (any)
#   processInstances - QueryResult
#   processSteps - QueryResult
#   specialTerms - SOAP::SOAPString
#   startDate - SOAP::SOAPDate
#   status - SOAP::SOAPString
#   statusCode - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tasks - QueryResult
class Contract < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountId
  attr_accessor :activatedBy
  attr_accessor :activatedById
  attr_accessor :activatedDate
  attr_accessor :activityHistories
  attr_accessor :approvals
  attr_accessor :attachments
  attr_accessor :billingCity
  attr_accessor :billingCountry
  attr_accessor :billingPostalCode
  attr_accessor :billingState
  attr_accessor :billingStreet
  attr_accessor :companySigned
  attr_accessor :companySignedDate
  attr_accessor :companySignedId
  attr_accessor :contractContactRoles
  attr_accessor :contractNumber
  attr_accessor :contractTerm
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :customerSigned
  attr_accessor :customerSignedDate
  attr_accessor :customerSignedId
  attr_accessor :customerSignedTitle
  attr_accessor :description
  attr_accessor :endDate
  attr_accessor :events
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :histories
  attr_accessor :isDeleted
  attr_accessor :lastActivityDate
  attr_accessor :lastApprovedDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :notes
  attr_accessor :notesAndAttachments
  attr_accessor :openActivities
  attr_accessor :owner
  attr_accessor :ownerExpirationNotice
  attr_accessor :ownerId
  attr_accessor :processInstances
  attr_accessor :processSteps
  attr_accessor :specialTerms
  attr_accessor :startDate
  attr_accessor :status
  attr_accessor :statusCode
  attr_accessor :systemModstamp
  attr_accessor :tasks

  def initialize(fieldsToNull = [], id = nil, account = nil, accountId = nil, activatedBy = nil, activatedById = nil, activatedDate = nil, activityHistories = nil, approvals = nil, attachments = nil, billingCity = nil, billingCountry = nil, billingPostalCode = nil, billingState = nil, billingStreet = nil, companySigned = nil, companySignedDate = nil, companySignedId = nil, contractContactRoles = nil, contractNumber = nil, contractTerm = nil, createdBy = nil, createdById = nil, createdDate = nil, customerSigned = nil, customerSignedDate = nil, customerSignedId = nil, customerSignedTitle = nil, description = nil, endDate = nil, events = nil, feedSubscriptionsForEntity = nil, feeds = nil, histories = nil, isDeleted = nil, lastActivityDate = nil, lastApprovedDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, notes = nil, notesAndAttachments = nil, openActivities = nil, owner = nil, ownerExpirationNotice = nil, ownerId = nil, processInstances = nil, processSteps = nil, specialTerms = nil, startDate = nil, status = nil, statusCode = nil, systemModstamp = nil, tasks = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountId = accountId
    @activatedBy = activatedBy
    @activatedById = activatedById
    @activatedDate = activatedDate
    @activityHistories = activityHistories
    @approvals = approvals
    @attachments = attachments
    @billingCity = billingCity
    @billingCountry = billingCountry
    @billingPostalCode = billingPostalCode
    @billingState = billingState
    @billingStreet = billingStreet
    @companySigned = companySigned
    @companySignedDate = companySignedDate
    @companySignedId = companySignedId
    @contractContactRoles = contractContactRoles
    @contractNumber = contractNumber
    @contractTerm = contractTerm
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @customerSigned = customerSigned
    @customerSignedDate = customerSignedDate
    @customerSignedId = customerSignedId
    @customerSignedTitle = customerSignedTitle
    @description = description
    @endDate = endDate
    @events = events
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @histories = histories
    @isDeleted = isDeleted
    @lastActivityDate = lastActivityDate
    @lastApprovedDate = lastApprovedDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @notes = notes
    @notesAndAttachments = notesAndAttachments
    @openActivities = openActivities
    @owner = owner
    @ownerExpirationNotice = ownerExpirationNotice
    @ownerId = ownerId
    @processInstances = processInstances
    @processSteps = processSteps
    @specialTerms = specialTerms
    @startDate = startDate
    @status = status
    @statusCode = statusCode
    @systemModstamp = systemModstamp
    @tasks = tasks
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContractContactRole
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   contact - Contact
#   contactId - (any)
#   contract - Contract
#   contractId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   isPrimary - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   role - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class ContractContactRole < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :contact
  attr_accessor :contactId
  attr_accessor :contract
  attr_accessor :contractId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :isPrimary
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :role
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, contact = nil, contactId = nil, contract = nil, contractId = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, isPrimary = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, role = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @contact = contact
    @contactId = contactId
    @contract = contract
    @contractId = contractId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @isPrimary = isPrimary
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @role = role
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContractFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Contract
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class ContractFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContractHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   contract - Contract
#   contractId - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   field - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   newValue - (any)
#   oldValue - (any)
class ContractHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :contract
  attr_accessor :contractId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :field
  attr_accessor :isDeleted
  attr_accessor :newValue
  attr_accessor :oldValue

  def initialize(fieldsToNull = [], id = nil, contract = nil, contractId = nil, createdBy = nil, createdById = nil, createdDate = nil, field = nil, isDeleted = nil, newValue = nil, oldValue = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @contract = contract
    @contractId = contractId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @field = field
    @isDeleted = isDeleted
    @newValue = newValue
    @oldValue = oldValue
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ContractStatus
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDefault - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   masterLabel - SOAP::SOAPString
#   sortOrder - SOAP::SOAPInt
#   statusCode - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class ContractStatus < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDefault
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :masterLabel
  attr_accessor :sortOrder
  attr_accessor :statusCode
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, isDefault = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, masterLabel = nil, sortOrder = nil, statusCode = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDefault = isDefault
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @masterLabel = masterLabel
    @sortOrder = sortOrder
    @statusCode = statusCode
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}CronTrigger
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   cronExpression - SOAP::SOAPString
#   endTime - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   nextFireTime - SOAP::SOAPDateTime
#   ownerId - (any)
#   previousFireTime - SOAP::SOAPDateTime
#   startTime - SOAP::SOAPDateTime
#   state - SOAP::SOAPString
#   timeZoneSidKey - SOAP::SOAPString
#   timesTriggered - SOAP::SOAPInt
class CronTrigger < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :cronExpression
  attr_accessor :endTime
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :nextFireTime
  attr_accessor :ownerId
  attr_accessor :previousFireTime
  attr_accessor :startTime
  attr_accessor :state
  attr_accessor :timeZoneSidKey
  attr_accessor :timesTriggered

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, cronExpression = nil, endTime = nil, lastModifiedBy = nil, lastModifiedById = nil, nextFireTime = nil, ownerId = nil, previousFireTime = nil, startTime = nil, state = nil, timeZoneSidKey = nil, timesTriggered = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @cronExpression = cronExpression
    @endTime = endTime
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @nextFireTime = nextFireTime
    @ownerId = ownerId
    @previousFireTime = previousFireTime
    @startTime = startTime
    @state = state
    @timeZoneSidKey = timeZoneSidKey
    @timesTriggered = timesTriggered
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Dashboard
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   backgroundDirection - SOAP::SOAPString
#   backgroundEnd - SOAP::SOAPInt
#   backgroundStart - SOAP::SOAPInt
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   developerName - SOAP::SOAPString
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   folderId - (any)
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   leftSize - SOAP::SOAPString
#   middleSize - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   rightSize - SOAP::SOAPString
#   runningUserId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   textColor - SOAP::SOAPInt
#   title - SOAP::SOAPString
#   titleColor - SOAP::SOAPInt
#   titleSize - SOAP::SOAPInt
#   type - SOAP::SOAPString
class Dashboard < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :backgroundDirection
  attr_accessor :backgroundEnd
  attr_accessor :backgroundStart
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :developerName
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :folderId
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :leftSize
  attr_accessor :middleSize
  attr_accessor :namespacePrefix
  attr_accessor :rightSize
  attr_accessor :runningUserId
  attr_accessor :systemModstamp
  attr_accessor :textColor
  attr_accessor :title
  attr_accessor :titleColor
  attr_accessor :titleSize
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, backgroundDirection = nil, backgroundEnd = nil, backgroundStart = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, developerName = nil, feedSubscriptionsForEntity = nil, feeds = nil, folderId = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, leftSize = nil, middleSize = nil, namespacePrefix = nil, rightSize = nil, runningUserId = nil, systemModstamp = nil, textColor = nil, title = nil, titleColor = nil, titleSize = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @backgroundDirection = backgroundDirection
    @backgroundEnd = backgroundEnd
    @backgroundStart = backgroundStart
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @developerName = developerName
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @folderId = folderId
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @leftSize = leftSize
    @middleSize = middleSize
    @namespacePrefix = namespacePrefix
    @rightSize = rightSize
    @runningUserId = runningUserId
    @systemModstamp = systemModstamp
    @textColor = textColor
    @title = title
    @titleColor = titleColor
    @titleSize = titleSize
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}DashboardFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Dashboard
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class DashboardFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Document
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   author - User
#   authorId - (any)
#   body - SOAP::SOAPBase64
#   bodyLength - SOAP::SOAPInt
#   contentType - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   developerName - SOAP::SOAPString
#   folder - Folder
#   folderId - (any)
#   isBodySearchable - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   isInternalUseOnly - SOAP::SOAPBoolean
#   isPublic - SOAP::SOAPBoolean
#   keywords - SOAP::SOAPString
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
#   url - SOAP::SOAPString
class SDocument < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :author
  attr_accessor :authorId
  attr_accessor :body
  attr_accessor :bodyLength
  attr_accessor :contentType
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :developerName
  attr_accessor :folder
  attr_accessor :folderId
  attr_accessor :isBodySearchable
  attr_accessor :isDeleted
  attr_accessor :isInternalUseOnly
  attr_accessor :isPublic
  attr_accessor :keywords
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :systemModstamp
  attr_accessor :type
  attr_accessor :url

  def initialize(fieldsToNull = [], id = nil, author = nil, authorId = nil, body = nil, bodyLength = nil, contentType = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, developerName = nil, folder = nil, folderId = nil, isBodySearchable = nil, isDeleted = nil, isInternalUseOnly = nil, isPublic = nil, keywords = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, namespacePrefix = nil, systemModstamp = nil, type = nil, url = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @author = author
    @authorId = authorId
    @body = body
    @bodyLength = bodyLength
    @contentType = contentType
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @developerName = developerName
    @folder = folder
    @folderId = folderId
    @isBodySearchable = isBodySearchable
    @isDeleted = isDeleted
    @isInternalUseOnly = isInternalUseOnly
    @isPublic = isPublic
    @keywords = keywords
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @namespacePrefix = namespacePrefix
    @systemModstamp = systemModstamp
    @type = type
    @url = url
  end
end

# {urn:sobject.enterprise.soap.sforce.com}DocumentAttachmentMap
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   documentId - (any)
#   documentSequence - SOAP::SOAPInt
#   parentId - (any)
class DocumentAttachmentMap < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :documentId
  attr_accessor :documentSequence
  attr_accessor :parentId

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, documentId = nil, documentSequence = nil, parentId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @documentId = documentId
    @documentSequence = documentSequence
    @parentId = parentId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}EmailServicesAddress
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   authorizedSenders - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   emailDomainName - SOAP::SOAPString
#   function - EmailServicesFunction
#   functionId - (any)
#   isActive - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   localPart - SOAP::SOAPString
#   runAsUserId - (any)
#   systemModstamp - SOAP::SOAPDateTime
class EmailServicesAddress < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :authorizedSenders
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :emailDomainName
  attr_accessor :function
  attr_accessor :functionId
  attr_accessor :isActive
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :localPart
  attr_accessor :runAsUserId
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, authorizedSenders = nil, createdBy = nil, createdById = nil, createdDate = nil, emailDomainName = nil, function = nil, functionId = nil, isActive = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, localPart = nil, runAsUserId = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @authorizedSenders = authorizedSenders
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @emailDomainName = emailDomainName
    @function = function
    @functionId = functionId
    @isActive = isActive
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @localPart = localPart
    @runAsUserId = runAsUserId
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}EmailServicesFunction
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   addressInactiveAction - SOAP::SOAPString
#   addresses - QueryResult
#   apexClassId - (any)
#   attachmentOption - SOAP::SOAPString
#   authenticationFailureAction - SOAP::SOAPString
#   authorizationFailureAction - SOAP::SOAPString
#   authorizedSenders - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   errorRoutingAddress - SOAP::SOAPString
#   functionInactiveAction - SOAP::SOAPString
#   functionName - SOAP::SOAPString
#   isActive - SOAP::SOAPBoolean
#   isAuthenticationRequired - SOAP::SOAPBoolean
#   isErrorRoutingEnabled - SOAP::SOAPBoolean
#   isTextAttachmentsAsBinary - SOAP::SOAPBoolean
#   isTextTruncated - SOAP::SOAPBoolean
#   isTlsRequired - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   overLimitAction - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class EmailServicesFunction < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :addressInactiveAction
  attr_accessor :addresses
  attr_accessor :apexClassId
  attr_accessor :attachmentOption
  attr_accessor :authenticationFailureAction
  attr_accessor :authorizationFailureAction
  attr_accessor :authorizedSenders
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :errorRoutingAddress
  attr_accessor :functionInactiveAction
  attr_accessor :functionName
  attr_accessor :isActive
  attr_accessor :isAuthenticationRequired
  attr_accessor :isErrorRoutingEnabled
  attr_accessor :isTextAttachmentsAsBinary
  attr_accessor :isTextTruncated
  attr_accessor :isTlsRequired
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :overLimitAction
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, addressInactiveAction = nil, addresses = nil, apexClassId = nil, attachmentOption = nil, authenticationFailureAction = nil, authorizationFailureAction = nil, authorizedSenders = nil, createdBy = nil, createdById = nil, createdDate = nil, errorRoutingAddress = nil, functionInactiveAction = nil, functionName = nil, isActive = nil, isAuthenticationRequired = nil, isErrorRoutingEnabled = nil, isTextAttachmentsAsBinary = nil, isTextTruncated = nil, isTlsRequired = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, overLimitAction = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @addressInactiveAction = addressInactiveAction
    @addresses = addresses
    @apexClassId = apexClassId
    @attachmentOption = attachmentOption
    @authenticationFailureAction = authenticationFailureAction
    @authorizationFailureAction = authorizationFailureAction
    @authorizedSenders = authorizedSenders
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @errorRoutingAddress = errorRoutingAddress
    @functionInactiveAction = functionInactiveAction
    @functionName = functionName
    @isActive = isActive
    @isAuthenticationRequired = isAuthenticationRequired
    @isErrorRoutingEnabled = isErrorRoutingEnabled
    @isTextAttachmentsAsBinary = isTextAttachmentsAsBinary
    @isTextTruncated = isTextTruncated
    @isTlsRequired = isTlsRequired
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @overLimitAction = overLimitAction
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}EmailStatus
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   emailTemplateName - SOAP::SOAPString
#   firstOpenDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lastOpenDate - SOAP::SOAPDateTime
#   task - Task
#   taskId - (any)
#   timesOpened - SOAP::SOAPInt
#   who - Name
#   whoId - (any)
class EmailStatus < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :emailTemplateName
  attr_accessor :firstOpenDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lastOpenDate
  attr_accessor :task
  attr_accessor :taskId
  attr_accessor :timesOpened
  attr_accessor :who
  attr_accessor :whoId

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, emailTemplateName = nil, firstOpenDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lastOpenDate = nil, task = nil, taskId = nil, timesOpened = nil, who = nil, whoId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @emailTemplateName = emailTemplateName
    @firstOpenDate = firstOpenDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lastOpenDate = lastOpenDate
    @task = task
    @taskId = taskId
    @timesOpened = timesOpened
    @who = who
    @whoId = whoId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}EmailTemplate
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   apiVersion - SOAP::SOAPDouble
#   attachments - QueryResult
#   body - SOAP::SOAPString
#   brandTemplateId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   developerName - SOAP::SOAPString
#   encoding - SOAP::SOAPString
#   folder - Folder
#   folderId - (any)
#   htmlValue - SOAP::SOAPString
#   isActive - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lastUsedDate - SOAP::SOAPDateTime
#   markup - SOAP::SOAPString
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   owner - User
#   ownerId - (any)
#   subject - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   templateStyle - SOAP::SOAPString
#   templateType - SOAP::SOAPString
#   timesUsed - SOAP::SOAPInt
class EmailTemplate < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :apiVersion
  attr_accessor :attachments
  attr_accessor :body
  attr_accessor :brandTemplateId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :developerName
  attr_accessor :encoding
  attr_accessor :folder
  attr_accessor :folderId
  attr_accessor :htmlValue
  attr_accessor :isActive
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lastUsedDate
  attr_accessor :markup
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :subject
  attr_accessor :systemModstamp
  attr_accessor :templateStyle
  attr_accessor :templateType
  attr_accessor :timesUsed

  def initialize(fieldsToNull = [], id = nil, apiVersion = nil, attachments = nil, body = nil, brandTemplateId = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, developerName = nil, encoding = nil, folder = nil, folderId = nil, htmlValue = nil, isActive = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lastUsedDate = nil, markup = nil, name = nil, namespacePrefix = nil, owner = nil, ownerId = nil, subject = nil, systemModstamp = nil, templateStyle = nil, templateType = nil, timesUsed = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @apiVersion = apiVersion
    @attachments = attachments
    @body = body
    @brandTemplateId = brandTemplateId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @developerName = developerName
    @encoding = encoding
    @folder = folder
    @folderId = folderId
    @htmlValue = htmlValue
    @isActive = isActive
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lastUsedDate = lastUsedDate
    @markup = markup
    @name = name
    @namespacePrefix = namespacePrefix
    @owner = owner
    @ownerId = ownerId
    @subject = subject
    @systemModstamp = systemModstamp
    @templateStyle = templateStyle
    @templateType = templateType
    @timesUsed = timesUsed
  end
end

# {urn:sobject.enterprise.soap.sforce.com}EntitySubscription
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   parent - Name
#   parentId - (any)
#   subscriber - User
#   subscriberId - (any)
class EntitySubscription < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :subscriber
  attr_accessor :subscriberId

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, parent = nil, parentId = nil, subscriber = nil, subscriberId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @subscriber = subscriber
    @subscriberId = subscriberId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Event
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountId - (any)
#   activityDate - SOAP::SOAPDate
#   activityDateTime - SOAP::SOAPDateTime
#   attachments - QueryResult
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   durationInMinutes - SOAP::SOAPInt
#   endDateTime - SOAP::SOAPDateTime
#   eventAttendees - QueryResult
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   groupEventType - SOAP::SOAPString
#   isAllDayEvent - SOAP::SOAPBoolean
#   isArchived - SOAP::SOAPBoolean
#   isChild - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   isGroupEvent - SOAP::SOAPBoolean
#   isPrivate - SOAP::SOAPBoolean
#   isRecurrence - SOAP::SOAPBoolean
#   isReminderSet - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   location - SOAP::SOAPString
#   owner - Name
#   ownerId - (any)
#   recurrenceActivityId - (any)
#   recurrenceDayOfMonth - SOAP::SOAPInt
#   recurrenceDayOfWeekMask - SOAP::SOAPInt
#   recurrenceEndDateOnly - SOAP::SOAPDate
#   recurrenceInstance - SOAP::SOAPString
#   recurrenceInterval - SOAP::SOAPInt
#   recurrenceMonthOfYear - SOAP::SOAPString
#   recurrenceStartDateTime - SOAP::SOAPDateTime
#   recurrenceTimeZoneSidKey - SOAP::SOAPString
#   recurrenceType - SOAP::SOAPString
#   recurringEvents - QueryResult
#   reminderDateTime - SOAP::SOAPDateTime
#   showAs - SOAP::SOAPString
#   startDateTime - SOAP::SOAPDateTime
#   subject - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   what - Name
#   whatId - (any)
#   who - Name
#   whoId - (any)
class Event < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountId
  attr_accessor :activityDate
  attr_accessor :activityDateTime
  attr_accessor :attachments
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :durationInMinutes
  attr_accessor :endDateTime
  attr_accessor :eventAttendees
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :groupEventType
  attr_accessor :isAllDayEvent
  attr_accessor :isArchived
  attr_accessor :isChild
  attr_accessor :isDeleted
  attr_accessor :isGroupEvent
  attr_accessor :isPrivate
  attr_accessor :isRecurrence
  attr_accessor :isReminderSet
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :location
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :recurrenceActivityId
  attr_accessor :recurrenceDayOfMonth
  attr_accessor :recurrenceDayOfWeekMask
  attr_accessor :recurrenceEndDateOnly
  attr_accessor :recurrenceInstance
  attr_accessor :recurrenceInterval
  attr_accessor :recurrenceMonthOfYear
  attr_accessor :recurrenceStartDateTime
  attr_accessor :recurrenceTimeZoneSidKey
  attr_accessor :recurrenceType
  attr_accessor :recurringEvents
  attr_accessor :reminderDateTime
  attr_accessor :showAs
  attr_accessor :startDateTime
  attr_accessor :subject
  attr_accessor :systemModstamp
  attr_accessor :what
  attr_accessor :whatId
  attr_accessor :who
  attr_accessor :whoId

  def initialize(fieldsToNull = [], id = nil, account = nil, accountId = nil, activityDate = nil, activityDateTime = nil, attachments = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, durationInMinutes = nil, endDateTime = nil, eventAttendees = nil, feedSubscriptionsForEntity = nil, feeds = nil, groupEventType = nil, isAllDayEvent = nil, isArchived = nil, isChild = nil, isDeleted = nil, isGroupEvent = nil, isPrivate = nil, isRecurrence = nil, isReminderSet = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, location = nil, owner = nil, ownerId = nil, recurrenceActivityId = nil, recurrenceDayOfMonth = nil, recurrenceDayOfWeekMask = nil, recurrenceEndDateOnly = nil, recurrenceInstance = nil, recurrenceInterval = nil, recurrenceMonthOfYear = nil, recurrenceStartDateTime = nil, recurrenceTimeZoneSidKey = nil, recurrenceType = nil, recurringEvents = nil, reminderDateTime = nil, showAs = nil, startDateTime = nil, subject = nil, systemModstamp = nil, what = nil, whatId = nil, who = nil, whoId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountId = accountId
    @activityDate = activityDate
    @activityDateTime = activityDateTime
    @attachments = attachments
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @durationInMinutes = durationInMinutes
    @endDateTime = endDateTime
    @eventAttendees = eventAttendees
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @groupEventType = groupEventType
    @isAllDayEvent = isAllDayEvent
    @isArchived = isArchived
    @isChild = isChild
    @isDeleted = isDeleted
    @isGroupEvent = isGroupEvent
    @isPrivate = isPrivate
    @isRecurrence = isRecurrence
    @isReminderSet = isReminderSet
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @location = location
    @owner = owner
    @ownerId = ownerId
    @recurrenceActivityId = recurrenceActivityId
    @recurrenceDayOfMonth = recurrenceDayOfMonth
    @recurrenceDayOfWeekMask = recurrenceDayOfWeekMask
    @recurrenceEndDateOnly = recurrenceEndDateOnly
    @recurrenceInstance = recurrenceInstance
    @recurrenceInterval = recurrenceInterval
    @recurrenceMonthOfYear = recurrenceMonthOfYear
    @recurrenceStartDateTime = recurrenceStartDateTime
    @recurrenceTimeZoneSidKey = recurrenceTimeZoneSidKey
    @recurrenceType = recurrenceType
    @recurringEvents = recurringEvents
    @reminderDateTime = reminderDateTime
    @showAs = showAs
    @startDateTime = startDateTime
    @subject = subject
    @systemModstamp = systemModstamp
    @what = what
    @whatId = whatId
    @who = who
    @whoId = whoId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}EventAttendee
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   attendee - Name
#   attendeeId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   event - Event
#   eventId - (any)
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   respondedDate - SOAP::SOAPDateTime
#   response - SOAP::SOAPString
#   status - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class EventAttendee < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :attendee
  attr_accessor :attendeeId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :event
  attr_accessor :eventId
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :respondedDate
  attr_accessor :response
  attr_accessor :status
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, attendee = nil, attendeeId = nil, createdBy = nil, createdById = nil, createdDate = nil, event = nil, eventId = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, respondedDate = nil, response = nil, status = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @attendee = attendee
    @attendeeId = attendeeId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @event = event
    @eventId = eventId
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @respondedDate = respondedDate
    @response = response
    @status = status
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}EventFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Event
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class EventFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}FeedComment
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   commentBody - SOAP::SOAPString
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedItemId - (any)
#   isDeleted - SOAP::SOAPBoolean
#   parentId - (any)
class FeedComment < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :commentBody
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedItemId
  attr_accessor :isDeleted
  attr_accessor :parentId

  def initialize(fieldsToNull = [], id = nil, commentBody = nil, createdBy = nil, createdById = nil, createdDate = nil, feedItemId = nil, isDeleted = nil, parentId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @commentBody = commentBody
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedItemId = feedItemId
    @isDeleted = isDeleted
    @parentId = parentId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}FeedPost
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   body - SOAP::SOAPString
#   contentData - SOAP::SOAPBase64
#   contentDescription - SOAP::SOAPString
#   contentFileName - SOAP::SOAPString
#   contentSize - SOAP::SOAPInt
#   contentType - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedItemId - (any)
#   isDeleted - SOAP::SOAPBoolean
#   linkUrl - SOAP::SOAPString
#   parent - Name
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   title - SOAP::SOAPString
#   type - SOAP::SOAPString
class FeedPost < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :body
  attr_accessor :contentData
  attr_accessor :contentDescription
  attr_accessor :contentFileName
  attr_accessor :contentSize
  attr_accessor :contentType
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedItemId
  attr_accessor :isDeleted
  attr_accessor :linkUrl
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :title
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, body = nil, contentData = nil, contentDescription = nil, contentFileName = nil, contentSize = nil, contentType = nil, createdBy = nil, createdById = nil, createdDate = nil, feedItemId = nil, isDeleted = nil, linkUrl = nil, parent = nil, parentId = nil, systemModstamp = nil, title = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @body = body
    @contentData = contentData
    @contentDescription = contentDescription
    @contentFileName = contentFileName
    @contentSize = contentSize
    @contentType = contentType
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedItemId = feedItemId
    @isDeleted = isDeleted
    @linkUrl = linkUrl
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @title = title
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}FeedTrackedChange
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   feedItemId - (any)
#   fieldName - SOAP::SOAPString
#   newValue - (any)
#   oldValue - (any)
class FeedTrackedChange < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :feedItemId
  attr_accessor :fieldName
  attr_accessor :newValue
  attr_accessor :oldValue

  def initialize(fieldsToNull = [], id = nil, feedItemId = nil, fieldName = nil, newValue = nil, oldValue = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @feedItemId = feedItemId
    @fieldName = fieldName
    @newValue = newValue
    @oldValue = oldValue
  end
end

# {urn:sobject.enterprise.soap.sforce.com}FiscalYearSettings
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   description - SOAP::SOAPString
#   endDate - SOAP::SOAPDate
#   isStandardYear - SOAP::SOAPBoolean
#   name - SOAP::SOAPString
#   periodId - (any)
#   periodLabelScheme - SOAP::SOAPString
#   periodPrefix - SOAP::SOAPString
#   periods - QueryResult
#   quarterLabelScheme - SOAP::SOAPString
#   quarterPrefix - SOAP::SOAPString
#   startDate - SOAP::SOAPDate
#   systemModstamp - SOAP::SOAPDateTime
#   weekLabelScheme - SOAP::SOAPString
#   weekStartDay - SOAP::SOAPInt
#   yearType - SOAP::SOAPString
class FiscalYearSettings < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :description
  attr_accessor :endDate
  attr_accessor :isStandardYear
  attr_accessor :name
  attr_accessor :periodId
  attr_accessor :periodLabelScheme
  attr_accessor :periodPrefix
  attr_accessor :periods
  attr_accessor :quarterLabelScheme
  attr_accessor :quarterPrefix
  attr_accessor :startDate
  attr_accessor :systemModstamp
  attr_accessor :weekLabelScheme
  attr_accessor :weekStartDay
  attr_accessor :yearType

  def initialize(fieldsToNull = [], id = nil, description = nil, endDate = nil, isStandardYear = nil, name = nil, periodId = nil, periodLabelScheme = nil, periodPrefix = nil, periods = nil, quarterLabelScheme = nil, quarterPrefix = nil, startDate = nil, systemModstamp = nil, weekLabelScheme = nil, weekStartDay = nil, yearType = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @description = description
    @endDate = endDate
    @isStandardYear = isStandardYear
    @name = name
    @periodId = periodId
    @periodLabelScheme = periodLabelScheme
    @periodPrefix = periodPrefix
    @periods = periods
    @quarterLabelScheme = quarterLabelScheme
    @quarterPrefix = quarterPrefix
    @startDate = startDate
    @systemModstamp = systemModstamp
    @weekLabelScheme = weekLabelScheme
    @weekStartDay = weekStartDay
    @yearType = yearType
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Folder
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accessType - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   developerName - SOAP::SOAPString
#   isReadonly - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class Folder < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accessType
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :developerName
  attr_accessor :isReadonly
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, accessType = nil, createdBy = nil, createdById = nil, createdDate = nil, developerName = nil, isReadonly = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, namespacePrefix = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accessType = accessType
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @developerName = developerName
    @isReadonly = isReadonly
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @namespacePrefix = namespacePrefix
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ForecastShare
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accessLevel - SOAP::SOAPString
#   canSubmit - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   rowCause - SOAP::SOAPString
#   userOrGroupId - (any)
#   userRoleId - (any)
class ForecastShare < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accessLevel
  attr_accessor :canSubmit
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :rowCause
  attr_accessor :userOrGroupId
  attr_accessor :userRoleId

  def initialize(fieldsToNull = [], id = nil, accessLevel = nil, canSubmit = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, rowCause = nil, userOrGroupId = nil, userRoleId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accessLevel = accessLevel
    @canSubmit = canSubmit
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @rowCause = rowCause
    @userOrGroupId = userOrGroupId
    @userRoleId = userRoleId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Group
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   delegatedUsers - QueryResult
#   doesIncludeBosses - SOAP::SOAPBoolean
#   doesSendEmailToMembers - SOAP::SOAPBoolean
#   email - SOAP::SOAPString
#   groupMembers - QueryResult
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   owner - Name
#   ownerId - (any)
#   queueSobjects - QueryResult
#   relatedId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class Group < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :delegatedUsers
  attr_accessor :doesIncludeBosses
  attr_accessor :doesSendEmailToMembers
  attr_accessor :email
  attr_accessor :groupMembers
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :queueSobjects
  attr_accessor :relatedId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, delegatedUsers = nil, doesIncludeBosses = nil, doesSendEmailToMembers = nil, email = nil, groupMembers = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, owner = nil, ownerId = nil, queueSobjects = nil, relatedId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @delegatedUsers = delegatedUsers
    @doesIncludeBosses = doesIncludeBosses
    @doesSendEmailToMembers = doesSendEmailToMembers
    @email = email
    @groupMembers = groupMembers
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @owner = owner
    @ownerId = ownerId
    @queueSobjects = queueSobjects
    @relatedId = relatedId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}GroupMember
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   group - Group
#   groupId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   userOrGroupId - (any)
class GroupMember < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :group
  attr_accessor :groupId
  attr_accessor :systemModstamp
  attr_accessor :userOrGroupId

  def initialize(fieldsToNull = [], id = nil, group = nil, groupId = nil, systemModstamp = nil, userOrGroupId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @group = group
    @groupId = groupId
    @systemModstamp = systemModstamp
    @userOrGroupId = userOrGroupId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Holiday
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   activityDate - SOAP::SOAPDate
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   endTimeInMinutes - SOAP::SOAPInt
#   isAllDay - SOAP::SOAPBoolean
#   isRecurrence - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   recurrenceDayOfMonth - SOAP::SOAPInt
#   recurrenceDayOfWeekMask - SOAP::SOAPInt
#   recurrenceEndDateOnly - SOAP::SOAPDate
#   recurrenceInstance - SOAP::SOAPString
#   recurrenceInterval - SOAP::SOAPInt
#   recurrenceMonthOfYear - SOAP::SOAPString
#   recurrenceStartDate - SOAP::SOAPDate
#   recurrenceType - SOAP::SOAPString
#   startTimeInMinutes - SOAP::SOAPInt
#   systemModstamp - SOAP::SOAPDateTime
class Holiday < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :activityDate
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :endTimeInMinutes
  attr_accessor :isAllDay
  attr_accessor :isRecurrence
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :recurrenceDayOfMonth
  attr_accessor :recurrenceDayOfWeekMask
  attr_accessor :recurrenceEndDateOnly
  attr_accessor :recurrenceInstance
  attr_accessor :recurrenceInterval
  attr_accessor :recurrenceMonthOfYear
  attr_accessor :recurrenceStartDate
  attr_accessor :recurrenceType
  attr_accessor :startTimeInMinutes
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, activityDate = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, endTimeInMinutes = nil, isAllDay = nil, isRecurrence = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, recurrenceDayOfMonth = nil, recurrenceDayOfWeekMask = nil, recurrenceEndDateOnly = nil, recurrenceInstance = nil, recurrenceInterval = nil, recurrenceMonthOfYear = nil, recurrenceStartDate = nil, recurrenceType = nil, startTimeInMinutes = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @activityDate = activityDate
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @endTimeInMinutes = endTimeInMinutes
    @isAllDay = isAllDay
    @isRecurrence = isRecurrence
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @recurrenceDayOfMonth = recurrenceDayOfMonth
    @recurrenceDayOfWeekMask = recurrenceDayOfWeekMask
    @recurrenceEndDateOnly = recurrenceEndDateOnly
    @recurrenceInstance = recurrenceInstance
    @recurrenceInterval = recurrenceInterval
    @recurrenceMonthOfYear = recurrenceMonthOfYear
    @recurrenceStartDate = recurrenceStartDate
    @recurrenceType = recurrenceType
    @startTimeInMinutes = startTimeInMinutes
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Idea
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   body - SOAP::SOAPString
#   categories - SOAP::SOAPString
#   comments - QueryResult
#   community - Community
#   communityId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   isHtml - SOAP::SOAPBoolean
#   isLocked - SOAP::SOAPBoolean
#   lastComment - IdeaComment
#   lastCommentDate - SOAP::SOAPDateTime
#   lastCommentId - (any)
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   numComments - SOAP::SOAPInt
#   parentIdeaId - (any)
#   status - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   title - SOAP::SOAPString
#   voteScore - SOAP::SOAPDouble
#   voteTotal - SOAP::SOAPDouble
#   votes - QueryResult
class Idea < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :body
  attr_accessor :categories
  attr_accessor :comments
  attr_accessor :community
  attr_accessor :communityId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :isHtml
  attr_accessor :isLocked
  attr_accessor :lastComment
  attr_accessor :lastCommentDate
  attr_accessor :lastCommentId
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :numComments
  attr_accessor :parentIdeaId
  attr_accessor :status
  attr_accessor :systemModstamp
  attr_accessor :title
  attr_accessor :voteScore
  attr_accessor :voteTotal
  attr_accessor :votes

  def initialize(fieldsToNull = [], id = nil, body = nil, categories = nil, comments = nil, community = nil, communityId = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, isHtml = nil, isLocked = nil, lastComment = nil, lastCommentDate = nil, lastCommentId = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, numComments = nil, parentIdeaId = nil, status = nil, systemModstamp = nil, title = nil, voteScore = nil, voteTotal = nil, votes = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @body = body
    @categories = categories
    @comments = comments
    @community = community
    @communityId = communityId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @isHtml = isHtml
    @isLocked = isLocked
    @lastComment = lastComment
    @lastCommentDate = lastCommentDate
    @lastCommentId = lastCommentId
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @numComments = numComments
    @parentIdeaId = parentIdeaId
    @status = status
    @systemModstamp = systemModstamp
    @title = title
    @voteScore = voteScore
    @voteTotal = voteTotal
    @votes = votes
  end
end

# {urn:sobject.enterprise.soap.sforce.com}IdeaComment
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   commentBody - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   idea - Idea
#   ideaId - (any)
#   isDeleted - SOAP::SOAPBoolean
#   isHtml - SOAP::SOAPBoolean
#   systemModstamp - SOAP::SOAPDateTime
class IdeaComment < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :commentBody
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :idea
  attr_accessor :ideaId
  attr_accessor :isDeleted
  attr_accessor :isHtml
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, commentBody = nil, createdBy = nil, createdById = nil, createdDate = nil, idea = nil, ideaId = nil, isDeleted = nil, isHtml = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @commentBody = commentBody
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @idea = idea
    @ideaId = ideaId
    @isDeleted = isDeleted
    @isHtml = isHtml
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Lead
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   activityHistories - QueryResult
#   annualRevenue - SOAP::SOAPDouble
#   attachments - QueryResult
#   campaign - Campaign
#   campaignMembers - QueryResult
#   city - SOAP::SOAPString
#   company - SOAP::SOAPString
#   convertedAccount - Account
#   convertedAccountId - (any)
#   convertedContact - Contact
#   convertedContactId - (any)
#   convertedDate - SOAP::SOAPDate
#   convertedOpportunity - Opportunity
#   convertedOpportunityId - (any)
#   country - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   currentGenerators__c - SOAP::SOAPString
#   description - SOAP::SOAPString
#   email - SOAP::SOAPString
#   emailBouncedDate - SOAP::SOAPDateTime
#   emailBouncedReason - SOAP::SOAPString
#   emailStatuses - QueryResult
#   events - QueryResult
#   fax - SOAP::SOAPString
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   firstName - SOAP::SOAPString
#   histories - QueryResult
#   industry - SOAP::SOAPString
#   isConverted - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   isUnreadByOwner - SOAP::SOAPBoolean
#   lastActivityDate - SOAP::SOAPDate
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lastName - SOAP::SOAPString
#   leadSource - SOAP::SOAPString
#   masterRecord - Lead
#   masterRecordId - (any)
#   mobilePhone - SOAP::SOAPString
#   name - SOAP::SOAPString
#   notes - QueryResult
#   notesAndAttachments - QueryResult
#   numberOfEmployees - SOAP::SOAPInt
#   numberofLocations__c - SOAP::SOAPDouble
#   openActivities - QueryResult
#   owner - Name
#   ownerId - (any)
#   phone - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   primary__c - SOAP::SOAPString
#   processInstances - QueryResult
#   processSteps - QueryResult
#   productInterest__c - SOAP::SOAPString
#   rating - SOAP::SOAPString
#   sICCode__c - SOAP::SOAPString
#   salutation - SOAP::SOAPString
#   shares - QueryResult
#   state - SOAP::SOAPString
#   status - SOAP::SOAPString
#   street - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tasks - QueryResult
#   title - SOAP::SOAPString
#   website - SOAP::SOAPString
class Lead < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :activityHistories
  attr_accessor :annualRevenue
  attr_accessor :attachments
  attr_accessor :campaign
  attr_accessor :campaignMembers
  attr_accessor :city
  attr_accessor :company
  attr_accessor :convertedAccount
  attr_accessor :convertedAccountId
  attr_accessor :convertedContact
  attr_accessor :convertedContactId
  attr_accessor :convertedDate
  attr_accessor :convertedOpportunity
  attr_accessor :convertedOpportunityId
  attr_accessor :country
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :currentGenerators__c
  attr_accessor :description
  attr_accessor :email
  attr_accessor :emailBouncedDate
  attr_accessor :emailBouncedReason
  attr_accessor :emailStatuses
  attr_accessor :events
  attr_accessor :fax
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :firstName
  attr_accessor :histories
  attr_accessor :industry
  attr_accessor :isConverted
  attr_accessor :isDeleted
  attr_accessor :isUnreadByOwner
  attr_accessor :lastActivityDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lastName
  attr_accessor :leadSource
  attr_accessor :masterRecord
  attr_accessor :masterRecordId
  attr_accessor :mobilePhone
  attr_accessor :name
  attr_accessor :notes
  attr_accessor :notesAndAttachments
  attr_accessor :numberOfEmployees
  attr_accessor :numberofLocations__c
  attr_accessor :openActivities
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :phone
  attr_accessor :postalCode
  attr_accessor :primary__c
  attr_accessor :processInstances
  attr_accessor :processSteps
  attr_accessor :productInterest__c
  attr_accessor :rating
  attr_accessor :sICCode__c
  attr_accessor :salutation
  attr_accessor :shares
  attr_accessor :state
  attr_accessor :status
  attr_accessor :street
  attr_accessor :systemModstamp
  attr_accessor :tasks
  attr_accessor :title
  attr_accessor :website

  def initialize(fieldsToNull = [], id = nil, activityHistories = nil, annualRevenue = nil, attachments = nil, campaign = nil, campaignMembers = nil, city = nil, company = nil, convertedAccount = nil, convertedAccountId = nil, convertedContact = nil, convertedContactId = nil, convertedDate = nil, convertedOpportunity = nil, convertedOpportunityId = nil, country = nil, createdBy = nil, createdById = nil, createdDate = nil, currentGenerators__c = nil, description = nil, email = nil, emailBouncedDate = nil, emailBouncedReason = nil, emailStatuses = nil, events = nil, fax = nil, feedSubscriptionsForEntity = nil, feeds = nil, firstName = nil, histories = nil, industry = nil, isConverted = nil, isDeleted = nil, isUnreadByOwner = nil, lastActivityDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lastName = nil, leadSource = nil, masterRecord = nil, masterRecordId = nil, mobilePhone = nil, name = nil, notes = nil, notesAndAttachments = nil, numberOfEmployees = nil, numberofLocations__c = nil, openActivities = nil, owner = nil, ownerId = nil, phone = nil, postalCode = nil, primary__c = nil, processInstances = nil, processSteps = nil, productInterest__c = nil, rating = nil, sICCode__c = nil, salutation = nil, shares = nil, state = nil, status = nil, street = nil, systemModstamp = nil, tasks = nil, title = nil, website = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @activityHistories = activityHistories
    @annualRevenue = annualRevenue
    @attachments = attachments
    @campaign = campaign
    @campaignMembers = campaignMembers
    @city = city
    @company = company
    @convertedAccount = convertedAccount
    @convertedAccountId = convertedAccountId
    @convertedContact = convertedContact
    @convertedContactId = convertedContactId
    @convertedDate = convertedDate
    @convertedOpportunity = convertedOpportunity
    @convertedOpportunityId = convertedOpportunityId
    @country = country
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @currentGenerators__c = currentGenerators__c
    @description = description
    @email = email
    @emailBouncedDate = emailBouncedDate
    @emailBouncedReason = emailBouncedReason
    @emailStatuses = emailStatuses
    @events = events
    @fax = fax
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @firstName = firstName
    @histories = histories
    @industry = industry
    @isConverted = isConverted
    @isDeleted = isDeleted
    @isUnreadByOwner = isUnreadByOwner
    @lastActivityDate = lastActivityDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lastName = lastName
    @leadSource = leadSource
    @masterRecord = masterRecord
    @masterRecordId = masterRecordId
    @mobilePhone = mobilePhone
    @name = name
    @notes = notes
    @notesAndAttachments = notesAndAttachments
    @numberOfEmployees = numberOfEmployees
    @numberofLocations__c = numberofLocations__c
    @openActivities = openActivities
    @owner = owner
    @ownerId = ownerId
    @phone = phone
    @postalCode = postalCode
    @primary__c = primary__c
    @processInstances = processInstances
    @processSteps = processSteps
    @productInterest__c = productInterest__c
    @rating = rating
    @sICCode__c = sICCode__c
    @salutation = salutation
    @shares = shares
    @state = state
    @status = status
    @street = street
    @systemModstamp = systemModstamp
    @tasks = tasks
    @title = title
    @website = website
  end
end

# {urn:sobject.enterprise.soap.sforce.com}LeadFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Lead
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class LeadFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}LeadHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   field - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   lead - Lead
#   leadId - (any)
#   newValue - (any)
#   oldValue - (any)
class LeadHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :field
  attr_accessor :isDeleted
  attr_accessor :lead
  attr_accessor :leadId
  attr_accessor :newValue
  attr_accessor :oldValue

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, field = nil, isDeleted = nil, lead = nil, leadId = nil, newValue = nil, oldValue = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @field = field
    @isDeleted = isDeleted
    @lead = lead
    @leadId = leadId
    @newValue = newValue
    @oldValue = oldValue
  end
end

# {urn:sobject.enterprise.soap.sforce.com}LeadShare
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lead - Lead
#   leadAccessLevel - SOAP::SOAPString
#   leadId - (any)
#   rowCause - SOAP::SOAPString
#   userOrGroupId - (any)
class LeadShare < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lead
  attr_accessor :leadAccessLevel
  attr_accessor :leadId
  attr_accessor :rowCause
  attr_accessor :userOrGroupId

  def initialize(fieldsToNull = [], id = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lead = nil, leadAccessLevel = nil, leadId = nil, rowCause = nil, userOrGroupId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lead = lead
    @leadAccessLevel = leadAccessLevel
    @leadId = leadId
    @rowCause = rowCause
    @userOrGroupId = userOrGroupId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}LeadStatus
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isConverted - SOAP::SOAPBoolean
#   isDefault - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   masterLabel - SOAP::SOAPString
#   sortOrder - SOAP::SOAPInt
#   systemModstamp - SOAP::SOAPDateTime
class LeadStatus < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isConverted
  attr_accessor :isDefault
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :masterLabel
  attr_accessor :sortOrder
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, isConverted = nil, isDefault = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, masterLabel = nil, sortOrder = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isConverted = isConverted
    @isDefault = isDefault
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @masterLabel = masterLabel
    @sortOrder = sortOrder
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}MailmergeTemplate
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   body - SOAP::SOAPBase64
#   bodyLength - SOAP::SOAPInt
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   filename - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lastUsedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class MailmergeTemplate < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :body
  attr_accessor :bodyLength
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :filename
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lastUsedDate
  attr_accessor :name
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, body = nil, bodyLength = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, filename = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lastUsedDate = nil, name = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @body = body
    @bodyLength = bodyLength
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @filename = filename
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lastUsedDate = lastUsedDate
    @name = name
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Name
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   m_alias - SOAP::SOAPString
#   email - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   isActive - SOAP::SOAPBoolean
#   lastName - SOAP::SOAPString
#   name - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   profile - Profile
#   profileId - (any)
#   title - SOAP::SOAPString
#   type - SOAP::SOAPString
#   userRole - UserRole
#   userRoleId - (any)
#   username - SOAP::SOAPString
class Name < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :email
  attr_accessor :firstName
  attr_accessor :isActive
  attr_accessor :lastName
  attr_accessor :name
  attr_accessor :phone
  attr_accessor :profile
  attr_accessor :profileId
  attr_accessor :title
  attr_accessor :type
  attr_accessor :userRole
  attr_accessor :userRoleId
  attr_accessor :username

  def m_alias
    @v_alias
  end

  def m_alias=(value)
    @v_alias = value
  end

  def initialize(fieldsToNull = [], id = nil, v_alias = nil, email = nil, firstName = nil, isActive = nil, lastName = nil, name = nil, phone = nil, profile = nil, profileId = nil, title = nil, type = nil, userRole = nil, userRoleId = nil, username = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @v_alias = v_alias
    @email = email
    @firstName = firstName
    @isActive = isActive
    @lastName = lastName
    @name = name
    @phone = phone
    @profile = profile
    @profileId = profileId
    @title = title
    @type = type
    @userRole = userRole
    @userRoleId = userRoleId
    @username = username
  end
end

# {urn:sobject.enterprise.soap.sforce.com}NewsFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Name
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class NewsFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Note
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   body - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   isPrivate - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   owner - User
#   ownerId - (any)
#   parent - Name
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   title - SOAP::SOAPString
class Note < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :body
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :isPrivate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :title

  def initialize(fieldsToNull = [], id = nil, body = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, isPrivate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, owner = nil, ownerId = nil, parent = nil, parentId = nil, systemModstamp = nil, title = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @body = body
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @isPrivate = isPrivate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @owner = owner
    @ownerId = ownerId
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @title = title
  end
end

# {urn:sobject.enterprise.soap.sforce.com}NoteAndAttachment
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   isNote - SOAP::SOAPBoolean
#   isPrivate - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   owner - User
#   ownerId - (any)
#   parent - Name
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   title - SOAP::SOAPString
class NoteAndAttachment < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :isNote
  attr_accessor :isPrivate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :title

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, isNote = nil, isPrivate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, owner = nil, ownerId = nil, parent = nil, parentId = nil, systemModstamp = nil, title = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @isNote = isNote
    @isPrivate = isPrivate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @owner = owner
    @ownerId = ownerId
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @title = title
  end
end

# {urn:sobject.enterprise.soap.sforce.com}OpenActivity
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountId - (any)
#   activityDate - SOAP::SOAPDate
#   activityType - SOAP::SOAPString
#   callDisposition - SOAP::SOAPString
#   callDurationInSeconds - SOAP::SOAPInt
#   callObject - SOAP::SOAPString
#   callType - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   durationInMinutes - SOAP::SOAPInt
#   isAllDayEvent - SOAP::SOAPBoolean
#   isClosed - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   isReminderSet - SOAP::SOAPBoolean
#   isTask - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   location - SOAP::SOAPString
#   owner - Name
#   ownerId - (any)
#   priority - SOAP::SOAPString
#   reminderDateTime - SOAP::SOAPDateTime
#   status - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   what - Name
#   whatId - (any)
#   who - Name
#   whoId - (any)
class OpenActivity < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountId
  attr_accessor :activityDate
  attr_accessor :activityType
  attr_accessor :callDisposition
  attr_accessor :callDurationInSeconds
  attr_accessor :callObject
  attr_accessor :callType
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :durationInMinutes
  attr_accessor :isAllDayEvent
  attr_accessor :isClosed
  attr_accessor :isDeleted
  attr_accessor :isReminderSet
  attr_accessor :isTask
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :location
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :priority
  attr_accessor :reminderDateTime
  attr_accessor :status
  attr_accessor :subject
  attr_accessor :systemModstamp
  attr_accessor :what
  attr_accessor :whatId
  attr_accessor :who
  attr_accessor :whoId

  def initialize(fieldsToNull = [], id = nil, account = nil, accountId = nil, activityDate = nil, activityType = nil, callDisposition = nil, callDurationInSeconds = nil, callObject = nil, callType = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, durationInMinutes = nil, isAllDayEvent = nil, isClosed = nil, isDeleted = nil, isReminderSet = nil, isTask = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, location = nil, owner = nil, ownerId = nil, priority = nil, reminderDateTime = nil, status = nil, subject = nil, systemModstamp = nil, what = nil, whatId = nil, who = nil, whoId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountId = accountId
    @activityDate = activityDate
    @activityType = activityType
    @callDisposition = callDisposition
    @callDurationInSeconds = callDurationInSeconds
    @callObject = callObject
    @callType = callType
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @durationInMinutes = durationInMinutes
    @isAllDayEvent = isAllDayEvent
    @isClosed = isClosed
    @isDeleted = isDeleted
    @isReminderSet = isReminderSet
    @isTask = isTask
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @location = location
    @owner = owner
    @ownerId = ownerId
    @priority = priority
    @reminderDateTime = reminderDateTime
    @status = status
    @subject = subject
    @systemModstamp = systemModstamp
    @what = what
    @whatId = whatId
    @who = who
    @whoId = whoId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Opportunity
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountId - (any)
#   accountPartners - QueryResult
#   activityHistories - QueryResult
#   amount - SOAP::SOAPDouble
#   attachments - QueryResult
#   campaign - Campaign
#   campaignId - (any)
#   closeDate - SOAP::SOAPDate
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   currentGenerators__c - SOAP::SOAPString
#   deliveryInstallationStatus__c - SOAP::SOAPString
#   description - SOAP::SOAPString
#   events - QueryResult
#   expectedRevenue - SOAP::SOAPDouble
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   fiscal - SOAP::SOAPString
#   fiscalQuarter - SOAP::SOAPInt
#   fiscalYear - SOAP::SOAPInt
#   forecastCategory - SOAP::SOAPString
#   forecastCategoryName - SOAP::SOAPString
#   hasOpportunityLineItem - SOAP::SOAPBoolean
#   histories - QueryResult
#   isClosed - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   isPrivate - SOAP::SOAPBoolean
#   isWon - SOAP::SOAPBoolean
#   lastActivityDate - SOAP::SOAPDate
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   leadSource - SOAP::SOAPString
#   mainCompetitors__c - SOAP::SOAPString
#   name - SOAP::SOAPString
#   nextStep - SOAP::SOAPString
#   notes - QueryResult
#   notesAndAttachments - QueryResult
#   openActivities - QueryResult
#   opportunityCompetitors - QueryResult
#   opportunityContactRoles - QueryResult
#   opportunityHistories - QueryResult
#   opportunityLineItems - QueryResult
#   opportunityPartnersFrom - QueryResult
#   orderNumber__c - SOAP::SOAPString
#   owner - User
#   ownerId - (any)
#   partners - QueryResult
#   pricebook2 - Pricebook2
#   pricebook2Id - (any)
#   probability - SOAP::SOAPDouble
#   processInstances - QueryResult
#   processSteps - QueryResult
#   shares - QueryResult
#   stageName - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tasks - QueryResult
#   totalOpportunityQuantity - SOAP::SOAPDouble
#   trackingNumber__c - SOAP::SOAPString
#   type - SOAP::SOAPString
class Opportunity < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountId
  attr_accessor :accountPartners
  attr_accessor :activityHistories
  attr_accessor :amount
  attr_accessor :attachments
  attr_accessor :campaign
  attr_accessor :campaignId
  attr_accessor :closeDate
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :currentGenerators__c
  attr_accessor :deliveryInstallationStatus__c
  attr_accessor :description
  attr_accessor :events
  attr_accessor :expectedRevenue
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :fiscal
  attr_accessor :fiscalQuarter
  attr_accessor :fiscalYear
  attr_accessor :forecastCategory
  attr_accessor :forecastCategoryName
  attr_accessor :hasOpportunityLineItem
  attr_accessor :histories
  attr_accessor :isClosed
  attr_accessor :isDeleted
  attr_accessor :isPrivate
  attr_accessor :isWon
  attr_accessor :lastActivityDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :leadSource
  attr_accessor :mainCompetitors__c
  attr_accessor :name
  attr_accessor :nextStep
  attr_accessor :notes
  attr_accessor :notesAndAttachments
  attr_accessor :openActivities
  attr_accessor :opportunityCompetitors
  attr_accessor :opportunityContactRoles
  attr_accessor :opportunityHistories
  attr_accessor :opportunityLineItems
  attr_accessor :opportunityPartnersFrom
  attr_accessor :orderNumber__c
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :partners
  attr_accessor :pricebook2
  attr_accessor :pricebook2Id
  attr_accessor :probability
  attr_accessor :processInstances
  attr_accessor :processSteps
  attr_accessor :shares
  attr_accessor :stageName
  attr_accessor :systemModstamp
  attr_accessor :tasks
  attr_accessor :totalOpportunityQuantity
  attr_accessor :trackingNumber__c
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, account = nil, accountId = nil, accountPartners = nil, activityHistories = nil, amount = nil, attachments = nil, campaign = nil, campaignId = nil, closeDate = nil, createdBy = nil, createdById = nil, createdDate = nil, currentGenerators__c = nil, deliveryInstallationStatus__c = nil, description = nil, events = nil, expectedRevenue = nil, feedSubscriptionsForEntity = nil, feeds = nil, fiscal = nil, fiscalQuarter = nil, fiscalYear = nil, forecastCategory = nil, forecastCategoryName = nil, hasOpportunityLineItem = nil, histories = nil, isClosed = nil, isDeleted = nil, isPrivate = nil, isWon = nil, lastActivityDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, leadSource = nil, mainCompetitors__c = nil, name = nil, nextStep = nil, notes = nil, notesAndAttachments = nil, openActivities = nil, opportunityCompetitors = nil, opportunityContactRoles = nil, opportunityHistories = nil, opportunityLineItems = nil, opportunityPartnersFrom = nil, orderNumber__c = nil, owner = nil, ownerId = nil, partners = nil, pricebook2 = nil, pricebook2Id = nil, probability = nil, processInstances = nil, processSteps = nil, shares = nil, stageName = nil, systemModstamp = nil, tasks = nil, totalOpportunityQuantity = nil, trackingNumber__c = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountId = accountId
    @accountPartners = accountPartners
    @activityHistories = activityHistories
    @amount = amount
    @attachments = attachments
    @campaign = campaign
    @campaignId = campaignId
    @closeDate = closeDate
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @currentGenerators__c = currentGenerators__c
    @deliveryInstallationStatus__c = deliveryInstallationStatus__c
    @description = description
    @events = events
    @expectedRevenue = expectedRevenue
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @fiscal = fiscal
    @fiscalQuarter = fiscalQuarter
    @fiscalYear = fiscalYear
    @forecastCategory = forecastCategory
    @forecastCategoryName = forecastCategoryName
    @hasOpportunityLineItem = hasOpportunityLineItem
    @histories = histories
    @isClosed = isClosed
    @isDeleted = isDeleted
    @isPrivate = isPrivate
    @isWon = isWon
    @lastActivityDate = lastActivityDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @leadSource = leadSource
    @mainCompetitors__c = mainCompetitors__c
    @name = name
    @nextStep = nextStep
    @notes = notes
    @notesAndAttachments = notesAndAttachments
    @openActivities = openActivities
    @opportunityCompetitors = opportunityCompetitors
    @opportunityContactRoles = opportunityContactRoles
    @opportunityHistories = opportunityHistories
    @opportunityLineItems = opportunityLineItems
    @opportunityPartnersFrom = opportunityPartnersFrom
    @orderNumber__c = orderNumber__c
    @owner = owner
    @ownerId = ownerId
    @partners = partners
    @pricebook2 = pricebook2
    @pricebook2Id = pricebook2Id
    @probability = probability
    @processInstances = processInstances
    @processSteps = processSteps
    @shares = shares
    @stageName = stageName
    @systemModstamp = systemModstamp
    @tasks = tasks
    @totalOpportunityQuantity = totalOpportunityQuantity
    @trackingNumber__c = trackingNumber__c
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}OpportunityCompetitor
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   competitorName - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   opportunity - Opportunity
#   opportunityId - (any)
#   strengths - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   weaknesses - SOAP::SOAPString
class OpportunityCompetitor < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :competitorName
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :opportunity
  attr_accessor :opportunityId
  attr_accessor :strengths
  attr_accessor :systemModstamp
  attr_accessor :weaknesses

  def initialize(fieldsToNull = [], id = nil, competitorName = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, opportunity = nil, opportunityId = nil, strengths = nil, systemModstamp = nil, weaknesses = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @competitorName = competitorName
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @opportunity = opportunity
    @opportunityId = opportunityId
    @strengths = strengths
    @systemModstamp = systemModstamp
    @weaknesses = weaknesses
  end
end

# {urn:sobject.enterprise.soap.sforce.com}OpportunityContactRole
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   contact - Contact
#   contactId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   isPrimary - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   opportunity - Opportunity
#   opportunityId - (any)
#   role - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class OpportunityContactRole < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :contact
  attr_accessor :contactId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :isPrimary
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :opportunity
  attr_accessor :opportunityId
  attr_accessor :role
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, contact = nil, contactId = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, isPrimary = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, opportunity = nil, opportunityId = nil, role = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @contact = contact
    @contactId = contactId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @isPrimary = isPrimary
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @opportunity = opportunity
    @opportunityId = opportunityId
    @role = role
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}OpportunityFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Opportunity
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class OpportunityFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}OpportunityFieldHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   field - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   newValue - (any)
#   oldValue - (any)
#   opportunity - Opportunity
#   opportunityId - (any)
class OpportunityFieldHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :field
  attr_accessor :isDeleted
  attr_accessor :newValue
  attr_accessor :oldValue
  attr_accessor :opportunity
  attr_accessor :opportunityId

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, field = nil, isDeleted = nil, newValue = nil, oldValue = nil, opportunity = nil, opportunityId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @field = field
    @isDeleted = isDeleted
    @newValue = newValue
    @oldValue = oldValue
    @opportunity = opportunity
    @opportunityId = opportunityId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}OpportunityHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   amount - SOAP::SOAPDouble
#   closeDate - SOAP::SOAPDate
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   expectedRevenue - SOAP::SOAPDouble
#   forecastCategory - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   opportunity - Opportunity
#   opportunityId - (any)
#   probability - SOAP::SOAPDouble
#   stageName - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class OpportunityHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :amount
  attr_accessor :closeDate
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :expectedRevenue
  attr_accessor :forecastCategory
  attr_accessor :isDeleted
  attr_accessor :opportunity
  attr_accessor :opportunityId
  attr_accessor :probability
  attr_accessor :stageName
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, amount = nil, closeDate = nil, createdBy = nil, createdById = nil, createdDate = nil, expectedRevenue = nil, forecastCategory = nil, isDeleted = nil, opportunity = nil, opportunityId = nil, probability = nil, stageName = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @amount = amount
    @closeDate = closeDate
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @expectedRevenue = expectedRevenue
    @forecastCategory = forecastCategory
    @isDeleted = isDeleted
    @opportunity = opportunity
    @opportunityId = opportunityId
    @probability = probability
    @stageName = stageName
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}OpportunityLineItem
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   listPrice - SOAP::SOAPDouble
#   opportunity - Opportunity
#   opportunityId - (any)
#   pricebookEntry - PricebookEntry
#   pricebookEntryId - (any)
#   quantity - SOAP::SOAPDouble
#   serviceDate - SOAP::SOAPDate
#   sortOrder - SOAP::SOAPInt
#   systemModstamp - SOAP::SOAPDateTime
#   totalPrice - SOAP::SOAPDouble
#   unitPrice - SOAP::SOAPDouble
class OpportunityLineItem < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :listPrice
  attr_accessor :opportunity
  attr_accessor :opportunityId
  attr_accessor :pricebookEntry
  attr_accessor :pricebookEntryId
  attr_accessor :quantity
  attr_accessor :serviceDate
  attr_accessor :sortOrder
  attr_accessor :systemModstamp
  attr_accessor :totalPrice
  attr_accessor :unitPrice

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, listPrice = nil, opportunity = nil, opportunityId = nil, pricebookEntry = nil, pricebookEntryId = nil, quantity = nil, serviceDate = nil, sortOrder = nil, systemModstamp = nil, totalPrice = nil, unitPrice = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @listPrice = listPrice
    @opportunity = opportunity
    @opportunityId = opportunityId
    @pricebookEntry = pricebookEntry
    @pricebookEntryId = pricebookEntryId
    @quantity = quantity
    @serviceDate = serviceDate
    @sortOrder = sortOrder
    @systemModstamp = systemModstamp
    @totalPrice = totalPrice
    @unitPrice = unitPrice
  end
end

# {urn:sobject.enterprise.soap.sforce.com}OpportunityPartner
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountTo - Account
#   accountToId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   isPrimary - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   opportunity - Opportunity
#   opportunityId - (any)
#   reversePartnerId - (any)
#   role - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class OpportunityPartner < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountTo
  attr_accessor :accountToId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :isPrimary
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :opportunity
  attr_accessor :opportunityId
  attr_accessor :reversePartnerId
  attr_accessor :role
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, accountTo = nil, accountToId = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, isPrimary = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, opportunity = nil, opportunityId = nil, reversePartnerId = nil, role = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountTo = accountTo
    @accountToId = accountToId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @isPrimary = isPrimary
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @opportunity = opportunity
    @opportunityId = opportunityId
    @reversePartnerId = reversePartnerId
    @role = role
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}OpportunityShare
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   opportunity - Opportunity
#   opportunityAccessLevel - SOAP::SOAPString
#   opportunityId - (any)
#   rowCause - SOAP::SOAPString
#   userOrGroupId - (any)
class OpportunityShare < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :opportunity
  attr_accessor :opportunityAccessLevel
  attr_accessor :opportunityId
  attr_accessor :rowCause
  attr_accessor :userOrGroupId

  def initialize(fieldsToNull = [], id = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, opportunity = nil, opportunityAccessLevel = nil, opportunityId = nil, rowCause = nil, userOrGroupId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @opportunity = opportunity
    @opportunityAccessLevel = opportunityAccessLevel
    @opportunityId = opportunityId
    @rowCause = rowCause
    @userOrGroupId = userOrGroupId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}OpportunityStage
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   defaultProbability - SOAP::SOAPDouble
#   description - SOAP::SOAPString
#   forecastCategory - SOAP::SOAPString
#   forecastCategoryName - SOAP::SOAPString
#   isActive - SOAP::SOAPBoolean
#   isClosed - SOAP::SOAPBoolean
#   isWon - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   masterLabel - SOAP::SOAPString
#   sortOrder - SOAP::SOAPInt
#   systemModstamp - SOAP::SOAPDateTime
class OpportunityStage < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :defaultProbability
  attr_accessor :description
  attr_accessor :forecastCategory
  attr_accessor :forecastCategoryName
  attr_accessor :isActive
  attr_accessor :isClosed
  attr_accessor :isWon
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :masterLabel
  attr_accessor :sortOrder
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, defaultProbability = nil, description = nil, forecastCategory = nil, forecastCategoryName = nil, isActive = nil, isClosed = nil, isWon = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, masterLabel = nil, sortOrder = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @defaultProbability = defaultProbability
    @description = description
    @forecastCategory = forecastCategory
    @forecastCategoryName = forecastCategoryName
    @isActive = isActive
    @isClosed = isClosed
    @isWon = isWon
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @masterLabel = masterLabel
    @sortOrder = sortOrder
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}OrgWideEmailAddress
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   address - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   displayName - SOAP::SOAPString
#   isAllowAllProfiles - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   systemModstamp - SOAP::SOAPDateTime
class OrgWideEmailAddress < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :address
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :displayName
  attr_accessor :isAllowAllProfiles
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, address = nil, createdBy = nil, createdById = nil, createdDate = nil, displayName = nil, isAllowAllProfiles = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @address = address
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @displayName = displayName
    @isAllowAllProfiles = isAllowAllProfiles
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Organization
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   city - SOAP::SOAPString
#   complianceBccEmail - SOAP::SOAPString
#   country - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   defaultAccountAccess - SOAP::SOAPString
#   defaultCalendarAccess - SOAP::SOAPString
#   defaultCampaignAccess - SOAP::SOAPString
#   defaultCaseAccess - SOAP::SOAPString
#   defaultContactAccess - SOAP::SOAPString
#   defaultLeadAccess - SOAP::SOAPString
#   defaultLocaleSidKey - SOAP::SOAPString
#   defaultOpportunityAccess - SOAP::SOAPString
#   defaultPricebookAccess - SOAP::SOAPString
#   division - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   fiscalYearStartMonth - SOAP::SOAPInt
#   languageLocaleKey - SOAP::SOAPString
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   monthlyPageViewsEntitlement - SOAP::SOAPInt
#   monthlyPageViewsUsed - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   organizationType - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   preferencesRequireOpportunityProducts - SOAP::SOAPBoolean
#   primaryContact - SOAP::SOAPString
#   receivesAdminInfoEmails - SOAP::SOAPBoolean
#   receivesInfoEmails - SOAP::SOAPBoolean
#   state - SOAP::SOAPString
#   street - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   trialExpirationDate - SOAP::SOAPDateTime
#   uiSkin - SOAP::SOAPString
#   usesStartDateAsFiscalYearName - SOAP::SOAPBoolean
#   webToCaseDefaultOrigin - SOAP::SOAPString
class Organization < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :city
  attr_accessor :complianceBccEmail
  attr_accessor :country
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :defaultAccountAccess
  attr_accessor :defaultCalendarAccess
  attr_accessor :defaultCampaignAccess
  attr_accessor :defaultCaseAccess
  attr_accessor :defaultContactAccess
  attr_accessor :defaultLeadAccess
  attr_accessor :defaultLocaleSidKey
  attr_accessor :defaultOpportunityAccess
  attr_accessor :defaultPricebookAccess
  attr_accessor :division
  attr_accessor :fax
  attr_accessor :fiscalYearStartMonth
  attr_accessor :languageLocaleKey
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :monthlyPageViewsEntitlement
  attr_accessor :monthlyPageViewsUsed
  attr_accessor :name
  attr_accessor :organizationType
  attr_accessor :phone
  attr_accessor :postalCode
  attr_accessor :preferencesRequireOpportunityProducts
  attr_accessor :primaryContact
  attr_accessor :receivesAdminInfoEmails
  attr_accessor :receivesInfoEmails
  attr_accessor :state
  attr_accessor :street
  attr_accessor :systemModstamp
  attr_accessor :trialExpirationDate
  attr_accessor :uiSkin
  attr_accessor :usesStartDateAsFiscalYearName
  attr_accessor :webToCaseDefaultOrigin

  def initialize(fieldsToNull = [], id = nil, city = nil, complianceBccEmail = nil, country = nil, createdBy = nil, createdById = nil, createdDate = nil, defaultAccountAccess = nil, defaultCalendarAccess = nil, defaultCampaignAccess = nil, defaultCaseAccess = nil, defaultContactAccess = nil, defaultLeadAccess = nil, defaultLocaleSidKey = nil, defaultOpportunityAccess = nil, defaultPricebookAccess = nil, division = nil, fax = nil, fiscalYearStartMonth = nil, languageLocaleKey = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, monthlyPageViewsEntitlement = nil, monthlyPageViewsUsed = nil, name = nil, organizationType = nil, phone = nil, postalCode = nil, preferencesRequireOpportunityProducts = nil, primaryContact = nil, receivesAdminInfoEmails = nil, receivesInfoEmails = nil, state = nil, street = nil, systemModstamp = nil, trialExpirationDate = nil, uiSkin = nil, usesStartDateAsFiscalYearName = nil, webToCaseDefaultOrigin = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @city = city
    @complianceBccEmail = complianceBccEmail
    @country = country
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @defaultAccountAccess = defaultAccountAccess
    @defaultCalendarAccess = defaultCalendarAccess
    @defaultCampaignAccess = defaultCampaignAccess
    @defaultCaseAccess = defaultCaseAccess
    @defaultContactAccess = defaultContactAccess
    @defaultLeadAccess = defaultLeadAccess
    @defaultLocaleSidKey = defaultLocaleSidKey
    @defaultOpportunityAccess = defaultOpportunityAccess
    @defaultPricebookAccess = defaultPricebookAccess
    @division = division
    @fax = fax
    @fiscalYearStartMonth = fiscalYearStartMonth
    @languageLocaleKey = languageLocaleKey
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @monthlyPageViewsEntitlement = monthlyPageViewsEntitlement
    @monthlyPageViewsUsed = monthlyPageViewsUsed
    @name = name
    @organizationType = organizationType
    @phone = phone
    @postalCode = postalCode
    @preferencesRequireOpportunityProducts = preferencesRequireOpportunityProducts
    @primaryContact = primaryContact
    @receivesAdminInfoEmails = receivesAdminInfoEmails
    @receivesInfoEmails = receivesInfoEmails
    @state = state
    @street = street
    @systemModstamp = systemModstamp
    @trialExpirationDate = trialExpirationDate
    @uiSkin = uiSkin
    @usesStartDateAsFiscalYearName = usesStartDateAsFiscalYearName
    @webToCaseDefaultOrigin = webToCaseDefaultOrigin
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Partner
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   accountFrom - Account
#   accountFromId - (any)
#   accountTo - Account
#   accountToId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   isPrimary - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   opportunity - Opportunity
#   opportunityId - (any)
#   reversePartnerId - (any)
#   role - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class Partner < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :accountFrom
  attr_accessor :accountFromId
  attr_accessor :accountTo
  attr_accessor :accountToId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :isPrimary
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :opportunity
  attr_accessor :opportunityId
  attr_accessor :reversePartnerId
  attr_accessor :role
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, accountFrom = nil, accountFromId = nil, accountTo = nil, accountToId = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, isPrimary = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, opportunity = nil, opportunityId = nil, reversePartnerId = nil, role = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @accountFrom = accountFrom
    @accountFromId = accountFromId
    @accountTo = accountTo
    @accountToId = accountToId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @isPrimary = isPrimary
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @opportunity = opportunity
    @opportunityId = opportunityId
    @reversePartnerId = reversePartnerId
    @role = role
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}PartnerRole
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   masterLabel - SOAP::SOAPString
#   reverseRole - SOAP::SOAPString
#   sortOrder - SOAP::SOAPInt
#   systemModstamp - SOAP::SOAPDateTime
class PartnerRole < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :masterLabel
  attr_accessor :reverseRole
  attr_accessor :sortOrder
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, masterLabel = nil, reverseRole = nil, sortOrder = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @masterLabel = masterLabel
    @reverseRole = reverseRole
    @sortOrder = sortOrder
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Period
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   endDate - SOAP::SOAPDate
#   fiscalYearSettings - FiscalYearSettings
#   fiscalYearSettingsId - (any)
#   isForecastPeriod - SOAP::SOAPBoolean
#   number - SOAP::SOAPInt
#   periodLabel - SOAP::SOAPString
#   quarterLabel - SOAP::SOAPString
#   startDate - SOAP::SOAPDate
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class Period < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :endDate
  attr_accessor :fiscalYearSettings
  attr_accessor :fiscalYearSettingsId
  attr_accessor :isForecastPeriod
  attr_accessor :number
  attr_accessor :periodLabel
  attr_accessor :quarterLabel
  attr_accessor :startDate
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, endDate = nil, fiscalYearSettings = nil, fiscalYearSettingsId = nil, isForecastPeriod = nil, number = nil, periodLabel = nil, quarterLabel = nil, startDate = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @endDate = endDate
    @fiscalYearSettings = fiscalYearSettings
    @fiscalYearSettingsId = fiscalYearSettingsId
    @isForecastPeriod = isForecastPeriod
    @number = number
    @periodLabel = periodLabel
    @quarterLabel = quarterLabel
    @startDate = startDate
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Pricebook2
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   isActive - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   isStandard - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   opportunities - QueryResult
#   pricebookEntries - QueryResult
#   systemModstamp - SOAP::SOAPDateTime
class Pricebook2 < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :isActive
  attr_accessor :isDeleted
  attr_accessor :isStandard
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :opportunities
  attr_accessor :pricebookEntries
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, isActive = nil, isDeleted = nil, isStandard = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, opportunities = nil, pricebookEntries = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @isActive = isActive
    @isDeleted = isDeleted
    @isStandard = isStandard
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @opportunities = opportunities
    @pricebookEntries = pricebookEntries
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}PricebookEntry
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isActive - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   opportunityLineItems - QueryResult
#   pricebook2 - Pricebook2
#   pricebook2Id - (any)
#   product2 - Product2
#   product2Id - (any)
#   productCode - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   unitPrice - SOAP::SOAPDouble
#   useStandardPrice - SOAP::SOAPBoolean
class PricebookEntry < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isActive
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :opportunityLineItems
  attr_accessor :pricebook2
  attr_accessor :pricebook2Id
  attr_accessor :product2
  attr_accessor :product2Id
  attr_accessor :productCode
  attr_accessor :systemModstamp
  attr_accessor :unitPrice
  attr_accessor :useStandardPrice

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, isActive = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, opportunityLineItems = nil, pricebook2 = nil, pricebook2Id = nil, product2 = nil, product2Id = nil, productCode = nil, systemModstamp = nil, unitPrice = nil, useStandardPrice = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isActive = isActive
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @opportunityLineItems = opportunityLineItems
    @pricebook2 = pricebook2
    @pricebook2Id = pricebook2Id
    @product2 = product2
    @product2Id = product2Id
    @productCode = productCode
    @systemModstamp = systemModstamp
    @unitPrice = unitPrice
    @useStandardPrice = useStandardPrice
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ProcessInstance
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   status - SOAP::SOAPString
#   steps - QueryResult
#   stepsAndWorkitems - QueryResult
#   systemModstamp - SOAP::SOAPDateTime
#   targetObject - Name
#   targetObjectId - (any)
#   workitems - QueryResult
class ProcessInstance < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :status
  attr_accessor :steps
  attr_accessor :stepsAndWorkitems
  attr_accessor :systemModstamp
  attr_accessor :targetObject
  attr_accessor :targetObjectId
  attr_accessor :workitems

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, status = nil, steps = nil, stepsAndWorkitems = nil, systemModstamp = nil, targetObject = nil, targetObjectId = nil, workitems = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @status = status
    @steps = steps
    @stepsAndWorkitems = stepsAndWorkitems
    @systemModstamp = systemModstamp
    @targetObject = targetObject
    @targetObjectId = targetObjectId
    @workitems = workitems
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ProcessInstanceHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   actor - Name
#   actorId - (any)
#   comments - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   isPending - SOAP::SOAPBoolean
#   originalActor - Name
#   originalActorId - (any)
#   processInstance - ProcessInstance
#   processInstanceId - (any)
#   remindersSent - SOAP::SOAPInt
#   stepStatus - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   targetObject - Name
#   targetObjectId - (any)
class ProcessInstanceHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :actor
  attr_accessor :actorId
  attr_accessor :comments
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :isPending
  attr_accessor :originalActor
  attr_accessor :originalActorId
  attr_accessor :processInstance
  attr_accessor :processInstanceId
  attr_accessor :remindersSent
  attr_accessor :stepStatus
  attr_accessor :systemModstamp
  attr_accessor :targetObject
  attr_accessor :targetObjectId

  def initialize(fieldsToNull = [], id = nil, actor = nil, actorId = nil, comments = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, isPending = nil, originalActor = nil, originalActorId = nil, processInstance = nil, processInstanceId = nil, remindersSent = nil, stepStatus = nil, systemModstamp = nil, targetObject = nil, targetObjectId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @actor = actor
    @actorId = actorId
    @comments = comments
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @isPending = isPending
    @originalActor = originalActor
    @originalActorId = originalActorId
    @processInstance = processInstance
    @processInstanceId = processInstanceId
    @remindersSent = remindersSent
    @stepStatus = stepStatus
    @systemModstamp = systemModstamp
    @targetObject = targetObject
    @targetObjectId = targetObjectId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ProcessInstanceStep
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   actor - Name
#   actorId - (any)
#   comments - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   originalActor - Name
#   originalActorId - (any)
#   processInstance - ProcessInstance
#   processInstanceId - (any)
#   stepStatus - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class ProcessInstanceStep < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :actor
  attr_accessor :actorId
  attr_accessor :comments
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :originalActor
  attr_accessor :originalActorId
  attr_accessor :processInstance
  attr_accessor :processInstanceId
  attr_accessor :stepStatus
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, actor = nil, actorId = nil, comments = nil, createdBy = nil, createdById = nil, createdDate = nil, originalActor = nil, originalActorId = nil, processInstance = nil, processInstanceId = nil, stepStatus = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @actor = actor
    @actorId = actorId
    @comments = comments
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @originalActor = originalActor
    @originalActorId = originalActorId
    @processInstance = processInstance
    @processInstanceId = processInstanceId
    @stepStatus = stepStatus
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ProcessInstanceWorkitem
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   actor - Name
#   actorId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   originalActor - Name
#   originalActorId - (any)
#   processInstance - ProcessInstance
#   processInstanceId - (any)
#   systemModstamp - SOAP::SOAPDateTime
class ProcessInstanceWorkitem < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :actor
  attr_accessor :actorId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :originalActor
  attr_accessor :originalActorId
  attr_accessor :processInstance
  attr_accessor :processInstanceId
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, actor = nil, actorId = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, originalActor = nil, originalActorId = nil, processInstance = nil, processInstanceId = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @actor = actor
    @actorId = actorId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @originalActor = originalActor
    @originalActorId = originalActorId
    @processInstance = processInstance
    @processInstanceId = processInstanceId
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Product2
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   activityHistories - QueryResult
#   assets - QueryResult
#   attachments - QueryResult
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   events - QueryResult
#   family - SOAP::SOAPString
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   isActive - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   notes - QueryResult
#   notesAndAttachments - QueryResult
#   openActivities - QueryResult
#   opportunityLineItems - QueryResult
#   pricebookEntries - QueryResult
#   processInstances - QueryResult
#   processSteps - QueryResult
#   productCode - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tasks - QueryResult
class Product2 < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :activityHistories
  attr_accessor :assets
  attr_accessor :attachments
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :events
  attr_accessor :family
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :isActive
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :notes
  attr_accessor :notesAndAttachments
  attr_accessor :openActivities
  attr_accessor :opportunityLineItems
  attr_accessor :pricebookEntries
  attr_accessor :processInstances
  attr_accessor :processSteps
  attr_accessor :productCode
  attr_accessor :systemModstamp
  attr_accessor :tasks

  def initialize(fieldsToNull = [], id = nil, activityHistories = nil, assets = nil, attachments = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, events = nil, family = nil, feedSubscriptionsForEntity = nil, feeds = nil, isActive = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, notes = nil, notesAndAttachments = nil, openActivities = nil, opportunityLineItems = nil, pricebookEntries = nil, processInstances = nil, processSteps = nil, productCode = nil, systemModstamp = nil, tasks = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @activityHistories = activityHistories
    @assets = assets
    @attachments = attachments
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @events = events
    @family = family
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @isActive = isActive
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @notes = notes
    @notesAndAttachments = notesAndAttachments
    @openActivities = openActivities
    @opportunityLineItems = opportunityLineItems
    @pricebookEntries = pricebookEntries
    @processInstances = processInstances
    @processSteps = processSteps
    @productCode = productCode
    @systemModstamp = systemModstamp
    @tasks = tasks
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Product2Feed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Product2
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class Product2Feed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Profile
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   permissionsApiEnabled - SOAP::SOAPBoolean
#   permissionsAuthorApex - SOAP::SOAPBoolean
#   permissionsBulkApiHardDelete - SOAP::SOAPBoolean
#   permissionsCanUseNewDashboardBuilder - SOAP::SOAPBoolean
#   permissionsConvertLeads - SOAP::SOAPBoolean
#   permissionsCreateMultiforce - SOAP::SOAPBoolean
#   permissionsCustomSidebarOnAllPages - SOAP::SOAPBoolean
#   permissionsCustomizeApplication - SOAP::SOAPBoolean
#   permissionsDistributeFromPersWksp - SOAP::SOAPBoolean
#   permissionsEditCaseComments - SOAP::SOAPBoolean
#   permissionsEditEvent - SOAP::SOAPBoolean
#   permissionsEditKnowledge - SOAP::SOAPBoolean
#   permissionsEditOppLineItemUnitPrice - SOAP::SOAPBoolean
#   permissionsEditPublicDocuments - SOAP::SOAPBoolean
#   permissionsEditReadonlyFields - SOAP::SOAPBoolean
#   permissionsEditReports - SOAP::SOAPBoolean
#   permissionsEditTask - SOAP::SOAPBoolean
#   permissionsEnableNotifications - SOAP::SOAPBoolean
#   permissionsImportLeads - SOAP::SOAPBoolean
#   permissionsInstallMultiforce - SOAP::SOAPBoolean
#   permissionsManageAnalyticSnapshots - SOAP::SOAPBoolean
#   permissionsManageBusinessHourHolidays - SOAP::SOAPBoolean
#   permissionsManageCallCenters - SOAP::SOAPBoolean
#   permissionsManageCases - SOAP::SOAPBoolean
#   permissionsManageCategories - SOAP::SOAPBoolean
#   permissionsManageCssUsers - SOAP::SOAPBoolean
#   permissionsManageCustomReportTypes - SOAP::SOAPBoolean
#   permissionsManageDashboards - SOAP::SOAPBoolean
#   permissionsManageDataCategories - SOAP::SOAPBoolean
#   permissionsManageDataIntegrations - SOAP::SOAPBoolean
#   permissionsManageDynamicDashboards - SOAP::SOAPBoolean
#   permissionsManageEmailClientConfig - SOAP::SOAPBoolean
#   permissionsManageKnowledge - SOAP::SOAPBoolean
#   permissionsManageLeads - SOAP::SOAPBoolean
#   permissionsManageMobile - SOAP::SOAPBoolean
#   permissionsManageRemoteAccess - SOAP::SOAPBoolean
#   permissionsManageSelfService - SOAP::SOAPBoolean
#   permissionsManageSolutions - SOAP::SOAPBoolean
#   permissionsManageSynonyms - SOAP::SOAPBoolean
#   permissionsManageUsers - SOAP::SOAPBoolean
#   permissionsMassInlineEdit - SOAP::SOAPBoolean
#   permissionsModifyAllData - SOAP::SOAPBoolean
#   permissionsNewReportBuilder - SOAP::SOAPBoolean
#   permissionsPasswordNeverExpires - SOAP::SOAPBoolean
#   permissionsPublishMultiforce - SOAP::SOAPBoolean
#   permissionsRunReports - SOAP::SOAPBoolean
#   permissionsScheduleReports - SOAP::SOAPBoolean
#   permissionsSendSitRequests - SOAP::SOAPBoolean
#   permissionsSolutionImport - SOAP::SOAPBoolean
#   permissionsTransferAnyCase - SOAP::SOAPBoolean
#   permissionsTransferAnyEntity - SOAP::SOAPBoolean
#   permissionsTransferAnyLead - SOAP::SOAPBoolean
#   permissionsUseTeamReassignWizards - SOAP::SOAPBoolean
#   permissionsViewAllData - SOAP::SOAPBoolean
#   permissionsViewDataCategories - SOAP::SOAPBoolean
#   permissionsViewKnowledge - SOAP::SOAPBoolean
#   permissionsViewMyTeamsDashboards - SOAP::SOAPBoolean
#   permissionsViewSetup - SOAP::SOAPBoolean
#   systemModstamp - SOAP::SOAPDateTime
#   userLicense - UserLicense
#   userLicenseId - (any)
#   userType - SOAP::SOAPString
#   users - QueryResult
class Profile < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :permissionsApiEnabled
  attr_accessor :permissionsAuthorApex
  attr_accessor :permissionsBulkApiHardDelete
  attr_accessor :permissionsCanUseNewDashboardBuilder
  attr_accessor :permissionsConvertLeads
  attr_accessor :permissionsCreateMultiforce
  attr_accessor :permissionsCustomSidebarOnAllPages
  attr_accessor :permissionsCustomizeApplication
  attr_accessor :permissionsDistributeFromPersWksp
  attr_accessor :permissionsEditCaseComments
  attr_accessor :permissionsEditEvent
  attr_accessor :permissionsEditKnowledge
  attr_accessor :permissionsEditOppLineItemUnitPrice
  attr_accessor :permissionsEditPublicDocuments
  attr_accessor :permissionsEditReadonlyFields
  attr_accessor :permissionsEditReports
  attr_accessor :permissionsEditTask
  attr_accessor :permissionsEnableNotifications
  attr_accessor :permissionsImportLeads
  attr_accessor :permissionsInstallMultiforce
  attr_accessor :permissionsManageAnalyticSnapshots
  attr_accessor :permissionsManageBusinessHourHolidays
  attr_accessor :permissionsManageCallCenters
  attr_accessor :permissionsManageCases
  attr_accessor :permissionsManageCategories
  attr_accessor :permissionsManageCssUsers
  attr_accessor :permissionsManageCustomReportTypes
  attr_accessor :permissionsManageDashboards
  attr_accessor :permissionsManageDataCategories
  attr_accessor :permissionsManageDataIntegrations
  attr_accessor :permissionsManageDynamicDashboards
  attr_accessor :permissionsManageEmailClientConfig
  attr_accessor :permissionsManageKnowledge
  attr_accessor :permissionsManageLeads
  attr_accessor :permissionsManageMobile
  attr_accessor :permissionsManageRemoteAccess
  attr_accessor :permissionsManageSelfService
  attr_accessor :permissionsManageSolutions
  attr_accessor :permissionsManageSynonyms
  attr_accessor :permissionsManageUsers
  attr_accessor :permissionsMassInlineEdit
  attr_accessor :permissionsModifyAllData
  attr_accessor :permissionsNewReportBuilder
  attr_accessor :permissionsPasswordNeverExpires
  attr_accessor :permissionsPublishMultiforce
  attr_accessor :permissionsRunReports
  attr_accessor :permissionsScheduleReports
  attr_accessor :permissionsSendSitRequests
  attr_accessor :permissionsSolutionImport
  attr_accessor :permissionsTransferAnyCase
  attr_accessor :permissionsTransferAnyEntity
  attr_accessor :permissionsTransferAnyLead
  attr_accessor :permissionsUseTeamReassignWizards
  attr_accessor :permissionsViewAllData
  attr_accessor :permissionsViewDataCategories
  attr_accessor :permissionsViewKnowledge
  attr_accessor :permissionsViewMyTeamsDashboards
  attr_accessor :permissionsViewSetup
  attr_accessor :systemModstamp
  attr_accessor :userLicense
  attr_accessor :userLicenseId
  attr_accessor :userType
  attr_accessor :users

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, permissionsApiEnabled = nil, permissionsAuthorApex = nil, permissionsBulkApiHardDelete = nil, permissionsCanUseNewDashboardBuilder = nil, permissionsConvertLeads = nil, permissionsCreateMultiforce = nil, permissionsCustomSidebarOnAllPages = nil, permissionsCustomizeApplication = nil, permissionsDistributeFromPersWksp = nil, permissionsEditCaseComments = nil, permissionsEditEvent = nil, permissionsEditKnowledge = nil, permissionsEditOppLineItemUnitPrice = nil, permissionsEditPublicDocuments = nil, permissionsEditReadonlyFields = nil, permissionsEditReports = nil, permissionsEditTask = nil, permissionsEnableNotifications = nil, permissionsImportLeads = nil, permissionsInstallMultiforce = nil, permissionsManageAnalyticSnapshots = nil, permissionsManageBusinessHourHolidays = nil, permissionsManageCallCenters = nil, permissionsManageCases = nil, permissionsManageCategories = nil, permissionsManageCssUsers = nil, permissionsManageCustomReportTypes = nil, permissionsManageDashboards = nil, permissionsManageDataCategories = nil, permissionsManageDataIntegrations = nil, permissionsManageDynamicDashboards = nil, permissionsManageEmailClientConfig = nil, permissionsManageKnowledge = nil, permissionsManageLeads = nil, permissionsManageMobile = nil, permissionsManageRemoteAccess = nil, permissionsManageSelfService = nil, permissionsManageSolutions = nil, permissionsManageSynonyms = nil, permissionsManageUsers = nil, permissionsMassInlineEdit = nil, permissionsModifyAllData = nil, permissionsNewReportBuilder = nil, permissionsPasswordNeverExpires = nil, permissionsPublishMultiforce = nil, permissionsRunReports = nil, permissionsScheduleReports = nil, permissionsSendSitRequests = nil, permissionsSolutionImport = nil, permissionsTransferAnyCase = nil, permissionsTransferAnyEntity = nil, permissionsTransferAnyLead = nil, permissionsUseTeamReassignWizards = nil, permissionsViewAllData = nil, permissionsViewDataCategories = nil, permissionsViewKnowledge = nil, permissionsViewMyTeamsDashboards = nil, permissionsViewSetup = nil, systemModstamp = nil, userLicense = nil, userLicenseId = nil, userType = nil, users = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @permissionsApiEnabled = permissionsApiEnabled
    @permissionsAuthorApex = permissionsAuthorApex
    @permissionsBulkApiHardDelete = permissionsBulkApiHardDelete
    @permissionsCanUseNewDashboardBuilder = permissionsCanUseNewDashboardBuilder
    @permissionsConvertLeads = permissionsConvertLeads
    @permissionsCreateMultiforce = permissionsCreateMultiforce
    @permissionsCustomSidebarOnAllPages = permissionsCustomSidebarOnAllPages
    @permissionsCustomizeApplication = permissionsCustomizeApplication
    @permissionsDistributeFromPersWksp = permissionsDistributeFromPersWksp
    @permissionsEditCaseComments = permissionsEditCaseComments
    @permissionsEditEvent = permissionsEditEvent
    @permissionsEditKnowledge = permissionsEditKnowledge
    @permissionsEditOppLineItemUnitPrice = permissionsEditOppLineItemUnitPrice
    @permissionsEditPublicDocuments = permissionsEditPublicDocuments
    @permissionsEditReadonlyFields = permissionsEditReadonlyFields
    @permissionsEditReports = permissionsEditReports
    @permissionsEditTask = permissionsEditTask
    @permissionsEnableNotifications = permissionsEnableNotifications
    @permissionsImportLeads = permissionsImportLeads
    @permissionsInstallMultiforce = permissionsInstallMultiforce
    @permissionsManageAnalyticSnapshots = permissionsManageAnalyticSnapshots
    @permissionsManageBusinessHourHolidays = permissionsManageBusinessHourHolidays
    @permissionsManageCallCenters = permissionsManageCallCenters
    @permissionsManageCases = permissionsManageCases
    @permissionsManageCategories = permissionsManageCategories
    @permissionsManageCssUsers = permissionsManageCssUsers
    @permissionsManageCustomReportTypes = permissionsManageCustomReportTypes
    @permissionsManageDashboards = permissionsManageDashboards
    @permissionsManageDataCategories = permissionsManageDataCategories
    @permissionsManageDataIntegrations = permissionsManageDataIntegrations
    @permissionsManageDynamicDashboards = permissionsManageDynamicDashboards
    @permissionsManageEmailClientConfig = permissionsManageEmailClientConfig
    @permissionsManageKnowledge = permissionsManageKnowledge
    @permissionsManageLeads = permissionsManageLeads
    @permissionsManageMobile = permissionsManageMobile
    @permissionsManageRemoteAccess = permissionsManageRemoteAccess
    @permissionsManageSelfService = permissionsManageSelfService
    @permissionsManageSolutions = permissionsManageSolutions
    @permissionsManageSynonyms = permissionsManageSynonyms
    @permissionsManageUsers = permissionsManageUsers
    @permissionsMassInlineEdit = permissionsMassInlineEdit
    @permissionsModifyAllData = permissionsModifyAllData
    @permissionsNewReportBuilder = permissionsNewReportBuilder
    @permissionsPasswordNeverExpires = permissionsPasswordNeverExpires
    @permissionsPublishMultiforce = permissionsPublishMultiforce
    @permissionsRunReports = permissionsRunReports
    @permissionsScheduleReports = permissionsScheduleReports
    @permissionsSendSitRequests = permissionsSendSitRequests
    @permissionsSolutionImport = permissionsSolutionImport
    @permissionsTransferAnyCase = permissionsTransferAnyCase
    @permissionsTransferAnyEntity = permissionsTransferAnyEntity
    @permissionsTransferAnyLead = permissionsTransferAnyLead
    @permissionsUseTeamReassignWizards = permissionsUseTeamReassignWizards
    @permissionsViewAllData = permissionsViewAllData
    @permissionsViewDataCategories = permissionsViewDataCategories
    @permissionsViewKnowledge = permissionsViewKnowledge
    @permissionsViewMyTeamsDashboards = permissionsViewMyTeamsDashboards
    @permissionsViewSetup = permissionsViewSetup
    @systemModstamp = systemModstamp
    @userLicense = userLicense
    @userLicenseId = userLicenseId
    @userType = userType
    @users = users
  end
end

# {urn:sobject.enterprise.soap.sforce.com}QueueSobject
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   queue - Group
#   queueId - (any)
#   sobjectType - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class QueueSobject < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :queue
  attr_accessor :queueId
  attr_accessor :sobjectType
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, queue = nil, queueId = nil, sobjectType = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @queue = queue
    @queueId = queueId
    @sobjectType = sobjectType
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}RecordType
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   businessProcessId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   developerName - SOAP::SOAPString
#   isActive - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   sobjectType - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class RecordType < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :businessProcessId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :developerName
  attr_accessor :isActive
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :sobjectType
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, businessProcessId = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, developerName = nil, isActive = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, namespacePrefix = nil, sobjectType = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @businessProcessId = businessProcessId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @developerName = developerName
    @isActive = isActive
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @namespacePrefix = namespacePrefix
    @sobjectType = sobjectType
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Report
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   developerName - SOAP::SOAPString
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lastRunDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   ownerId - (any)
#   systemModstamp - SOAP::SOAPDateTime
class Report < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :developerName
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :isDeleted
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lastRunDate
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :ownerId
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, developerName = nil, feedSubscriptionsForEntity = nil, feeds = nil, isDeleted = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lastRunDate = nil, name = nil, namespacePrefix = nil, ownerId = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @developerName = developerName
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @isDeleted = isDeleted
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lastRunDate = lastRunDate
    @name = name
    @namespacePrefix = namespacePrefix
    @ownerId = ownerId
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}ReportFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Report
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class ReportFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Scontrol
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   binary - SOAP::SOAPBase64
#   bodyLength - SOAP::SOAPInt
#   contentSource - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   developerName - SOAP::SOAPString
#   encodingKey - SOAP::SOAPString
#   filename - SOAP::SOAPString
#   htmlWrapper - SOAP::SOAPString
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   supportsCaching - SOAP::SOAPBoolean
#   systemModstamp - SOAP::SOAPDateTime
class Scontrol < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :binary
  attr_accessor :bodyLength
  attr_accessor :contentSource
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :developerName
  attr_accessor :encodingKey
  attr_accessor :filename
  attr_accessor :htmlWrapper
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :supportsCaching
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, binary = nil, bodyLength = nil, contentSource = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, developerName = nil, encodingKey = nil, filename = nil, htmlWrapper = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, namespacePrefix = nil, supportsCaching = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @binary = binary
    @bodyLength = bodyLength
    @contentSource = contentSource
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @developerName = developerName
    @encodingKey = encodingKey
    @filename = filename
    @htmlWrapper = htmlWrapper
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @namespacePrefix = namespacePrefix
    @supportsCaching = supportsCaching
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}SelfServiceUser
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   contactId - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   email - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   isActive - SOAP::SOAPBoolean
#   languageLocaleKey - SOAP::SOAPString
#   lastLoginDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lastName - SOAP::SOAPString
#   localeSidKey - SOAP::SOAPString
#   name - SOAP::SOAPString
#   superUser - SOAP::SOAPBoolean
#   systemModstamp - SOAP::SOAPDateTime
#   timeZoneSidKey - SOAP::SOAPString
#   username - SOAP::SOAPString
class SelfServiceUser < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :contactId
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :email
  attr_accessor :firstName
  attr_accessor :isActive
  attr_accessor :languageLocaleKey
  attr_accessor :lastLoginDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lastName
  attr_accessor :localeSidKey
  attr_accessor :name
  attr_accessor :superUser
  attr_accessor :systemModstamp
  attr_accessor :timeZoneSidKey
  attr_accessor :username

  def initialize(fieldsToNull = [], id = nil, contactId = nil, createdBy = nil, createdById = nil, createdDate = nil, email = nil, firstName = nil, isActive = nil, languageLocaleKey = nil, lastLoginDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lastName = nil, localeSidKey = nil, name = nil, superUser = nil, systemModstamp = nil, timeZoneSidKey = nil, username = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @contactId = contactId
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @email = email
    @firstName = firstName
    @isActive = isActive
    @languageLocaleKey = languageLocaleKey
    @lastLoginDate = lastLoginDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lastName = lastName
    @localeSidKey = localeSidKey
    @name = name
    @superUser = superUser
    @systemModstamp = systemModstamp
    @timeZoneSidKey = timeZoneSidKey
    @username = username
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Site
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   admin - User
#   adminId - (any)
#   analyticsTrackingCode - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   dailyBandwidthLimit - SOAP::SOAPInt
#   dailyBandwidthUsed - SOAP::SOAPInt
#   dailyRequestTimeLimit - SOAP::SOAPInt
#   dailyRequestTimeUsed - SOAP::SOAPInt
#   description - SOAP::SOAPString
#   histories - QueryResult
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   masterLabel - SOAP::SOAPString
#   monthlyPageViewsEntitlement - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   optionsAllowHomePage - SOAP::SOAPBoolean
#   optionsAllowStandardAnswersPages - SOAP::SOAPBoolean
#   optionsAllowStandardIdeasPages - SOAP::SOAPBoolean
#   optionsAllowStandardLookups - SOAP::SOAPBoolean
#   optionsAllowStandardSearch - SOAP::SOAPBoolean
#   optionsEnableFeeds - SOAP::SOAPBoolean
#   status - SOAP::SOAPString
#   subdomain - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   topLevelDomain - SOAP::SOAPString
#   urlPathPrefix - SOAP::SOAPString
class Site < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :admin
  attr_accessor :adminId
  attr_accessor :analyticsTrackingCode
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :dailyBandwidthLimit
  attr_accessor :dailyBandwidthUsed
  attr_accessor :dailyRequestTimeLimit
  attr_accessor :dailyRequestTimeUsed
  attr_accessor :description
  attr_accessor :histories
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :masterLabel
  attr_accessor :monthlyPageViewsEntitlement
  attr_accessor :name
  attr_accessor :optionsAllowHomePage
  attr_accessor :optionsAllowStandardAnswersPages
  attr_accessor :optionsAllowStandardIdeasPages
  attr_accessor :optionsAllowStandardLookups
  attr_accessor :optionsAllowStandardSearch
  attr_accessor :optionsEnableFeeds
  attr_accessor :status
  attr_accessor :subdomain
  attr_accessor :systemModstamp
  attr_accessor :topLevelDomain
  attr_accessor :urlPathPrefix

  def initialize(fieldsToNull = [], id = nil, admin = nil, adminId = nil, analyticsTrackingCode = nil, createdBy = nil, createdById = nil, createdDate = nil, dailyBandwidthLimit = nil, dailyBandwidthUsed = nil, dailyRequestTimeLimit = nil, dailyRequestTimeUsed = nil, description = nil, histories = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, masterLabel = nil, monthlyPageViewsEntitlement = nil, name = nil, optionsAllowHomePage = nil, optionsAllowStandardAnswersPages = nil, optionsAllowStandardIdeasPages = nil, optionsAllowStandardLookups = nil, optionsAllowStandardSearch = nil, optionsEnableFeeds = nil, status = nil, subdomain = nil, systemModstamp = nil, topLevelDomain = nil, urlPathPrefix = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @admin = admin
    @adminId = adminId
    @analyticsTrackingCode = analyticsTrackingCode
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @dailyBandwidthLimit = dailyBandwidthLimit
    @dailyBandwidthUsed = dailyBandwidthUsed
    @dailyRequestTimeLimit = dailyRequestTimeLimit
    @dailyRequestTimeUsed = dailyRequestTimeUsed
    @description = description
    @histories = histories
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @masterLabel = masterLabel
    @monthlyPageViewsEntitlement = monthlyPageViewsEntitlement
    @name = name
    @optionsAllowHomePage = optionsAllowHomePage
    @optionsAllowStandardAnswersPages = optionsAllowStandardAnswersPages
    @optionsAllowStandardIdeasPages = optionsAllowStandardIdeasPages
    @optionsAllowStandardLookups = optionsAllowStandardLookups
    @optionsAllowStandardSearch = optionsAllowStandardSearch
    @optionsEnableFeeds = optionsEnableFeeds
    @status = status
    @subdomain = subdomain
    @systemModstamp = systemModstamp
    @topLevelDomain = topLevelDomain
    @urlPathPrefix = urlPathPrefix
  end
end

# {urn:sobject.enterprise.soap.sforce.com}SiteHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   field - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   newValue - (any)
#   oldValue - (any)
#   site - Site
#   siteId - (any)
class SiteHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :field
  attr_accessor :isDeleted
  attr_accessor :newValue
  attr_accessor :oldValue
  attr_accessor :site
  attr_accessor :siteId

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, field = nil, isDeleted = nil, newValue = nil, oldValue = nil, site = nil, siteId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @field = field
    @isDeleted = isDeleted
    @newValue = newValue
    @oldValue = oldValue
    @site = site
    @siteId = siteId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Solution
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   activityHistories - QueryResult
#   attachments - QueryResult
#   caseSolutions - QueryResult
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   events - QueryResult
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   histories - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   isHtml - SOAP::SOAPBoolean
#   isPublished - SOAP::SOAPBoolean
#   isPublishedInPublicKb - SOAP::SOAPBoolean
#   isReviewed - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   openActivities - QueryResult
#   owner - User
#   ownerId - (any)
#   processInstances - QueryResult
#   processSteps - QueryResult
#   solutionName - SOAP::SOAPString
#   solutionNote - SOAP::SOAPString
#   solutionNumber - SOAP::SOAPString
#   status - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   tasks - QueryResult
#   timesUsed - SOAP::SOAPInt
#   votes - QueryResult
class Solution < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :activityHistories
  attr_accessor :attachments
  attr_accessor :caseSolutions
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :events
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :histories
  attr_accessor :isDeleted
  attr_accessor :isHtml
  attr_accessor :isPublished
  attr_accessor :isPublishedInPublicKb
  attr_accessor :isReviewed
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :openActivities
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :processInstances
  attr_accessor :processSteps
  attr_accessor :solutionName
  attr_accessor :solutionNote
  attr_accessor :solutionNumber
  attr_accessor :status
  attr_accessor :systemModstamp
  attr_accessor :tasks
  attr_accessor :timesUsed
  attr_accessor :votes

  def initialize(fieldsToNull = [], id = nil, activityHistories = nil, attachments = nil, caseSolutions = nil, createdBy = nil, createdById = nil, createdDate = nil, events = nil, feedSubscriptionsForEntity = nil, feeds = nil, histories = nil, isDeleted = nil, isHtml = nil, isPublished = nil, isPublishedInPublicKb = nil, isReviewed = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, openActivities = nil, owner = nil, ownerId = nil, processInstances = nil, processSteps = nil, solutionName = nil, solutionNote = nil, solutionNumber = nil, status = nil, systemModstamp = nil, tasks = nil, timesUsed = nil, votes = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @activityHistories = activityHistories
    @attachments = attachments
    @caseSolutions = caseSolutions
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @events = events
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @histories = histories
    @isDeleted = isDeleted
    @isHtml = isHtml
    @isPublished = isPublished
    @isPublishedInPublicKb = isPublishedInPublicKb
    @isReviewed = isReviewed
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @openActivities = openActivities
    @owner = owner
    @ownerId = ownerId
    @processInstances = processInstances
    @processSteps = processSteps
    @solutionName = solutionName
    @solutionNote = solutionNote
    @solutionNumber = solutionNumber
    @status = status
    @systemModstamp = systemModstamp
    @tasks = tasks
    @timesUsed = timesUsed
    @votes = votes
  end
end

# {urn:sobject.enterprise.soap.sforce.com}SolutionFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Solution
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class SolutionFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}SolutionHistory
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   field - SOAP::SOAPString
#   isDeleted - SOAP::SOAPBoolean
#   newValue - (any)
#   oldValue - (any)
#   solution - Solution
#   solutionId - (any)
class SolutionHistory < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :field
  attr_accessor :isDeleted
  attr_accessor :newValue
  attr_accessor :oldValue
  attr_accessor :solution
  attr_accessor :solutionId

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, field = nil, isDeleted = nil, newValue = nil, oldValue = nil, solution = nil, solutionId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @field = field
    @isDeleted = isDeleted
    @newValue = newValue
    @oldValue = oldValue
    @solution = solution
    @solutionId = solutionId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}SolutionStatus
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDefault - SOAP::SOAPBoolean
#   isReviewed - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   masterLabel - SOAP::SOAPString
#   sortOrder - SOAP::SOAPInt
#   systemModstamp - SOAP::SOAPDateTime
class SolutionStatus < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDefault
  attr_accessor :isReviewed
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :masterLabel
  attr_accessor :sortOrder
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, isDefault = nil, isReviewed = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, masterLabel = nil, sortOrder = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDefault = isDefault
    @isReviewed = isReviewed
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @masterLabel = masterLabel
    @sortOrder = sortOrder
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}StaticResource
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   body - SOAP::SOAPBase64
#   bodyLength - SOAP::SOAPInt
#   cacheControl - SOAP::SOAPString
#   contentType - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class StaticResource < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :body
  attr_accessor :bodyLength
  attr_accessor :cacheControl
  attr_accessor :contentType
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, body = nil, bodyLength = nil, cacheControl = nil, contentType = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, name = nil, namespacePrefix = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @body = body
    @bodyLength = bodyLength
    @cacheControl = cacheControl
    @contentType = contentType
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @name = name
    @namespacePrefix = namespacePrefix
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Task
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   account - Account
#   accountId - (any)
#   activityDate - SOAP::SOAPDate
#   attachments - QueryResult
#   callDisposition - SOAP::SOAPString
#   callDurationInSeconds - SOAP::SOAPInt
#   callObject - SOAP::SOAPString
#   callType - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   isArchived - SOAP::SOAPBoolean
#   isClosed - SOAP::SOAPBoolean
#   isDeleted - SOAP::SOAPBoolean
#   isRecurrence - SOAP::SOAPBoolean
#   isReminderSet - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   owner - Name
#   ownerId - (any)
#   priority - SOAP::SOAPString
#   recurrenceActivityId - (any)
#   recurrenceDayOfMonth - SOAP::SOAPInt
#   recurrenceDayOfWeekMask - SOAP::SOAPInt
#   recurrenceEndDateOnly - SOAP::SOAPDate
#   recurrenceInstance - SOAP::SOAPString
#   recurrenceInterval - SOAP::SOAPInt
#   recurrenceMonthOfYear - SOAP::SOAPString
#   recurrenceStartDateOnly - SOAP::SOAPDate
#   recurrenceTimeZoneSidKey - SOAP::SOAPString
#   recurrenceType - SOAP::SOAPString
#   recurringTasks - QueryResult
#   reminderDateTime - SOAP::SOAPDateTime
#   status - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   what - Name
#   whatId - (any)
#   who - Name
#   whoId - (any)
class Task < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :account
  attr_accessor :accountId
  attr_accessor :activityDate
  attr_accessor :attachments
  attr_accessor :callDisposition
  attr_accessor :callDurationInSeconds
  attr_accessor :callObject
  attr_accessor :callType
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :isArchived
  attr_accessor :isClosed
  attr_accessor :isDeleted
  attr_accessor :isRecurrence
  attr_accessor :isReminderSet
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :owner
  attr_accessor :ownerId
  attr_accessor :priority
  attr_accessor :recurrenceActivityId
  attr_accessor :recurrenceDayOfMonth
  attr_accessor :recurrenceDayOfWeekMask
  attr_accessor :recurrenceEndDateOnly
  attr_accessor :recurrenceInstance
  attr_accessor :recurrenceInterval
  attr_accessor :recurrenceMonthOfYear
  attr_accessor :recurrenceStartDateOnly
  attr_accessor :recurrenceTimeZoneSidKey
  attr_accessor :recurrenceType
  attr_accessor :recurringTasks
  attr_accessor :reminderDateTime
  attr_accessor :status
  attr_accessor :subject
  attr_accessor :systemModstamp
  attr_accessor :what
  attr_accessor :whatId
  attr_accessor :who
  attr_accessor :whoId

  def initialize(fieldsToNull = [], id = nil, account = nil, accountId = nil, activityDate = nil, attachments = nil, callDisposition = nil, callDurationInSeconds = nil, callObject = nil, callType = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, feedSubscriptionsForEntity = nil, feeds = nil, isArchived = nil, isClosed = nil, isDeleted = nil, isRecurrence = nil, isReminderSet = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, owner = nil, ownerId = nil, priority = nil, recurrenceActivityId = nil, recurrenceDayOfMonth = nil, recurrenceDayOfWeekMask = nil, recurrenceEndDateOnly = nil, recurrenceInstance = nil, recurrenceInterval = nil, recurrenceMonthOfYear = nil, recurrenceStartDateOnly = nil, recurrenceTimeZoneSidKey = nil, recurrenceType = nil, recurringTasks = nil, reminderDateTime = nil, status = nil, subject = nil, systemModstamp = nil, what = nil, whatId = nil, who = nil, whoId = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @account = account
    @accountId = accountId
    @activityDate = activityDate
    @attachments = attachments
    @callDisposition = callDisposition
    @callDurationInSeconds = callDurationInSeconds
    @callObject = callObject
    @callType = callType
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @isArchived = isArchived
    @isClosed = isClosed
    @isDeleted = isDeleted
    @isRecurrence = isRecurrence
    @isReminderSet = isReminderSet
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @owner = owner
    @ownerId = ownerId
    @priority = priority
    @recurrenceActivityId = recurrenceActivityId
    @recurrenceDayOfMonth = recurrenceDayOfMonth
    @recurrenceDayOfWeekMask = recurrenceDayOfWeekMask
    @recurrenceEndDateOnly = recurrenceEndDateOnly
    @recurrenceInstance = recurrenceInstance
    @recurrenceInterval = recurrenceInterval
    @recurrenceMonthOfYear = recurrenceMonthOfYear
    @recurrenceStartDateOnly = recurrenceStartDateOnly
    @recurrenceTimeZoneSidKey = recurrenceTimeZoneSidKey
    @recurrenceType = recurrenceType
    @recurringTasks = recurringTasks
    @reminderDateTime = reminderDateTime
    @status = status
    @subject = subject
    @systemModstamp = systemModstamp
    @what = what
    @whatId = whatId
    @who = who
    @whoId = whoId
  end
end

# {urn:sobject.enterprise.soap.sforce.com}TaskFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Task
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class TaskFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}TaskPriority
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDefault - SOAP::SOAPBoolean
#   isHighPriority - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   masterLabel - SOAP::SOAPString
#   sortOrder - SOAP::SOAPInt
#   systemModstamp - SOAP::SOAPDateTime
class TaskPriority < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDefault
  attr_accessor :isHighPriority
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :masterLabel
  attr_accessor :sortOrder
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, isDefault = nil, isHighPriority = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, masterLabel = nil, sortOrder = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDefault = isDefault
    @isHighPriority = isHighPriority
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @masterLabel = masterLabel
    @sortOrder = sortOrder
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}TaskStatus
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isClosed - SOAP::SOAPBoolean
#   isDefault - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   masterLabel - SOAP::SOAPString
#   sortOrder - SOAP::SOAPInt
#   systemModstamp - SOAP::SOAPDateTime
class TaskStatus < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isClosed
  attr_accessor :isDefault
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :masterLabel
  attr_accessor :sortOrder
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, isClosed = nil, isDefault = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, masterLabel = nil, sortOrder = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isClosed = isClosed
    @isDefault = isDefault
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @masterLabel = masterLabel
    @sortOrder = sortOrder
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}User
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   aboutMe - SOAP::SOAPString
#   accountId - (any)
#   m_alias - SOAP::SOAPString
#   callCenterId - (any)
#   city - SOAP::SOAPString
#   communityNickname - SOAP::SOAPString
#   companyName - SOAP::SOAPString
#   contact - Contact
#   contactId - (any)
#   contractsSigned - QueryResult
#   country - SOAP::SOAPString
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   currentStatus - SOAP::SOAPString
#   delegatedApproverId - (any)
#   delegatedUsers - QueryResult
#   department - SOAP::SOAPString
#   digestFrequency - SOAP::SOAPString
#   division - SOAP::SOAPString
#   email - SOAP::SOAPString
#   emailEncodingKey - SOAP::SOAPString
#   employeeNumber - SOAP::SOAPString
#   extension - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   federationIdentifier - SOAP::SOAPString
#   feedSubscriptions - QueryResult
#   feedSubscriptionsForEntity - QueryResult
#   feeds - QueryResult
#   firstName - SOAP::SOAPString
#   forecastEnabled - SOAP::SOAPBoolean
#   fullPhotoUrl - SOAP::SOAPString
#   isActive - SOAP::SOAPBoolean
#   languageLocaleKey - SOAP::SOAPString
#   lastLoginDate - SOAP::SOAPDateTime
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   lastName - SOAP::SOAPString
#   lastPasswordChangeDate - SOAP::SOAPDateTime
#   localeSidKey - SOAP::SOAPString
#   manager - User
#   managerId - (any)
#   mobilePhone - SOAP::SOAPString
#   name - SOAP::SOAPString
#   offlinePdaTrialExpirationDate - SOAP::SOAPDateTime
#   offlineTrialExpirationDate - SOAP::SOAPDateTime
#   phone - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   profile - Profile
#   profileId - (any)
#   receivesAdminInfoEmails - SOAP::SOAPBoolean
#   receivesInfoEmails - SOAP::SOAPBoolean
#   smallPhotoUrl - SOAP::SOAPString
#   state - SOAP::SOAPString
#   street - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   timeZoneSidKey - SOAP::SOAPString
#   title - SOAP::SOAPString
#   userPermissionsCallCenterAutoLogin - SOAP::SOAPBoolean
#   userPermissionsKnowledgeUser - SOAP::SOAPBoolean
#   userPermissionsMarketingUser - SOAP::SOAPBoolean
#   userPermissionsMobileUser - SOAP::SOAPBoolean
#   userPermissionsOfflineUser - SOAP::SOAPBoolean
#   userPermissionsSFContentUser - SOAP::SOAPBoolean
#   userPermissionsSupportUser - SOAP::SOAPBoolean
#   userPreferences - QueryResult
#   userPreferencesActivityRemindersPopup - SOAP::SOAPBoolean
#   userPreferencesApexPagesDeveloperMode - SOAP::SOAPBoolean
#   userPreferencesDisableAutoSubForFeeds - SOAP::SOAPBoolean
#   userPreferencesEventRemindersCheckboxDefault - SOAP::SOAPBoolean
#   userPreferencesReminderSoundOff - SOAP::SOAPBoolean
#   userPreferencesTaskRemindersCheckboxDefault - SOAP::SOAPBoolean
#   userRole - UserRole
#   userRoleId - (any)
#   userType - SOAP::SOAPString
#   username - SOAP::SOAPString
class SUser < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :aboutMe
  attr_accessor :accountId
  attr_accessor :callCenterId
  attr_accessor :city
  attr_accessor :communityNickname
  attr_accessor :companyName
  attr_accessor :contact
  attr_accessor :contactId
  attr_accessor :contractsSigned
  attr_accessor :country
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :currentStatus
  attr_accessor :delegatedApproverId
  attr_accessor :delegatedUsers
  attr_accessor :department
  attr_accessor :digestFrequency
  attr_accessor :division
  attr_accessor :email
  attr_accessor :emailEncodingKey
  attr_accessor :employeeNumber
  attr_accessor :extension
  attr_accessor :fax
  attr_accessor :federationIdentifier
  attr_accessor :feedSubscriptions
  attr_accessor :feedSubscriptionsForEntity
  attr_accessor :feeds
  attr_accessor :firstName
  attr_accessor :forecastEnabled
  attr_accessor :fullPhotoUrl
  attr_accessor :isActive
  attr_accessor :languageLocaleKey
  attr_accessor :lastLoginDate
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :lastName
  attr_accessor :lastPasswordChangeDate
  attr_accessor :localeSidKey
  attr_accessor :manager
  attr_accessor :managerId
  attr_accessor :mobilePhone
  attr_accessor :name
  attr_accessor :offlinePdaTrialExpirationDate
  attr_accessor :offlineTrialExpirationDate
  attr_accessor :phone
  attr_accessor :postalCode
  attr_accessor :profile
  attr_accessor :profileId
  attr_accessor :receivesAdminInfoEmails
  attr_accessor :receivesInfoEmails
  attr_accessor :smallPhotoUrl
  attr_accessor :state
  attr_accessor :street
  attr_accessor :systemModstamp
  attr_accessor :timeZoneSidKey
  attr_accessor :title
  attr_accessor :userPermissionsCallCenterAutoLogin
  attr_accessor :userPermissionsKnowledgeUser
  attr_accessor :userPermissionsMarketingUser
  attr_accessor :userPermissionsMobileUser
  attr_accessor :userPermissionsOfflineUser
  attr_accessor :userPermissionsSFContentUser
  attr_accessor :userPermissionsSupportUser
  attr_accessor :userPreferences
  attr_accessor :userPreferencesActivityRemindersPopup
  attr_accessor :userPreferencesApexPagesDeveloperMode
  attr_accessor :userPreferencesDisableAutoSubForFeeds
  attr_accessor :userPreferencesEventRemindersCheckboxDefault
  attr_accessor :userPreferencesReminderSoundOff
  attr_accessor :userPreferencesTaskRemindersCheckboxDefault
  attr_accessor :userRole
  attr_accessor :userRoleId
  attr_accessor :userType
  attr_accessor :username

  def m_alias
    @v_alias
  end

  def m_alias=(value)
    @v_alias = value
  end

  def initialize(fieldsToNull = [], id = nil, aboutMe = nil, accountId = nil, v_alias = nil, callCenterId = nil, city = nil, communityNickname = nil, companyName = nil, contact = nil, contactId = nil, contractsSigned = nil, country = nil, createdBy = nil, createdById = nil, createdDate = nil, currentStatus = nil, delegatedApproverId = nil, delegatedUsers = nil, department = nil, digestFrequency = nil, division = nil, email = nil, emailEncodingKey = nil, employeeNumber = nil, extension = nil, fax = nil, federationIdentifier = nil, feedSubscriptions = nil, feedSubscriptionsForEntity = nil, feeds = nil, firstName = nil, forecastEnabled = nil, fullPhotoUrl = nil, isActive = nil, languageLocaleKey = nil, lastLoginDate = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, lastName = nil, lastPasswordChangeDate = nil, localeSidKey = nil, manager = nil, managerId = nil, mobilePhone = nil, name = nil, offlinePdaTrialExpirationDate = nil, offlineTrialExpirationDate = nil, phone = nil, postalCode = nil, profile = nil, profileId = nil, receivesAdminInfoEmails = nil, receivesInfoEmails = nil, smallPhotoUrl = nil, state = nil, street = nil, systemModstamp = nil, timeZoneSidKey = nil, title = nil, userPermissionsCallCenterAutoLogin = nil, userPermissionsKnowledgeUser = nil, userPermissionsMarketingUser = nil, userPermissionsMobileUser = nil, userPermissionsOfflineUser = nil, userPermissionsSFContentUser = nil, userPermissionsSupportUser = nil, userPreferences = nil, userPreferencesActivityRemindersPopup = nil, userPreferencesApexPagesDeveloperMode = nil, userPreferencesDisableAutoSubForFeeds = nil, userPreferencesEventRemindersCheckboxDefault = nil, userPreferencesReminderSoundOff = nil, userPreferencesTaskRemindersCheckboxDefault = nil, userRole = nil, userRoleId = nil, userType = nil, username = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @aboutMe = aboutMe
    @accountId = accountId
    @v_alias = v_alias
    @callCenterId = callCenterId
    @city = city
    @communityNickname = communityNickname
    @companyName = companyName
    @contact = contact
    @contactId = contactId
    @contractsSigned = contractsSigned
    @country = country
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @currentStatus = currentStatus
    @delegatedApproverId = delegatedApproverId
    @delegatedUsers = delegatedUsers
    @department = department
    @digestFrequency = digestFrequency
    @division = division
    @email = email
    @emailEncodingKey = emailEncodingKey
    @employeeNumber = employeeNumber
    @extension = extension
    @fax = fax
    @federationIdentifier = federationIdentifier
    @feedSubscriptions = feedSubscriptions
    @feedSubscriptionsForEntity = feedSubscriptionsForEntity
    @feeds = feeds
    @firstName = firstName
    @forecastEnabled = forecastEnabled
    @fullPhotoUrl = fullPhotoUrl
    @isActive = isActive
    @languageLocaleKey = languageLocaleKey
    @lastLoginDate = lastLoginDate
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @lastName = lastName
    @lastPasswordChangeDate = lastPasswordChangeDate
    @localeSidKey = localeSidKey
    @manager = manager
    @managerId = managerId
    @mobilePhone = mobilePhone
    @name = name
    @offlinePdaTrialExpirationDate = offlinePdaTrialExpirationDate
    @offlineTrialExpirationDate = offlineTrialExpirationDate
    @phone = phone
    @postalCode = postalCode
    @profile = profile
    @profileId = profileId
    @receivesAdminInfoEmails = receivesAdminInfoEmails
    @receivesInfoEmails = receivesInfoEmails
    @smallPhotoUrl = smallPhotoUrl
    @state = state
    @street = street
    @systemModstamp = systemModstamp
    @timeZoneSidKey = timeZoneSidKey
    @title = title
    @userPermissionsCallCenterAutoLogin = userPermissionsCallCenterAutoLogin
    @userPermissionsKnowledgeUser = userPermissionsKnowledgeUser
    @userPermissionsMarketingUser = userPermissionsMarketingUser
    @userPermissionsMobileUser = userPermissionsMobileUser
    @userPermissionsOfflineUser = userPermissionsOfflineUser
    @userPermissionsSFContentUser = userPermissionsSFContentUser
    @userPermissionsSupportUser = userPermissionsSupportUser
    @userPreferences = userPreferences
    @userPreferencesActivityRemindersPopup = userPreferencesActivityRemindersPopup
    @userPreferencesApexPagesDeveloperMode = userPreferencesApexPagesDeveloperMode
    @userPreferencesDisableAutoSubForFeeds = userPreferencesDisableAutoSubForFeeds
    @userPreferencesEventRemindersCheckboxDefault = userPreferencesEventRemindersCheckboxDefault
    @userPreferencesReminderSoundOff = userPreferencesReminderSoundOff
    @userPreferencesTaskRemindersCheckboxDefault = userPreferencesTaskRemindersCheckboxDefault
    @userRole = userRole
    @userRoleId = userRoleId
    @userType = userType
    @username = username
  end
end

# {urn:sobject.enterprise.soap.sforce.com}UserFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - User
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class UserFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}UserLicense
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   licenseDefinitionKey - SOAP::SOAPString
#   monthlyLoginsEntitlement - SOAP::SOAPInt
#   monthlyLoginsUsed - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
class UserLicense < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :licenseDefinitionKey
  attr_accessor :monthlyLoginsEntitlement
  attr_accessor :monthlyLoginsUsed
  attr_accessor :name
  attr_accessor :systemModstamp

  def initialize(fieldsToNull = [], id = nil, licenseDefinitionKey = nil, monthlyLoginsEntitlement = nil, monthlyLoginsUsed = nil, name = nil, systemModstamp = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @licenseDefinitionKey = licenseDefinitionKey
    @monthlyLoginsEntitlement = monthlyLoginsEntitlement
    @monthlyLoginsUsed = monthlyLoginsUsed
    @name = name
    @systemModstamp = systemModstamp
  end
end

# {urn:sobject.enterprise.soap.sforce.com}UserPreference
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   preference - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   userId - (any)
#   value - SOAP::SOAPString
class UserPreference < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :preference
  attr_accessor :systemModstamp
  attr_accessor :userId
  attr_accessor :value

  def initialize(fieldsToNull = [], id = nil, preference = nil, systemModstamp = nil, userId = nil, value = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @preference = preference
    @systemModstamp = systemModstamp
    @userId = userId
    @value = value
  end
end

# {urn:sobject.enterprise.soap.sforce.com}UserProfileFeed
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - Name
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   feedComments - QueryResult
#   feedPost - FeedPost
#   feedPostId - (any)
#   feedTrackedChanges - QueryResult
#   isDeleted - SOAP::SOAPBoolean
#   parent - Name
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class UserProfileFeed < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :feedComments
  attr_accessor :feedPost
  attr_accessor :feedPostId
  attr_accessor :feedTrackedChanges
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, feedComments = nil, feedPost = nil, feedPostId = nil, feedTrackedChanges = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @feedComments = feedComments
    @feedPost = feedPost
    @feedPostId = feedPostId
    @feedTrackedChanges = feedTrackedChanges
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}UserRole
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   caseAccessForAccountOwner - SOAP::SOAPString
#   contactAccessForAccountOwner - SOAP::SOAPString
#   forecastUserId - (any)
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   mayForecastManagerShare - SOAP::SOAPBoolean
#   name - SOAP::SOAPString
#   opportunityAccessForAccountOwner - SOAP::SOAPString
#   parentRoleId - (any)
#   portalAccountId - (any)
#   portalAccountOwnerId - (any)
#   portalType - SOAP::SOAPString
#   rollupDescription - SOAP::SOAPString
#   systemModstamp - SOAP::SOAPDateTime
#   users - QueryResult
class UserRole < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :caseAccessForAccountOwner
  attr_accessor :contactAccessForAccountOwner
  attr_accessor :forecastUserId
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :mayForecastManagerShare
  attr_accessor :name
  attr_accessor :opportunityAccessForAccountOwner
  attr_accessor :parentRoleId
  attr_accessor :portalAccountId
  attr_accessor :portalAccountOwnerId
  attr_accessor :portalType
  attr_accessor :rollupDescription
  attr_accessor :systemModstamp
  attr_accessor :users

  def initialize(fieldsToNull = [], id = nil, caseAccessForAccountOwner = nil, contactAccessForAccountOwner = nil, forecastUserId = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, mayForecastManagerShare = nil, name = nil, opportunityAccessForAccountOwner = nil, parentRoleId = nil, portalAccountId = nil, portalAccountOwnerId = nil, portalType = nil, rollupDescription = nil, systemModstamp = nil, users = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @caseAccessForAccountOwner = caseAccessForAccountOwner
    @contactAccessForAccountOwner = contactAccessForAccountOwner
    @forecastUserId = forecastUserId
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @mayForecastManagerShare = mayForecastManagerShare
    @name = name
    @opportunityAccessForAccountOwner = opportunityAccessForAccountOwner
    @parentRoleId = parentRoleId
    @portalAccountId = portalAccountId
    @portalAccountOwnerId = portalAccountOwnerId
    @portalType = portalType
    @rollupDescription = rollupDescription
    @systemModstamp = systemModstamp
    @users = users
  end
end

# {urn:sobject.enterprise.soap.sforce.com}Vote
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   isDeleted - SOAP::SOAPBoolean
#   parent - Name
#   parentId - (any)
#   systemModstamp - SOAP::SOAPDateTime
#   type - SOAP::SOAPString
class Vote < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :isDeleted
  attr_accessor :parent
  attr_accessor :parentId
  attr_accessor :systemModstamp
  attr_accessor :type

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, isDeleted = nil, parent = nil, parentId = nil, systemModstamp = nil, type = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @isDeleted = isDeleted
    @parent = parent
    @parentId = parentId
    @systemModstamp = systemModstamp
    @type = type
  end
end

# {urn:sobject.enterprise.soap.sforce.com}WebLink
#   fieldsToNull - SOAP::SOAPString
#   id - (any)
#   createdBy - User
#   createdById - (any)
#   createdDate - SOAP::SOAPDateTime
#   description - SOAP::SOAPString
#   displayType - SOAP::SOAPString
#   encodingKey - SOAP::SOAPString
#   hasMenubar - SOAP::SOAPBoolean
#   hasScrollbars - SOAP::SOAPBoolean
#   hasToolbar - SOAP::SOAPBoolean
#   height - SOAP::SOAPInt
#   isProtected - SOAP::SOAPBoolean
#   isResizable - SOAP::SOAPBoolean
#   lastModifiedBy - User
#   lastModifiedById - (any)
#   lastModifiedDate - SOAP::SOAPDateTime
#   linkType - SOAP::SOAPString
#   masterLabel - SOAP::SOAPString
#   name - SOAP::SOAPString
#   namespacePrefix - SOAP::SOAPString
#   openType - SOAP::SOAPString
#   pageOrSobjectType - SOAP::SOAPString
#   position - SOAP::SOAPString
#   requireRowSelection - SOAP::SOAPBoolean
#   scontrolId - (any)
#   showsLocation - SOAP::SOAPBoolean
#   showsStatus - SOAP::SOAPBoolean
#   systemModstamp - SOAP::SOAPDateTime
#   url - SOAP::SOAPString
#   width - SOAP::SOAPInt
class WebLink < SObject
  attr_accessor :fieldsToNull
  attr_accessor :id
  attr_accessor :createdBy
  attr_accessor :createdById
  attr_accessor :createdDate
  attr_accessor :description
  attr_accessor :displayType
  attr_accessor :encodingKey
  attr_accessor :hasMenubar
  attr_accessor :hasScrollbars
  attr_accessor :hasToolbar
  attr_accessor :height
  attr_accessor :isProtected
  attr_accessor :isResizable
  attr_accessor :lastModifiedBy
  attr_accessor :lastModifiedById
  attr_accessor :lastModifiedDate
  attr_accessor :linkType
  attr_accessor :masterLabel
  attr_accessor :name
  attr_accessor :namespacePrefix
  attr_accessor :openType
  attr_accessor :pageOrSobjectType
  attr_accessor :position
  attr_accessor :requireRowSelection
  attr_accessor :scontrolId
  attr_accessor :showsLocation
  attr_accessor :showsStatus
  attr_accessor :systemModstamp
  attr_accessor :url
  attr_accessor :width

  def initialize(fieldsToNull = [], id = nil, createdBy = nil, createdById = nil, createdDate = nil, description = nil, displayType = nil, encodingKey = nil, hasMenubar = nil, hasScrollbars = nil, hasToolbar = nil, height = nil, isProtected = nil, isResizable = nil, lastModifiedBy = nil, lastModifiedById = nil, lastModifiedDate = nil, linkType = nil, masterLabel = nil, name = nil, namespacePrefix = nil, openType = nil, pageOrSobjectType = nil, position = nil, requireRowSelection = nil, scontrolId = nil, showsLocation = nil, showsStatus = nil, systemModstamp = nil, url = nil, width = nil)
    @fieldsToNull = fieldsToNull
    @id = id
    @createdBy = createdBy
    @createdById = createdById
    @createdDate = createdDate
    @description = description
    @displayType = displayType
    @encodingKey = encodingKey
    @hasMenubar = hasMenubar
    @hasScrollbars = hasScrollbars
    @hasToolbar = hasToolbar
    @height = height
    @isProtected = isProtected
    @isResizable = isResizable
    @lastModifiedBy = lastModifiedBy
    @lastModifiedById = lastModifiedById
    @lastModifiedDate = lastModifiedDate
    @linkType = linkType
    @masterLabel = masterLabel
    @name = name
    @namespacePrefix = namespacePrefix
    @openType = openType
    @pageOrSobjectType = pageOrSobjectType
    @position = position
    @requireRowSelection = requireRowSelection
    @scontrolId = scontrolId
    @showsLocation = showsLocation
    @showsStatus = showsStatus
    @systemModstamp = systemModstamp
    @url = url
    @width = width
  end
end

# {urn:enterprise.soap.sforce.com}QueryResult
#   done - SOAP::SOAPBoolean
#   queryLocator - (any)
#   records - SObject
#   size - SOAP::SOAPInt
class QueryResult
  attr_accessor :done
  attr_accessor :queryLocator
  attr_accessor :records
  attr_accessor :size

  def initialize(done = nil, queryLocator = nil, records = [], size = nil)
    @done = done
    @queryLocator = queryLocator
    @records = records
    @size = size
  end
end

# {urn:enterprise.soap.sforce.com}SearchResult
#   searchRecords - SearchRecord
#   sforceReserved - SOAP::SOAPString
class SearchResult
  attr_accessor :searchRecords
  attr_accessor :sforceReserved

  def initialize(searchRecords = [], sforceReserved = nil)
    @searchRecords = searchRecords
    @sforceReserved = sforceReserved
  end
end

# {urn:enterprise.soap.sforce.com}SearchRecord
#   record - SObject
class SearchRecord
  attr_accessor :record

  def initialize(record = nil)
    @record = record
  end
end

# {urn:enterprise.soap.sforce.com}GetUpdatedResult
#   ids - (any)
#   latestDateCovered - SOAP::SOAPDateTime
#   sforceReserved - SOAP::SOAPString
class GetUpdatedResult
  attr_accessor :ids
  attr_accessor :latestDateCovered
  attr_accessor :sforceReserved

  def initialize(ids = [], latestDateCovered = nil, sforceReserved = nil)
    @ids = ids
    @latestDateCovered = latestDateCovered
    @sforceReserved = sforceReserved
  end
end

# {urn:enterprise.soap.sforce.com}GetDeletedResult
#   deletedRecords - DeletedRecord
#   earliestDateAvailable - SOAP::SOAPDateTime
#   latestDateCovered - SOAP::SOAPDateTime
#   sforceReserved - SOAP::SOAPString
class GetDeletedResult
  attr_accessor :deletedRecords
  attr_accessor :earliestDateAvailable
  attr_accessor :latestDateCovered
  attr_accessor :sforceReserved

  def initialize(deletedRecords = [], earliestDateAvailable = nil, latestDateCovered = nil, sforceReserved = nil)
    @deletedRecords = deletedRecords
    @earliestDateAvailable = earliestDateAvailable
    @latestDateCovered = latestDateCovered
    @sforceReserved = sforceReserved
  end
end

# {urn:enterprise.soap.sforce.com}DeletedRecord
#   deletedDate - SOAP::SOAPDateTime
#   id - (any)
class DeletedRecord
  attr_accessor :deletedDate
  attr_accessor :id

  def initialize(deletedDate = nil, id = nil)
    @deletedDate = deletedDate
    @id = id
  end
end

# {urn:enterprise.soap.sforce.com}GetServerTimestampResult
#   timestamp - SOAP::SOAPDateTime
class GetServerTimestampResult
  attr_accessor :timestamp

  def initialize(timestamp = nil)
    @timestamp = timestamp
  end
end

# {urn:enterprise.soap.sforce.com}InvalidateSessionsResult
#   errors - Error
#   success - SOAP::SOAPBoolean
class InvalidateSessionsResult
  attr_accessor :errors
  attr_accessor :success

  def initialize(errors = [], success = nil)
    @errors = errors
    @success = success
  end
end

# {urn:enterprise.soap.sforce.com}SetPasswordResult
class SetPasswordResult
  def initialize
  end
end

# {urn:enterprise.soap.sforce.com}ResetPasswordResult
#   password - SOAP::SOAPString
class ResetPasswordResult
  attr_accessor :password

  def initialize(password = nil)
    @password = password
  end
end

# {urn:enterprise.soap.sforce.com}GetUserInfoResult
#   accessibilityMode - SOAP::SOAPBoolean
#   currencySymbol - SOAP::SOAPString
#   orgDefaultCurrencyIsoCode - SOAP::SOAPString
#   orgDisallowHtmlAttachments - SOAP::SOAPBoolean
#   orgHasPersonAccounts - SOAP::SOAPBoolean
#   organizationId - (any)
#   organizationMultiCurrency - SOAP::SOAPBoolean
#   organizationName - SOAP::SOAPString
#   profileId - (any)
#   roleId - (any)
#   userDefaultCurrencyIsoCode - SOAP::SOAPString
#   userEmail - SOAP::SOAPString
#   userFullName - SOAP::SOAPString
#   userId - (any)
#   userLanguage - SOAP::SOAPString
#   userLocale - SOAP::SOAPString
#   userName - SOAP::SOAPString
#   userTimeZone - SOAP::SOAPString
#   userType - SOAP::SOAPString
#   userUiSkin - SOAP::SOAPString
class GetUserInfoResult
  attr_accessor :accessibilityMode
  attr_accessor :currencySymbol
  attr_accessor :orgDefaultCurrencyIsoCode
  attr_accessor :orgDisallowHtmlAttachments
  attr_accessor :orgHasPersonAccounts
  attr_accessor :organizationId
  attr_accessor :organizationMultiCurrency
  attr_accessor :organizationName
  attr_accessor :profileId
  attr_accessor :roleId
  attr_accessor :userDefaultCurrencyIsoCode
  attr_accessor :userEmail
  attr_accessor :userFullName
  attr_accessor :userId
  attr_accessor :userLanguage
  attr_accessor :userLocale
  attr_accessor :userName
  attr_accessor :userTimeZone
  attr_accessor :userType
  attr_accessor :userUiSkin

  def initialize(accessibilityMode = nil, currencySymbol = nil, orgDefaultCurrencyIsoCode = nil, orgDisallowHtmlAttachments = nil, orgHasPersonAccounts = nil, organizationId = nil, organizationMultiCurrency = nil, organizationName = nil, profileId = nil, roleId = nil, userDefaultCurrencyIsoCode = nil, userEmail = nil, userFullName = nil, userId = nil, userLanguage = nil, userLocale = nil, userName = nil, userTimeZone = nil, userType = nil, userUiSkin = nil)
    @accessibilityMode = accessibilityMode
    @currencySymbol = currencySymbol
    @orgDefaultCurrencyIsoCode = orgDefaultCurrencyIsoCode
    @orgDisallowHtmlAttachments = orgDisallowHtmlAttachments
    @orgHasPersonAccounts = orgHasPersonAccounts
    @organizationId = organizationId
    @organizationMultiCurrency = organizationMultiCurrency
    @organizationName = organizationName
    @profileId = profileId
    @roleId = roleId
    @userDefaultCurrencyIsoCode = userDefaultCurrencyIsoCode
    @userEmail = userEmail
    @userFullName = userFullName
    @userId = userId
    @userLanguage = userLanguage
    @userLocale = userLocale
    @userName = userName
    @userTimeZone = userTimeZone
    @userType = userType
    @userUiSkin = userUiSkin
  end
end

# {urn:enterprise.soap.sforce.com}LoginResult
#   metadataServerUrl - SOAP::SOAPString
#   passwordExpired - SOAP::SOAPBoolean
#   sandbox - SOAP::SOAPBoolean
#   serverUrl - SOAP::SOAPString
#   sessionId - SOAP::SOAPString
#   userId - (any)
#   userInfo - GetUserInfoResult
class LoginResult
  attr_accessor :metadataServerUrl
  attr_accessor :passwordExpired
  attr_accessor :sandbox
  attr_accessor :serverUrl
  attr_accessor :sessionId
  attr_accessor :userId
  attr_accessor :userInfo

  def initialize(metadataServerUrl = nil, passwordExpired = nil, sandbox = nil, serverUrl = nil, sessionId = nil, userId = nil, userInfo = nil)
    @metadataServerUrl = metadataServerUrl
    @passwordExpired = passwordExpired
    @sandbox = sandbox
    @serverUrl = serverUrl
    @sessionId = sessionId
    @userId = userId
    @userInfo = userInfo
  end
end

# {urn:enterprise.soap.sforce.com}Error
#   fields - SOAP::SOAPString
#   message - SOAP::SOAPString
#   statusCode - StatusCode
class Error
  attr_accessor :fields
  attr_accessor :message
  attr_accessor :statusCode

  def initialize(fields = [], message = nil, statusCode = nil)
    @fields = fields
    @message = message
    @statusCode = statusCode
  end
end

# {urn:enterprise.soap.sforce.com}SendEmailError
#   fields - SOAP::SOAPString
#   message - SOAP::SOAPString
#   statusCode - StatusCode
#   targetObjectId - (any)
class SendEmailError
  attr_accessor :fields
  attr_accessor :message
  attr_accessor :statusCode
  attr_accessor :targetObjectId

  def initialize(fields = [], message = nil, statusCode = nil, targetObjectId = nil)
    @fields = fields
    @message = message
    @statusCode = statusCode
    @targetObjectId = targetObjectId
  end
end

# {urn:enterprise.soap.sforce.com}SaveResult
#   errors - Error
#   id - (any)
#   success - SOAP::SOAPBoolean
class SaveResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {urn:enterprise.soap.sforce.com}UpsertResult
#   created - SOAP::SOAPBoolean
#   errors - Error
#   id - (any)
#   success - SOAP::SOAPBoolean
class UpsertResult
  attr_accessor :created
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(created = nil, errors = [], id = nil, success = nil)
    @created = created
    @errors = errors
    @id = id
    @success = success
  end
end

# {urn:enterprise.soap.sforce.com}MergeRequest
#   masterRecord - SObject
#   recordToMergeIds - (any)
class MergeRequest
  attr_accessor :masterRecord
  attr_accessor :recordToMergeIds

  def initialize(masterRecord = nil, recordToMergeIds = [])
    @masterRecord = masterRecord
    @recordToMergeIds = recordToMergeIds
  end
end

# {urn:enterprise.soap.sforce.com}MergeResult
#   errors - Error
#   id - (any)
#   mergedRecordIds - (any)
#   success - SOAP::SOAPBoolean
#   updatedRelatedIds - (any)
class MergeResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :mergedRecordIds
  attr_accessor :success
  attr_accessor :updatedRelatedIds

  def initialize(errors = [], id = nil, mergedRecordIds = [], success = nil, updatedRelatedIds = [])
    @errors = errors
    @id = id
    @mergedRecordIds = mergedRecordIds
    @success = success
    @updatedRelatedIds = updatedRelatedIds
  end
end

# {urn:enterprise.soap.sforce.com}ProcessRequest
#   comments - SOAP::SOAPString
#   nextApproverIds - (any)
class ProcessRequest
  attr_accessor :comments
  attr_accessor :nextApproverIds

  def initialize(comments = nil, nextApproverIds = [])
    @comments = comments
    @nextApproverIds = nextApproverIds
  end
end

# {urn:enterprise.soap.sforce.com}ProcessSubmitRequest
#   comments - SOAP::SOAPString
#   nextApproverIds - (any)
#   objectId - (any)
class ProcessSubmitRequest < ProcessRequest
  attr_accessor :comments
  attr_accessor :nextApproverIds
  attr_accessor :objectId

  def initialize(comments = nil, nextApproverIds = [], objectId = nil)
    @comments = comments
    @nextApproverIds = nextApproverIds
    @objectId = objectId
  end
end

# {urn:enterprise.soap.sforce.com}ProcessWorkitemRequest
#   comments - SOAP::SOAPString
#   nextApproverIds - (any)
#   action - SOAP::SOAPString
#   workitemId - (any)
class ProcessWorkitemRequest < ProcessRequest
  attr_accessor :comments
  attr_accessor :nextApproverIds
  attr_accessor :action
  attr_accessor :workitemId

  def initialize(comments = nil, nextApproverIds = [], action = nil, workitemId = nil)
    @comments = comments
    @nextApproverIds = nextApproverIds
    @action = action
    @workitemId = workitemId
  end
end

# {urn:enterprise.soap.sforce.com}ProcessResult
#   actorIds - (any)
#   entityId - (any)
#   errors - Error
#   instanceId - (any)
#   instanceStatus - SOAP::SOAPString
#   newWorkitemIds - (any)
#   success - SOAP::SOAPBoolean
class ProcessResult
  attr_accessor :actorIds
  attr_accessor :entityId
  attr_accessor :errors
  attr_accessor :instanceId
  attr_accessor :instanceStatus
  attr_accessor :newWorkitemIds
  attr_accessor :success

  def initialize(actorIds = [], entityId = nil, errors = [], instanceId = nil, instanceStatus = nil, newWorkitemIds = [], success = nil)
    @actorIds = actorIds
    @entityId = entityId
    @errors = errors
    @instanceId = instanceId
    @instanceStatus = instanceStatus
    @newWorkitemIds = newWorkitemIds
    @success = success
  end
end

# {urn:enterprise.soap.sforce.com}DeleteResult
#   errors - Error
#   id - (any)
#   success - SOAP::SOAPBoolean
class DeleteResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {urn:enterprise.soap.sforce.com}UndeleteResult
#   errors - Error
#   id - (any)
#   success - SOAP::SOAPBoolean
class UndeleteResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {urn:enterprise.soap.sforce.com}EmptyRecycleBinResult
#   errors - Error
#   id - (any)
#   success - SOAP::SOAPBoolean
class EmptyRecycleBinResult
  attr_accessor :errors
  attr_accessor :id
  attr_accessor :success

  def initialize(errors = [], id = nil, success = nil)
    @errors = errors
    @id = id
    @success = success
  end
end

# {urn:enterprise.soap.sforce.com}LeadConvert
#   accountId - (any)
#   contactId - (any)
#   convertedStatus - SOAP::SOAPString
#   doNotCreateOpportunity - SOAP::SOAPBoolean
#   leadId - (any)
#   opportunityName - SOAP::SOAPString
#   overwriteLeadSource - SOAP::SOAPBoolean
#   ownerId - (any)
#   sendNotificationEmail - SOAP::SOAPBoolean
class LeadConvert
  attr_accessor :accountId
  attr_accessor :contactId
  attr_accessor :convertedStatus
  attr_accessor :doNotCreateOpportunity
  attr_accessor :leadId
  attr_accessor :opportunityName
  attr_accessor :overwriteLeadSource
  attr_accessor :ownerId
  attr_accessor :sendNotificationEmail

  def initialize(accountId = nil, contactId = nil, convertedStatus = nil, doNotCreateOpportunity = nil, leadId = nil, opportunityName = nil, overwriteLeadSource = nil, ownerId = nil, sendNotificationEmail = nil)
    @accountId = accountId
    @contactId = contactId
    @convertedStatus = convertedStatus
    @doNotCreateOpportunity = doNotCreateOpportunity
    @leadId = leadId
    @opportunityName = opportunityName
    @overwriteLeadSource = overwriteLeadSource
    @ownerId = ownerId
    @sendNotificationEmail = sendNotificationEmail
  end
end

# {urn:enterprise.soap.sforce.com}LeadConvertResult
#   accountId - (any)
#   contactId - (any)
#   errors - Error
#   leadId - (any)
#   opportunityId - (any)
#   success - SOAP::SOAPBoolean
class LeadConvertResult
  attr_accessor :accountId
  attr_accessor :contactId
  attr_accessor :errors
  attr_accessor :leadId
  attr_accessor :opportunityId
  attr_accessor :success

  def initialize(accountId = nil, contactId = nil, errors = [], leadId = nil, opportunityId = nil, success = nil)
    @accountId = accountId
    @contactId = contactId
    @errors = errors
    @leadId = leadId
    @opportunityId = opportunityId
    @success = success
  end
end

# {urn:enterprise.soap.sforce.com}DescribeSObjectResult
#   activateable - SOAP::SOAPBoolean
#   childRelationships - ChildRelationship
#   createable - SOAP::SOAPBoolean
#   custom - SOAP::SOAPBoolean
#   customSetting - SOAP::SOAPBoolean
#   deletable - SOAP::SOAPBoolean
#   deprecatedAndHidden - SOAP::SOAPBoolean
#   feedEnabled - SOAP::SOAPBoolean
#   fields - Field
#   keyPrefix - SOAP::SOAPString
#   label - SOAP::SOAPString
#   labelPlural - SOAP::SOAPString
#   layoutable - SOAP::SOAPBoolean
#   mergeable - SOAP::SOAPBoolean
#   name - SOAP::SOAPString
#   queryable - SOAP::SOAPBoolean
#   recordTypeInfos - RecordTypeInfo
#   replicateable - SOAP::SOAPBoolean
#   retrieveable - SOAP::SOAPBoolean
#   searchable - SOAP::SOAPBoolean
#   triggerable - SOAP::SOAPBoolean
#   undeletable - SOAP::SOAPBoolean
#   updateable - SOAP::SOAPBoolean
#   urlDetail - SOAP::SOAPString
#   urlEdit - SOAP::SOAPString
#   urlNew - SOAP::SOAPString
class DescribeSObjectResult
  attr_accessor :activateable
  attr_accessor :childRelationships
  attr_accessor :createable
  attr_accessor :custom
  attr_accessor :customSetting
  attr_accessor :deletable
  attr_accessor :deprecatedAndHidden
  attr_accessor :feedEnabled
  attr_accessor :fields
  attr_accessor :keyPrefix
  attr_accessor :label
  attr_accessor :labelPlural
  attr_accessor :layoutable
  attr_accessor :mergeable
  attr_accessor :name
  attr_accessor :queryable
  attr_accessor :recordTypeInfos
  attr_accessor :replicateable
  attr_accessor :retrieveable
  attr_accessor :searchable
  attr_accessor :triggerable
  attr_accessor :undeletable
  attr_accessor :updateable
  attr_accessor :urlDetail
  attr_accessor :urlEdit
  attr_accessor :urlNew

  def initialize(activateable = nil, childRelationships = [], createable = nil, custom = nil, customSetting = nil, deletable = nil, deprecatedAndHidden = nil, feedEnabled = nil, fields = [], keyPrefix = nil, label = nil, labelPlural = nil, layoutable = nil, mergeable = nil, name = nil, queryable = nil, recordTypeInfos = [], replicateable = nil, retrieveable = nil, searchable = nil, triggerable = nil, undeletable = nil, updateable = nil, urlDetail = nil, urlEdit = nil, urlNew = nil)
    @activateable = activateable
    @childRelationships = childRelationships
    @createable = createable
    @custom = custom
    @customSetting = customSetting
    @deletable = deletable
    @deprecatedAndHidden = deprecatedAndHidden
    @feedEnabled = feedEnabled
    @fields = fields
    @keyPrefix = keyPrefix
    @label = label
    @labelPlural = labelPlural
    @layoutable = layoutable
    @mergeable = mergeable
    @name = name
    @queryable = queryable
    @recordTypeInfos = recordTypeInfos
    @replicateable = replicateable
    @retrieveable = retrieveable
    @searchable = searchable
    @triggerable = triggerable
    @undeletable = undeletable
    @updateable = updateable
    @urlDetail = urlDetail
    @urlEdit = urlEdit
    @urlNew = urlNew
  end
end

# {urn:enterprise.soap.sforce.com}DescribeGlobalSObjectResult
#   activateable - SOAP::SOAPBoolean
#   createable - SOAP::SOAPBoolean
#   custom - SOAP::SOAPBoolean
#   customSetting - SOAP::SOAPBoolean
#   deletable - SOAP::SOAPBoolean
#   deprecatedAndHidden - SOAP::SOAPBoolean
#   feedEnabled - SOAP::SOAPBoolean
#   keyPrefix - SOAP::SOAPString
#   label - SOAP::SOAPString
#   labelPlural - SOAP::SOAPString
#   layoutable - SOAP::SOAPBoolean
#   mergeable - SOAP::SOAPBoolean
#   name - SOAP::SOAPString
#   queryable - SOAP::SOAPBoolean
#   replicateable - SOAP::SOAPBoolean
#   retrieveable - SOAP::SOAPBoolean
#   searchable - SOAP::SOAPBoolean
#   triggerable - SOAP::SOAPBoolean
#   undeletable - SOAP::SOAPBoolean
#   updateable - SOAP::SOAPBoolean
class DescribeGlobalSObjectResult
  attr_accessor :activateable
  attr_accessor :createable
  attr_accessor :custom
  attr_accessor :customSetting
  attr_accessor :deletable
  attr_accessor :deprecatedAndHidden
  attr_accessor :feedEnabled
  attr_accessor :keyPrefix
  attr_accessor :label
  attr_accessor :labelPlural
  attr_accessor :layoutable
  attr_accessor :mergeable
  attr_accessor :name
  attr_accessor :queryable
  attr_accessor :replicateable
  attr_accessor :retrieveable
  attr_accessor :searchable
  attr_accessor :triggerable
  attr_accessor :undeletable
  attr_accessor :updateable

  def initialize(activateable = nil, createable = nil, custom = nil, customSetting = nil, deletable = nil, deprecatedAndHidden = nil, feedEnabled = nil, keyPrefix = nil, label = nil, labelPlural = nil, layoutable = nil, mergeable = nil, name = nil, queryable = nil, replicateable = nil, retrieveable = nil, searchable = nil, triggerable = nil, undeletable = nil, updateable = nil)
    @activateable = activateable
    @createable = createable
    @custom = custom
    @customSetting = customSetting
    @deletable = deletable
    @deprecatedAndHidden = deprecatedAndHidden
    @feedEnabled = feedEnabled
    @keyPrefix = keyPrefix
    @label = label
    @labelPlural = labelPlural
    @layoutable = layoutable
    @mergeable = mergeable
    @name = name
    @queryable = queryable
    @replicateable = replicateable
    @retrieveable = retrieveable
    @searchable = searchable
    @triggerable = triggerable
    @undeletable = undeletable
    @updateable = updateable
  end
end

# {urn:enterprise.soap.sforce.com}ChildRelationship
#   cascadeDelete - SOAP::SOAPBoolean
#   childSObject - SOAP::SOAPString
#   deprecatedAndHidden - SOAP::SOAPBoolean
#   field - SOAP::SOAPString
#   relationshipName - SOAP::SOAPString
class ChildRelationship
  attr_accessor :cascadeDelete
  attr_accessor :childSObject
  attr_accessor :deprecatedAndHidden
  attr_accessor :field
  attr_accessor :relationshipName

  def initialize(cascadeDelete = nil, childSObject = nil, deprecatedAndHidden = nil, field = nil, relationshipName = nil)
    @cascadeDelete = cascadeDelete
    @childSObject = childSObject
    @deprecatedAndHidden = deprecatedAndHidden
    @field = field
    @relationshipName = relationshipName
  end
end

# {urn:enterprise.soap.sforce.com}DescribeGlobalResult
#   encoding - SOAP::SOAPString
#   maxBatchSize - SOAP::SOAPInt
#   sobjects - DescribeGlobalSObjectResult
class DescribeGlobalResult
  attr_accessor :encoding
  attr_accessor :maxBatchSize
  attr_accessor :sobjects

  def initialize(encoding = nil, maxBatchSize = nil, sobjects = [])
    @encoding = encoding
    @maxBatchSize = maxBatchSize
    @sobjects = sobjects
  end
end

# {urn:enterprise.soap.sforce.com}Field
#   autoNumber - SOAP::SOAPBoolean
#   byteLength - SOAP::SOAPInt
#   calculated - SOAP::SOAPBoolean
#   calculatedFormula - SOAP::SOAPString
#   caseSensitive - SOAP::SOAPBoolean
#   controllerName - SOAP::SOAPString
#   createable - SOAP::SOAPBoolean
#   custom - SOAP::SOAPBoolean
#   defaultValueFormula - SOAP::SOAPString
#   defaultedOnCreate - SOAP::SOAPBoolean
#   dependentPicklist - SOAP::SOAPBoolean
#   deprecatedAndHidden - SOAP::SOAPBoolean
#   digits - SOAP::SOAPInt
#   externalId - SOAP::SOAPBoolean
#   filterable - SOAP::SOAPBoolean
#   groupable - SOAP::SOAPBoolean
#   htmlFormatted - SOAP::SOAPBoolean
#   idLookup - SOAP::SOAPBoolean
#   inlineHelpText - SOAP::SOAPString
#   label - SOAP::SOAPString
#   length - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   nameField - SOAP::SOAPBoolean
#   namePointing - SOAP::SOAPBoolean
#   nillable - SOAP::SOAPBoolean
#   picklistValues - PicklistEntry
#   precision - SOAP::SOAPInt
#   referenceTo - SOAP::SOAPString
#   relationshipName - SOAP::SOAPString
#   relationshipOrder - SOAP::SOAPInt
#   restrictedPicklist - SOAP::SOAPBoolean
#   scale - SOAP::SOAPInt
#   soapType - SoapType
#   sortable - SOAP::SOAPBoolean
#   type - FieldType
#   unique - SOAP::SOAPBoolean
#   updateable - SOAP::SOAPBoolean
#   writeRequiresMasterRead - SOAP::SOAPBoolean
class Field
  attr_accessor :autoNumber
  attr_accessor :byteLength
  attr_accessor :calculated
  attr_accessor :calculatedFormula
  attr_accessor :caseSensitive
  attr_accessor :controllerName
  attr_accessor :createable
  attr_accessor :custom
  attr_accessor :defaultValueFormula
  attr_accessor :defaultedOnCreate
  attr_accessor :dependentPicklist
  attr_accessor :deprecatedAndHidden
  attr_accessor :digits
  attr_accessor :externalId
  attr_accessor :filterable
  attr_accessor :groupable
  attr_accessor :htmlFormatted
  attr_accessor :idLookup
  attr_accessor :inlineHelpText
  attr_accessor :label
  attr_accessor :length
  attr_accessor :name
  attr_accessor :nameField
  attr_accessor :namePointing
  attr_accessor :nillable
  attr_accessor :picklistValues
  attr_accessor :precision
  attr_accessor :referenceTo
  attr_accessor :relationshipName
  attr_accessor :relationshipOrder
  attr_accessor :restrictedPicklist
  attr_accessor :scale
  attr_accessor :soapType
  attr_accessor :sortable
  attr_accessor :type
  attr_accessor :unique
  attr_accessor :updateable
  attr_accessor :writeRequiresMasterRead

  def initialize(autoNumber = nil, byteLength = nil, calculated = nil, calculatedFormula = nil, caseSensitive = nil, controllerName = nil, createable = nil, custom = nil, defaultValueFormula = nil, defaultedOnCreate = nil, dependentPicklist = nil, deprecatedAndHidden = nil, digits = nil, externalId = nil, filterable = nil, groupable = nil, htmlFormatted = nil, idLookup = nil, inlineHelpText = nil, label = nil, length = nil, name = nil, nameField = nil, namePointing = nil, nillable = nil, picklistValues = [], precision = nil, referenceTo = [], relationshipName = nil, relationshipOrder = nil, restrictedPicklist = nil, scale = nil, soapType = nil, sortable = nil, type = nil, unique = nil, updateable = nil, writeRequiresMasterRead = nil)
    @autoNumber = autoNumber
    @byteLength = byteLength
    @calculated = calculated
    @calculatedFormula = calculatedFormula
    @caseSensitive = caseSensitive
    @controllerName = controllerName
    @createable = createable
    @custom = custom
    @defaultValueFormula = defaultValueFormula
    @defaultedOnCreate = defaultedOnCreate
    @dependentPicklist = dependentPicklist
    @deprecatedAndHidden = deprecatedAndHidden
    @digits = digits
    @externalId = externalId
    @filterable = filterable
    @groupable = groupable
    @htmlFormatted = htmlFormatted
    @idLookup = idLookup
    @inlineHelpText = inlineHelpText
    @label = label
    @length = length
    @name = name
    @nameField = nameField
    @namePointing = namePointing
    @nillable = nillable
    @picklistValues = picklistValues
    @precision = precision
    @referenceTo = referenceTo
    @relationshipName = relationshipName
    @relationshipOrder = relationshipOrder
    @restrictedPicklist = restrictedPicklist
    @scale = scale
    @soapType = soapType
    @sortable = sortable
    @type = type
    @unique = unique
    @updateable = updateable
    @writeRequiresMasterRead = writeRequiresMasterRead
  end
end

# {urn:enterprise.soap.sforce.com}PicklistEntry
#   active - SOAP::SOAPBoolean
#   defaultValue - SOAP::SOAPBoolean
#   label - SOAP::SOAPString
#   validFor - SOAP::SOAPBase64
#   value - SOAP::SOAPString
class PicklistEntry
  attr_accessor :active
  attr_accessor :defaultValue
  attr_accessor :label
  attr_accessor :validFor
  attr_accessor :value

  def initialize(active = nil, defaultValue = nil, label = nil, validFor = nil, value = nil)
    @active = active
    @defaultValue = defaultValue
    @label = label
    @validFor = validFor
    @value = value
  end
end

# {urn:enterprise.soap.sforce.com}DescribeDataCategoryGroupResult
#   categoryCount - SOAP::SOAPInt
#   description - SOAP::SOAPString
#   label - SOAP::SOAPString
#   name - SOAP::SOAPString
#   sobject - SOAP::SOAPString
class DescribeDataCategoryGroupResult
  attr_accessor :categoryCount
  attr_accessor :description
  attr_accessor :label
  attr_accessor :name
  attr_accessor :sobject

  def initialize(categoryCount = nil, description = nil, label = nil, name = nil, sobject = nil)
    @categoryCount = categoryCount
    @description = description
    @label = label
    @name = name
    @sobject = sobject
  end
end

# {urn:enterprise.soap.sforce.com}DescribeDataCategoryGroupStructureResult
#   description - SOAP::SOAPString
#   label - SOAP::SOAPString
#   name - SOAP::SOAPString
#   sobject - SOAP::SOAPString
#   topCategories - DataCategory
class DescribeDataCategoryGroupStructureResult
  attr_accessor :description
  attr_accessor :label
  attr_accessor :name
  attr_accessor :sobject
  attr_accessor :topCategories

  def initialize(description = nil, label = nil, name = nil, sobject = nil, topCategories = [])
    @description = description
    @label = label
    @name = name
    @sobject = sobject
    @topCategories = topCategories
  end
end

# {urn:enterprise.soap.sforce.com}DataCategoryGroupSobjectTypePair
#   dataCategoryGroupName - SOAP::SOAPString
#   sobject - SOAP::SOAPString
class DataCategoryGroupSobjectTypePair
  attr_accessor :dataCategoryGroupName
  attr_accessor :sobject

  def initialize(dataCategoryGroupName = nil, sobject = nil)
    @dataCategoryGroupName = dataCategoryGroupName
    @sobject = sobject
  end
end

# {urn:enterprise.soap.sforce.com}DataCategory
#   childCategories - DataCategory
#   label - SOAP::SOAPString
#   name - SOAP::SOAPString
class DataCategory
  attr_accessor :childCategories
  attr_accessor :label
  attr_accessor :name

  def initialize(childCategories = [], label = nil, name = nil)
    @childCategories = childCategories
    @label = label
    @name = name
  end
end

# {urn:enterprise.soap.sforce.com}DescribeSoftphoneLayoutResult
#   callTypes - DescribeSoftphoneLayoutCallType
#   id - (any)
#   name - SOAP::SOAPString
class DescribeSoftphoneLayoutResult
  attr_accessor :callTypes
  attr_accessor :id
  attr_accessor :name

  def initialize(callTypes = [], id = nil, name = nil)
    @callTypes = callTypes
    @id = id
    @name = name
  end
end

# {urn:enterprise.soap.sforce.com}DescribeSoftphoneLayoutCallType
#   infoFields - DescribeSoftphoneLayoutInfoField
#   name - SOAP::SOAPString
#   screenPopOptions - DescribeSoftphoneScreenPopOption
#   screenPopsOpenWithin - SOAP::SOAPString
#   sections - DescribeSoftphoneLayoutSection
class DescribeSoftphoneLayoutCallType
  attr_accessor :infoFields
  attr_accessor :name
  attr_accessor :screenPopOptions
  attr_accessor :screenPopsOpenWithin
  attr_accessor :sections

  def initialize(infoFields = [], name = nil, screenPopOptions = [], screenPopsOpenWithin = nil, sections = [])
    @infoFields = infoFields
    @name = name
    @screenPopOptions = screenPopOptions
    @screenPopsOpenWithin = screenPopsOpenWithin
    @sections = sections
  end
end

# {urn:enterprise.soap.sforce.com}DescribeSoftphoneScreenPopOption
#   matchType - SOAP::SOAPString
#   screenPopData - SOAP::SOAPString
#   screenPopType - SOAP::SOAPString
class DescribeSoftphoneScreenPopOption
  attr_accessor :matchType
  attr_accessor :screenPopData
  attr_accessor :screenPopType

  def initialize(matchType = nil, screenPopData = nil, screenPopType = nil)
    @matchType = matchType
    @screenPopData = screenPopData
    @screenPopType = screenPopType
  end
end

# {urn:enterprise.soap.sforce.com}DescribeSoftphoneLayoutInfoField
#   name - SOAP::SOAPString
class DescribeSoftphoneLayoutInfoField
  attr_accessor :name

  def initialize(name = nil)
    @name = name
  end
end

# {urn:enterprise.soap.sforce.com}DescribeSoftphoneLayoutSection
#   entityApiName - SOAP::SOAPString
#   items - DescribeSoftphoneLayoutItem
class DescribeSoftphoneLayoutSection
  attr_accessor :entityApiName
  attr_accessor :items

  def initialize(entityApiName = nil, items = [])
    @entityApiName = entityApiName
    @items = items
  end
end

# {urn:enterprise.soap.sforce.com}DescribeSoftphoneLayoutItem
#   itemApiName - SOAP::SOAPString
class DescribeSoftphoneLayoutItem
  attr_accessor :itemApiName

  def initialize(itemApiName = nil)
    @itemApiName = itemApiName
  end
end

# {urn:enterprise.soap.sforce.com}DescribeLayoutResult
#   layouts - DescribeLayout
#   recordTypeMappings - RecordTypeMapping
#   recordTypeSelectorRequired - SOAP::SOAPBoolean
class DescribeLayoutResult
  attr_accessor :layouts
  attr_accessor :recordTypeMappings
  attr_accessor :recordTypeSelectorRequired

  def initialize(layouts = [], recordTypeMappings = [], recordTypeSelectorRequired = nil)
    @layouts = layouts
    @recordTypeMappings = recordTypeMappings
    @recordTypeSelectorRequired = recordTypeSelectorRequired
  end
end

# {urn:enterprise.soap.sforce.com}DescribeLayout
#   buttonLayoutSection - DescribeLayoutButtonSection
#   detailLayoutSections - DescribeLayoutSection
#   editLayoutSections - DescribeLayoutSection
#   id - (any)
#   relatedLists - RelatedList
class DescribeLayout
  attr_accessor :buttonLayoutSection
  attr_accessor :detailLayoutSections
  attr_accessor :editLayoutSections
  attr_accessor :id
  attr_accessor :relatedLists

  def initialize(buttonLayoutSection = nil, detailLayoutSections = [], editLayoutSections = [], id = nil, relatedLists = [])
    @buttonLayoutSection = buttonLayoutSection
    @detailLayoutSections = detailLayoutSections
    @editLayoutSections = editLayoutSections
    @id = id
    @relatedLists = relatedLists
  end
end

# {urn:enterprise.soap.sforce.com}DescribeLayoutSection
#   columns - SOAP::SOAPInt
#   heading - SOAP::SOAPString
#   layoutRows - DescribeLayoutRow
#   rows - SOAP::SOAPInt
#   useCollapsibleSection - SOAP::SOAPBoolean
#   useHeading - SOAP::SOAPBoolean
class DescribeLayoutSection
  attr_accessor :columns
  attr_accessor :heading
  attr_accessor :layoutRows
  attr_accessor :rows
  attr_accessor :useCollapsibleSection
  attr_accessor :useHeading

  def initialize(columns = nil, heading = nil, layoutRows = [], rows = nil, useCollapsibleSection = nil, useHeading = nil)
    @columns = columns
    @heading = heading
    @layoutRows = layoutRows
    @rows = rows
    @useCollapsibleSection = useCollapsibleSection
    @useHeading = useHeading
  end
end

# {urn:enterprise.soap.sforce.com}DescribeLayoutButtonSection
class DescribeLayoutButtonSection < ::Array
end

# {urn:enterprise.soap.sforce.com}DescribeLayoutRow
#   layoutItems - DescribeLayoutItem
#   numItems - SOAP::SOAPInt
class DescribeLayoutRow
  attr_accessor :layoutItems
  attr_accessor :numItems

  def initialize(layoutItems = [], numItems = nil)
    @layoutItems = layoutItems
    @numItems = numItems
  end
end

# {urn:enterprise.soap.sforce.com}DescribeLayoutItem
#   editable - SOAP::SOAPBoolean
#   label - SOAP::SOAPString
#   layoutComponents - DescribeLayoutComponent
#   placeholder - SOAP::SOAPBoolean
#   required - SOAP::SOAPBoolean
class DescribeLayoutItem
  attr_accessor :editable
  attr_accessor :label
  attr_accessor :layoutComponents
  attr_accessor :placeholder
  attr_accessor :required

  def initialize(editable = nil, label = nil, layoutComponents = [], placeholder = nil, required = nil)
    @editable = editable
    @label = label
    @layoutComponents = layoutComponents
    @placeholder = placeholder
    @required = required
  end
end

# {urn:enterprise.soap.sforce.com}DescribeLayoutButton
#   custom - SOAP::SOAPBoolean
#   label - SOAP::SOAPString
#   name - SOAP::SOAPString
class DescribeLayoutButton
  attr_accessor :custom
  attr_accessor :label
  attr_accessor :name

  def initialize(custom = nil, label = nil, name = nil)
    @custom = custom
    @label = label
    @name = name
  end
end

# {urn:enterprise.soap.sforce.com}DescribeLayoutComponent
#   displayLines - SOAP::SOAPInt
#   tabOrder - SOAP::SOAPInt
#   type - LayoutComponentType
#   value - SOAP::SOAPString
class DescribeLayoutComponent
  attr_accessor :displayLines
  attr_accessor :tabOrder
  attr_accessor :type
  attr_accessor :value

  def initialize(displayLines = nil, tabOrder = nil, type = nil, value = nil)
    @displayLines = displayLines
    @tabOrder = tabOrder
    @type = type
    @value = value
  end
end

# {urn:enterprise.soap.sforce.com}RecordTypeInfo
#   available - SOAP::SOAPBoolean
#   defaultRecordTypeMapping - SOAP::SOAPBoolean
#   name - SOAP::SOAPString
#   recordTypeId - (any)
class RecordTypeInfo
  attr_accessor :available
  attr_accessor :defaultRecordTypeMapping
  attr_accessor :name
  attr_accessor :recordTypeId

  def initialize(available = nil, defaultRecordTypeMapping = nil, name = nil, recordTypeId = nil)
    @available = available
    @defaultRecordTypeMapping = defaultRecordTypeMapping
    @name = name
    @recordTypeId = recordTypeId
  end
end

# {urn:enterprise.soap.sforce.com}RecordTypeMapping
#   available - SOAP::SOAPBoolean
#   defaultRecordTypeMapping - SOAP::SOAPBoolean
#   layoutId - (any)
#   name - SOAP::SOAPString
#   picklistsForRecordType - PicklistForRecordType
#   recordTypeId - (any)
class RecordTypeMapping
  attr_accessor :available
  attr_accessor :defaultRecordTypeMapping
  attr_accessor :layoutId
  attr_accessor :name
  attr_accessor :picklistsForRecordType
  attr_accessor :recordTypeId

  def initialize(available = nil, defaultRecordTypeMapping = nil, layoutId = nil, name = nil, picklistsForRecordType = [], recordTypeId = nil)
    @available = available
    @defaultRecordTypeMapping = defaultRecordTypeMapping
    @layoutId = layoutId
    @name = name
    @picklistsForRecordType = picklistsForRecordType
    @recordTypeId = recordTypeId
  end
end

# {urn:enterprise.soap.sforce.com}PicklistForRecordType
#   picklistName - SOAP::SOAPString
#   picklistValues - PicklistEntry
class PicklistForRecordType
  attr_accessor :picklistName
  attr_accessor :picklistValues

  def initialize(picklistName = nil, picklistValues = [])
    @picklistName = picklistName
    @picklistValues = picklistValues
  end
end

# {urn:enterprise.soap.sforce.com}RelatedList
#   columns - RelatedListColumn
#   custom - SOAP::SOAPBoolean
#   field - SOAP::SOAPString
#   label - SOAP::SOAPString
#   limitRows - SOAP::SOAPInt
#   name - SOAP::SOAPString
#   sobject - SOAP::SOAPString
#   sort - RelatedListSort
class RelatedList
  attr_accessor :columns
  attr_accessor :custom
  attr_accessor :field
  attr_accessor :label
  attr_accessor :limitRows
  attr_accessor :name
  attr_accessor :sobject
  attr_accessor :sort

  def initialize(columns = [], custom = nil, field = nil, label = nil, limitRows = nil, name = nil, sobject = nil, sort = [])
    @columns = columns
    @custom = custom
    @field = field
    @label = label
    @limitRows = limitRows
    @name = name
    @sobject = sobject
    @sort = sort
  end
end

# {urn:enterprise.soap.sforce.com}RelatedListColumn
#   field - SOAP::SOAPString
#   format - SOAP::SOAPString
#   label - SOAP::SOAPString
#   name - SOAP::SOAPString
class RelatedListColumn
  attr_accessor :field
  attr_accessor :format
  attr_accessor :label
  attr_accessor :name

  def initialize(field = nil, format = nil, label = nil, name = nil)
    @field = field
    @format = format
    @label = label
    @name = name
  end
end

# {urn:enterprise.soap.sforce.com}RelatedListSort
#   ascending - SOAP::SOAPBoolean
#   column - SOAP::SOAPString
class RelatedListSort
  attr_accessor :ascending
  attr_accessor :column

  def initialize(ascending = nil, column = nil)
    @ascending = ascending
    @column = column
  end
end

# {urn:enterprise.soap.sforce.com}EmailFileAttachment
#   body - SOAP::SOAPBase64
#   contentType - SOAP::SOAPString
#   fileName - SOAP::SOAPString
#   inline - SOAP::SOAPBoolean
class EmailFileAttachment
  attr_accessor :body
  attr_accessor :contentType
  attr_accessor :fileName
  attr_accessor :inline

  def initialize(body = nil, contentType = nil, fileName = nil, inline = nil)
    @body = body
    @contentType = contentType
    @fileName = fileName
    @inline = inline
  end
end

# {urn:enterprise.soap.sforce.com}Email
#   bccSender - SOAP::SOAPBoolean
#   emailPriority - EmailPriority
#   replyTo - SOAP::SOAPString
#   saveAsActivity - SOAP::SOAPBoolean
#   senderDisplayName - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   useSignature - SOAP::SOAPBoolean
class Email
  attr_accessor :bccSender
  attr_accessor :emailPriority
  attr_accessor :replyTo
  attr_accessor :saveAsActivity
  attr_accessor :senderDisplayName
  attr_accessor :subject
  attr_accessor :useSignature

  def initialize(bccSender = nil, emailPriority = nil, replyTo = nil, saveAsActivity = nil, senderDisplayName = nil, subject = nil, useSignature = nil)
    @bccSender = bccSender
    @emailPriority = emailPriority
    @replyTo = replyTo
    @saveAsActivity = saveAsActivity
    @senderDisplayName = senderDisplayName
    @subject = subject
    @useSignature = useSignature
  end
end

# {urn:enterprise.soap.sforce.com}MassEmailMessage
#   bccSender - SOAP::SOAPBoolean
#   emailPriority - EmailPriority
#   replyTo - SOAP::SOAPString
#   saveAsActivity - SOAP::SOAPBoolean
#   senderDisplayName - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   useSignature - SOAP::SOAPBoolean
#   description - SOAP::SOAPString
#   targetObjectIds - (any)
#   templateId - (any)
#   whatIds - (any)
class MassEmailMessage < Email
  attr_accessor :bccSender
  attr_accessor :emailPriority
  attr_accessor :replyTo
  attr_accessor :saveAsActivity
  attr_accessor :senderDisplayName
  attr_accessor :subject
  attr_accessor :useSignature
  attr_accessor :description
  attr_accessor :targetObjectIds
  attr_accessor :templateId
  attr_accessor :whatIds

  def initialize(bccSender = nil, emailPriority = nil, replyTo = nil, saveAsActivity = nil, senderDisplayName = nil, subject = nil, useSignature = nil, description = nil, targetObjectIds = [], templateId = nil, whatIds = [])
    @bccSender = bccSender
    @emailPriority = emailPriority
    @replyTo = replyTo
    @saveAsActivity = saveAsActivity
    @senderDisplayName = senderDisplayName
    @subject = subject
    @useSignature = useSignature
    @description = description
    @targetObjectIds = targetObjectIds
    @templateId = templateId
    @whatIds = whatIds
  end
end

# {urn:enterprise.soap.sforce.com}SingleEmailMessage
#   bccSender - SOAP::SOAPBoolean
#   emailPriority - EmailPriority
#   replyTo - SOAP::SOAPString
#   saveAsActivity - SOAP::SOAPBoolean
#   senderDisplayName - SOAP::SOAPString
#   subject - SOAP::SOAPString
#   useSignature - SOAP::SOAPBoolean
#   bccAddresses - SOAP::SOAPString
#   ccAddresses - SOAP::SOAPString
#   charset - SOAP::SOAPString
#   documentAttachments - (any)
#   htmlBody - SOAP::SOAPString
#   inReplyTo - SOAP::SOAPString
#   fileAttachments - EmailFileAttachment
#   orgWideEmailAddressId - (any)
#   plainTextBody - SOAP::SOAPString
#   references - SOAP::SOAPString
#   targetObjectId - (any)
#   templateId - (any)
#   toAddresses - SOAP::SOAPString
#   whatId - (any)
class SingleEmailMessage < Email
  attr_accessor :bccSender
  attr_accessor :emailPriority
  attr_accessor :replyTo
  attr_accessor :saveAsActivity
  attr_accessor :senderDisplayName
  attr_accessor :subject
  attr_accessor :useSignature
  attr_accessor :bccAddresses
  attr_accessor :ccAddresses
  attr_accessor :charset
  attr_accessor :documentAttachments
  attr_accessor :htmlBody
  attr_accessor :inReplyTo
  attr_accessor :fileAttachments
  attr_accessor :orgWideEmailAddressId
  attr_accessor :plainTextBody
  attr_accessor :references
  attr_accessor :targetObjectId
  attr_accessor :templateId
  attr_accessor :toAddresses
  attr_accessor :whatId

  def initialize(bccSender = nil, emailPriority = nil, replyTo = nil, saveAsActivity = nil, senderDisplayName = nil, subject = nil, useSignature = nil, bccAddresses = [], ccAddresses = [], charset = nil, documentAttachments = [], htmlBody = nil, inReplyTo = nil, fileAttachments = [], orgWideEmailAddressId = nil, plainTextBody = nil, references = nil, targetObjectId = nil, templateId = nil, toAddresses = [], whatId = nil)
    @bccSender = bccSender
    @emailPriority = emailPriority
    @replyTo = replyTo
    @saveAsActivity = saveAsActivity
    @senderDisplayName = senderDisplayName
    @subject = subject
    @useSignature = useSignature
    @bccAddresses = bccAddresses
    @ccAddresses = ccAddresses
    @charset = charset
    @documentAttachments = documentAttachments
    @htmlBody = htmlBody
    @inReplyTo = inReplyTo
    @fileAttachments = fileAttachments
    @orgWideEmailAddressId = orgWideEmailAddressId
    @plainTextBody = plainTextBody
    @references = references
    @targetObjectId = targetObjectId
    @templateId = templateId
    @toAddresses = toAddresses
    @whatId = whatId
  end
end

# {urn:enterprise.soap.sforce.com}SendEmailResult
#   errors - SendEmailError
#   success - SOAP::SOAPBoolean
class SendEmailResult
  attr_accessor :errors
  attr_accessor :success

  def initialize(errors = [], success = nil)
    @errors = errors
    @success = success
  end
end

# {urn:enterprise.soap.sforce.com}DescribeTabSetResult
#   label - SOAP::SOAPString
#   logoUrl - SOAP::SOAPString
#   namespace - SOAP::SOAPString
#   selected - SOAP::SOAPBoolean
#   tabs - DescribeTab
class DescribeTabSetResult
  attr_accessor :label
  attr_accessor :logoUrl
  attr_accessor :namespace
  attr_accessor :selected
  attr_accessor :tabs

  def initialize(label = nil, logoUrl = nil, namespace = nil, selected = nil, tabs = [])
    @label = label
    @logoUrl = logoUrl
    @namespace = namespace
    @selected = selected
    @tabs = tabs
  end
end

# {urn:enterprise.soap.sforce.com}DescribeTab
#   custom - SOAP::SOAPBoolean
#   iconUrl - SOAP::SOAPString
#   label - SOAP::SOAPString
#   miniIconUrl - SOAP::SOAPString
#   sobjectName - SOAP::SOAPString
#   url - SOAP::SOAPString
class DescribeTab
  attr_accessor :custom
  attr_accessor :iconUrl
  attr_accessor :label
  attr_accessor :miniIconUrl
  attr_accessor :sobjectName
  attr_accessor :url

  def initialize(custom = nil, iconUrl = nil, label = nil, miniIconUrl = nil, sobjectName = nil, url = nil)
    @custom = custom
    @iconUrl = iconUrl
    @label = label
    @miniIconUrl = miniIconUrl
    @sobjectName = sobjectName
    @url = url
  end
end

# {urn:enterprise.soap.sforce.com}PackageVersion
#   majorNumber - SOAP::SOAPInt
#   minorNumber - SOAP::SOAPInt
#   namespace - SOAP::SOAPString
class PackageVersion
  attr_accessor :majorNumber
  attr_accessor :minorNumber
  attr_accessor :namespace

  def initialize(majorNumber = nil, minorNumber = nil, namespace = nil)
    @majorNumber = majorNumber
    @minorNumber = minorNumber
    @namespace = namespace
  end
end

# {urn:fault.enterprise.soap.sforce.com}ApiFault
#   exceptionCode - ExceptionCode
#   exceptionMessage - SOAP::SOAPString
class ApiFault
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:fault.enterprise.soap.sforce.com}ApiQueryFault
#   exceptionCode - ExceptionCode
#   exceptionMessage - SOAP::SOAPString
#   row - SOAP::SOAPInt
#   column - SOAP::SOAPInt
class ApiQueryFault < ApiFault
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage
  attr_accessor :row
  attr_accessor :column

  def initialize(exceptionCode = nil, exceptionMessage = nil, row = nil, column = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
    @row = row
    @column = column
  end
end

# {urn:fault.enterprise.soap.sforce.com}InvalidFieldFault
#   exceptionCode - ExceptionCode
#   exceptionMessage - SOAP::SOAPString
#   row - SOAP::SOAPInt
#   column - SOAP::SOAPInt
class InvalidFieldFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage
  attr_accessor :row
  attr_accessor :column

  def initialize(exceptionCode = nil, exceptionMessage = nil, row = nil, column = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
    @row = row
    @column = column
  end
end

# {urn:fault.enterprise.soap.sforce.com}InvalidSObjectFault
#   exceptionCode - ExceptionCode
#   exceptionMessage - SOAP::SOAPString
#   row - SOAP::SOAPInt
#   column - SOAP::SOAPInt
class InvalidSObjectFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage
  attr_accessor :row
  attr_accessor :column

  def initialize(exceptionCode = nil, exceptionMessage = nil, row = nil, column = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
    @row = row
    @column = column
  end
end

# {urn:fault.enterprise.soap.sforce.com}MalformedQueryFault
#   exceptionCode - ExceptionCode
#   exceptionMessage - SOAP::SOAPString
#   row - SOAP::SOAPInt
#   column - SOAP::SOAPInt
class MalformedQueryFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage
  attr_accessor :row
  attr_accessor :column

  def initialize(exceptionCode = nil, exceptionMessage = nil, row = nil, column = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
    @row = row
    @column = column
  end
end

# {urn:fault.enterprise.soap.sforce.com}MalformedSearchFault
#   exceptionCode - ExceptionCode
#   exceptionMessage - SOAP::SOAPString
#   row - SOAP::SOAPInt
#   column - SOAP::SOAPInt
class MalformedSearchFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage
  attr_accessor :row
  attr_accessor :column

  def initialize(exceptionCode = nil, exceptionMessage = nil, row = nil, column = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
    @row = row
    @column = column
  end
end

# {urn:fault.enterprise.soap.sforce.com}LoginFault
#   exceptionCode - ExceptionCode
#   exceptionMessage - SOAP::SOAPString
class LoginFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:fault.enterprise.soap.sforce.com}InvalidQueryLocatorFault
#   exceptionCode - ExceptionCode
#   exceptionMessage - SOAP::SOAPString
class InvalidQueryLocatorFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:fault.enterprise.soap.sforce.com}InvalidNewPasswordFault
#   exceptionCode - ExceptionCode
#   exceptionMessage - SOAP::SOAPString
class InvalidNewPasswordFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:fault.enterprise.soap.sforce.com}InvalidIdFault
#   exceptionCode - ExceptionCode
#   exceptionMessage - SOAP::SOAPString
class InvalidIdFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:fault.enterprise.soap.sforce.com}UnexpectedErrorFault
#   exceptionCode - ExceptionCode
#   exceptionMessage - SOAP::SOAPString
class UnexpectedErrorFault < ::StandardError
  attr_accessor :exceptionCode
  attr_accessor :exceptionMessage

  def initialize(exceptionCode = nil, exceptionMessage = nil)
    @exceptionCode = exceptionCode
    @exceptionMessage = exceptionMessage
  end
end

# {urn:enterprise.soap.sforce.com}StatusCode
class StatusCode < ::String
  ALL_OR_NONE_OPERATION_ROLLED_BACK = StatusCode.new("ALL_OR_NONE_OPERATION_ROLLED_BACK")
  ALREADY_IN_PROCESS = StatusCode.new("ALREADY_IN_PROCESS")
  ASSIGNEE_TYPE_REQUIRED = StatusCode.new("ASSIGNEE_TYPE_REQUIRED")
  BAD_CUSTOM_ENTITY_PARENT_DOMAIN = StatusCode.new("BAD_CUSTOM_ENTITY_PARENT_DOMAIN")
  BCC_NOT_ALLOWED_IF_BCC_COMPLIANCE_ENABLED = StatusCode.new("BCC_NOT_ALLOWED_IF_BCC_COMPLIANCE_ENABLED")
  CANNOT_CASCADE_PRODUCT_ACTIVE = StatusCode.new("CANNOT_CASCADE_PRODUCT_ACTIVE")
  CANNOT_CHANGE_FIELD_TYPE_OF_APEX_REFERENCED_FIELD = StatusCode.new("CANNOT_CHANGE_FIELD_TYPE_OF_APEX_REFERENCED_FIELD")
  CANNOT_CREATE_ANOTHER_MANAGED_PACKAGE = StatusCode.new("CANNOT_CREATE_ANOTHER_MANAGED_PACKAGE")
  CANNOT_DEACTIVATE_DIVISION = StatusCode.new("CANNOT_DEACTIVATE_DIVISION")
  CANNOT_DELETE_LAST_DATED_CONVERSION_RATE = StatusCode.new("CANNOT_DELETE_LAST_DATED_CONVERSION_RATE")
  CANNOT_DELETE_MANAGED_OBJECT = StatusCode.new("CANNOT_DELETE_MANAGED_OBJECT")
  CANNOT_DISABLE_LAST_ADMIN = StatusCode.new("CANNOT_DISABLE_LAST_ADMIN")
  CANNOT_ENABLE_IP_RESTRICT_REQUESTS = StatusCode.new("CANNOT_ENABLE_IP_RESTRICT_REQUESTS")
  CANNOT_INSERT_UPDATE_ACTIVATE_ENTITY = StatusCode.new("CANNOT_INSERT_UPDATE_ACTIVATE_ENTITY")
  CANNOT_MODIFY_MANAGED_OBJECT = StatusCode.new("CANNOT_MODIFY_MANAGED_OBJECT")
  CANNOT_RENAME_APEX_REFERENCED_FIELD = StatusCode.new("CANNOT_RENAME_APEX_REFERENCED_FIELD")
  CANNOT_RENAME_APEX_REFERENCED_OBJECT = StatusCode.new("CANNOT_RENAME_APEX_REFERENCED_OBJECT")
  CANNOT_REPARENT_RECORD = StatusCode.new("CANNOT_REPARENT_RECORD")
  CANNOT_UPDATE_CONVERTED_LEAD = StatusCode.new("CANNOT_UPDATE_CONVERTED_LEAD")
  CANT_DISABLE_CORP_CURRENCY = StatusCode.new("CANT_DISABLE_CORP_CURRENCY")
  CANT_UNSET_CORP_CURRENCY = StatusCode.new("CANT_UNSET_CORP_CURRENCY")
  CHILD_SHARE_FAILS_PARENT = StatusCode.new("CHILD_SHARE_FAILS_PARENT")
  CIRCULAR_DEPENDENCY = StatusCode.new("CIRCULAR_DEPENDENCY")
  COMMUNITY_NOT_ACCESSIBLE = StatusCode.new("COMMUNITY_NOT_ACCESSIBLE")
  CUSTOM_CLOB_FIELD_LIMIT_EXCEEDED = StatusCode.new("CUSTOM_CLOB_FIELD_LIMIT_EXCEEDED")
  CUSTOM_ENTITY_OR_FIELD_LIMIT = StatusCode.new("CUSTOM_ENTITY_OR_FIELD_LIMIT")
  CUSTOM_FIELD_INDEX_LIMIT_EXCEEDED = StatusCode.new("CUSTOM_FIELD_INDEX_LIMIT_EXCEEDED")
  CUSTOM_INDEX_EXISTS = StatusCode.new("CUSTOM_INDEX_EXISTS")
  CUSTOM_LINK_LIMIT_EXCEEDED = StatusCode.new("CUSTOM_LINK_LIMIT_EXCEEDED")
  CUSTOM_TAB_LIMIT_EXCEEDED = StatusCode.new("CUSTOM_TAB_LIMIT_EXCEEDED")
  DELETE_FAILED = StatusCode.new("DELETE_FAILED")
  DELETE_REQUIRED_ON_CASCADE = StatusCode.new("DELETE_REQUIRED_ON_CASCADE")
  DEPENDENCY_EXISTS = StatusCode.new("DEPENDENCY_EXISTS")
  DUPLICATE_CASE_SOLUTION = StatusCode.new("DUPLICATE_CASE_SOLUTION")
  DUPLICATE_COMM_NICKNAME = StatusCode.new("DUPLICATE_COMM_NICKNAME")
  DUPLICATE_CUSTOM_ENTITY_DEFINITION = StatusCode.new("DUPLICATE_CUSTOM_ENTITY_DEFINITION")
  DUPLICATE_CUSTOM_TAB_MOTIF = StatusCode.new("DUPLICATE_CUSTOM_TAB_MOTIF")
  DUPLICATE_DEVELOPER_NAME = StatusCode.new("DUPLICATE_DEVELOPER_NAME")
  DUPLICATE_EXTERNAL_ID = StatusCode.new("DUPLICATE_EXTERNAL_ID")
  DUPLICATE_MASTER_LABEL = StatusCode.new("DUPLICATE_MASTER_LABEL")
  DUPLICATE_SENDER_DISPLAY_NAME = StatusCode.new("DUPLICATE_SENDER_DISPLAY_NAME")
  DUPLICATE_USERNAME = StatusCode.new("DUPLICATE_USERNAME")
  DUPLICATE_VALUE = StatusCode.new("DUPLICATE_VALUE")
  EMAIL_NOT_PROCESSED_DUE_TO_PRIOR_ERROR = StatusCode.new("EMAIL_NOT_PROCESSED_DUE_TO_PRIOR_ERROR")
  EMPTY_SCONTROL_FILE_NAME = StatusCode.new("EMPTY_SCONTROL_FILE_NAME")
  ENTITY_FAILED_IFLASTMODIFIED_ON_UPDATE = StatusCode.new("ENTITY_FAILED_IFLASTMODIFIED_ON_UPDATE")
  ENTITY_IS_ARCHIVED = StatusCode.new("ENTITY_IS_ARCHIVED")
  ENTITY_IS_DELETED = StatusCode.new("ENTITY_IS_DELETED")
  ENTITY_IS_LOCKED = StatusCode.new("ENTITY_IS_LOCKED")
  ERROR_IN_MAILER = StatusCode.new("ERROR_IN_MAILER")
  FAILED_ACTIVATION = StatusCode.new("FAILED_ACTIVATION")
  FIELD_CUSTOM_VALIDATION_EXCEPTION = StatusCode.new("FIELD_CUSTOM_VALIDATION_EXCEPTION")
  FIELD_FILTER_VALIDATION_EXCEPTION = StatusCode.new("FIELD_FILTER_VALIDATION_EXCEPTION")
  FIELD_INTEGRITY_EXCEPTION = StatusCode.new("FIELD_INTEGRITY_EXCEPTION")
  FILTERED_LOOKUP_LIMIT_EXCEEDED = StatusCode.new("FILTERED_LOOKUP_LIMIT_EXCEEDED")
  HTML_FILE_UPLOAD_NOT_ALLOWED = StatusCode.new("HTML_FILE_UPLOAD_NOT_ALLOWED")
  IMAGE_TOO_LARGE = StatusCode.new("IMAGE_TOO_LARGE")
  INACTIVE_OWNER_OR_USER = StatusCode.new("INACTIVE_OWNER_OR_USER")
  INSUFFICIENT_ACCESS_ON_CROSS_REFERENCE_ENTITY = StatusCode.new("INSUFFICIENT_ACCESS_ON_CROSS_REFERENCE_ENTITY")
  INSUFFICIENT_ACCESS_OR_READONLY = StatusCode.new("INSUFFICIENT_ACCESS_OR_READONLY")
  INVALID_ACCESS_LEVEL = StatusCode.new("INVALID_ACCESS_LEVEL")
  INVALID_ARGUMENT_TYPE = StatusCode.new("INVALID_ARGUMENT_TYPE")
  INVALID_ASSIGNEE_TYPE = StatusCode.new("INVALID_ASSIGNEE_TYPE")
  INVALID_ASSIGNMENT_RULE = StatusCode.new("INVALID_ASSIGNMENT_RULE")
  INVALID_BATCH_OPERATION = StatusCode.new("INVALID_BATCH_OPERATION")
  INVALID_CONTENT_TYPE = StatusCode.new("INVALID_CONTENT_TYPE")
  INVALID_CREDIT_CARD_INFO = StatusCode.new("INVALID_CREDIT_CARD_INFO")
  INVALID_CROSS_REFERENCE_KEY = StatusCode.new("INVALID_CROSS_REFERENCE_KEY")
  INVALID_CROSS_REFERENCE_TYPE_FOR_FIELD = StatusCode.new("INVALID_CROSS_REFERENCE_TYPE_FOR_FIELD")
  INVALID_CURRENCY_CONV_RATE = StatusCode.new("INVALID_CURRENCY_CONV_RATE")
  INVALID_CURRENCY_CORP_RATE = StatusCode.new("INVALID_CURRENCY_CORP_RATE")
  INVALID_CURRENCY_ISO = StatusCode.new("INVALID_CURRENCY_ISO")
  INVALID_DATA_URI = StatusCode.new("INVALID_DATA_URI")
  INVALID_EMAIL_ADDRESS = StatusCode.new("INVALID_EMAIL_ADDRESS")
  INVALID_EMPTY_KEY_OWNER = StatusCode.new("INVALID_EMPTY_KEY_OWNER")
  INVALID_FIELD = StatusCode.new("INVALID_FIELD")
  INVALID_FIELD_FOR_INSERT_UPDATE = StatusCode.new("INVALID_FIELD_FOR_INSERT_UPDATE")
  INVALID_FIELD_WHEN_USING_TEMPLATE = StatusCode.new("INVALID_FIELD_WHEN_USING_TEMPLATE")
  INVALID_FILTER_ACTION = StatusCode.new("INVALID_FILTER_ACTION")
  INVALID_GOOGLE_DOCS_URL = StatusCode.new("INVALID_GOOGLE_DOCS_URL")
  INVALID_ID_FIELD = StatusCode.new("INVALID_ID_FIELD")
  INVALID_INET_ADDRESS = StatusCode.new("INVALID_INET_ADDRESS")
  INVALID_LINEITEM_CLONE_STATE = StatusCode.new("INVALID_LINEITEM_CLONE_STATE")
  INVALID_MASTER_OR_TRANSLATED_SOLUTION = StatusCode.new("INVALID_MASTER_OR_TRANSLATED_SOLUTION")
  INVALID_MESSAGE_ID_REFERENCE = StatusCode.new("INVALID_MESSAGE_ID_REFERENCE")
  INVALID_OPERATION = StatusCode.new("INVALID_OPERATION")
  INVALID_OPERATOR = StatusCode.new("INVALID_OPERATOR")
  INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST = StatusCode.new("INVALID_OR_NULL_FOR_RESTRICTED_PICKLIST")
  INVALID_PARTNER_NETWORK_STATUS = StatusCode.new("INVALID_PARTNER_NETWORK_STATUS")
  INVALID_PERSON_ACCOUNT_OPERATION = StatusCode.new("INVALID_PERSON_ACCOUNT_OPERATION")
  INVALID_READ_ONLY_USER_DML = StatusCode.new("INVALID_READ_ONLY_USER_DML")
  INVALID_SAVE_AS_ACTIVITY_FLAG = StatusCode.new("INVALID_SAVE_AS_ACTIVITY_FLAG")
  INVALID_SESSION_ID = StatusCode.new("INVALID_SESSION_ID")
  INVALID_SETUP_OWNER = StatusCode.new("INVALID_SETUP_OWNER")
  INVALID_STATUS = StatusCode.new("INVALID_STATUS")
  INVALID_TYPE = StatusCode.new("INVALID_TYPE")
  INVALID_TYPE_FOR_OPERATION = StatusCode.new("INVALID_TYPE_FOR_OPERATION")
  INVALID_TYPE_ON_FIELD_IN_RECORD = StatusCode.new("INVALID_TYPE_ON_FIELD_IN_RECORD")
  IP_RANGE_LIMIT_EXCEEDED = StatusCode.new("IP_RANGE_LIMIT_EXCEEDED")
  LICENSE_LIMIT_EXCEEDED = StatusCode.new("LICENSE_LIMIT_EXCEEDED")
  LIGHT_PORTAL_USER_EXCEPTION = StatusCode.new("LIGHT_PORTAL_USER_EXCEPTION")
  LIMIT_EXCEEDED = StatusCode.new("LIMIT_EXCEEDED")
  MALFORMED_ID = StatusCode.new("MALFORMED_ID")
  MANAGER_NOT_DEFINED = StatusCode.new("MANAGER_NOT_DEFINED")
  MASSMAIL_RETRY_LIMIT_EXCEEDED = StatusCode.new("MASSMAIL_RETRY_LIMIT_EXCEEDED")
  MASS_MAIL_LIMIT_EXCEEDED = StatusCode.new("MASS_MAIL_LIMIT_EXCEEDED")
  MAXIMUM_CCEMAILS_EXCEEDED = StatusCode.new("MAXIMUM_CCEMAILS_EXCEEDED")
  MAXIMUM_DASHBOARD_COMPONENTS_EXCEEDED = StatusCode.new("MAXIMUM_DASHBOARD_COMPONENTS_EXCEEDED")
  MAXIMUM_HIERARCHY_LEVELS_REACHED = StatusCode.new("MAXIMUM_HIERARCHY_LEVELS_REACHED")
  MAXIMUM_SIZE_OF_ATTACHMENT = StatusCode.new("MAXIMUM_SIZE_OF_ATTACHMENT")
  MAXIMUM_SIZE_OF_DOCUMENT = StatusCode.new("MAXIMUM_SIZE_OF_DOCUMENT")
  MAX_ACTIONS_PER_RULE_EXCEEDED = StatusCode.new("MAX_ACTIONS_PER_RULE_EXCEEDED")
  MAX_ACTIVE_RULES_EXCEEDED = StatusCode.new("MAX_ACTIVE_RULES_EXCEEDED")
  MAX_APPROVAL_STEPS_EXCEEDED = StatusCode.new("MAX_APPROVAL_STEPS_EXCEEDED")
  MAX_FORMULAS_PER_RULE_EXCEEDED = StatusCode.new("MAX_FORMULAS_PER_RULE_EXCEEDED")
  MAX_RULES_EXCEEDED = StatusCode.new("MAX_RULES_EXCEEDED")
  MAX_RULE_ENTRIES_EXCEEDED = StatusCode.new("MAX_RULE_ENTRIES_EXCEEDED")
  MAX_TASK_DESCRIPTION_EXCEEEDED = StatusCode.new("MAX_TASK_DESCRIPTION_EXCEEEDED")
  MAX_TM_RULES_EXCEEDED = StatusCode.new("MAX_TM_RULES_EXCEEDED")
  MAX_TM_RULE_ITEMS_EXCEEDED = StatusCode.new("MAX_TM_RULE_ITEMS_EXCEEDED")
  MERGE_FAILED = StatusCode.new("MERGE_FAILED")
  MISSING_ARGUMENT = StatusCode.new("MISSING_ARGUMENT")
  MIXED_DML_OPERATION = StatusCode.new("MIXED_DML_OPERATION")
  NONUNIQUE_SHIPPING_ADDRESS = StatusCode.new("NONUNIQUE_SHIPPING_ADDRESS")
  NO_APPLICABLE_PROCESS = StatusCode.new("NO_APPLICABLE_PROCESS")
  NO_ATTACHMENT_PERMISSION = StatusCode.new("NO_ATTACHMENT_PERMISSION")
  NO_INACTIVE_DIVISION_MEMBERS = StatusCode.new("NO_INACTIVE_DIVISION_MEMBERS")
  NO_MASS_MAIL_PERMISSION = StatusCode.new("NO_MASS_MAIL_PERMISSION")
  NUMBER_OUTSIDE_VALID_RANGE = StatusCode.new("NUMBER_OUTSIDE_VALID_RANGE")
  NUM_HISTORY_FIELDS_BY_SOBJECT_EXCEEDED = StatusCode.new("NUM_HISTORY_FIELDS_BY_SOBJECT_EXCEEDED")
  OPTED_OUT_OF_MASS_MAIL = StatusCode.new("OPTED_OUT_OF_MASS_MAIL")
  OP_WITH_INVALID_USER_TYPE_EXCEPTION = StatusCode.new("OP_WITH_INVALID_USER_TYPE_EXCEPTION")
  PACKAGE_LICENSE_REQUIRED = StatusCode.new("PACKAGE_LICENSE_REQUIRED")
  PORTAL_USER_ALREADY_EXISTS_FOR_CONTACT = StatusCode.new("PORTAL_USER_ALREADY_EXISTS_FOR_CONTACT")
  PRIVATE_CONTACT_ON_ASSET = StatusCode.new("PRIVATE_CONTACT_ON_ASSET")
  RECORD_IN_USE_BY_WORKFLOW = StatusCode.new("RECORD_IN_USE_BY_WORKFLOW")
  REQUEST_RUNNING_TOO_LONG = StatusCode.new("REQUEST_RUNNING_TOO_LONG")
  REQUIRED_FEATURE_MISSING = StatusCode.new("REQUIRED_FEATURE_MISSING")
  REQUIRED_FIELD_MISSING = StatusCode.new("REQUIRED_FIELD_MISSING")
  SELF_REFERENCE_FROM_TRIGGER = StatusCode.new("SELF_REFERENCE_FROM_TRIGGER")
  SHARE_NEEDED_FOR_CHILD_OWNER = StatusCode.new("SHARE_NEEDED_FOR_CHILD_OWNER")
  SINGLE_EMAIL_LIMIT_EXCEEDED = StatusCode.new("SINGLE_EMAIL_LIMIT_EXCEEDED")
  STANDARD_PRICE_NOT_DEFINED = StatusCode.new("STANDARD_PRICE_NOT_DEFINED")
  STORAGE_LIMIT_EXCEEDED = StatusCode.new("STORAGE_LIMIT_EXCEEDED")
  STRING_TOO_LONG = StatusCode.new("STRING_TOO_LONG")
  TABSET_LIMIT_EXCEEDED = StatusCode.new("TABSET_LIMIT_EXCEEDED")
  TEMPLATE_NOT_ACTIVE = StatusCode.new("TEMPLATE_NOT_ACTIVE")
  TERRITORY_REALIGN_IN_PROGRESS = StatusCode.new("TERRITORY_REALIGN_IN_PROGRESS")
  TEXT_DATA_OUTSIDE_SUPPORTED_CHARSET = StatusCode.new("TEXT_DATA_OUTSIDE_SUPPORTED_CHARSET")
  TOO_MANY_APEX_REQUESTS = StatusCode.new("TOO_MANY_APEX_REQUESTS")
  TOO_MANY_ENUM_VALUE = StatusCode.new("TOO_MANY_ENUM_VALUE")
  TRANSFER_REQUIRES_READ = StatusCode.new("TRANSFER_REQUIRES_READ")
  UNABLE_TO_LOCK_ROW = StatusCode.new("UNABLE_TO_LOCK_ROW")
  UNAVAILABLE_RECORDTYPE_EXCEPTION = StatusCode.new("UNAVAILABLE_RECORDTYPE_EXCEPTION")
  UNDELETE_FAILED = StatusCode.new("UNDELETE_FAILED")
  UNKNOWN_EXCEPTION = StatusCode.new("UNKNOWN_EXCEPTION")
  UNSPECIFIED_EMAIL_ADDRESS = StatusCode.new("UNSPECIFIED_EMAIL_ADDRESS")
  UNSUPPORTED_APEX_TRIGGER_OPERATON = StatusCode.new("UNSUPPORTED_APEX_TRIGGER_OPERATON")
  UNVERIFIED_SENDER_ADDRESS = StatusCode.new("UNVERIFIED_SENDER_ADDRESS")
  USER_OWNS_PORTAL_ACCOUNT_EXCEPTION = StatusCode.new("USER_OWNS_PORTAL_ACCOUNT_EXCEPTION")
  USER_WITH_APEX_SHARES_EXCEPTION = StatusCode.new("USER_WITH_APEX_SHARES_EXCEPTION")
  WEBLINK_SIZE_LIMIT_EXCEEDED = StatusCode.new("WEBLINK_SIZE_LIMIT_EXCEEDED")
  WRONG_CONTROLLER_TYPE = StatusCode.new("WRONG_CONTROLLER_TYPE")
end

# {urn:enterprise.soap.sforce.com}fieldType
class FieldType < ::String
  AnyType = FieldType.new("anyType")
  Base64 = FieldType.new("base64")
  Boolean = FieldType.new("boolean")
  C_String = FieldType.new("string")
  C_Time = FieldType.new("time")
  Combobox = FieldType.new("combobox")
  Currency = FieldType.new("currency")
  Datacategorygroupreference = FieldType.new("datacategorygroupreference")
  Date = FieldType.new("date")
  Datetime = FieldType.new("datetime")
  Double = FieldType.new("double")
  Email = FieldType.new("email")
  Encryptedstring = FieldType.new("encryptedstring")
  Id = FieldType.new("id")
  Int = FieldType.new("int")
  Multipicklist = FieldType.new("multipicklist")
  Percent = FieldType.new("percent")
  Phone = FieldType.new("phone")
  Picklist = FieldType.new("picklist")
  Reference = FieldType.new("reference")
  Textarea = FieldType.new("textarea")
  Url = FieldType.new("url")
end

# {urn:enterprise.soap.sforce.com}soapType
class SoapType < ::String
  TnsID = SoapType.new("tns:ID")
  XsdAnyType = SoapType.new("xsd:anyType")
  XsdBase64Binary = SoapType.new("xsd:base64Binary")
  XsdBoolean = SoapType.new("xsd:boolean")
  XsdDate = SoapType.new("xsd:date")
  XsdDateTime = SoapType.new("xsd:dateTime")
  XsdDouble = SoapType.new("xsd:double")
  XsdInt = SoapType.new("xsd:int")
  XsdString = SoapType.new("xsd:string")
  XsdTime = SoapType.new("xsd:time")
end

# {urn:enterprise.soap.sforce.com}layoutComponentType
class LayoutComponentType < ::String
  EmptySpace = LayoutComponentType.new("EmptySpace")
  Field = LayoutComponentType.new("Field")
  SControl = LayoutComponentType.new("SControl")
  Separator = LayoutComponentType.new("Separator")
end

# {urn:enterprise.soap.sforce.com}EmailPriority
class EmailPriority < ::String
  High = EmailPriority.new("High")
  Highest = EmailPriority.new("Highest")
  Low = EmailPriority.new("Low")
  Lowest = EmailPriority.new("Lowest")
  Normal = EmailPriority.new("Normal")
end

# {urn:enterprise.soap.sforce.com}DebugLevel
class DebugLevel < ::String
  Db = DebugLevel.new("Db")
  DebugOnly = DebugLevel.new("DebugOnly")
  None = DebugLevel.new("None")
end

# {urn:fault.enterprise.soap.sforce.com}ExceptionCode
class ExceptionCode < ::String
  API_CURRENTLY_DISABLED = ExceptionCode.new("API_CURRENTLY_DISABLED")
  API_DISABLED_FOR_ORG = ExceptionCode.new("API_DISABLED_FOR_ORG")
  CANT_ADD_STANDADRD_PORTAL_USER_TO_TERRITORY = ExceptionCode.new("CANT_ADD_STANDADRD_PORTAL_USER_TO_TERRITORY")
  CANT_ADD_STANDARD_PORTAL_USER_TO_TERRITORY = ExceptionCode.new("CANT_ADD_STANDARD_PORTAL_USER_TO_TERRITORY")
  CIRCULAR_OBJECT_GRAPH = ExceptionCode.new("CIRCULAR_OBJECT_GRAPH")
  CLIENT_NOT_ACCESSIBLE_FOR_USER = ExceptionCode.new("CLIENT_NOT_ACCESSIBLE_FOR_USER")
  CLIENT_REQUIRE_UPDATE_FOR_USER = ExceptionCode.new("CLIENT_REQUIRE_UPDATE_FOR_USER")
  CUSTOM_METADATA_LIMIT_EXCEEDED = ExceptionCode.new("CUSTOM_METADATA_LIMIT_EXCEEDED")
  DUPLICATE_VALUE = ExceptionCode.new("DUPLICATE_VALUE")
  EMAIL_BATCH_SIZE_LIMIT_EXCEEDED = ExceptionCode.new("EMAIL_BATCH_SIZE_LIMIT_EXCEEDED")
  EMAIL_TO_CASE_INVALID_ROUTING = ExceptionCode.new("EMAIL_TO_CASE_INVALID_ROUTING")
  EMAIL_TO_CASE_LIMIT_EXCEEDED = ExceptionCode.new("EMAIL_TO_CASE_LIMIT_EXCEEDED")
  EMAIL_TO_CASE_NOT_ENABLED = ExceptionCode.new("EMAIL_TO_CASE_NOT_ENABLED")
  EXCEEDED_ID_LIMIT = ExceptionCode.new("EXCEEDED_ID_LIMIT")
  EXCEEDED_LEAD_CONVERT_LIMIT = ExceptionCode.new("EXCEEDED_LEAD_CONVERT_LIMIT")
  EXCEEDED_MAX_SIZE_REQUEST = ExceptionCode.new("EXCEEDED_MAX_SIZE_REQUEST")
  EXCEEDED_MAX_TYPES_LIMIT = ExceptionCode.new("EXCEEDED_MAX_TYPES_LIMIT")
  EXCEEDED_QUOTA = ExceptionCode.new("EXCEEDED_QUOTA")
  FUNCTIONALITY_NOT_ENABLED = ExceptionCode.new("FUNCTIONALITY_NOT_ENABLED")
  FUNCTIONALITY_TEMPORARILY_UNAVAILABLE = ExceptionCode.new("FUNCTIONALITY_TEMPORARILY_UNAVAILABLE")
  INACTIVE_OWNER_OR_USER = ExceptionCode.new("INACTIVE_OWNER_OR_USER")
  INACTIVE_PORTAL = ExceptionCode.new("INACTIVE_PORTAL")
  INSUFFICIENT_ACCESS = ExceptionCode.new("INSUFFICIENT_ACCESS")
  INVALID_ASSIGNMENT_RULE = ExceptionCode.new("INVALID_ASSIGNMENT_RULE")
  INVALID_BATCH_SIZE = ExceptionCode.new("INVALID_BATCH_SIZE")
  INVALID_CLIENT = ExceptionCode.new("INVALID_CLIENT")
  INVALID_CROSS_REFERENCE_KEY = ExceptionCode.new("INVALID_CROSS_REFERENCE_KEY")
  INVALID_FIELD = ExceptionCode.new("INVALID_FIELD")
  INVALID_FILTER_LANGUAGE = ExceptionCode.new("INVALID_FILTER_LANGUAGE")
  INVALID_FILTER_VALUE = ExceptionCode.new("INVALID_FILTER_VALUE")
  INVALID_ID_FIELD = ExceptionCode.new("INVALID_ID_FIELD")
  INVALID_LOCALE_LANGUAGE = ExceptionCode.new("INVALID_LOCALE_LANGUAGE")
  INVALID_LOCATOR = ExceptionCode.new("INVALID_LOCATOR")
  INVALID_LOGIN = ExceptionCode.new("INVALID_LOGIN")
  INVALID_NEW_PASSWORD = ExceptionCode.new("INVALID_NEW_PASSWORD")
  INVALID_OPERATION = ExceptionCode.new("INVALID_OPERATION")
  INVALID_OPERATION_WITH_EXPIRED_PASSWORD = ExceptionCode.new("INVALID_OPERATION_WITH_EXPIRED_PASSWORD")
  INVALID_QUERY_FILTER_OPERATOR = ExceptionCode.new("INVALID_QUERY_FILTER_OPERATOR")
  INVALID_QUERY_LOCATOR = ExceptionCode.new("INVALID_QUERY_LOCATOR")
  INVALID_QUERY_SCOPE = ExceptionCode.new("INVALID_QUERY_SCOPE")
  INVALID_REPLICATION_DATE = ExceptionCode.new("INVALID_REPLICATION_DATE")
  INVALID_SEARCH = ExceptionCode.new("INVALID_SEARCH")
  INVALID_SEARCH_SCOPE = ExceptionCode.new("INVALID_SEARCH_SCOPE")
  INVALID_SESSION_ID = ExceptionCode.new("INVALID_SESSION_ID")
  INVALID_SOAP_HEADER = ExceptionCode.new("INVALID_SOAP_HEADER")
  INVALID_SSO_GATEWAY_URL = ExceptionCode.new("INVALID_SSO_GATEWAY_URL")
  INVALID_TYPE = ExceptionCode.new("INVALID_TYPE")
  INVALID_TYPE_FOR_OPERATION = ExceptionCode.new("INVALID_TYPE_FOR_OPERATION")
  JSON_PARSER_ERROR = ExceptionCode.new("JSON_PARSER_ERROR")
  LIMIT_EXCEEDED = ExceptionCode.new("LIMIT_EXCEEDED")
  LOGIN_CHALLENGE_ISSUED = ExceptionCode.new("LOGIN_CHALLENGE_ISSUED")
  LOGIN_CHALLENGE_PENDING = ExceptionCode.new("LOGIN_CHALLENGE_PENDING")
  LOGIN_DURING_RESTRICTED_DOMAIN = ExceptionCode.new("LOGIN_DURING_RESTRICTED_DOMAIN")
  LOGIN_DURING_RESTRICTED_TIME = ExceptionCode.new("LOGIN_DURING_RESTRICTED_TIME")
  LOGIN_MUST_USE_SECURITY_TOKEN = ExceptionCode.new("LOGIN_MUST_USE_SECURITY_TOKEN")
  MALFORMED_ID = ExceptionCode.new("MALFORMED_ID")
  MALFORMED_QUERY = ExceptionCode.new("MALFORMED_QUERY")
  MALFORMED_SEARCH = ExceptionCode.new("MALFORMED_SEARCH")
  MISSING_ARGUMENT = ExceptionCode.new("MISSING_ARGUMENT")
  NOT_MODIFIED = ExceptionCode.new("NOT_MODIFIED")
  NO_SOFTPHONE_LAYOUT = ExceptionCode.new("NO_SOFTPHONE_LAYOUT")
  NUMBER_OUTSIDE_VALID_RANGE = ExceptionCode.new("NUMBER_OUTSIDE_VALID_RANGE")
  OPERATION_TOO_LARGE = ExceptionCode.new("OPERATION_TOO_LARGE")
  ORG_IN_MAINTENANCE = ExceptionCode.new("ORG_IN_MAINTENANCE")
  ORG_IS_DOT_ORG = ExceptionCode.new("ORG_IS_DOT_ORG")
  ORG_LOCKED = ExceptionCode.new("ORG_LOCKED")
  ORG_NOT_OWNED_BY_INSTANCE = ExceptionCode.new("ORG_NOT_OWNED_BY_INSTANCE")
  PASSWORD_LOCKOUT = ExceptionCode.new("PASSWORD_LOCKOUT")
  PORTAL_NO_ACCESS = ExceptionCode.new("PORTAL_NO_ACCESS")
  QUERY_TIMEOUT = ExceptionCode.new("QUERY_TIMEOUT")
  QUERY_TOO_COMPLICATED = ExceptionCode.new("QUERY_TOO_COMPLICATED")
  REQUEST_LIMIT_EXCEEDED = ExceptionCode.new("REQUEST_LIMIT_EXCEEDED")
  REQUEST_RUNNING_TOO_LONG = ExceptionCode.new("REQUEST_RUNNING_TOO_LONG")
  SERVER_UNAVAILABLE = ExceptionCode.new("SERVER_UNAVAILABLE")
  SSO_SERVICE_DOWN = ExceptionCode.new("SSO_SERVICE_DOWN")
  TOO_MANY_APEX_REQUESTS = ExceptionCode.new("TOO_MANY_APEX_REQUESTS")
  TRIAL_EXPIRED = ExceptionCode.new("TRIAL_EXPIRED")
  UNKNOWN_EXCEPTION = ExceptionCode.new("UNKNOWN_EXCEPTION")
  UNSUPPORTED_API_VERSION = ExceptionCode.new("UNSUPPORTED_API_VERSION")
  UNSUPPORTED_CLIENT = ExceptionCode.new("UNSUPPORTED_CLIENT")
  UNSUPPORTED_MEDIA_TYPE = ExceptionCode.new("UNSUPPORTED_MEDIA_TYPE")
  XML_PARSER_ERROR = ExceptionCode.new("XML_PARSER_ERROR")
end

# {urn:fault.enterprise.soap.sforce.com}FaultCode
class FaultCode < ::String
  FnsAPI_CURRENTLY_DISABLED = FaultCode.new("fns:API_CURRENTLY_DISABLED")
  FnsAPI_DISABLED_FOR_ORG = FaultCode.new("fns:API_DISABLED_FOR_ORG")
  FnsCANT_ADD_STANDADRD_PORTAL_USER_TO_TERRITORY = FaultCode.new("fns:CANT_ADD_STANDADRD_PORTAL_USER_TO_TERRITORY")
  FnsCANT_ADD_STANDARD_PORTAL_USER_TO_TERRITORY = FaultCode.new("fns:CANT_ADD_STANDARD_PORTAL_USER_TO_TERRITORY")
  FnsCIRCULAR_OBJECT_GRAPH = FaultCode.new("fns:CIRCULAR_OBJECT_GRAPH")
  FnsCLIENT_NOT_ACCESSIBLE_FOR_USER = FaultCode.new("fns:CLIENT_NOT_ACCESSIBLE_FOR_USER")
  FnsCLIENT_REQUIRE_UPDATE_FOR_USER = FaultCode.new("fns:CLIENT_REQUIRE_UPDATE_FOR_USER")
  FnsCUSTOM_METADATA_LIMIT_EXCEEDED = FaultCode.new("fns:CUSTOM_METADATA_LIMIT_EXCEEDED")
  FnsDUPLICATE_VALUE = FaultCode.new("fns:DUPLICATE_VALUE")
  FnsEMAIL_BATCH_SIZE_LIMIT_EXCEEDED = FaultCode.new("fns:EMAIL_BATCH_SIZE_LIMIT_EXCEEDED")
  FnsEMAIL_TO_CASE_INVALID_ROUTING = FaultCode.new("fns:EMAIL_TO_CASE_INVALID_ROUTING")
  FnsEMAIL_TO_CASE_LIMIT_EXCEEDED = FaultCode.new("fns:EMAIL_TO_CASE_LIMIT_EXCEEDED")
  FnsEMAIL_TO_CASE_NOT_ENABLED = FaultCode.new("fns:EMAIL_TO_CASE_NOT_ENABLED")
  FnsEXCEEDED_ID_LIMIT = FaultCode.new("fns:EXCEEDED_ID_LIMIT")
  FnsEXCEEDED_LEAD_CONVERT_LIMIT = FaultCode.new("fns:EXCEEDED_LEAD_CONVERT_LIMIT")
  FnsEXCEEDED_MAX_SIZE_REQUEST = FaultCode.new("fns:EXCEEDED_MAX_SIZE_REQUEST")
  FnsEXCEEDED_MAX_TYPES_LIMIT = FaultCode.new("fns:EXCEEDED_MAX_TYPES_LIMIT")
  FnsEXCEEDED_QUOTA = FaultCode.new("fns:EXCEEDED_QUOTA")
  FnsFUNCTIONALITY_NOT_ENABLED = FaultCode.new("fns:FUNCTIONALITY_NOT_ENABLED")
  FnsFUNCTIONALITY_TEMPORARILY_UNAVAILABLE = FaultCode.new("fns:FUNCTIONALITY_TEMPORARILY_UNAVAILABLE")
  FnsINACTIVE_OWNER_OR_USER = FaultCode.new("fns:INACTIVE_OWNER_OR_USER")
  FnsINACTIVE_PORTAL = FaultCode.new("fns:INACTIVE_PORTAL")
  FnsINSUFFICIENT_ACCESS = FaultCode.new("fns:INSUFFICIENT_ACCESS")
  FnsINVALID_ASSIGNMENT_RULE = FaultCode.new("fns:INVALID_ASSIGNMENT_RULE")
  FnsINVALID_BATCH_SIZE = FaultCode.new("fns:INVALID_BATCH_SIZE")
  FnsINVALID_CLIENT = FaultCode.new("fns:INVALID_CLIENT")
  FnsINVALID_CROSS_REFERENCE_KEY = FaultCode.new("fns:INVALID_CROSS_REFERENCE_KEY")
  FnsINVALID_FIELD = FaultCode.new("fns:INVALID_FIELD")
  FnsINVALID_FILTER_LANGUAGE = FaultCode.new("fns:INVALID_FILTER_LANGUAGE")
  FnsINVALID_FILTER_VALUE = FaultCode.new("fns:INVALID_FILTER_VALUE")
  FnsINVALID_ID_FIELD = FaultCode.new("fns:INVALID_ID_FIELD")
  FnsINVALID_LOCALE_LANGUAGE = FaultCode.new("fns:INVALID_LOCALE_LANGUAGE")
  FnsINVALID_LOCATOR = FaultCode.new("fns:INVALID_LOCATOR")
  FnsINVALID_LOGIN = FaultCode.new("fns:INVALID_LOGIN")
  FnsINVALID_NEW_PASSWORD = FaultCode.new("fns:INVALID_NEW_PASSWORD")
  FnsINVALID_OPERATION = FaultCode.new("fns:INVALID_OPERATION")
  FnsINVALID_OPERATION_WITH_EXPIRED_PASSWORD = FaultCode.new("fns:INVALID_OPERATION_WITH_EXPIRED_PASSWORD")
  FnsINVALID_QUERY_FILTER_OPERATOR = FaultCode.new("fns:INVALID_QUERY_FILTER_OPERATOR")
  FnsINVALID_QUERY_LOCATOR = FaultCode.new("fns:INVALID_QUERY_LOCATOR")
  FnsINVALID_QUERY_SCOPE = FaultCode.new("fns:INVALID_QUERY_SCOPE")
  FnsINVALID_REPLICATION_DATE = FaultCode.new("fns:INVALID_REPLICATION_DATE")
  FnsINVALID_SEARCH = FaultCode.new("fns:INVALID_SEARCH")
  FnsINVALID_SEARCH_SCOPE = FaultCode.new("fns:INVALID_SEARCH_SCOPE")
  FnsINVALID_SESSION_ID = FaultCode.new("fns:INVALID_SESSION_ID")
  FnsINVALID_SOAP_HEADER = FaultCode.new("fns:INVALID_SOAP_HEADER")
  FnsINVALID_SSO_GATEWAY_URL = FaultCode.new("fns:INVALID_SSO_GATEWAY_URL")
  FnsINVALID_TYPE = FaultCode.new("fns:INVALID_TYPE")
  FnsINVALID_TYPE_FOR_OPERATION = FaultCode.new("fns:INVALID_TYPE_FOR_OPERATION")
  FnsJSON_PARSER_ERROR = FaultCode.new("fns:JSON_PARSER_ERROR")
  FnsLIMIT_EXCEEDED = FaultCode.new("fns:LIMIT_EXCEEDED")
  FnsLOGIN_CHALLENGE_ISSUED = FaultCode.new("fns:LOGIN_CHALLENGE_ISSUED")
  FnsLOGIN_CHALLENGE_PENDING = FaultCode.new("fns:LOGIN_CHALLENGE_PENDING")
  FnsLOGIN_DURING_RESTRICTED_DOMAIN = FaultCode.new("fns:LOGIN_DURING_RESTRICTED_DOMAIN")
  FnsLOGIN_DURING_RESTRICTED_TIME = FaultCode.new("fns:LOGIN_DURING_RESTRICTED_TIME")
  FnsLOGIN_MUST_USE_SECURITY_TOKEN = FaultCode.new("fns:LOGIN_MUST_USE_SECURITY_TOKEN")
  FnsMALFORMED_ID = FaultCode.new("fns:MALFORMED_ID")
  FnsMALFORMED_QUERY = FaultCode.new("fns:MALFORMED_QUERY")
  FnsMALFORMED_SEARCH = FaultCode.new("fns:MALFORMED_SEARCH")
  FnsMISSING_ARGUMENT = FaultCode.new("fns:MISSING_ARGUMENT")
  FnsNOT_MODIFIED = FaultCode.new("fns:NOT_MODIFIED")
  FnsNO_SOFTPHONE_LAYOUT = FaultCode.new("fns:NO_SOFTPHONE_LAYOUT")
  FnsNUMBER_OUTSIDE_VALID_RANGE = FaultCode.new("fns:NUMBER_OUTSIDE_VALID_RANGE")
  FnsOPERATION_TOO_LARGE = FaultCode.new("fns:OPERATION_TOO_LARGE")
  FnsORG_IN_MAINTENANCE = FaultCode.new("fns:ORG_IN_MAINTENANCE")
  FnsORG_IS_DOT_ORG = FaultCode.new("fns:ORG_IS_DOT_ORG")
  FnsORG_LOCKED = FaultCode.new("fns:ORG_LOCKED")
  FnsORG_NOT_OWNED_BY_INSTANCE = FaultCode.new("fns:ORG_NOT_OWNED_BY_INSTANCE")
  FnsPASSWORD_LOCKOUT = FaultCode.new("fns:PASSWORD_LOCKOUT")
  FnsPORTAL_NO_ACCESS = FaultCode.new("fns:PORTAL_NO_ACCESS")
  FnsQUERY_TIMEOUT = FaultCode.new("fns:QUERY_TIMEOUT")
  FnsQUERY_TOO_COMPLICATED = FaultCode.new("fns:QUERY_TOO_COMPLICATED")
  FnsREQUEST_LIMIT_EXCEEDED = FaultCode.new("fns:REQUEST_LIMIT_EXCEEDED")
  FnsREQUEST_RUNNING_TOO_LONG = FaultCode.new("fns:REQUEST_RUNNING_TOO_LONG")
  FnsSERVER_UNAVAILABLE = FaultCode.new("fns:SERVER_UNAVAILABLE")
  FnsSSO_SERVICE_DOWN = FaultCode.new("fns:SSO_SERVICE_DOWN")
  FnsTOO_MANY_APEX_REQUESTS = FaultCode.new("fns:TOO_MANY_APEX_REQUESTS")
  FnsTRIAL_EXPIRED = FaultCode.new("fns:TRIAL_EXPIRED")
  FnsUNKNOWN_EXCEPTION = FaultCode.new("fns:UNKNOWN_EXCEPTION")
  FnsUNSUPPORTED_API_VERSION = FaultCode.new("fns:UNSUPPORTED_API_VERSION")
  FnsUNSUPPORTED_CLIENT = FaultCode.new("fns:UNSUPPORTED_CLIENT")
  FnsUNSUPPORTED_MEDIA_TYPE = FaultCode.new("fns:UNSUPPORTED_MEDIA_TYPE")
  FnsXML_PARSER_ERROR = FaultCode.new("fns:XML_PARSER_ERROR")
end

# {urn:enterprise.soap.sforce.com}login
#   username - SOAP::SOAPString
#   password - SOAP::SOAPString
class Login
  attr_accessor :username
  attr_accessor :password

  def initialize(username = nil, password = nil)
    @username = username
    @password = password
  end
end

# {urn:enterprise.soap.sforce.com}loginResponse
#   result - LoginResult
class LoginResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}describeSObject
#   sObjectType - SOAP::SOAPString
class DescribeSObject
  attr_accessor :sObjectType

  def initialize(sObjectType = nil)
    @sObjectType = sObjectType
  end
end

# {urn:enterprise.soap.sforce.com}describeSObjectResponse
#   result - DescribeSObjectResult
class DescribeSObjectResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}describeSObjects
class DescribeSObjects < ::Array
end

# {urn:enterprise.soap.sforce.com}describeSObjectsResponse
class DescribeSObjectsResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}describeGlobal
class DescribeGlobal
  def initialize
  end
end

# {urn:enterprise.soap.sforce.com}describeGlobalResponse
#   result - DescribeGlobalResult
class DescribeGlobalResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}describeDataCategoryGroups
class DescribeDataCategoryGroups < ::Array
end

# {urn:enterprise.soap.sforce.com}describeDataCategoryGroupsResponse
class DescribeDataCategoryGroupsResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}describeDataCategoryGroupStructures
#   pairs - DataCategoryGroupSobjectTypePair
#   topCategoriesOnly - SOAP::SOAPBoolean
class DescribeDataCategoryGroupStructures
  attr_accessor :pairs
  attr_accessor :topCategoriesOnly

  def initialize(pairs = [], topCategoriesOnly = nil)
    @pairs = pairs
    @topCategoriesOnly = topCategoriesOnly
  end
end

# {urn:enterprise.soap.sforce.com}describeDataCategoryGroupStructuresResponse
class DescribeDataCategoryGroupStructuresResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}describeLayout
#   sObjectType - SOAP::SOAPString
#   recordTypeIds - (any)
class DescribeLayout_
  attr_accessor :sObjectType
  attr_accessor :recordTypeIds

  def initialize(sObjectType = nil, recordTypeIds = [])
    @sObjectType = sObjectType
    @recordTypeIds = recordTypeIds
  end
end

# {urn:enterprise.soap.sforce.com}describeLayoutResponse
#   result - DescribeLayoutResult
class DescribeLayoutResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}describeSoftphoneLayout
class DescribeSoftphoneLayout
  def initialize
  end
end

# {urn:enterprise.soap.sforce.com}describeSoftphoneLayoutResponse
#   result - DescribeSoftphoneLayoutResult
class DescribeSoftphoneLayoutResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}describeTabs
class DescribeTabs
  def initialize
  end
end

# {urn:enterprise.soap.sforce.com}describeTabsResponse
class DescribeTabsResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}create
class Create < ::Array
end

# {urn:enterprise.soap.sforce.com}createResponse
class CreateResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}sendEmail
class SendEmail < ::Array
end

# {urn:enterprise.soap.sforce.com}sendEmailResponse
class SendEmailResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}update
class Update < ::Array
end

# {urn:enterprise.soap.sforce.com}updateResponse
class UpdateResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}upsert
#   externalIDFieldName - SOAP::SOAPString
#   sObjects - SObject
class Upsert
  attr_accessor :externalIDFieldName
  attr_accessor :sObjects

  def initialize(externalIDFieldName = nil, sObjects = [])
    @externalIDFieldName = externalIDFieldName
    @sObjects = sObjects
  end
end

# {urn:enterprise.soap.sforce.com}upsertResponse
class UpsertResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}merge
class Merge < ::Array
end

# {urn:enterprise.soap.sforce.com}mergeResponse
class MergeResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}delete
class Delete < ::Array
end

# {urn:enterprise.soap.sforce.com}deleteResponse
class DeleteResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}undelete
class Undelete < ::Array
end

# {urn:enterprise.soap.sforce.com}undeleteResponse
class UndeleteResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}emptyRecycleBin
class EmptyRecycleBin < ::Array
end

# {urn:enterprise.soap.sforce.com}emptyRecycleBinResponse
class EmptyRecycleBinResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}process
class C_Process < ::Array
end

# {urn:enterprise.soap.sforce.com}processResponse
class ProcessResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}retrieve
#   fieldList - SOAP::SOAPString
#   sObjectType - SOAP::SOAPString
#   ids - (any)
class Retrieve
  attr_accessor :fieldList
  attr_accessor :sObjectType
  attr_accessor :ids

  def initialize(fieldList = nil, sObjectType = nil, ids = [])
    @fieldList = fieldList
    @sObjectType = sObjectType
    @ids = ids
  end
end

# {urn:enterprise.soap.sforce.com}retrieveResponse
class RetrieveResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}convertLead
class ConvertLead < ::Array
end

# {urn:enterprise.soap.sforce.com}convertLeadResponse
class ConvertLeadResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}getUpdated
#   sObjectType - SOAP::SOAPString
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
class GetUpdated
  attr_accessor :sObjectType
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(sObjectType = nil, startDate = nil, endDate = nil)
    @sObjectType = sObjectType
    @startDate = startDate
    @endDate = endDate
  end
end

# {urn:enterprise.soap.sforce.com}getUpdatedResponse
#   result - GetUpdatedResult
class GetUpdatedResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}getDeleted
#   sObjectType - SOAP::SOAPString
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
class GetDeleted
  attr_accessor :sObjectType
  attr_accessor :startDate
  attr_accessor :endDate

  def initialize(sObjectType = nil, startDate = nil, endDate = nil)
    @sObjectType = sObjectType
    @startDate = startDate
    @endDate = endDate
  end
end

# {urn:enterprise.soap.sforce.com}getDeletedResponse
#   result - GetDeletedResult
class GetDeletedResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}logout
class Logout
  def initialize
  end
end

# {urn:enterprise.soap.sforce.com}logoutResponse
class LogoutResponse
  def initialize
  end
end

# {urn:enterprise.soap.sforce.com}invalidateSessions
class InvalidateSessions < ::Array
end

# {urn:enterprise.soap.sforce.com}invalidateSessionsResponse
class InvalidateSessionsResponse < ::Array
end

# {urn:enterprise.soap.sforce.com}query
#   queryString - SOAP::SOAPString
class Query
  attr_accessor :queryString

  def initialize(queryString = nil)
    @queryString = queryString
  end
end

# {urn:enterprise.soap.sforce.com}queryResponse
#   result - QueryResult
class QueryResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}queryAll
#   queryString - SOAP::SOAPString
class QueryAll
  attr_accessor :queryString

  def initialize(queryString = nil)
    @queryString = queryString
  end
end

# {urn:enterprise.soap.sforce.com}queryAllResponse
#   result - QueryResult
class QueryAllResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}queryMore
#   queryLocator - (any)
class QueryMore
  attr_accessor :queryLocator

  def initialize(queryLocator = nil)
    @queryLocator = queryLocator
  end
end

# {urn:enterprise.soap.sforce.com}queryMoreResponse
#   result - QueryResult
class QueryMoreResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}search
#   searchString - SOAP::SOAPString
class Search
  attr_accessor :searchString

  def initialize(searchString = nil)
    @searchString = searchString
  end
end

# {urn:enterprise.soap.sforce.com}searchResponse
#   result - SearchResult
class SearchResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}getServerTimestamp
class GetServerTimestamp
  def initialize
  end
end

# {urn:enterprise.soap.sforce.com}getServerTimestampResponse
#   result - GetServerTimestampResult
class GetServerTimestampResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}setPassword
#   userId - (any)
#   password - SOAP::SOAPString
class SetPassword
  attr_accessor :userId
  attr_accessor :password

  def initialize(userId = nil, password = nil)
    @userId = userId
    @password = password
  end
end

# {urn:enterprise.soap.sforce.com}setPasswordResponse
#   result - SetPasswordResult
class SetPasswordResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}resetPassword
#   userId - (any)
class ResetPassword
  attr_accessor :userId

  def initialize(userId = nil)
    @userId = userId
  end
end

# {urn:enterprise.soap.sforce.com}resetPasswordResponse
#   result - ResetPasswordResult
class ResetPasswordResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}getUserInfo
class GetUserInfo
  def initialize
  end
end

# {urn:enterprise.soap.sforce.com}getUserInfoResponse
#   result - GetUserInfoResult
class GetUserInfoResponse
  attr_accessor :result

  def initialize(result = nil)
    @result = result
  end
end

# {urn:enterprise.soap.sforce.com}SessionHeader
#   sessionId - SOAP::SOAPString
class SessionHeader
  attr_accessor :sessionId

  def initialize(sessionId = nil)
    @sessionId = sessionId
  end
end

# {urn:enterprise.soap.sforce.com}LoginScopeHeader
#   organizationId - (any)
#   portalId - (any)
class LoginScopeHeader
  attr_accessor :organizationId
  attr_accessor :portalId

  def initialize(organizationId = nil, portalId = nil)
    @organizationId = organizationId
    @portalId = portalId
  end
end

# {urn:enterprise.soap.sforce.com}QueryOptions
#   batchSize - SOAP::SOAPInt
class QueryOptions
  attr_accessor :batchSize

  def initialize(batchSize = nil)
    @batchSize = batchSize
  end
end

# {urn:enterprise.soap.sforce.com}DebuggingHeader
#   debugLevel - DebugLevel
class DebuggingHeader
  attr_accessor :debugLevel

  def initialize(debugLevel = nil)
    @debugLevel = debugLevel
  end
end

# {urn:enterprise.soap.sforce.com}DebuggingInfo
#   debugLog - SOAP::SOAPString
class DebuggingInfo
  attr_accessor :debugLog

  def initialize(debugLog = nil)
    @debugLog = debugLog
  end
end

# {urn:enterprise.soap.sforce.com}PackageVersionHeader
class PackageVersionHeader < ::Array
end

# {urn:enterprise.soap.sforce.com}AllowFieldTruncationHeader
#   allowFieldTruncation - SOAP::SOAPBoolean
class AllowFieldTruncationHeader
  attr_accessor :allowFieldTruncation

  def initialize(allowFieldTruncation = nil)
    @allowFieldTruncation = allowFieldTruncation
  end
end

# {urn:enterprise.soap.sforce.com}DisableFeedTrackingHeader
#   disableFeedTracking - SOAP::SOAPBoolean
class DisableFeedTrackingHeader
  attr_accessor :disableFeedTracking

  def initialize(disableFeedTracking = nil)
    @disableFeedTracking = disableFeedTracking
  end
end

# {urn:enterprise.soap.sforce.com}AllOrNoneHeader
#   allOrNone - SOAP::SOAPBoolean
class AllOrNoneHeader
  attr_accessor :allOrNone

  def initialize(allOrNone = nil)
    @allOrNone = allOrNone
  end
end

# {urn:enterprise.soap.sforce.com}MruHeader
#   updateMru - SOAP::SOAPBoolean
class MruHeader
  attr_accessor :updateMru

  def initialize(updateMru = nil)
    @updateMru = updateMru
  end
end

# {urn:enterprise.soap.sforce.com}EmailHeader
#   triggerAutoResponseEmail - SOAP::SOAPBoolean
#   triggerOtherEmail - SOAP::SOAPBoolean
#   triggerUserEmail - SOAP::SOAPBoolean
class EmailHeader
  attr_accessor :triggerAutoResponseEmail
  attr_accessor :triggerOtherEmail
  attr_accessor :triggerUserEmail

  def initialize(triggerAutoResponseEmail = nil, triggerOtherEmail = nil, triggerUserEmail = nil)
    @triggerAutoResponseEmail = triggerAutoResponseEmail
    @triggerOtherEmail = triggerOtherEmail
    @triggerUserEmail = triggerUserEmail
  end
end

# {urn:enterprise.soap.sforce.com}AssignmentRuleHeader
#   assignmentRuleId - (any)
#   useDefaultRule - SOAP::SOAPBoolean
class AssignmentRuleHeader
  attr_accessor :assignmentRuleId
  attr_accessor :useDefaultRule

  def initialize(assignmentRuleId = nil, useDefaultRule = nil)
    @assignmentRuleId = assignmentRuleId
    @useDefaultRule = useDefaultRule
  end
end

# {urn:enterprise.soap.sforce.com}UserTerritoryDeleteHeader
#   transferToUserId - (any)
class UserTerritoryDeleteHeader
  attr_accessor :transferToUserId

  def initialize(transferToUserId = nil)
    @transferToUserId = transferToUserId
  end
end

# {urn:enterprise.soap.sforce.com}LocaleOptions
#   language - SOAP::SOAPString
class LocaleOptions
  attr_accessor :language

  def initialize(language = nil)
    @language = language
  end
end

require 'soap/header/simplehandler'

class ClientAuthHeaderHandler < SOAP::Header::SimpleHandler
  SessionHeader = XSD::QName.new("rn:enterprise.soap.sforce.com", "SessionHeader") 

  attr_accessor :sessionid
  def initialize
    super(SessionHeader)
    @sessionid = nil
  end 

  def on_simple_outbound
    if @sessionid
      {"sessionId" => @sessionid}
    end
  end

  def on_simple_inbound(my_header, mustunderstand)
    @sessionid = my_header["sessionid"]
  end
end