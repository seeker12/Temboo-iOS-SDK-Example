/*!
 * @TMBConstantContact.m
 *
 * Execute Choreographies from the Temboo ConstantContact bundle.
 *
 * iOS version 10.6.8
 *
 * LICENSE: Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * @category   Services
 * @author     Reid Simonton, Temboo, Inc.
 * @copyright  2013 Temboo, Inc.
 * @license    http://www.apache.org/licenses/LICENSE-2.0 Apache License 2.0
 * @version    1.7
 */

#import "TMBConstantContact.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the UpdateContact Choreo.
 */
@implementation TMBConstantContact_UpdateContact_Inputs

	/*!
	 * Set the value of the UpdatedContactXML input for this Choreo.
	*(required, xml) This input should be the updated XML returned from the ObtainContactInformation Choreo.
	 */
	-(void)setUpdatedContactXML:(NSString*)UpdatedContactXML {
		[super setInput:@"UpdatedContactXML" toValue:UpdatedContactXML];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Constant Contact.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ContactId input for this Choreo.
	*(required, integer) The id for the contact you want to update.
	 */
	-(void)setContactId:(NSString*)ContactId {
		[super setInput:@"ContactId" toValue:ContactId];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, integer) The ID for the list that you want to update
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Constant Contact password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) You Constant Contact username.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateContact Choreo.
 */
@implementation TMBConstantContact_UpdateContact_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Constant Contact. Note that a successful update returns no content.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing contact in your Constant Contact system when you supply a contact ID to the Choreo.
 */
