/*!
 * @TMBSendGrid.m
 *
 * Execute Choreographies from the Temboo SendGrid bundle.
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

#import "TMBSendGrid.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the EditIdentity Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_EditIdentity_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid. 
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Address input for this Choreo.
	*(required, string) The new physical address to be used for this Identity.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) The new city for this Identity.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(required, string) The new country to be associated with this Identity.
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) An email address to be used for this identity.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Identity input for this Choreo.
	*(required, string) The identity that is to be edited.
	 */
	-(void)setIdentity:(NSString*)Identity {
		[super setInput:@"Identity" toValue:Identity];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The new name to be associated with this identity.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the NewIdentity input for this Choreo.
	*(optional, string) The new name for this identity.
	 */
	-(void)setNewIdentity:(NSString*)NewIdentity {
		[super setInput:@"NewIdentity" toValue:NewIdentity];
	}

	/*!
	 * Set the value of the ReplyTo input for this Choreo.
	*(required, string) An email address to be used in the Reply-To field.
	 */
	-(void)setReplyTo:(NSString*)ReplyTo {
		[super setInput:@"ReplyTo" toValue:ReplyTo];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid: Soecify json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) The state to be associated with this Identity.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(required, integer) The new zip code associated with this Identity.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditIdentity Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_EditIdentity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Edit a newsletter identity.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_EditIdentity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Identity_EditIdentity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Identity/EditIdentity"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Identity_EditIdentity_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Identity_EditIdentity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditIdentity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Identity_EditIdentity_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Identity_EditIdentity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllTimeCategoryTotals Choreo.
 */
@implementation TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Aggregate input for this Choreo.
	*(required, integer) Retrieve category statistics.  Default is set to 1.
	 */
	-(void)setAggregate:(NSString*)Aggregate {
		[super setInput:@"Aggregate" toValue:Aggregate];
	}

	/*!
	 * Set the value of the Category input for this Choreo.
	*(required, string) Enter a category for which statistics will be retrieved. It must be an existing category that has statistics. If the category entered does not exist, an empty result set will be returned.
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the Days input for this Choreo.
	*(optional, integer) The number of days (greater than 0) for which block data will be retrieved. Note that you can use either the days parameter or the start_date and end_date parameter.
	 */
	-(void)setDays:(NSString*)Days {
		[super setInput:@"Days" toValue:Days];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value. Use this ,or Days.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllTimeCategoryTotals Choreo.
 */
@implementation TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain statistics by specified categories.
 */
@implementation TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Statistics/GetAllTimeCategoryTotals"] autorelease];
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
		TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals_ResultSet *results = [[[TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllTimeCategoryTotals Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Statistics_GetAllTimeCategoryTotals_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetNewsletterContent Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the newsletter to be retrieved. It must be an existing newsletter.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewsletterContent Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve contents of a specified newsletter.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Newsletter/GetNewsletterContent"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetNewsletterContent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Newsletter_GetNewsletterContent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBouncedAddress Choreo.
 */
@implementation TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(optional, string) The valid email address to be deleted from your block list.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of bounce to search for. Choices include: hard, or soft.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBouncedAddress Choreo.
 */
@implementation TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete an address from the bounced email list.
 */
@implementation TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Bounces/DeleteBouncedAddress"] autorelease];
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
		TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress_ResultSet *results = [[[TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBouncedAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Bounces_DeleteBouncedAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateIdentity Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_CreateIdentity_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid. 
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Address input for this Choreo.
	*(required, string) The physical address to be used for this Identity.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) The city for this Identity.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(required, string) The country to be associated with this Identity.
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address to be used for this identity.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Identity input for this Choreo.
	*(required, string) The name for this identity.
	 */
	-(void)setIdentity:(NSString*)Identity {
		[super setInput:@"Identity" toValue:Identity];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) Enter the name to be associated with this identity.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ReplyTo input for this Choreo.
	*(required, string) An email address to be used in the Reply-To field.
	 */
	-(void)setReplyTo:(NSString*)ReplyTo {
		[super setInput:@"ReplyTo" toValue:ReplyTo];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid.  Specify json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) The state to be associated with this Identity.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(required, integer) The zip code associated with this Identity.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateIdentity Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_CreateIdentity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Create a new identity.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_CreateIdentity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Identity_CreateIdentity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Identity/CreateIdentity"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Identity_CreateIdentity_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Identity_CreateIdentity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateIdentity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Identity_CreateIdentity_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Identity_CreateIdentity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateRecipientList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid. 
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the ColumnName input for this Choreo.
	*(optional, string) An additional column name.
	 */
	-(void)setColumnName:(NSString*)ColumnName {
		[super setInput:@"ColumnName" toValue:ColumnName];
	}

	/*!
	 * Set the value of the List input for this Choreo.
	*(required, string) The name of the recipient list that is being created.
	 */
	-(void)setList:(NSString*)List {
		[super setInput:@"List" toValue:List];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(optional, string) The column name to be associated with email addresses.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid. Specify json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRecipientList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Create a new recipient list.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Lists/CreateRecipientList"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateRecipientList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Lists_CreateRecipientList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUnsubscribesList Choreo.
 */
@implementation TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Days input for this Choreo.
	*(optional, integer) The number of days (greater than 0) for which block data will be retrieved. Note that you can use either the days parameter or the start_date and end_date parameter.
	 */
	-(void)setDays:(NSString*)Days {
		[super setInput:@"Days" toValue:Days];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The specific email address to search for.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) A number to limit the number of results returned.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The beginning point in the list to retrieve bounces from.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value. Use this ,or Days.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUnsubscribesList Choreo.
 */
@implementation TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get a list of Unsubscribes with addresses and dates. 
 */
@implementation TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Unsubscribes/GetUnsubscribesList"] autorelease];
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
		TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList_ResultSet *results = [[[TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUnsubscribesList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Unsubscribes_GetUnsubscribesList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllRecipientLists Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the List input for this Choreo.
	*(optional, string) The name of a Recipient List to be retrieved.
	 */
	-(void)setList:(NSString*)List {
		[super setInput:@"List" toValue:List];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllRecipientLists Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve all Recipient Lists.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Lists/GetAllRecipientLists"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllRecipientLists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Lists_GetAllRecipientLists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveAggregates Choreo.
 */
@implementation TMBSendGrid_WebAPI_Statistics_RetrieveAggregates_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Aggregate input for this Choreo.
	*(required, integer) Retrieve all time totals. Must be set to 1. 
	 */
	-(void)setAggregate:(NSString*)Aggregate {
		[super setInput:@"Aggregate" toValue:Aggregate];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveAggregates Choreo.
 */
@implementation TMBSendGrid_WebAPI_Statistics_RetrieveAggregates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve all-time total usage statistics for your subusers
 */
@implementation TMBSendGrid_WebAPI_Statistics_RetrieveAggregates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Statistics_RetrieveAggregates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Statistics/RetrieveAggregates"] autorelease];
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
		TMBSendGrid_WebAPI_Statistics_RetrieveAggregates_ResultSet *results = [[[TMBSendGrid_WebAPI_Statistics_RetrieveAggregates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveAggregates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Statistics_RetrieveAggregates_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Statistics_RetrieveAggregates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RenameRecipientList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the List input for this Choreo.
	*(required, string) The name of Recipient List that is to be renamed.
	 */
	-(void)setList:(NSString*)List {
		[super setInput:@"List" toValue:List];
	}

	/*!
	 * Set the value of the NewList input for this Choreo.
	*(required, string) The new name of Recipient List that is to be renamed.
	 */
	-(void)setNewList:(NSString*)NewList {
		[super setInput:@"NewList" toValue:NewList];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RenameRecipientList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Rename a recipient list.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Lists/RenameRecipientList"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RenameRecipientList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Lists_RenameRecipientList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllIdentities Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid. 
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Identity input for this Choreo.
	*(optional, string) The identity for which info will be retrieved. Leave it empty to list all Identities in this account.
	 */
	-(void)setIdentity:(NSString*)Identity {
		[super setInput:@"Identity" toValue:Identity];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid. Specify json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllIdentities Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve information about a specified Identity.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Identity/ListAllIdentities"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllIdentities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Identity_ListAllIdentities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ActivateApp Choreo.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_ActivateApp_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the AppName input for this Choreo.
	*(required, string) The name of the app to be activated.  A list of available apps can be obtained by running the ListAvailableApps Choreo.
	 */
	-(void)setAppName:(NSString*)AppName {
		[super setInput:@"AppName" toValue:AppName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ActivateApp Choreo.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_ActivateApp_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Activate an app.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_ActivateApp

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_FilterCommands_ActivateApp Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/FilterCommands/ActivateApp"] autorelease];
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
		TMBSendGrid_WebAPI_FilterCommands_ActivateApp_ResultSet *results = [[[TMBSendGrid_WebAPI_FilterCommands_ActivateApp_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ActivateApp Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_FilterCommands_ActivateApp_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_FilterCommands_ActivateApp_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAvailableApps Choreo.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The username registered with SendGrid.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAvailableApps Choreo.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * List all availalbe apps available through the SendGrid Web API.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/FilterCommands/ListAvailableApps"] autorelease];
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
		TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps_ResultSet *results = [[[TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAvailableApps Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_FilterCommands_ListAvailableApps_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAttachedRecipientLists Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of an existing newsletter, whose recipient lists will be obtained.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAttachedRecipientLists Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve Recipient Lists attached to a specified newsletter.
 */
@implementation TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Recipients/GetAttachedRecipientLists"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAttachedRecipientLists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Recipients_GetAttachedRecipientLists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetListEmailAddresses Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email address to search for in a recipient list.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the List input for this Choreo.
	*(required, string) The recipient list from which email addresses will be retrieved.  Must be an existing recipient list.
	 */
	-(void)setList:(NSString*)List {
		[super setInput:@"List" toValue:List];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListEmailAddresses Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve email addresses associated with a specified Recipient List.
 */
@implementation TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/ListsEmail/GetListEmailAddresses"] autorelease];
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
		TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetListEmailAddresses Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_ListsEmail_GetListEmailAddresses_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddAddressToUnsubscribesList Choreo.
 */
@implementation TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The valid email address to be added to the unsubscribed list.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddAddressToUnsubscribesList Choreo.
 */
@implementation TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Add an address to the Unsubscribe list.
 */
@implementation TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Unsubscribes/AddAddressToUnsubscribesList"] autorelease];
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
		TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList_ResultSet *results = [[[TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddAddressToUnsubscribesList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Unsubscribes_AddAddressToUnsubscribesList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAppSettings Choreo.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_GetAppSettings_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the AppName input for this Choreo.
	*(required, string) The name of the app to be activated.  A list of available apps can be obtained by running the ListAvailableApps Choreo.
	 */
	-(void)setAppName:(NSString*)AppName {
		[super setInput:@"AppName" toValue:AppName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAppSettings Choreo.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_GetAppSettings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain settings for the specified app.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_GetAppSettings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_FilterCommands_GetAppSettings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/FilterCommands/GetAppSettings"] autorelease];
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
		TMBSendGrid_WebAPI_FilterCommands_GetAppSettings_ResultSet *results = [[[TMBSendGrid_WebAPI_FilterCommands_GetAppSettings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAppSettings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_FilterCommands_GetAppSettings_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_FilterCommands_GetAppSettings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EditNewsletter Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the HTML input for this Choreo.
	*(required, string) The html portion of the newsletter.
	 */
	-(void)setHTML:(NSString*)HTML {
		[super setInput:@"HTML" toValue:HTML];
	}

	/*!
	 * Set the value of the Identity input for this Choreo.
	*(required, string) The new identity Identiy for the newsletter that is being edited.
	 */
	-(void)setIdentity:(NSString*)Identity {
		[super setInput:@"Identity" toValue:Identity];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the newsletter that is being edited.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the NewName input for this Choreo.
	*(required, string) The new name of the newsletter that is being edited.
	 */
	-(void)setNewName:(NSString*)NewName {
		[super setInput:@"NewName" toValue:NewName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(required, string) The new subject for the edited newsletter.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text portion of the newsletter.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditNewsletter Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Edit an existing newsletter.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Newsletter/EditNewsletter"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditNewsletter Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Newsletter_EditNewsletter_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEmailAddress Choreo.
 */
@implementation TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The specific email address to be deleted from the spam report list.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEmailAddress Choreo.
 */
@implementation TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete an email address from the spam reports list.

 */
@implementation TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/SpamReports/DeleteEmailAddress"] autorelease];
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
		TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress_ResultSet *results = [[[TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteEmailAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_SpamReports_DeleteEmailAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllNewsletters Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(optional, string) The name of a specific newsletter to be retrieved. It must be an existing newsletter.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllNewsletters Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get a list of all newsletters in this account.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Newsletter/ListAllNewsletters"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllNewsletters Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Newsletter_ListAllNewsletters_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ViewAccountProfile Choreo.
 */
@implementation TMBSendGrid_WebAPI_Profile_ViewAccountProfile_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ViewAccountProfile Choreo.
 */
@implementation TMBSendGrid_WebAPI_Profile_ViewAccountProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Display account profile information.
 */
@implementation TMBSendGrid_WebAPI_Profile_ViewAccountProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Profile_ViewAccountProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Profile/ViewAccountProfile"] autorelease];
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
		TMBSendGrid_WebAPI_Profile_ViewAccountProfile_ResultSet *results = [[[TMBSendGrid_WebAPI_Profile_ViewAccountProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ViewAccountProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Profile_ViewAccountProfile_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Profile_ViewAccountProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteScheduledDeliveryTime Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the newsletter for which scheduled delievery will be removed.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteScheduledDeliveryTime Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete a scheduled Newsletter delivery time.
 */
@implementation TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Schedule/DeleteScheduledDeliveryTime"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteScheduledDeliveryTime Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Schedule_DeleteScheduledDeliveryTime_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFromUnsubscribesList Choreo.
 */
@implementation TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The unsubscribed email address to be deleted from the list. If no parameters are provided, the ENTIRE list will be removed.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value. Use this ,or Days.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFromUnsubscribesList Choreo.
 */
@implementation TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete an address from the Unsubscribe list.
 */
@implementation TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Unsubscribes/DeleteFromUnsubscribesList"] autorelease];
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
		TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList_ResultSet *results = [[[TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFromUnsubscribesList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Unsubscribes_DeleteFromUnsubscribesList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBlockedAddress Choreo.
 */
@implementation TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(required, string) The valid email address to be deleted from your block list.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBlockedAddress Choreo.
 */
@implementation TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete an address from the blocked email list.
 */
@implementation TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Blocks/DeleteBlockedAddress"] autorelease];
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
		TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress_ResultSet *results = [[[TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBlockedAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Blocks_DeleteBlockedAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEmailFromList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address to be removed from the recipient list.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the List input for this Choreo.
	*(required, string) The recipient list from which email addresses will be removed.  Must be an existing recipient list.
	 */
	-(void)setList:(NSString*)List {
		[super setInput:@"List" toValue:List];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEmailFromList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete an email address from a specified Recipient List.
 */
@implementation TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/ListsEmail/DeleteEmailFromList"] autorelease];
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
		TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteEmailFromList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_ListsEmail_DeleteEmailFromList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SetupApp Choreo.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_SetupApp_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the AppName input for this Choreo.
	*(required, string) The name of the app to be activated.  A list of available apps can be obtained by running the ListAvailableApps Choreo.
	 */
	-(void)setAppName:(NSString*)AppName {
		[super setInput:@"AppName" toValue:AppName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) Enter the password for the app that is being setup.  For example, if setting up a Twitter app, enter a valid Twitter account password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The username for the app that is being setup. For example, if setting up a Twitter app, enter a valid Twitter account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetupApp Choreo.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_SetupApp_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sets up a previously activated app.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_SetupApp

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_FilterCommands_SetupApp Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/FilterCommands/SetupApp"] autorelease];
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
		TMBSendGrid_WebAPI_FilterCommands_SetupApp_ResultSet *results = [[[TMBSendGrid_WebAPI_FilterCommands_SetupApp_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SetupApp Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_FilterCommands_SetupApp_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_FilterCommands_SetupApp_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRecipientList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the List input for this Choreo.
	*(required, string) The name of a Recipient List to be deleted from this account.
	 */
	-(void)setList:(NSString*)List {
		[super setInput:@"List" toValue:List];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRecipientList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete a Recipient List.
 */
@implementation TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Lists/DeleteRecipientList"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRecipientList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Lists_DeleteRecipientList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInvalidAddress Choreo.
 */
@implementation TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the EmailAddressToDelete input for this Choreo.
	*(required, string) The email address that is to be deleted.
	 */
	-(void)setEmailAddressToDelete:(NSString*)EmailAddressToDelete {
		[super setInput:@"EmailAddressToDelete" toValue:EmailAddressToDelete];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInvalidAddress Choreo.
 */
@implementation TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete an address from the Invalid Email list.
 */
@implementation TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/InvalidEmails/DeleteInvalidAddress"] autorelease];
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
		TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress_ResultSet *results = [[[TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteInvalidAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_InvalidEmails_DeleteInvalidAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveInvalidEmails Choreo.
 */
@implementation TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Days input for this Choreo.
	*(optional, integer) The number of days (greater than 0) for which block data will be retrieved.
	 */
	-(void)setDays:(NSString*)Days {
		[super setInput:@"Days" toValue:Days];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email to search for.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number to limit the number of results returned.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The beginning point in the list to retrieve bounces from.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveInvalidEmails Choreo.
 */
@implementation TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of invalid emails with addresses, response codes, and dates.
 */
@implementation TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/InvalidEmails/RetrieveInvalidEmails"] autorelease];
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
		TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails_ResultSet *results = [[[TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveInvalidEmails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_InvalidEmails_RetrieveInvalidEmails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetNewsletterScheduleTime Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the newsletter for which delivery schedule information will be retrieved.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewsletterScheduleTime Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get the scheduled delivery time of a specified Newsletter.
 */
@implementation TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Schedule/GetNewsletterScheduleTime"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetNewsletterScheduleTime Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Schedule_GetNewsletterScheduleTime_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRecipientListFromNewsletter Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the List input for this Choreo.
	*(required, string) The Recipient List to remove.
	 */
	-(void)setList:(NSString*)List {
		[super setInput:@"List" toValue:List];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of an existing newsletter, to remove recipient lists from.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRecipientListFromNewsletter Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete Recipient Lists from a Newsletter.
 */
@implementation TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Recipients/DeleteRecipientListFromNewsletter"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRecipientListFromNewsletter Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Recipients_DeleteRecipientListFromNewsletter_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccountProfile Choreo.
 */
@implementation TMBSendGrid_WebAPI_Profile_UpdateAccountProfile_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Address input for this Choreo.
	*(optional, string) The company address.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(optional, string) The city where this address is located in.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(optional, string) The first name of the profile being updated.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(optional, string) The last name of the profile being updated.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the Phone input for this Choreo.
	*(optional, string) The phone number, where you can be reached.
	 */
	-(void)setPhone:(NSString*)Phone {
		[super setInput:@"Phone" toValue:Phone];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state where this company is located in.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Website input for this Choreo.
	*(optional, string) The company's website.
	 */
	-(void)setWebsite:(NSString*)Website {
		[super setInput:@"Website" toValue:Website];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(optional, string) The zipcode where this company is located.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccountProfile Choreo.
 */
@implementation TMBSendGrid_WebAPI_Profile_UpdateAccountProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Update a SendGrid account profile.
 */
@implementation TMBSendGrid_WebAPI_Profile_UpdateAccountProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Profile_UpdateAccountProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Profile/UpdateAccountProfile"] autorelease];
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
		TMBSendGrid_WebAPI_Profile_UpdateAccountProfile_ResultSet *results = [[[TMBSendGrid_WebAPI_Profile_UpdateAccountProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateAccountProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Profile_UpdateAccountProfile_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Profile_UpdateAccountProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllCategories Choreo.
 */
@implementation TMBSendGrid_WebAPI_Statistics_ListAllCategories_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllCategories Choreo.
 */
@implementation TMBSendGrid_WebAPI_Statistics_ListAllCategories_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of all the categories used in a SendGrid account.
 */
@implementation TMBSendGrid_WebAPI_Statistics_ListAllCategories

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Statistics_ListAllCategories Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Statistics/ListAllCategories"] autorelease];
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
		TMBSendGrid_WebAPI_Statistics_ListAllCategories_ResultSet *results = [[[TMBSendGrid_WebAPI_Statistics_ListAllCategories_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllCategories Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Statistics_ListAllCategories_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Statistics_ListAllCategories_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateNewsletter Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the HTML input for this Choreo.
	*(required, string) The html portion of the newsletter.
	 */
	-(void)setHTML:(NSString*)HTML {
		[super setInput:@"HTML" toValue:HTML];
	}

	/*!
	 * Set the value of the Identity input for this Choreo.
	*(required, string) The Identiy that will be used for the newsletter to be created.  This must be an existing Identity.
	 */
	-(void)setIdentity:(NSString*)Identity {
		[super setInput:@"Identity" toValue:Identity];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the new newsletter.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(required, string) The subject for the new newsletter.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text portion of the newsletter.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateNewsletter Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Create a new newsletter.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Newsletter/CreateNewsletter"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateNewsletter Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Newsletter_CreateNewsletter_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ScheduleNewsletterDelivery Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the After input for this Choreo.
	*(optional, integer) The number of minites after which the newsletter will be delivered.
	 */
	-(void)setAfter:(NSString*)After {
		[super setInput:@"After" toValue:After];
	}

	/*!
	 * Set the value of the At input for this Choreo.
	*(optional, string) The date and time when the newsletter is to be delievered, in ISO 8601 format (YYYY-MM-DD HH:MM:SS+-HH:MM)
	 */
	-(void)setAt:(NSString*)At {
		[super setInput:@"At" toValue:At];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the newsletter that is being scheduled for delivery.  If the newsletter is to be sent immediately, then leave the At, and After parameters empty.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ScheduleNewsletterDelivery Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Schedule a delivery time for an existing Newsletter.
 */
@implementation TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Schedule/ScheduleNewsletterDelivery"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ScheduleNewsletterDelivery Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Schedule_ScheduleNewsletterDelivery_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeactivateApp Choreo.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_DeactivateApp_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the AppName input for this Choreo.
	*(required, string) The name of the app to be activated.  A list of available apps can be obtained by running the ListAvailableApps Choreo.
	 */
	-(void)setAppName:(NSString*)AppName {
		[super setInput:@"AppName" toValue:AppName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeactivateApp Choreo.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_DeactivateApp_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deactivate an app.
 */
@implementation TMBSendGrid_WebAPI_FilterCommands_DeactivateApp

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_FilterCommands_DeactivateApp Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/FilterCommands/DeactivateApp"] autorelease];
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
		TMBSendGrid_WebAPI_FilterCommands_DeactivateApp_ResultSet *results = [[[TMBSendGrid_WebAPI_FilterCommands_DeactivateApp_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeactivateApp Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_FilterCommands_DeactivateApp_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_FilterCommands_DeactivateApp_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateContactProfileEmailAddress Choreo.
 */
@implementation TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the NewEmailAddress input for this Choreo.
	*(required, string) A valid email address, not exceeding 100 characters. This address will be used for all future communication with SendGrid. A confirmation email will be sent to validate the change of address.
	 */
	-(void)setNewEmailAddress:(NSString*)NewEmailAddress {
		[super setInput:@"NewEmailAddress" toValue:NewEmailAddress];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateContactProfileEmailAddress Choreo.
 */
@implementation TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Update an account username.
 */
@implementation TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Profile/UpdateContactProfileEmailAddress"] autorelease];
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
		TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress_ResultSet *results = [[[TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateContactProfileEmailAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Profile_UpdateContactProfileEmailAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBlockedAddresses Choreo.
 */
@implementation TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Days input for this Choreo.
	*(optional, integer) The number of days (greater than 0) for which block data will be retrieved.
	 */
	-(void)setDays:(NSString*)Days {
		[super setInput:@"Days" toValue:Days];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) Specify the end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBlockedAddresses Choreo.
 */
@implementation TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of blocked emails, with response codes, and optional dates.
 */
@implementation TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Blocks/GetBlockedAddresses"] autorelease];
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
		TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses_ResultSet *results = [[[TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBlockedAddresses Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Blocks_GetBlockedAddresses_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddRecipientList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the List input for this Choreo.
	*(required, string) The recipient list to be added to the specified newsletter.
	 */
	-(void)setList:(NSString*)List {
		[super setInput:@"List" toValue:List];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of an existing newsletter to which a recipient list is being added.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddRecipientList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Add one or more recipient lists to a newsletter.
 */
@implementation TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Recipients/AddRecipientList"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddRecipientList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Recipients_AddRecipientList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCategoryStatistics Choreo.
 */
@implementation TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Category input for this Choreo.
	*(required, string) The category for which statistics will be retrieved. It must be an existing category that has statistics. If the category entered does not exist, an empty result set will be returned.
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the Days input for this Choreo.
	*(optional, integer) The number of days (greater than 0) for which block data will be retrieved. Note that you can use either the days parameter or the start_date and end_date parameter.
	 */
	-(void)setDays:(NSString*)Days {
		[super setInput:@"Days" toValue:Days];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value. Use this ,or Days.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCategoryStatistics Choreo.
 */
@implementation TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain statistics by specified categories.
 */
@implementation TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Statistics/GetCategoryStatistics"] autorelease];
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
		TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics_ResultSet *results = [[[TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCategoryStatistics Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Statistics_GetCategoryStatistics_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUsername Choreo.
 */
@implementation TMBSendGrid_WebAPI_Profile_UpdateUsername_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the NewUsername input for this Choreo.
	*(required, string) The new username, to be used for authenticating on the SendGrid SMTP servers and website. Must not exceed 100 characters. The username cannot be already taken or contain the SendGrid.com domain
	 */
	-(void)setNewUsername:(NSString*)NewUsername {
		[super setInput:@"NewUsername" toValue:NewUsername];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUsername Choreo.
 */
@implementation TMBSendGrid_WebAPI_Profile_UpdateUsername_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Update an account username.
 */
@implementation TMBSendGrid_WebAPI_Profile_UpdateUsername

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Profile_UpdateUsername Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Profile/UpdateUsername"] autorelease];
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
		TMBSendGrid_WebAPI_Profile_UpdateUsername_ResultSet *results = [[[TMBSendGrid_WebAPI_Profile_UpdateUsername_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateUsername Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Profile_UpdateUsername_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Profile_UpdateUsername_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetIdentityInfo Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid. 
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Identity input for this Choreo.
	*(required, string) The identity for which info will be retrieved.
	 */
	-(void)setIdentity:(NSString*)Identity {
		[super setInput:@"Identity" toValue:Identity];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid: Specify json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetIdentityInfo Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve information about a specified Identity.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Identity/GetIdentityInfo"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetIdentityInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Identity_GetIdentityInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteNewsletter Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the newsletter that is to be deleted.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteNewsletter Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Remove a newsletter from the account.
 */
@implementation TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Newsletter/DeleteNewsletter"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteNewsletter Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Newsletter_DeleteNewsletter_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ResetPassword Choreo.
 */
@implementation TMBSendGrid_WebAPI_Profile_ResetPassword_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the ConfirmPassword input for this Choreo.
	*(required, string) The new account password.  Must match the string entered in the Password variable.  Minumum password length is 6 characters.
	 */
	-(void)setConfirmPassword:(NSString*)ConfirmPassword {
		[super setInput:@"ConfirmPassword" toValue:ConfirmPassword];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The new account password of 6 characters or more.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ResetPassword Choreo.
 */
@implementation TMBSendGrid_WebAPI_Profile_ResetPassword_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Reset a SendGrid account password.
 */
@implementation TMBSendGrid_WebAPI_Profile_ResetPassword

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Profile_ResetPassword Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Profile/ResetPassword"] autorelease];
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
		TMBSendGrid_WebAPI_Profile_ResetPassword_ResultSet *results = [[[TMBSendGrid_WebAPI_Profile_ResetPassword_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ResetPassword Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Profile_ResetPassword_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Profile_ResetPassword_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SendMail Choreo.
 */
@implementation TMBSendGrid_WebAPI_Mail_SendMail_Inputs

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(optional, string) The Base64-encoded contents of the file you want to attach.
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the BCC input for this Choreo.
	*(optional, string) Enter a BCC recipient.  Multiple recipients can also be passed in as an array of email addresses.
	 */
	-(void)setBCC:(NSString*)BCC {
		[super setInput:@"BCC" toValue:BCC];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(optional, string) The name of the file you are attaching to your email.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the FromName input for this Choreo.
	*(optional, string) The name to be appended to the from email.  For example, your company name, or your name.
	 */
	-(void)setFromName:(NSString*)FromName {
		[super setInput:@"FromName" toValue:FromName];
	}

	/*!
	 * Set the value of the From input for this Choreo.
	*(required, string) The originating email address.  Must be from your domain.
	 */
	-(void)setFrom:(NSString*)From {
		[super setInput:@"From" toValue:From];
	}

	/*!
	 * Set the value of the HTML input for this Choreo.
	*(conditional, string) The HTML to be used in the body of your email message. Required unless specifying a plain text body in the Text input.
	 */
	-(void)setHTML:(NSString*)HTML {
		[super setInput:@"HTML" toValue:HTML];
	}

	/*!
	 * Set the value of the Headers input for this Choreo.
	*(optional, json) The collection of key/value pairs in JSON format. Each key represents a header name and the value the header value. For example: {"X-Accept-Language": "en", "X-Mailer": "MyApp"}
	 */
	-(void)setHeaders:(NSString*)Headers {
		[super setInput:@"Headers" toValue:Headers];
	}

	/*!
	 * Set the value of the ReplyTo input for this Choreo.
	*(optional, string) The email address to append to the reply-to field of your email.
	 */
	-(void)setReplyTo:(NSString*)ReplyTo {
		[super setInput:@"ReplyTo" toValue:ReplyTo];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(required, string) The subject of the email message.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(conditional, string) The text of the email message. Required unless providing the message body using the HTML input.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}

	/*!
	 * Set the value of the ToName input for this Choreo.
	*(optional, string) The name of the email recipient.
	 */
	-(void)setToName:(NSString*)ToName {
		[super setInput:@"ToName" toValue:ToName];
	}

	/*!
	 * Set the value of the To input for this Choreo.
	*(required, string) The valid recipient email address.  Multiple addresses can be entered as elements of an array.
	 */
	-(void)setTo:(NSString*)To {
		[super setInput:@"To" toValue:To];
	}

	/*!
	 * Set the value of the XSMTPAPI input for this Choreo.
	*(optional, json) Must be valid JSON format.  See here for additional info: http://docs.sendgrid.com/documentation/api/smtp-api/
	 */
	-(void)setXSMTPAPI:(NSString*)XSMTPAPI {
		[super setInput:@"XSMTPAPI" toValue:XSMTPAPI];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*A path to a vault file to use for the attachment. Can be used as an alternative to the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendMail Choreo.
 */
@implementation TMBSendGrid_WebAPI_Mail_SendMail_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to send emails.
 */
@implementation TMBSendGrid_WebAPI_Mail_SendMail

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Mail_SendMail Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Mail/SendMail"] autorelease];
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
		TMBSendGrid_WebAPI_Mail_SendMail_ResultSet *results = [[[TMBSendGrid_WebAPI_Mail_SendMail_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SendMail Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Mail_SendMail_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Mail_SendMail_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveStatistics Choreo.
 */
@implementation TMBSendGrid_WebAPI_Statistics_RetrieveStatistics_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Days input for this Choreo.
	*(optional, integer) The number of days (greater than 0) for which block data will be retrieved.
	 */
	-(void)setDays:(NSString*)Days {
		[super setInput:@"Days" toValue:Days];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) Specify the end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveStatistics Choreo.
 */
@implementation TMBSendGrid_WebAPI_Statistics_RetrieveStatistics_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve usage statistics.

 */
@implementation TMBSendGrid_WebAPI_Statistics_RetrieveStatistics

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Statistics_RetrieveStatistics Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Statistics/RetrieveStatistics"] autorelease];
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
		TMBSendGrid_WebAPI_Statistics_RetrieveStatistics_ResultSet *results = [[[TMBSendGrid_WebAPI_Statistics_RetrieveStatistics_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveStatistics Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Statistics_RetrieveStatistics_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Statistics_RetrieveStatistics_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddEmailToList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Data input for this Choreo.
	*(required, string) The JSON string containing the name, email and additional fields to be added to the specified recipient lists.  Example: {"email":"address@example.com","name":"name","other_field":"value"}
	 */
	-(void)setData:(NSString*)Data {
		[super setInput:@"Data" toValue:Data];
	}

	/*!
	 * Set the value of the List input for this Choreo.
	*(required, string) The recipient list to which emaill addresses are being added. The list must be already existing.
	 */
	-(void)setList:(NSString*)List {
		[super setInput:@"List" toValue:List];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddEmailToList Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Add an email to an existing Recipient List.
 */
@implementation TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/ListsEmail/AddEmailToList"] autorelease];
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
		TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddEmailToList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_ListsEmail_AddEmailToList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteIdentity Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity_Inputs

	/*!
	 * Set the value of the Response input for this Choreo.
	*(required, any) The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 */
	-(void)setResponse:(NSString*)Response {
		[super setInput:@"Response" toValue:Response];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid. 
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Identity input for this Choreo.
	*(required, string) The identity to be removed from your account.
	 */
	-(void)setIdentity:(NSString*)Identity {
		[super setInput:@"Identity" toValue:Identity];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid. Specify json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteIdentity Choreo.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	
@end

/*!
 * Delete an Identity.
 */
@implementation TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/NewsletterAPI/Identity/DeleteIdentity"] autorelease];
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
		TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity_ResultSet *results = [[[TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteIdentity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity_Inputs*)newInputSet {
		return [[[TMBSendGrid_NewsletterAPI_Identity_DeleteIdentity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBounces Choreo.
 */
@implementation TMBSendGrid_WebAPI_Bounces_GetBounces_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Days input for this Choreo.
	*(optional, integer) The number of days (greater than 0) for which block data will be retrieved.
	 */
	-(void)setDays:(NSString*)Days {
		[super setInput:@"Days" toValue:Days];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email to search for.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number to limit the number of results returned.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The beginning point in the list to retrieve bounces from.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of bounce to search for. Choice included are: hard, or soft.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBounces Choreo.
 */
@implementation TMBSendGrid_WebAPI_Bounces_GetBounces_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of bounced emails, with response codes, and optional dates.
 */
@implementation TMBSendGrid_WebAPI_Bounces_GetBounces

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_Bounces_GetBounces Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/Bounces/GetBounces"] autorelease];
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
		TMBSendGrid_WebAPI_Bounces_GetBounces_ResultSet *results = [[[TMBSendGrid_WebAPI_Bounces_GetBounces_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBounces Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_Bounces_GetBounces_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_Bounces_GetBounces_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSpamReports Choreo.
 */
@implementation TMBSendGrid_WebAPI_SpamReports_GetSpamReports_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key obtained from SendGrid.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APIUser input for this Choreo.
	*(required, string) The username registered with SendGrid.
	 */
	-(void)setAPIUser:(NSString*)APIUser {
		[super setInput:@"APIUser" toValue:APIUser];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) The timestamp of the Block records. Enter 1 to return a date in a MySQL timestamp format - YYYY-MM-DD HH:MM:SS
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Days input for this Choreo.
	*(optional, integer) The number of days (greater than 0) for which block data will be retrieved.
	 */
	-(void)setDays:(NSString*)Days {
		[super setInput:@"Days" toValue:Days];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) A specific email address to search for.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) The end of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) A number to limit the number of results returned.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The beginning point in the list to retrieve bounces from.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from SendGrid, in either json, or xml.  Default is set to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) The start of the date range for which blocks are to be retireved. The specified date must be in YYYY-MM-DD format, and must be earlier than the EndDate variable value.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSpamReports Choreo.
 */
@implementation TMBSendGrid_WebAPI_SpamReports_GetSpamReports_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from SendGrid. The format corresponds to the ResponseFormat input. Default is json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain a list of spam reports, with email addresses, response codes, and dates.

 */
@implementation TMBSendGrid_WebAPI_SpamReports_GetSpamReports

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSendGrid_WebAPI_SpamReports_GetSpamReports Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SendGrid/WebAPI/SpamReports/GetSpamReports"] autorelease];
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
		TMBSendGrid_WebAPI_SpamReports_GetSpamReports_ResultSet *results = [[[TMBSendGrid_WebAPI_SpamReports_GetSpamReports_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSpamReports Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSendGrid_WebAPI_SpamReports_GetSpamReports_Inputs*)newInputSet {
		return [[[TMBSendGrid_WebAPI_SpamReports_GetSpamReports_Inputs alloc] init] autorelease];
	}
@end
	