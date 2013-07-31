/*!
 * @TMBMailChimp.m
 *
 * Execute Choreographies from the Temboo MailChimp bundle.
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

#import "TMBMailChimp.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ListBatchSubscribe Choreo.
 */
@implementation TMBMailChimp_ListBatchSubscribe_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DoubleOptIn input for this Choreo.
	*(optional, boolean) Flag to control whether a double opt-in confirmation message is sent. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setDoubleOptIn:(NSString*)DoubleOptIn {
		[super setInput:@"DoubleOptIn" toValue:DoubleOptIn];
	}

	/*!
	 * Set the value of the EmailType input for this Choreo.
	*(optional, string) Must be one of 'text', 'html', or 'mobile'. Defaults to html.
	 */
	-(void)setEmailType:(NSString*)EmailType {
		[super setInput:@"EmailType" toValue:EmailType];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The id of the Mailchimp list the subscribers will be added to.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the ReplaceInterests input for this Choreo.
	*(optional, boolean) A flag to determine whether to replace the interest groups with the groups provided or add the provided groups to the member's interest groups. Specify '1' (true) or '0' (false). Defaults to 1.
	 */
	-(void)setReplaceInterests:(NSString*)ReplaceInterests {
		[super setInput:@"ReplaceInterests" toValue:ReplaceInterests];
	}

	/*!
	 * Set the value of the SendWelcome input for this Choreo.
	*(optional, boolean) If double_optin is false and this flag is true, a welcome email will be sent. Note that this does not apply when updating records. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setSendWelcome:(NSString*)SendWelcome {
		[super setInput:@"SendWelcome" toValue:SendWelcome];
	}

	/*!
	 * Set the value of the Subscribers input for this Choreo.
	*(required, json) An array of JSON objects containing the subscribers to insert. See Choreo documentation for the specific format for this JSON input.
	 */
	-(void)setSubscribers:(NSString*)Subscribers {
		[super setInput:@"Subscribers" toValue:Subscribers];
	}

	/*!
	 * Set the value of the SupressErrors input for this Choreo.
	*(optional, boolean) Whether or not to suppress errors that arise from attempting to add/update a subscriber. Defaults to 0 (false). Set to 1 (true) to supress errors.
	 */
	-(void)setSupressErrors:(NSString*)SupressErrors {
		[super setInput:@"SupressErrors" toValue:SupressErrors];
	}

	/*!
	 * Set the value of the UpdateExisting input for this Choreo.
	*(optional, boolean) Indicates that if the email already exists, this request will perform an update instead of an insert. Specify '1' (true) or '0' (false). Defaults to 1.
	 */
	-(void)setUpdateExisting:(NSString*)UpdateExisting {
		[super setInput:@"UpdateExisting" toValue:UpdateExisting];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBatchSubscribe Choreo.
 */
@implementation TMBMailChimp_ListBatchSubscribe_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ErrorList" output from an execution of this Choreo.
	 * @return - NSString* (json) A list of emails that were not successfully subscribed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getErrorList {
		return [super getOutputByName:@"ErrorList"];
	}

	/*!
	 * Retrieve the value of the "SuccessList" output from an execution of this Choreo.
	 * @return - NSString* (json) A list of email successfully subscribed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSuccessList {
		return [super getOutputByName:@"SuccessList"];
	}
	
@end

/*!
 * Adds or updates multiple Mailchimp list subscribers.
 */
@implementation TMBMailChimp_ListBatchSubscribe

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListBatchSubscribe Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListBatchSubscribe"] autorelease];
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
		TMBMailChimp_ListBatchSubscribe_ResultSet *results = [[[TMBMailChimp_ListBatchSubscribe_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListBatchSubscribe Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListBatchSubscribe_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListBatchSubscribe_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMergeVarAdd Choreo.
 */
@implementation TMBMailChimp_ListMergeVarAdd_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Choices input for this Choreo.
	*(optional, string) A list of up to 10 choices for radio and dropdown type fields )separated by commas).
	 */
	-(void)setChoices:(NSString*)Choices {
		[super setInput:@"Choices" toValue:Choices];
	}

	/*!
	 * Set the value of the DateFormat input for this Choreo.
	*(optional, string) Valid for birthday and date fields. For birthday, must be "MM/DD" (default) or "DD/MM". For date type, must be "MM/DD/YYYY" (default) or "DD/MM/YYYY".
	 */
	-(void)setDateFormat:(NSString*)DateFormat {
		[super setInput:@"DateFormat" toValue:DateFormat];
	}

	/*!
	 * Set the value of the DefaultCountry input for this Choreo.
	*(optional, string) The ISO 3166 2 digit character code for the default country. Defaults to "US".
	 */
	-(void)setDefaultCountry:(NSString*)DefaultCountry {
		[super setInput:@"DefaultCountry" toValue:DefaultCountry];
	}

	/*!
	 * Set the value of the DefaultValue input for this Choreo.
	*(optional, string) The default value for the new field.
	 */
	-(void)setDefaultValue:(NSString*)DefaultValue {
		[super setInput:@"DefaultValue" toValue:DefaultValue];
	}

	/*!
	 * Set the value of the FieldType input for this Choreo.
	*(optional, string) Must be either left unset or one of 'text', 'number', 'radio', 'dropdown', 'date', 'address', 'phone', 'url', or 'imageurl. Defaults to text.
	 */
	-(void)setFieldType:(NSString*)FieldType {
		[super setInput:@"FieldType" toValue:FieldType];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The ID of the list on which to add the new merge var.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) Provide a long merge var name for user display (i.e. First Name)
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the PhoneFormat input for this Choreo.
	*(optional, string) Defaults to "US"  - any other value will cause them to be unformatted (international).
	 */
	-(void)setPhoneFormat:(NSString*)PhoneFormat {
		[super setInput:@"PhoneFormat" toValue:PhoneFormat];
	}

	/*!
	 * Set the value of the Public input for this Choreo.
	*(optional, boolean) Indicates whether the field is displayed in public. Specify '1' (true) or '0' (false). Defaults to 1.
	 */
	-(void)setPublic:(NSString*)Public {
		[super setInput:@"Public" toValue:Public];
	}

	/*!
	 * Set the value of the Req input for this Choreo.
	*(optional, boolean) Indicates that the field will be required.  Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setReq:(NSString*)Req {
		[super setInput:@"Req" toValue:Req];
	}

	/*!
	 * Set the value of the Show input for this Choreo.
	*(optional, boolean) Indicates whether the field is displayed in the app's list member view.  Specify '1' (true) or '0' (false). Defaults to 1.
	 */
	-(void)setShow:(NSString*)Show {
		[super setInput:@"Show" toValue:Show];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(required, string) Provide a short merge var tag name. MUST be 10 UTF-8 chars, including 'A-Z', '0-9', or '_' only (i.e. DESC123456).
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMergeVarAdd Choreo.
 */
@implementation TMBMailChimp_ListMergeVarAdd_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Mailchimp. Returns the string "true" for success and an error description for failures.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Add a new field to a MailChimp list.
 */
@implementation TMBMailChimp_ListMergeVarAdd

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListMergeVarAdd Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListMergeVarAdd"] autorelease];
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
		TMBMailChimp_ListMergeVarAdd_ResultSet *results = [[[TMBMailChimp_ListMergeVarAdd_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMergeVarAdd Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListMergeVarAdd_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListMergeVarAdd_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListBatchUnsubscribe Choreo.
 */
@implementation TMBMailChimp_ListBatchUnsubscribe_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DeleteMember input for this Choreo.
	*(optional, boolean) A flag used to completely delete the member from your list instead of just unsubscribing. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setDeleteMember:(NSString*)DeleteMember {
		[super setInput:@"DeleteMember" toValue:DeleteMember];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address to unsubscribe from a Mailchimp list . Multiple emails can be supplied separated by commas.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The Mailchimp List ID
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the SendGoodbye input for this Choreo.
	*(optional, boolean) A flag used to send the goodbye email to the email address. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setSendGoodbye:(NSString*)SendGoodbye {
		[super setInput:@"SendGoodbye" toValue:SendGoodbye];
	}

	/*!
	 * Set the value of the SendNotify input for this Choreo.
	*(optional, boolean) A flag used to send the unsubscribe notification email to the address defined in the list email notification settings. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setSendNotify:(NSString*)SendNotify {
		[super setInput:@"SendNotify" toValue:SendNotify];
	}

	/*!
	 * Set the value of the SupressErrors input for this Choreo.
	*(optional, boolean) Whether or not to suppress errors that arise from attempting to unsubscribe an email address. Defaults to 0 (false). Set to 1 (true) to supress errors.
	 */
	-(void)setSupressErrors:(NSString*)SupressErrors {
		[super setInput:@"SupressErrors" toValue:SupressErrors];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBatchUnsubscribe Choreo.
 */
@implementation TMBMailChimp_ListBatchUnsubscribe_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ErrorList" output from an execution of this Choreo.
	 * @return - NSString* (json) A list of emails that were not successfully unsubscribed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getErrorList {
		return [super getOutputByName:@"ErrorList"];
	}

	/*!
	 * Retrieve the value of the "SuccessList" output from an execution of this Choreo.
	 * @return - NSString* (json) A list of email successfully unsubscribed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSuccessList {
		return [super getOutputByName:@"SuccessList"];
	}
	
@end

/*!
 * Unsubscribes one or more members from a MailChimp list.
 */
@implementation TMBMailChimp_ListBatchUnsubscribe

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListBatchUnsubscribe Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListBatchUnsubscribe"] autorelease];
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
		TMBMailChimp_ListBatchUnsubscribe_ResultSet *results = [[[TMBMailChimp_ListBatchUnsubscribe_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListBatchUnsubscribe Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListBatchUnsubscribe_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListBatchUnsubscribe_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListBatchUnsubscribeCSV Choreo.
 */
@implementation TMBMailChimp_ListBatchUnsubscribeCSV_Inputs

	/*!
	 * Set the value of the CSVFile input for this Choreo.
	*(conditional, multiline) The list of subscriber email addresses to unsubscribe in CSV format.
	 */
	-(void)setCSVFile:(NSString*)CSVFile {
		[super setInput:@"CSVFile" toValue:CSVFile];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DeleteMember input for this Choreo.
	*(optional, boolean) A flag used to completely delete the member from your list instead of just unsubscribing. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setDeleteMember:(NSString*)DeleteMember {
		[super setInput:@"DeleteMember" toValue:DeleteMember];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The id of the Mailchimp list associated with the email addresses to unsubscribe.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the SendGoodbye input for this Choreo.
	*(optional, boolean) A flag used to send the goodbye email to the email address. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setSendGoodbye:(NSString*)SendGoodbye {
		[super setInput:@"SendGoodbye" toValue:SendGoodbye];
	}

	/*!
	 * Set the value of the SendNotify input for this Choreo.
	*(optional, boolean) A flag used to send the unsubscribe notification email to the address defined in the list email notification settings. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setSendNotify:(NSString*)SendNotify {
		[super setInput:@"SendNotify" toValue:SendNotify];
	}

	/*!
	 * Set the value of the SupressErrors input for this Choreo.
	*(optional, boolean) Whether or not to suppress errors that arise from attempting to unsubscribe an email address. Defaults to 0 (false). Set to 1 (true) to supress errors.
	 */
	-(void)setSupressErrors:(NSString*)SupressErrors {
		[super setInput:@"SupressErrors" toValue:SupressErrors];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*A path to a csv file in the vault containing the email addresses to unsubscribe. Can be used as an alternative to the CSVFile input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBatchUnsubscribeCSV Choreo.
 */
@implementation TMBMailChimp_ListBatchUnsubscribeCSV_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ErrorList" output from an execution of this Choreo.
	 * @return - NSString* (multiline) A list of emails that were not successfully unsubscribed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getErrorList {
		return [super getOutputByName:@"ErrorList"];
	}

	/*!
	 * Retrieve the value of the "SuccessList" output from an execution of this Choreo.
	 * @return - NSString* (multiline) A list of email successfully unsubscribed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSuccessList {
		return [super getOutputByName:@"SuccessList"];
	}
	
@end

/*!
 * Unsubscribes one or more members listed in a CSV file from a MailChimp list.
 */
@implementation TMBMailChimp_ListBatchUnsubscribeCSV

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListBatchUnsubscribeCSV Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListBatchUnsubscribeCSV"] autorelease];
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
		TMBMailChimp_ListBatchUnsubscribeCSV_ResultSet *results = [[[TMBMailChimp_ListBatchUnsubscribeCSV_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListBatchUnsubscribeCSV Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListBatchUnsubscribeCSV_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListBatchUnsubscribeCSV_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Ping Choreo.
 */
@implementation TMBMailChimp_Ping_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Ping Choreo.
 */
@implementation TMBMailChimp_Ping_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from Mailchimp.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Test connection to MailChimp services.
 */
@implementation TMBMailChimp_Ping

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_Ping Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/Ping"] autorelease];
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
		TMBMailChimp_Ping_ResultSet *results = [[[TMBMailChimp_Ping_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Ping Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_Ping_Inputs*)newInputSet {
		return [[[TMBMailChimp_Ping_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListUnsubscribe Choreo.
 */
@implementation TMBMailChimp_ListUnsubscribe_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DeleteMember input for this Choreo.
	*(optional, boolean) A flag used to completely delete the member from your list instead of just unsubscribing. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setDeleteMember:(NSString*)DeleteMember {
		[super setInput:@"DeleteMember" toValue:DeleteMember];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(required, string) The email address to unsubscribe.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The id of the list that contains the email address you want to unsubscribe.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the SendGoodbye input for this Choreo.
	*(optional, boolean) A flag used to send the goodbye email to the email address. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setSendGoodbye:(NSString*)SendGoodbye {
		[super setInput:@"SendGoodbye" toValue:SendGoodbye];
	}

	/*!
	 * Set the value of the SendNotify input for this Choreo.
	*(optional, boolean) A flag used to send the unsubscribe notification email to the address defined in the list email notification settings. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setSendNotify:(NSString*)SendNotify {
		[super setInput:@"SendNotify" toValue:SendNotify];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUnsubscribe Choreo.
 */
@implementation TMBMailChimp_ListUnsubscribe_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Mailchimp. Returns the string "true" for success and an error description for failures.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Remove a subscriber from a MailChimp list.
 */
@implementation TMBMailChimp_ListUnsubscribe

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListUnsubscribe Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListUnsubscribe"] autorelease];
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
		TMBMailChimp_ListUnsubscribe_ResultSet *results = [[[TMBMailChimp_ListUnsubscribe_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListUnsubscribe Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListUnsubscribe_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListUnsubscribe_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListSubscribe Choreo.
 */
@implementation TMBMailChimp_ListSubscribe_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DoubleOptIn input for this Choreo.
	*(optional, boolean) Flag to control whether a double opt-in confirmation message is sent. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setDoubleOptIn:(NSString*)DoubleOptIn {
		[super setInput:@"DoubleOptIn" toValue:DoubleOptIn];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(conditional, string) The email address for the subscriber you want to create. Required unless the email address is included in the MergeVars input as part of your JSON object.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the EmailType input for this Choreo.
	*(optional, string) Must be one of 'text', 'html', or 'mobile'. Defaults to html.
	 */
	-(void)setEmailType:(NSString*)EmailType {
		[super setInput:@"EmailType" toValue:EmailType];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The id of the list that the subsbriber will be added to.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the MergeVars input for this Choreo.
	*(conditional, json) A JSON object of the merge fields for this subscriber. If the subscriber email address is not provided for the EmailAddress input, it must be specified here.
	 */
	-(void)setMergeVars:(NSString*)MergeVars {
		[super setInput:@"MergeVars" toValue:MergeVars];
	}

	/*!
	 * Set the value of the ReplaceInterests input for this Choreo.
	*(optional, boolean) A flag to determine whether to replace the interest groups with the groups provided or add the provided groups to the member's interest groups. Specify '1' (true) or '0' (false). Defaults to 1.
	 */
	-(void)setReplaceInterests:(NSString*)ReplaceInterests {
		[super setInput:@"ReplaceInterests" toValue:ReplaceInterests];
	}

	/*!
	 * Set the value of the SendWelcome input for this Choreo.
	*(optional, boolean) If double_optin is false and this flag is true, a welcome email will be sent. Note that this does not apply when updating records. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setSendWelcome:(NSString*)SendWelcome {
		[super setInput:@"SendWelcome" toValue:SendWelcome];
	}

	/*!
	 * Set the value of the UpdateExisting input for this Choreo.
	*(optional, boolean) Indicates that if the email already exists, this request will perform an update instead of an insert. Specify '1' (true) or '0' (false). Defaults to 1.
	 */
	-(void)setUpdateExisting:(NSString*)UpdateExisting {
		[super setInput:@"UpdateExisting" toValue:UpdateExisting];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSubscribe Choreo.
 */
@implementation TMBMailChimp_ListSubscribe_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Mailchimp. Returns the string "true" for success and an error description for failures.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a subscriber to a MailChimp list.
 */
@implementation TMBMailChimp_ListSubscribe

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListSubscribe Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListSubscribe"] autorelease];
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
		TMBMailChimp_ListSubscribe_ResultSet *results = [[[TMBMailChimp_ListSubscribe_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListSubscribe Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListSubscribe_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListSubscribe_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMemberInfo Choreo.
 */
@implementation TMBMailChimp_ListMemberInfo_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(required, string) The email address to use when searching for a Mailchimp member.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The id of the Mailchimp list associated with the member you want to retrieve.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Indicates the desired format for the response. Accepted values are "json" or "xml" (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMemberInfo Choreo.
 */
@implementation TMBMailChimp_ListMemberInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Mailchimp. Corresponds to the format specified in the ResponseFormat parameter. Defaults to "xml".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get information for a member of a MailChimp list.
 */
@implementation TMBMailChimp_ListMemberInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListMemberInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListMemberInfo"] autorelease];
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
		TMBMailChimp_ListMemberInfo_ResultSet *results = [[[TMBMailChimp_ListMemberInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMemberInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListMemberInfo_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListMemberInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListUpdateMember Choreo.
 */
@implementation TMBMailChimp_ListUpdateMember_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(required, string) The current email address for the subscriber you want to update.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the EmailType input for this Choreo.
	*(optional, string) Must be one of 'text', 'html', or 'mobile'. Defaults to html.
	 */
	-(void)setEmailType:(NSString*)EmailType {
		[super setInput:@"EmailType" toValue:EmailType];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The id of the list that the existing subsbriber belongs to.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the Merge1 input for this Choreo.
	*(optional, string) Corresponds to the first merge var field defined in your account.
	 */
	-(void)setMerge1:(NSString*)Merge1 {
		[super setInput:@"Merge1" toValue:Merge1];
	}

	/*!
	 * Set the value of the Merge2 input for this Choreo.
	*(optional, string) Corresponds to the second merge var field defined in your account.
	 */
	-(void)setMerge2:(NSString*)Merge2 {
		[super setInput:@"Merge2" toValue:Merge2];
	}

	/*!
	 * Set the value of the Merge3 input for this Choreo.
	*(optional, string) Corresponds to the third merge var field defined in your account.
	 */
	-(void)setMerge3:(NSString*)Merge3 {
		[super setInput:@"Merge3" toValue:Merge3];
	}

	/*!
	 * Set the value of the Merge4 input for this Choreo.
	*(optional, string) Corresponds to the fourth merge var field defined in your account.
	 */
	-(void)setMerge4:(NSString*)Merge4 {
		[super setInput:@"Merge4" toValue:Merge4];
	}

	/*!
	 * Set the value of the NewEmail input for this Choreo.
	*(optional, multiline) Set this to update the email address of a subscriber.
	 */
	-(void)setNewEmail:(NSString*)NewEmail {
		[super setInput:@"NewEmail" toValue:NewEmail];
	}

	/*!
	 * Set the value of the ReplaceInterests input for this Choreo.
	*(optional, boolean) A flag to determine whether to replace the interest groups with the groups provided or add the provided groups to the member's interest groups. Specify '1' (true) or '0' (false). Defaults to 1.
	 */
	-(void)setReplaceInterests:(NSString*)ReplaceInterests {
		[super setInput:@"ReplaceInterests" toValue:ReplaceInterests];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUpdateMember Choreo.
 */
@implementation TMBMailChimp_ListUpdateMember_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Mailchimp. Returns the string "true" for success and an error description for failures.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Update information for a member of a MailChimp list.
 */
@implementation TMBMailChimp_ListUpdateMember

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListUpdateMember Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListUpdateMember"] autorelease];
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
		TMBMailChimp_ListUpdateMember_ResultSet *results = [[[TMBMailChimp_ListUpdateMember_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListUpdateMember Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListUpdateMember_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListUpdateMember_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMergeVars Choreo.
 */
@implementation TMBMailChimp_ListMergeVars_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The id of the Mailchimp list associated with the merge vars to retrieve.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Indicates the desired format for the response. Accepted values are "json" or "xml" (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMergeVars Choreo.
 */
@implementation TMBMailChimp_ListMergeVars_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Mailchimp. Corresponds to the format specified in the ResponseFormat parameter. Defaults to "xml".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get field names from a MailChimp list.
 */
@implementation TMBMailChimp_ListMergeVars

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListMergeVars Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListMergeVars"] autorelease];
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
		TMBMailChimp_ListMergeVars_ResultSet *results = [[[TMBMailChimp_ListMergeVars_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMergeVars Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListMergeVars_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListMergeVars_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListBatchSubscribeCSV Choreo.
 */
@implementation TMBMailChimp_ListBatchSubscribeCSV_Inputs

	/*!
	 * Set the value of the CSVFile input for this Choreo.
	*(conditional, multiline) The list of subscriber email addresses to unsubscribe in CSV format.
	 */
	-(void)setCSVFile:(NSString*)CSVFile {
		[super setInput:@"CSVFile" toValue:CSVFile];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DoubleOptIn input for this Choreo.
	*(conditional, boolean) Flag to control whether a double opt-in confirmation message is sent. Specify '1' (true) or '0' (false). Defaults to 0.
	 */
	-(void)setDoubleOptIn:(NSString*)DoubleOptIn {
		[super setInput:@"DoubleOptIn" toValue:DoubleOptIn];
	}

	/*!
	 * Set the value of the EmailType input for this Choreo.
	*(optional, string) Must be one of 'text', 'html', or 'mobile'. Defaults to html.
	 */
	-(void)setEmailType:(NSString*)EmailType {
		[super setInput:@"EmailType" toValue:EmailType];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The id of the Mailchimp list associated with the email addresses to subscribe.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the ReplaceInterests input for this Choreo.
	*(optional, boolean) A flag to determine whether to replace the interest groups with the groups provided or add the provided groups to the member's interest groups. Specify '1' (true) or '0' (false). Defaults to 1.
	 */
	-(void)setReplaceInterests:(NSString*)ReplaceInterests {
		[super setInput:@"ReplaceInterests" toValue:ReplaceInterests];
	}

	/*!
	 * Set the value of the SupressErrors input for this Choreo.
	*(optional, boolean) Whether or not to suppress errors that arise from attempting to add/update a subscriber. Defaults to 0 (false). Set to 1 (true) to supress errors.
	 */
	-(void)setSupressErrors:(NSString*)SupressErrors {
		[super setInput:@"SupressErrors" toValue:SupressErrors];
	}

	/*!
	 * Set the value of the UpdateExisting input for this Choreo.
	*(conditional, boolean) Indicates that if the email already exists, this request will perform an update instead of an insert. Specify '1' (true) or '0' (false). Defaults to 1.
	 */
	-(void)setUpdateExisting:(NSString*)UpdateExisting {
		[super setInput:@"UpdateExisting" toValue:UpdateExisting];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*A path to a csv file in the vault containing the email addresses to unsubscribe. Can be used as an alternative to the CSVFile input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBatchSubscribeCSV Choreo.
 */
@implementation TMBMailChimp_ListBatchSubscribeCSV_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ErrorList" output from an execution of this Choreo.
	 * @return - NSString* (multiline) A list of emails that were not successfully subscribed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getErrorList {
		return [super getOutputByName:@"ErrorList"];
	}

	/*!
	 * Retrieve the value of the "SuccessList" output from an execution of this Choreo.
	 * @return - NSString* (multiline) A list of email successfully subscribed.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getSuccessList {
		return [super getOutputByName:@"SuccessList"];
	}
	
@end

/*!
 * Adds or updates multiple subscribers in a given CSV file.
 */
@implementation TMBMailChimp_ListBatchSubscribeCSV

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListBatchSubscribeCSV Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListBatchSubscribeCSV"] autorelease];
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
		TMBMailChimp_ListBatchSubscribeCSV_ResultSet *results = [[[TMBMailChimp_ListBatchSubscribeCSV_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListBatchSubscribeCSV Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListBatchSubscribeCSV_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListBatchSubscribeCSV_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMergeVarDel Choreo.
 */
@implementation TMBMailChimp_ListMergeVarDel_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The id of the Mailchimp list associated with the merge var you want to delete.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(required, string) Provide a valid merge var tag. A merge var tag can be retrieved by calling listMergeVars() or by logging in to your account.
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMergeVarDel Choreo.
 */
@implementation TMBMailChimp_ListMergeVarDel_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Mailchimp. Returns the string "true" for success and an error description for failures.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Remove a field name from a MailChimp list.
 */
@implementation TMBMailChimp_ListMergeVarDel

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListMergeVarDel Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListMergeVarDel"] autorelease];
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
		TMBMailChimp_ListMergeVarDel_ResultSet *results = [[[TMBMailChimp_ListMergeVarDel_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMergeVarDel Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListMergeVarDel_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListMergeVarDel_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMembers Choreo.
 */
@implementation TMBMailChimp_ListMembers_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Specifies the number of records in a page to be returned. Must be greater than zero and less than or equal to 15000. Defaults to 100.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ListId input for this Choreo.
	*(required, string) The id of the Mailchimp list to retrieve members from.
	 */
	-(void)setListId:(NSString*)ListId {
		[super setInput:@"ListId" toValue:ListId];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Indicates the desired format for the response. Accepted values are "json" or "xml" (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Retrieves records that have changed since this date/time. Formatted like 'YYYY-MM-DD HH:MM:SS.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Start input for this Choreo.
	*(optional, integer) Specifies the page at which to begin returning records. Page size is defined by the limit argument. Must be zero or greater. Defaults to 0.
	 */
	-(void)setStart:(NSString*)Start {
		[super setInput:@"Start" toValue:Start];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(optional, string) Must be one of 'subscribed', 'unsubscribed', 'cleaned', or 'updated'. Defaults to 'subscribed'.
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMembers Choreo.
 */
@implementation TMBMailChimp_ListMembers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Mailchimp. Corresponds to the format specified in the ResponseFormat parameter. Defaults to "xml".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the email addresses of members of a MailChimp list. 
 */
@implementation TMBMailChimp_ListMembers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_ListMembers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/ListMembers"] autorelease];
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
		TMBMailChimp_ListMembers_ResultSet *results = [[[TMBMailChimp_ListMembers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMembers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_ListMembers_Inputs*)newInputSet {
		return [[[TMBMailChimp_ListMembers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Lists Choreo.
 */
@implementation TMBMailChimp_Lists_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Mailchimp
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Indicates the desired format for the response. Accepted values are "json" or "xml" (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Lists Choreo.
 */
@implementation TMBMailChimp_Lists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Mailchimp. Corresponds to the format specified in the ResponseFormat parameter. Defaults to "xml".
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get all lists from a MailChimp account.
 */
@implementation TMBMailChimp_Lists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBMailChimp_Lists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/MailChimp/Lists"] autorelease];
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
		TMBMailChimp_Lists_ResultSet *results = [[[TMBMailChimp_Lists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Lists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBMailChimp_Lists_Inputs*)newInputSet {
		return [[[TMBMailChimp_Lists_Inputs alloc] init] autorelease];
	}
@end
	