@implementation TMBConstantContact_UpdateContact

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBConstantContact_UpdateContact Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ConstantContact/UpdateContact"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBConstantContact_UpdateContact_ResultSet *results = [[[TMBConstantContact_UpdateContact_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateContact Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBConstantContact_UpdateContact_Inputs*)newInputSet {
		return [[[TMBConstantContact_UpdateContact_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllContacts Choreo.
 */
@implementation TMBConstantContact_ListAllContacts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Constant Contact.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Constant Contact password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Your Constant Contact username.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllContacts Choreo.
 */
@implementation TMBConstantContact_ListAllContacts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Constant Contact.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all contacts from Constant Contact.
 */
@implementation TMBConstantContact_ListAllContacts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBConstantContact_ListAllContacts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ConstantContact/ListAllContacts"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBConstantContact_ListAllContacts_ResultSet *results = [[[TMBConstantContact_ListAllContacts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllContacts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBConstantContact_ListAllContacts_Inputs*)newInputSet {
		return [[[TMBConstantContact_ListAllContacts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateContact Choreo.
 */
@implementation TMBConstantContact_CreateContact_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Constant Contact.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Addr1 input for this Choreo.
	*(optional, string) The first line of the contact's address.
	 */
	-(void)setAddr1:(NSString*)Addr1 {
		[super setInput:@"Addr1" toValue:Addr1];
	}

	/*!
	 * Set the value of the Addr2 input for this Choreo.
	*(optional, string) The second line of the contact's address.
	 */
	-(void)setAddr2:(NSString*)Addr2 {
		[super setInput:@"Addr2" toValue:Addr2];
	}

	/*!
	 * Set the value of the Addr3 input for this Choreo.
	*(optional, string) The third line of the contact's address.
	 */
	-(void)setAddr3:(NSString*)Addr3 {
		[super setInput:@"Addr3" toValue:Addr3];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(optional, string) The city portion of the contact's address.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the CompanyName input for this Choreo.
	*(optional, string) The company name for the contact.
	 */
	-(void)setCompanyName:(NSString*)CompanyName {
		[super setInput:@"CompanyName" toValue:CompanyName];
	}

	/*!
	 * Set the value of the CountryCode input for this Choreo.
	*(optional, string) The country code associated with the contact's address.
	 */
	-(void)setCountryCode:(NSString*)CountryCode {
		[super setInput:@"CountryCode" toValue:CountryCode];
	}

	/*!
	 * Set the value of the CountryName input for this Choreo.
	*(optional, string) Corresponds to the Country Name field in Constant Contact
	 */
	-(void)setCountryName:(NSString*)CountryName {
		[super setInput:@"CountryName" toValue:CountryName];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(required, string) The email address for the contact.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the EmailType input for this Choreo.
	*(optional, string) The email type that the contact should receive.
	 */
	-(void)setEmailType:(NSString*)EmailType {
		[super setInput:@"EmailType" toValue:EmailType];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(optional, string) The first name of the contact.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the HomePhone input for this Choreo.
	*(optional, string) The contact's home phone.
	 */
	-(void)setHomePhone:(NSString*)HomePhone {
		[super setInput:@"HomePhone" toValue:HomePhone];
	}

	/*!
	 * Set the value of the JobTitle input for this Choreo.
	*(optional, string) The contact's job title.
	 */
	-(void)setJobTitle:(NSString*)JobTitle {
		[super setInput:@"JobTitle" toValue:JobTitle];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(optional, string) The last name of the contact.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, integer) The ID for the list that you want to add the contact to.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the MiddleName input for this Choreo.
	*(optional, string) The middle name of the contact.
	 */
	-(void)setMiddleName:(NSString*)MiddleName {
		[super setInput:@"MiddleName" toValue:MiddleName];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(optional, string) The full name of the contact.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Note input for this Choreo.
	*(optional, string) A note associated with the contact.
	 */
	-(void)setNote:(NSString*)Note {
		[super setInput:@"Note" toValue:Note];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Constant Contact password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the PostalCode input for this Choreo.
	*(optional, string) The postal code for the contact's address.
	 */
	-(void)setPostalCode:(NSString*)PostalCode {
		[super setInput:@"PostalCode" toValue:PostalCode];
	}

	/*!
	 * Set the value of the StateCode input for this Choreo.
	*(optional, string) The state code for the contact's address.
	 */
	-(void)setStateCode:(NSString*)StateCode {
		[super setInput:@"StateCode" toValue:StateCode];
	}

	/*!
	 * Set the value of the StateName input for this Choreo.
	*(optional, string) Corresponds to the State Name field in Constant Contact
	 */
	-(void)setStateName:(NSString*)StateName {
		[super setInput:@"StateName" toValue:StateName];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(optional, string) The status of the contact (i.e. Active).
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}

	/*!
	 * Set the value of the SubPostalCode input for this Choreo.
	*(optional, string) The sub postal code for the contact.
	 */
	-(void)setSubPostalCode:(NSString*)SubPostalCode {
		[super setInput:@"SubPostalCode" toValue:SubPostalCode];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Your Constant Contact username.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}

	/*!
	 * Set the value of the WorkPhone input for this Choreo.
	*(optional, string) The contact's work phone.
	 */
	-(void)setWorkPhone:(NSString*)WorkPhone {
		[super setInput:@"WorkPhone" toValue:WorkPhone];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateContact Choreo.
 */
@implementation TMBConstantContact_CreateContact_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Constant Contact.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a contact in your Constant Contact account.
 */
@implementation TMBConstantContact_CreateContact

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBConstantContact_CreateContact Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ConstantContact/CreateContact"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBConstantContact_CreateContact_ResultSet *results = [[[TMBConstantContact_CreateContact_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateContact Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBConstantContact_CreateContact_Inputs*)newInputSet {
		return [[[TMBConstantContact_CreateContact_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddMultipleContacts Choreo.
 */
@implementation TMBConstantContact_AddMultipleContacts_Inputs

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(conditional, multiline) The file contents of the list you want to upload. Should be in CSV format.
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Constant Contact.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, integer) The numberic id for the list that you want to add contacts to.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Constant Contact password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Your Constant Contact username.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) A path to the vault CSV file you want to upload. Required unless using the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddMultipleContacts Choreo.
 */
@implementation TMBConstantContact_AddMultipleContacts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Constant Contact.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates multiple contacts in your Constant Contact list via the Activities bulk API.  The Choreo can use Excel or CSV files for the bulk upload.
 */
@implementation TMBConstantContact_AddMultipleContacts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBConstantContact_AddMultipleContacts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ConstantContact/AddMultipleContacts"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBConstantContact_AddMultipleContacts_ResultSet *results = [[[TMBConstantContact_AddMultipleContacts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddMultipleContacts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBConstantContact_AddMultipleContacts_Inputs*)newInputSet {
		return [[[TMBConstantContact_AddMultipleContacts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchContactsByEmail Choreo.
 */
@implementation TMBConstantContact_SearchContactsByEmail_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Constant Contact.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(required, string) The email address to use in your search.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Constant Contact password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Your Constant Contact username.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchContactsByEmail Choreo.
 */
@implementation TMBConstantContact_SearchContactsByEmail_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Constant Contact.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to search Constant Contact by email to retrieve a contact's information.
 */
@implementation TMBConstantContact_SearchContactsByEmail

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBConstantContact_SearchContactsByEmail Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ConstantContact/SearchContactsByEmail"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBConstantContact_SearchContactsByEmail_ResultSet *results = [[[TMBConstantContact_SearchContactsByEmail_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchContactsByEmail Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBConstantContact_SearchContactsByEmail_Inputs*)newInputSet {
		return [[[TMBConstantContact_SearchContactsByEmail_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchContactsByUpdatedSince Choreo.
 */
@implementation TMBConstantContact_SearchContactsByUpdatedSince_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Constant Contact.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ListType input for this Choreo.
	*(optional, string) The list type to query.  Supported values for this parameter are: active, removed and do-not-mail. Defaults to 'active'.
	 */
	-(void)setListType:(NSString*)ListType {
		[super setInput:@"ListType" toValue:ListType];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Constant Contact password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the UpdatedSince input for this Choreo.
	*(required, date) Epoch timestamp in milliseconds or formatted like 2009-12-01T01:00:00.000Z. Used to query for modified records.
	 */
	-(void)setUpdatedSince:(NSString*)UpdatedSince {
		[super setInput:@"UpdatedSince" toValue:UpdatedSince];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Your Constant Contact username.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchContactsByUpdatedSince Choreo.
 */
@implementation TMBConstantContact_SearchContactsByUpdatedSince_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Constant Contact.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches your Constant Contact list by last updated date.  Use this Choreo for synchronizing your lists with other systems. 
 */
@implementation TMBConstantContact_SearchContactsByUpdatedSince

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBConstantContact_SearchContactsByUpdatedSince Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ConstantContact/SearchContactsByUpdatedSince"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBConstantContact_SearchContactsByUpdatedSince_ResultSet *results = [[[TMBConstantContact_SearchContactsByUpdatedSince_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchContactsByUpdatedSince Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBConstantContact_SearchContactsByUpdatedSince_Inputs*)newInputSet {
		return [[[TMBConstantContact_SearchContactsByUpdatedSince_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ObtainContactInformation Choreo.
 */
@implementation TMBConstantContact_ObtainContactInformation_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Constant Contact.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ContactId input for this Choreo.
	*(required, integer) The ID for the contact you want to retrieve information for.
	 */
	-(void)setContactId:(NSString*)ContactId {
		[super setInput:@"ContactId" toValue:ContactId];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Constant Contact password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the UserName input for this Choreo.
	*(required, string) Your Constant Contact username.
	 */
	-(void)setUserName:(NSString*)UserName {
		[super setInput:@"UserName" toValue:UserName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObtainContactInformation Choreo.
 */
@implementation TMBConstantContact_ObtainContactInformation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Constant Contact.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves contact information from Constant Contact by specifying the contact ID.
 */
@implementation TMBConstantContact_ObtainContactInformation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBConstantContact_ObtainContactInformation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/ConstantContact/ObtainContactInformation"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBConstantContact_ObtainContactInformation_ResultSet *results = [[[TMBConstantContact_ObtainContactInformation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ObtainContactInformation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBConstantContact_ObtainContactInformation_Inputs*)newInputSet {
		return [[[TMBConstantContact_ObtainContactInformation_Inputs alloc] init] autorelease];
	}
@end
	