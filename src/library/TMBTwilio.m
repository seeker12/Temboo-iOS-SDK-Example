/*!
 * @TMBTwilio.m
 *
 * Execute Choreographies from the Temboo Twilio bundle.
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

#import "TMBTwilio.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ListQueues Choreo.
 */
@implementation TMBTwilio_Queues_ListQueues_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the list of queues to retrieve. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListQueues Choreo.
 */
@implementation TMBTwilio_Queues_ListQueues_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of queues within a Twilio account.
 */
@implementation TMBTwilio_Queues_ListQueues

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Queues_ListQueues Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Queues/ListQueues"] autorelease];
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
		TMBTwilio_Queues_ListQueues_ResultSet *results = [[[TMBTwilio_Queues_ListQueues_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListQueues Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Queues_ListQueues_Inputs*)newInputSet {
		return [[[TMBTwilio_Queues_ListQueues_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteParticipant Choreo.
 */
@implementation TMBTwilio_Conferences_DeleteParticipant_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the CallSID input for this Choreo.
	*(required, string) The call id associated with the participant to delete.
	 */
	-(void)setCallSID:(NSString*)CallSID {
		[super setInput:@"CallSID" toValue:CallSID];
	}

	/*!
	 * Set the value of the ConferenceSID input for this Choreo.
	*(required, string) The id of the conference that the participant is in.
	 */
	-(void)setConferenceSID:(NSString*)ConferenceSID {
		[super setInput:@"ConferenceSID" toValue:ConferenceSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the conference. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteParticipant Choreo.
 */
@implementation TMBTwilio_Conferences_DeleteParticipant_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes an individual partipant from a conference.
 */
@implementation TMBTwilio_Conferences_DeleteParticipant

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Conferences_DeleteParticipant Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Conferences/DeleteParticipant"] autorelease];
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
		TMBTwilio_Conferences_DeleteParticipant_ResultSet *results = [[[TMBTwilio_Conferences_DeleteParticipant_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteParticipant Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Conferences_DeleteParticipant_Inputs*)newInputSet {
		return [[[TMBTwilio_Conferences_DeleteParticipant_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateShortCode Choreo.
 */
@implementation TMBTwilio_ShortCodes_UpdateShortCode_Inputs

	/*!
	 * Set the value of the APIVersion input for this Choreo.
	*(optional, string) SMSs to this short code will start a new TwiML session with this API version. Either 2010-04-01 or 2008-08-01.
	 */
	-(void)setAPIVersion:(NSString*)APIVersion {
		[super setInput:@"APIVersion" toValue:APIVersion];
	}

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) A human readable description of the short code, with maximum length 64 characters.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShortCodeSID input for this Choreo.
	*(required, string) The id of the short code to update.
	 */
	-(void)setShortCodeSID:(NSString*)ShortCodeSID {
		[super setInput:@"ShortCodeSID" toValue:ShortCodeSID];
	}

	/*!
	 * Set the value of the SmsFallbackMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the SmsFallbackUrl. Either GET or POST.
	 */
	-(void)setSmsFallbackMethod:(NSString*)SmsFallbackMethod {
		[super setInput:@"SmsFallbackMethod" toValue:SmsFallbackMethod];
	}

	/*!
	 * Set the value of the SmsFallbackURL input for this Choreo.
	*(optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML at the SmsUrl.
	 */
	-(void)setSmsFallbackURL:(NSString*)SmsFallbackURL {
		[super setInput:@"SmsFallbackURL" toValue:SmsFallbackURL];
	}

	/*!
	 * Set the value of the SmsMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the SmsUrl. Either GET or POST.
	 */
	-(void)setSmsMethod:(NSString*)SmsMethod {
		[super setInput:@"SmsMethod" toValue:SmsMethod];
	}

	/*!
	 * Set the value of the SmsURL input for this Choreo.
	*(optional, string) The URL that Twilio should request when somebody sends an SMS to the short code.
	 */
	-(void)setSmsURL:(NSString*)SmsURL {
		[super setInput:@"SmsURL" toValue:SmsURL];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with short code. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateShortCode Choreo.
 */
@implementation TMBTwilio_ShortCodes_UpdateShortCode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Attempts to update an existing short code resource.
 */
@implementation TMBTwilio_ShortCodes_UpdateShortCode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_ShortCodes_UpdateShortCode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/ShortCodes/UpdateShortCode"] autorelease];
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
		TMBTwilio_ShortCodes_UpdateShortCode_ResultSet *results = [[[TMBTwilio_ShortCodes_UpdateShortCode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateShortCode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_ShortCodes_UpdateShortCode_Inputs*)newInputSet {
		return [[[TMBTwilio_ShortCodes_UpdateShortCode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LocalList Choreo.
 */
@implementation TMBTwilio_AvailablePhoneNumbers_LocalList_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AreaCode input for this Choreo.
	*(optional, integer) Find phone numbers in the specified area code. (US and Canada only).
	 */
	-(void)setAreaCode:(NSString*)AreaCode {
		[super setInput:@"AreaCode" toValue:AreaCode];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the Contains input for this Choreo.
	*(optional, string) A pattern to match phone numbers on. Valid characters are '*' and [0-9a-zA-Z]. The '*' character will match any single digit.
	 */
	-(void)setContains:(NSString*)Contains {
		[super setInput:@"Contains" toValue:Contains];
	}

	/*!
	 * Set the value of the Distance input for this Choreo.
	*(optional, integer) Specifies the search radius for Latitude, Longitude, and NearNumber quires in miles. If not specified this defaults to 25 miles.
	 */
	-(void)setDistance:(NSString*)Distance {
		[super setInput:@"Distance" toValue:Distance];
	}

	/*!
	 * Set the value of the InLata input for this Choreo.
	*(optional, string) Limit results to a specific Local access and transport area (LATA). Given a phone number, search within the same LATA as that number.
	 */
	-(void)setInLata:(NSString*)InLata {
		[super setInput:@"InLata" toValue:InLata];
	}

	/*!
	 * Set the value of the InPostalCode input for this Choreo.
	*(optional, integer) Limit results to a particular postal code. Given a phone number, search within the same postal code as that number. (US and Canada only).
	 */
	-(void)setInPostalCode:(NSString*)InPostalCode {
		[super setInput:@"InPostalCode" toValue:InPostalCode];
	}

	/*!
	 * Set the value of the InRateCenter input for this Choreo.
	*(optional, string) Limit results to a specific rate center, or given a phone number search within the same rate center as that number. Requires InLata to be set as well.
	 */
	-(void)setInRateCenter:(NSString*)InRateCenter {
		[super setInput:@"InRateCenter" toValue:InRateCenter];
	}

	/*!
	 * Set the value of the InRegion input for this Choreo.
	*(optional, string) Limit results to a particular region (i.e. State/Province). Given a phone number, search within the same Region as that number. (US and Canada only).
	 */
	-(void)setInRegion:(NSString*)InRegion {
		[super setInput:@"InRegion" toValue:InRegion];
	}

	/*!
	 * Set the value of the IsoCountryCode input for this Choreo.
	*(optional, string) The country code to search within. Defaults to US.
	 */
	-(void)setIsoCountryCode:(NSString*)IsoCountryCode {
		[super setInput:@"IsoCountryCode" toValue:IsoCountryCode];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(optional, decimal) Finds numbers close to this Latitude coordinate. Longitude is also required when searching by coordinates.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(optional, string) Finds numbers close this Longitude. Latitude is also required when searching by coordinates.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the NearNumber input for this Choreo.
	*(optional, string) Searches numbers near  this phone number.
	 */
	-(void)setNearNumber:(NSString*)NearNumber {
		[super setInput:@"NearNumber" toValue:NearNumber];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LocalList Choreo.
 */
@implementation TMBTwilio_AvailablePhoneNumbers_LocalList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of local available phone numbers that match the specified filters.
 */
@implementation TMBTwilio_AvailablePhoneNumbers_LocalList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_AvailablePhoneNumbers_LocalList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/AvailablePhoneNumbers/LocalList"] autorelease];
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
		TMBTwilio_AvailablePhoneNumbers_LocalList_ResultSet *results = [[[TMBTwilio_AvailablePhoneNumbers_LocalList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LocalList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_AvailablePhoneNumbers_LocalList_Inputs*)newInputSet {
		return [[[TMBTwilio_AvailablePhoneNumbers_LocalList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccount Choreo.
 */
@implementation TMBTwilio_Accounts_UpdateAccount_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided by Twilio.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided by Twilio.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) Updates the human-readable description of this account.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(optional, string) Updates the status of this account. Valid values are: closed, suspended, or active.
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount to update. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccount Choreo.
 */
@implementation TMBTwilio_Accounts_UpdateAccount_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates the name or status of a Twilio subaccount.
 */
@implementation TMBTwilio_Accounts_UpdateAccount

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Accounts_UpdateAccount Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Accounts/UpdateAccount"] autorelease];
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
		TMBTwilio_Accounts_UpdateAccount_ResultSet *results = [[[TMBTwilio_Accounts_UpdateAccount_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateAccount Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Accounts_UpdateAccount_Inputs*)newInputSet {
		return [[[TMBTwilio_Accounts_UpdateAccount_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateParticipant Choreo.
 */
@implementation TMBTwilio_Conferences_UpdateParticipant_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the CallSID input for this Choreo.
	*(required, string) The call id associated with the participant to update.
	 */
	-(void)setCallSID:(NSString*)CallSID {
		[super setInput:@"CallSID" toValue:CallSID];
	}

	/*!
	 * Set the value of the ConferenceSID input for this Choreo.
	*(required, string) The id of the conference that the participant is in.
	 */
	-(void)setConferenceSID:(NSString*)ConferenceSID {
		[super setInput:@"ConferenceSID" toValue:ConferenceSID];
	}

	/*!
	 * Set the value of the Muted input for this Choreo.
	*(required, string) Specifying true will mute the participant, while false will un-mute. Anything other than true or false is interpreted as false.
	 */
	-(void)setMuted:(NSString*)Muted {
		[super setInput:@"Muted" toValue:Muted];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the conference. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateParticipant Choreo.
 */
@implementation TMBTwilio_Conferences_UpdateParticipant_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates the status of a conference participant.
 */
@implementation TMBTwilio_Conferences_UpdateParticipant

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Conferences_UpdateParticipant Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Conferences/UpdateParticipant"] autorelease];
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
		TMBTwilio_Conferences_UpdateParticipant_ResultSet *results = [[[TMBTwilio_Conferences_UpdateParticipant_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateParticipant Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Conferences_UpdateParticipant_Inputs*)newInputSet {
		return [[[TMBTwilio_Conferences_UpdateParticipant_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListRecordings Choreo.
 */
@implementation TMBTwilio_Recordings_ListRecordings_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the recording. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRecordings Choreo.
 */
@implementation TMBTwilio_Recordings_ListRecordings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of recordings for the specified account.
 */
@implementation TMBTwilio_Recordings_ListRecordings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Recordings_ListRecordings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Recordings/ListRecordings"] autorelease];
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
		TMBTwilio_Recordings_ListRecordings_ResultSet *results = [[[TMBTwilio_Recordings_ListRecordings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListRecordings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Recordings_ListRecordings_Inputs*)newInputSet {
		return [[[TMBTwilio_Recordings_ListRecordings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccount Choreo.
 */
@implementation TMBTwilio_Accounts_CreateAccount_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided by Twilio.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided by Twilio.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) Enter a name for the subaccount being created.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccount Choreo.
 */
@implementation TMBTwilio_Accounts_CreateAccount_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a Twilio subaccount.
 */
@implementation TMBTwilio_Accounts_CreateAccount

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Accounts_CreateAccount Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Accounts/CreateAccount"] autorelease];
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
		TMBTwilio_Accounts_CreateAccount_ResultSet *results = [[[TMBTwilio_Accounts_CreateAccount_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAccount Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Accounts_CreateAccount_Inputs*)newInputSet {
		return [[[TMBTwilio_Accounts_CreateAccount_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateCallerID Choreo.
 */
@implementation TMBTwilio_OutgoingCallerIDs_UpdateCallerID_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(conditional, string) A human readable description of a Caller ID, with maximum length of 64 characters. Defaults to a nicely formatted version of the phone number.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the OutgoingCallerSID input for this Choreo.
	*(required, string) The id of the outgoing caller to retrieve.
	 */
	-(void)setOutgoingCallerSID:(NSString*)OutgoingCallerSID {
		[super setInput:@"OutgoingCallerSID" toValue:OutgoingCallerSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the outgoing caller id. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateCallerID Choreo.
 */
@implementation TMBTwilio_OutgoingCallerIDs_UpdateCallerID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing caller id.
 */
@implementation TMBTwilio_OutgoingCallerIDs_UpdateCallerID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_OutgoingCallerIDs_UpdateCallerID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/OutgoingCallerIDs/UpdateCallerID"] autorelease];
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
		TMBTwilio_OutgoingCallerIDs_UpdateCallerID_ResultSet *results = [[[TMBTwilio_OutgoingCallerIDs_UpdateCallerID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateCallerID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_OutgoingCallerIDs_UpdateCallerID_Inputs*)newInputSet {
		return [[[TMBTwilio_OutgoingCallerIDs_UpdateCallerID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateQueue Choreo.
 */
@implementation TMBTwilio_Queues_CreateQueue_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(required, string) A unique identifier for this queue.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the MaxSize input for this Choreo.
	*(optional, integer) The maximum size of this queue. The default is 100. The maximum is 1000.
	 */
	-(void)setMaxSize:(NSString*)MaxSize {
		[super setInput:@"MaxSize" toValue:MaxSize];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount that the queue should be associated with. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateQueue Choreo.
 */
@implementation TMBTwilio_Queues_CreateQueue_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new queue within a Twilio account.
 */
@implementation TMBTwilio_Queues_CreateQueue

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Queues_CreateQueue Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Queues/CreateQueue"] autorelease];
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
		TMBTwilio_Queues_CreateQueue_ResultSet *results = [[[TMBTwilio_Queues_CreateQueue_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateQueue Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Queues_CreateQueue_Inputs*)newInputSet {
		return [[[TMBTwilio_Queues_CreateQueue_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetParticipant Choreo.
 */
@implementation TMBTwilio_Conferences_GetParticipant_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the CallSID input for this Choreo.
	*(required, string) The call id associated with the participant to retrieve.
	 */
	-(void)setCallSID:(NSString*)CallSID {
		[super setInput:@"CallSID" toValue:CallSID];
	}

	/*!
	 * Set the value of the ConferencesSID input for this Choreo.
	*(required, string) The id of the conference that the participant is in.
	 */
	-(void)setConferencesSID:(NSString*)ConferencesSID {
		[super setInput:@"ConferencesSID" toValue:ConferencesSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the conference. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetParticipant Choreo.
 */
@implementation TMBTwilio_Conferences_GetParticipant_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves details for an individual participant of a conference.
 */
@implementation TMBTwilio_Conferences_GetParticipant

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Conferences_GetParticipant Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Conferences/GetParticipant"] autorelease];
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
		TMBTwilio_Conferences_GetParticipant_ResultSet *results = [[[TMBTwilio_Conferences_GetParticipant_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetParticipant Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Conferences_GetParticipant_Inputs*)newInputSet {
		return [[[TMBTwilio_Conferences_GetParticipant_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetNotification Choreo.
 */
@implementation TMBTwilio_Notifications_GetNotification_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the NotificationSID input for this Choreo.
	*(required, string) Enter the SID of the notification resource to be retrieved.
	 */
	-(void)setNotificationSID:(NSString*)NotificationSID {
		[super setInput:@"NotificationSID" toValue:NotificationSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount to get the notification for. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNotification Choreo.
 */
@implementation TMBTwilio_Notifications_GetNotification_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get comprehensive log information for a specified Notification SID. 
 */
@implementation TMBTwilio_Notifications_GetNotification

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Notifications_GetNotification Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Notifications/GetNotification"] autorelease];
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
		TMBTwilio_Notifications_GetNotification_ResultSet *results = [[[TMBTwilio_Notifications_GetNotification_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetNotification Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Notifications_GetNotification_Inputs*)newInputSet {
		return [[[TMBTwilio_Notifications_GetNotification_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMessage Choreo.
 */
@implementation TMBTwilio_SMSMessages_GetMessage_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SMSMessageSID input for this Choreo.
	*(required, string) The unique ID for the Twilio message you want to retrieve.
	 */
	-(void)setSMSMessageSID:(NSString*)SMSMessageSID {
		[super setInput:@"SMSMessageSID" toValue:SMSMessageSID];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount to retrieve messages for. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMessage Choreo.
 */
@implementation TMBTwilio_SMSMessages_GetMessage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a specific SMS from Twilio by allowing you to specify a message ID.
 */
@implementation TMBTwilio_SMSMessages_GetMessage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_SMSMessages_GetMessage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/SMSMessages/GetMessage"] autorelease];
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
		TMBTwilio_SMSMessages_GetMessage_ResultSet *results = [[[TMBTwilio_SMSMessages_GetMessage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMessage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_SMSMessages_GetMessage_Inputs*)newInputSet {
		return [[[TMBTwilio_SMSMessages_GetMessage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MakeCall Choreo.
 */
@implementation TMBTwilio_Calls_MakeCall_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the ApplicationSID input for this Choreo.
	*(conditional, string) The 34 character sid of the application Twilio should use to handle this phone call. Required unless providing the URL parameter.
	 */
	-(void)setApplicationSID:(NSString*)ApplicationSID {
		[super setInput:@"ApplicationSID" toValue:ApplicationSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FallbackMethod input for this Choreo.
	*(optional, string) 
	 */
	-(void)setFallbackMethod:(NSString*)FallbackMethod {
		[super setInput:@"FallbackMethod" toValue:FallbackMethod];
	}

	/*!
	 * Set the value of the FallbackURL input for this Choreo.
	*(optional, string) A URL that Twilio will request if an error occurs making a request to the URL provided. This is ignored when ApplicationSID is provided.
	 */
	-(void)setFallbackURL:(NSString*)FallbackURL {
		[super setInput:@"FallbackURL" toValue:FallbackURL];
	}

	/*!
	 * Set the value of the From input for this Choreo.
	*(required, string) The Twilio phone number or client identifier to use as the caller id.
	 */
	-(void)setFrom:(NSString*)From {
		[super setInput:@"From" toValue:From];
	}

	/*!
	 * Set the value of the IfMachine input for this Choreo.
	*(optional, string) Indicates if Twilio should to try and determine if a machine (like voicemail) or a human has answered the call. Possible values are "Continue" and "Hangup".
	 */
	-(void)setIfMachine:(NSString*)IfMachine {
		[super setInput:@"IfMachine" toValue:IfMachine];
	}

	/*!
	 * Set the value of the Method input for this Choreo.
	*(optional, string) This the HTTP method Twilio will use when making its request to the URL (when the URL input is provided). Defaults to POST. This is ignored when ApplicationSID is provided.
	 */
	-(void)setMethod:(NSString*)Method {
		[super setInput:@"Method" toValue:Method];
	}

	/*!
	 * Set the value of the Record input for this Choreo.
	*(optional, boolean) Set this parameter to 'true' to record the entirety of a phone call.
	 */
	-(void)setRecord:(NSString*)Record {
		[super setInput:@"Record" toValue:Record];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SendDigits input for this Choreo.
	*(optional, string) A string of keys to dial after connecting to the number. Valid digits in the string include: any digit (0-9), '#', '*' and 'w' (to insert a half second pause).
	 */
	-(void)setSendDigits:(NSString*)SendDigits {
		[super setInput:@"SendDigits" toValue:SendDigits];
	}

	/*!
	 * Set the value of the StatusCallbackMethod input for this Choreo.
	*(optional, string) The HTTP method Twilio should use when requesting the StatusCallback URL. Defaults to POST. If an ApplicationSid parameter is present, this parameter is ignored.
	 */
	-(void)setStatusCallbackMethod:(NSString*)StatusCallbackMethod {
		[super setInput:@"StatusCallbackMethod" toValue:StatusCallbackMethod];
	}

	/*!
	 * Set the value of the StatusCallback input for this Choreo.
	*(optional, string) A URL that Twilio will request when the call ends to notify your app. This is ignored when ApplicationSID is provided.
	 */
	-(void)setStatusCallback:(NSString*)StatusCallback {
		[super setInput:@"StatusCallback" toValue:StatusCallback];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with this call. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}

	/*!
	 * Set the value of the Timeout input for this Choreo.
	*(optional, integer) The integer number of seconds that Twilio should allow the phone to ring before assuming there is no answer. Default is 60 seconds, the maximum is 999 seconds.
	 */
	-(void)setTimeout:(NSString*)Timeout {
		[super setInput:@"Timeout" toValue:Timeout];
	}

	/*!
	 * Set the value of the To input for this Choreo.
	*(required, string) The phone number or client identifier to call.
	 */
	-(void)setTo:(NSString*)To {
		[super setInput:@"To" toValue:To];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(conditional, string) The fully qualified URL that should be consulted when the call connects. Required unless providing the ApplicationSID parameter.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MakeCall Choreo.
 */
@implementation TMBTwilio_Calls_MakeCall_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Initiates a call from the specified Twilio account.
 */
@implementation TMBTwilio_Calls_MakeCall

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Calls_MakeCall Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Calls/MakeCall"] autorelease];
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
		TMBTwilio_Calls_MakeCall_ResultSet *results = [[[TMBTwilio_Calls_MakeCall_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MakeCall Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Calls_MakeCall_Inputs*)newInputSet {
		return [[[TMBTwilio_Calls_MakeCall_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPhoneNumbers Choreo.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) Only return the incoming phone number resources with friendly names that exactly match this name.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PhoneNumber input for this Choreo.
	*(optional, string) Only return the incoming phone number resources that match this pattern. You can specify partial numbers and use '*' as a wildcard for any digit.
	 */
	-(void)setPhoneNumber:(NSString*)PhoneNumber {
		[super setInput:@"PhoneNumber" toValue:PhoneNumber];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the list of phone numbers. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhoneNumbers Choreo.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of Twilio phone numbers purchased from Twilio or ported to Twilio.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/IncomingPhoneNumbers/ListPhoneNumbers"] autorelease];
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
		TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers_ResultSet *results = [[[TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPhoneNumbers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers_Inputs*)newInputSet {
		return [[[TMBTwilio_IncomingPhoneNumbers_ListPhoneNumbers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListTranscriptions Choreo.
 */
@implementation TMBTwilio_Transcriptions_ListTranscriptions_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the transcription. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTranscriptions Choreo.
 */
@implementation TMBTwilio_Transcriptions_ListTranscriptions_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of transcriptions for the specified account.
 */
@implementation TMBTwilio_Transcriptions_ListTranscriptions

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Transcriptions_ListTranscriptions Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Transcriptions/ListTranscriptions"] autorelease];
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
		TMBTwilio_Transcriptions_ListTranscriptions_ResultSet *results = [[[TMBTwilio_Transcriptions_ListTranscriptions_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListTranscriptions Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Transcriptions_ListTranscriptions_Inputs*)newInputSet {
		return [[[TMBTwilio_Transcriptions_ListTranscriptions_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetApplication Choreo.
 */
@implementation TMBTwilio_Applications_GetApplication_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the ApplicationSID input for this Choreo.
	*(required, string) The id of the application to retrieve.
	 */
	-(void)setApplicationSID:(NSString*)ApplicationSID {
		[super setInput:@"ApplicationSID" toValue:ApplicationSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetApplication Choreo.
 */
@implementation TMBTwilio_Applications_GetApplication_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the details for an individual application associated with your Twilio account.
 */
@implementation TMBTwilio_Applications_GetApplication

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Applications_GetApplication Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Applications/GetApplication"] autorelease];
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
		TMBTwilio_Applications_GetApplication_ResultSet *results = [[[TMBTwilio_Applications_GetApplication_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetApplication Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Applications_GetApplication_Inputs*)newInputSet {
		return [[[TMBTwilio_Applications_GetApplication_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAccounts Choreo.
 */
@implementation TMBTwilio_Accounts_ListAccounts_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) Filters the results for accounts with friendly names that exactly match this value.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(optional, string) Filters results for accounts that have a particular status. Valid values are: closed, suspended, or active.
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAccounts Choreo.
 */
@implementation TMBTwilio_Accounts_ListAccounts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of the subaccounts belonging to the main account.
 */
@implementation TMBTwilio_Accounts_ListAccounts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Accounts_ListAccounts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Accounts/ListAccounts"] autorelease];
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
		TMBTwilio_Accounts_ListAccounts_ResultSet *results = [[[TMBTwilio_Accounts_ListAccounts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAccounts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Accounts_ListAccounts_Inputs*)newInputSet {
		return [[[TMBTwilio_Accounts_ListAccounts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetConference Choreo.
 */
@implementation TMBTwilio_Conferences_GetConference_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the ConferenceSID input for this Choreo.
	*(required, string) The id of the conference to retrieve.
	 */
	-(void)setConferenceSID:(NSString*)ConferenceSID {
		[super setInput:@"ConferenceSID" toValue:ConferenceSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the conference. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetConference Choreo.
 */
@implementation TMBTwilio_Conferences_GetConference_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns an individual conference.
 */
@implementation TMBTwilio_Conferences_GetConference

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Conferences_GetConference Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Conferences/GetConference"] autorelease];
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
		TMBTwilio_Conferences_GetConference_ResultSet *results = [[[TMBTwilio_Conferences_GetConference_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetConference Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Conferences_GetConference_Inputs*)newInputSet {
		return [[[TMBTwilio_Conferences_GetConference_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateApplication Choreo.
 */
@implementation TMBTwilio_Applications_UpdateApplication_Inputs

	/*!
	 * Set the value of the APIVersion input for this Choreo.
	*(optional, string) Requests to this application's URLs will start a new TwiML session with this API version. Either 2010-04-01 or 2008-08-01. Defaults to your account's default API version.
	 */
	-(void)setAPIVersion:(NSString*)APIVersion {
		[super setInput:@"APIVersion" toValue:APIVersion];
	}

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the ApplicationSID input for this Choreo.
	*(required, string) The id of the application to update.
	 */
	-(void)setApplicationSID:(NSString*)ApplicationSID {
		[super setInput:@"ApplicationSID" toValue:ApplicationSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) A human readable description of the new application. Maximum 64 characters.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SmsFallbackMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the SmsFallbackUrl. Must be either GET or POST. Defaults to POST.
	 */
	-(void)setSmsFallbackMethod:(NSString*)SmsFallbackMethod {
		[super setInput:@"SmsFallbackMethod" toValue:SmsFallbackMethod];
	}

	/*!
	 * Set the value of the SmsFallbackURL input for this Choreo.
	*(optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by SmsUrl.
	 */
	-(void)setSmsFallbackURL:(NSString*)SmsFallbackURL {
		[super setInput:@"SmsFallbackURL" toValue:SmsFallbackURL];
	}

	/*!
	 * Set the value of the SmsMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the SmsUrl. Must be either GET or POST. Defaults to POST.
	 */
	-(void)setSmsMethod:(NSString*)SmsMethod {
		[super setInput:@"SmsMethod" toValue:SmsMethod];
	}

	/*!
	 * Set the value of the SmsStatusCallback input for this Choreo.
	*(optional, string) Twilio will make a POST request to this URL to pass status parameters (such as sent or failed) to your application.
	 */
	-(void)setSmsStatusCallback:(NSString*)SmsStatusCallback {
		[super setInput:@"SmsStatusCallback" toValue:SmsStatusCallback];
	}

	/*!
	 * Set the value of the SmsURL input for this Choreo.
	*(optional, string) The URL that Twilio should request when somebody sends an SMS to a phone number assigned to this application.
	 */
	-(void)setSmsURL:(NSString*)SmsURL {
		[super setInput:@"SmsURL" toValue:SmsURL];
	}

	/*!
	 * Set the value of the StatusCallbackMethod input for this Choreo.
	*(optional, string) The HTTP method Twilio will use to make requests to the StatusCallback URL. Either GET or POST. Defaults to POST.
	 */
	-(void)setStatusCallbackMethod:(NSString*)StatusCallbackMethod {
		[super setInput:@"StatusCallbackMethod" toValue:StatusCallbackMethod];
	}

	/*!
	 * Set the value of the StatusCallback input for this Choreo.
	*(optional, string) The URL that Twilio will request to pass status parameters (such as call ended) to your application.
	 */
	-(void)setStatusCallback:(NSString*)StatusCallback {
		[super setInput:@"StatusCallback" toValue:StatusCallback];
	}

	/*!
	 * Set the value of the VoiceApplicationSID input for this Choreo.
	*(optional, string) The 34 character sid of the application Twilio should use to handle phone calls to this number.
	 */
	-(void)setVoiceApplicationSID:(NSString*)VoiceApplicationSID {
		[super setInput:@"VoiceApplicationSID" toValue:VoiceApplicationSID];
	}

	/*!
	 * Set the value of the VoiceCallerIDLookup input for this Choreo.
	*(optional, string) Do a lookup of a caller's name from the CNAM database and post it to your app. Either true or false. Defaults to false.
	 */
	-(void)setVoiceCallerIDLookup:(NSString*)VoiceCallerIDLookup {
		[super setInput:@"VoiceCallerIDLookup" toValue:VoiceCallerIDLookup];
	}

	/*!
	 * Set the value of the VoiceFallbackMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the VoiceFallbackUrl. Either GET or POST. Defaults to POST.
	 */
	-(void)setVoiceFallbackMethod:(NSString*)VoiceFallbackMethod {
		[super setInput:@"VoiceFallbackMethod" toValue:VoiceFallbackMethod];
	}

	/*!
	 * Set the value of the VoiceFallbackURL input for this Choreo.
	*(optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML at Url.
	 */
	-(void)setVoiceFallbackURL:(NSString*)VoiceFallbackURL {
		[super setInput:@"VoiceFallbackURL" toValue:VoiceFallbackURL];
	}

	/*!
	 * Set the value of the VoiceMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the VoiceUrl. Must be either GET or POST. Defaults to POST.
	 */
	-(void)setVoiceMethod:(NSString*)VoiceMethod {
		[super setInput:@"VoiceMethod" toValue:VoiceMethod];
	}

	/*!
	 * Set the value of the VoiceURL input for this Choreo.
	*(optional, string) The URL that Twilio should request when somebody dials a phone number assigned to this application.
	 */
	-(void)setVoiceURL:(NSString*)VoiceURL {
		[super setInput:@"VoiceURL" toValue:VoiceURL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateApplication Choreo.
 */
@implementation TMBTwilio_Applications_UpdateApplication_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing application within your account.
 */
@implementation TMBTwilio_Applications_UpdateApplication

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Applications_UpdateApplication Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Applications/UpdateApplication"] autorelease];
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
		TMBTwilio_Applications_UpdateApplication_ResultSet *results = [[[TMBTwilio_Applications_UpdateApplication_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateApplication Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Applications_UpdateApplication_Inputs*)newInputSet {
		return [[[TMBTwilio_Applications_UpdateApplication_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRecording Choreo.
 */
@implementation TMBTwilio_Recordings_DeleteRecording_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the RecordingSID input for this Choreo.
	*(required, string) The id of the recording to delete.
	 */
	-(void)setRecordingSID:(NSString*)RecordingSID {
		[super setInput:@"RecordingSID" toValue:RecordingSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the recording. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRecording Choreo.
 */
@implementation TMBTwilio_Recordings_DeleteRecording_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a recording from your account.
 */
@implementation TMBTwilio_Recordings_DeleteRecording

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Recordings_DeleteRecording Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Recordings/DeleteRecording"] autorelease];
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
		TMBTwilio_Recordings_DeleteRecording_ResultSet *results = [[[TMBTwilio_Recordings_DeleteRecording_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRecording Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Recordings_DeleteRecording_Inputs*)newInputSet {
		return [[[TMBTwilio_Recordings_DeleteRecording_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListCalls Choreo.
 */
@implementation TMBTwilio_Calls_ListCalls_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the From input for this Choreo.
	*(optional, string) Fillters results for calls from this phone number or Client identifier.
	 */
	-(void)setFrom:(NSString*)From {
		[super setInput:@"From" toValue:From];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ParentCallSID input for this Choreo.
	*(optional, string) Filters results for calls spawned by the call with this Sid.
	 */
	-(void)setParentCallSID:(NSString*)ParentCallSID {
		[super setInput:@"ParentCallSID" toValue:ParentCallSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, string) Filters results for calls that started on this date, given as YYYY-MM-DD. Also supports operators such as >= or <=.
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(optional, string) Fillters results for calls currently in this status. Valid values are: queued, ringing, in-progress, completed, failed, busy, or no-answer.
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount to retrieve calls for. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}

	/*!
	 * Set the value of the To input for this Choreo.
	*(optional, string) Fillters results for calls to this phone number or Client identifier.
	 */
	-(void)setTo:(NSString*)To {
		[super setInput:@"To" toValue:To];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCalls Choreo.
 */
@implementation TMBTwilio_Calls_ListCalls_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of phone calls made to and from the specified account.
 */
@implementation TMBTwilio_Calls_ListCalls

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Calls_ListCalls Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Calls/ListCalls"] autorelease];
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
		TMBTwilio_Calls_ListCalls_ResultSet *results = [[[TMBTwilio_Calls_ListCalls_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListCalls Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Calls_ListCalls_Inputs*)newInputSet {
		return [[[TMBTwilio_Calls_ListCalls_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPhoneNumber Choreo.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the IncomingPhoneNumberSID input for this Choreo.
	*(required, string) The id of the incoming phone number to retrieve.
	 */
	-(void)setIncomingPhoneNumberSID:(NSString*)IncomingPhoneNumberSID {
		[super setInput:@"IncomingPhoneNumberSID" toValue:IncomingPhoneNumberSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the phone number. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPhoneNumber Choreo.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns an individual phone number purchased from Twilio or ported to Twilio.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/IncomingPhoneNumbers/GetPhoneNumber"] autorelease];
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
		TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber_ResultSet *results = [[[TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPhoneNumber Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber_Inputs*)newInputSet {
		return [[[TMBTwilio_IncomingPhoneNumbers_GetPhoneNumber_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecording Choreo.
 */
@implementation TMBTwilio_Recordings_GetRecording_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the RecordingSID input for this Choreo.
	*(required, string) The id of the recording to retrieve.
	 */
	-(void)setRecordingSID:(NSString*)RecordingSID {
		[super setInput:@"RecordingSID" toValue:RecordingSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), xml, wav, and mp3.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the recording. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecording Choreo.
 */
@implementation TMBTwilio_Recordings_GetRecording_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an individual recording.
 */
@implementation TMBTwilio_Recordings_GetRecording

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Recordings_GetRecording Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Recordings/GetRecording"] autorelease];
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
		TMBTwilio_Recordings_GetRecording_ResultSet *results = [[[TMBTwilio_Recordings_GetRecording_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecording Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Recordings_GetRecording_Inputs*)newInputSet {
		return [[[TMBTwilio_Recordings_GetRecording_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TollFreeList Choreo.
 */
@implementation TMBTwilio_AvailablePhoneNumbers_TollFreeList_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AreaCode input for this Choreo.
	*(optional, integer) Find phone numbers in the specified area code. (US and Canada only).
	 */
	-(void)setAreaCode:(NSString*)AreaCode {
		[super setInput:@"AreaCode" toValue:AreaCode];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the Contains input for this Choreo.
	*(optional, string) A pattern to match phone numbers on. Valid characters are '*' and [0-9a-zA-Z]. The '*' character will match any single digit.
	 */
	-(void)setContains:(NSString*)Contains {
		[super setInput:@"Contains" toValue:Contains];
	}

	/*!
	 * Set the value of the IsoCountryCode input for this Choreo.
	*(optional, string) The country code to search within. Defaults to US.
	 */
	-(void)setIsoCountryCode:(NSString*)IsoCountryCode {
		[super setInput:@"IsoCountryCode" toValue:IsoCountryCode];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TollFreeList Choreo.
 */
@implementation TMBTwilio_AvailablePhoneNumbers_TollFreeList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of toll-free available phone numbers that match the specified filters.
 */
@implementation TMBTwilio_AvailablePhoneNumbers_TollFreeList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_AvailablePhoneNumbers_TollFreeList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/AvailablePhoneNumbers/TollFreeList"] autorelease];
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
		TMBTwilio_AvailablePhoneNumbers_TollFreeList_ResultSet *results = [[[TMBTwilio_AvailablePhoneNumbers_TollFreeList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TollFreeList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_AvailablePhoneNumbers_TollFreeList_Inputs*)newInputSet {
		return [[[TMBTwilio_AvailablePhoneNumbers_TollFreeList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListNotifications Choreo.
 */
@implementation TMBTwilio_Calls_ListNotifications_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the CallSID input for this Choreo.
	*(required, string) The unique id of the call to retrieve a list of notifications for.
	 */
	-(void)setCallSID:(NSString*)CallSID {
		[super setInput:@"CallSID" toValue:CallSID];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the call. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListNotifications Choreo.
 */
@implementation TMBTwilio_Calls_ListNotifications_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of notifications generated during a call.
 */
@implementation TMBTwilio_Calls_ListNotifications

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Calls_ListNotifications Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Calls/ListNotifications"] autorelease];
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
		TMBTwilio_Calls_ListNotifications_ResultSet *results = [[[TMBTwilio_Calls_ListNotifications_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListNotifications Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Calls_ListNotifications_Inputs*)newInputSet {
		return [[[TMBTwilio_Calls_ListNotifications_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePhoneNumber Choreo.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber_Inputs

	/*!
	 * Set the value of the APIVersion input for this Choreo.
	*(optional, string) Calls to this phone number will start a new TwiML session with this API version. Either 2010-04-01 or 2008-08-01.
	 */
	-(void)setAPIVersion:(NSString*)APIVersion {
		[super setInput:@"APIVersion" toValue:APIVersion];
	}

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) A human readable description of the new incoming phone number resource, with maximum length 64 characters.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the IncomingPhoneNumberSID input for this Choreo.
	*(required, string) The id of the incoming phone number to update.
	 */
	-(void)setIncomingPhoneNumberSID:(NSString*)IncomingPhoneNumberSID {
		[super setInput:@"IncomingPhoneNumberSID" toValue:IncomingPhoneNumberSID];
	}

	/*!
	 * Set the value of the NewAccountSID input for this Choreo.
	*(optional, string) The unique 34 character id of the account to which you wish to transfer this phone number.
	 */
	-(void)setNewAccountSID:(NSString*)NewAccountSID {
		[super setInput:@"NewAccountSID" toValue:NewAccountSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SmsApplicationSID input for this Choreo.
	*(optional, string) The 34 character sid of the application Twilio should use to handle SMSs sent to this number.
	 */
	-(void)setSmsApplicationSID:(NSString*)SmsApplicationSID {
		[super setInput:@"SmsApplicationSID" toValue:SmsApplicationSID];
	}

	/*!
	 * Set the value of the SmsFallbackMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the SmsFallbackUrl. Either GET or POST.
	 */
	-(void)setSmsFallbackMethod:(NSString*)SmsFallbackMethod {
		[super setInput:@"SmsFallbackMethod" toValue:SmsFallbackMethod];
	}

	/*!
	 * Set the value of the SmsFallbackURL input for this Choreo.
	*(optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by SmsUrl.
	 */
	-(void)setSmsFallbackURL:(NSString*)SmsFallbackURL {
		[super setInput:@"SmsFallbackURL" toValue:SmsFallbackURL];
	}

	/*!
	 * Set the value of the SmsMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the SmsUrl. Either GET or POST.
	 */
	-(void)setSmsMethod:(NSString*)SmsMethod {
		[super setInput:@"SmsMethod" toValue:SmsMethod];
	}

	/*!
	 * Set the value of the SmsURL input for this Choreo.
	*(optional, string) The URL that Twilio should request when somebody sends an SMS to the new phone number.
	 */
	-(void)setSmsURL:(NSString*)SmsURL {
		[super setInput:@"SmsURL" toValue:SmsURL];
	}

	/*!
	 * Set the value of the StatusCallbackMethod input for this Choreo.
	*(optional, string) The HTTP method Twilio will use to make requests to the StatusCallback URL. Either GET or POST.
	 */
	-(void)setStatusCallbackMethod:(NSString*)StatusCallbackMethod {
		[super setInput:@"StatusCallbackMethod" toValue:StatusCallbackMethod];
	}

	/*!
	 * Set the value of the StatusCallback input for this Choreo.
	*(optional, string) The URL that Twilio will request to pass status parameters (such as call ended) to your application.
	 */
	-(void)setStatusCallback:(NSString*)StatusCallback {
		[super setInput:@"StatusCallback" toValue:StatusCallback];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the phone number. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}

	/*!
	 * Set the value of the VoiceApplicationSID input for this Choreo.
	*(optional, string) The 34 character sid of the application Twilio should use to handle phone calls to this number.
	 */
	-(void)setVoiceApplicationSID:(NSString*)VoiceApplicationSID {
		[super setInput:@"VoiceApplicationSID" toValue:VoiceApplicationSID];
	}

	/*!
	 * Set the value of the VoiceCallerIDLookup input for this Choreo.
	*(optional, string) Do a lookup of a caller's name from the CNAM database and post it to your app. Either true or false.
	 */
	-(void)setVoiceCallerIDLookup:(NSString*)VoiceCallerIDLookup {
		[super setInput:@"VoiceCallerIDLookup" toValue:VoiceCallerIDLookup];
	}

	/*!
	 * Set the value of the VoiceFallbackMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the VoiceFallbackURL. Either GET or POST.
	 */
	-(void)setVoiceFallbackMethod:(NSString*)VoiceFallbackMethod {
		[super setInput:@"VoiceFallbackMethod" toValue:VoiceFallbackMethod];
	}

	/*!
	 * Set the value of the VoiceFallbackURL input for this Choreo.
	*(optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by VoiceURL.
	 */
	-(void)setVoiceFallbackURL:(NSString*)VoiceFallbackURL {
		[super setInput:@"VoiceFallbackURL" toValue:VoiceFallbackURL];
	}

	/*!
	 * Set the value of the VoiceMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the VoiceURL. Either GET or POST.
	 */
	-(void)setVoiceMethod:(NSString*)VoiceMethod {
		[super setInput:@"VoiceMethod" toValue:VoiceMethod];
	}

	/*!
	 * Set the value of the VoiceURL input for this Choreo.
	*(optional, string) The URL that Twilio should request when somebody dials the phone number.
	 */
	-(void)setVoiceURL:(NSString*)VoiceURL {
		[super setInput:@"VoiceURL" toValue:VoiceURL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePhoneNumber Choreo.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing Twilio phone number.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/IncomingPhoneNumbers/UpdatePhoneNumber"] autorelease];
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
		TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber_ResultSet *results = [[[TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdatePhoneNumber Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber_Inputs*)newInputSet {
		return [[[TMBTwilio_IncomingPhoneNumbers_UpdatePhoneNumber_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateApplication Choreo.
 */
@implementation TMBTwilio_Applications_CreateApplication_Inputs

	/*!
	 * Set the value of the APIVersion input for this Choreo.
	*(optional, string) Requests to this application's URLs will start a new TwiML session with this API version. Either 2010-04-01 or 2008-08-01. Defaults to your account's default API version.
	 */
	-(void)setAPIVersion:(NSString*)APIVersion {
		[super setInput:@"APIVersion" toValue:APIVersion];
	}

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(required, string) A human readable description of the new application. Maximum 64 characters.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SmsFallbackMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the SmsFallbackUrl. Must be either GET or POST. Defaults to POST.
	 */
	-(void)setSmsFallbackMethod:(NSString*)SmsFallbackMethod {
		[super setInput:@"SmsFallbackMethod" toValue:SmsFallbackMethod];
	}

	/*!
	 * Set the value of the SmsFallbackURL input for this Choreo.
	*(optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by SmsUrl.
	 */
	-(void)setSmsFallbackURL:(NSString*)SmsFallbackURL {
		[super setInput:@"SmsFallbackURL" toValue:SmsFallbackURL];
	}

	/*!
	 * Set the value of the SmsMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the SmsUrl. Must be either GET or POST. Defaults to POST.
	 */
	-(void)setSmsMethod:(NSString*)SmsMethod {
		[super setInput:@"SmsMethod" toValue:SmsMethod];
	}

	/*!
	 * Set the value of the SmsStatusCallback input for this Choreo.
	*(optional, string) Twilio will make a POST request to this URL to pass status parameters (such as sent or failed) to your application.
	 */
	-(void)setSmsStatusCallback:(NSString*)SmsStatusCallback {
		[super setInput:@"SmsStatusCallback" toValue:SmsStatusCallback];
	}

	/*!
	 * Set the value of the SmsURL input for this Choreo.
	*(optional, string) The URL that Twilio should request when somebody sends an SMS to a phone number assigned to this application.
	 */
	-(void)setSmsURL:(NSString*)SmsURL {
		[super setInput:@"SmsURL" toValue:SmsURL];
	}

	/*!
	 * Set the value of the StatusCallbackMethod input for this Choreo.
	*(optional, string) The HTTP method Twilio will use to make requests to the StatusCallback URL. Either GET or POST. Defaults to POST.
	 */
	-(void)setStatusCallbackMethod:(NSString*)StatusCallbackMethod {
		[super setInput:@"StatusCallbackMethod" toValue:StatusCallbackMethod];
	}

	/*!
	 * Set the value of the StatusCallback input for this Choreo.
	*(optional, string) The URL that Twilio will request to pass status parameters (such as call ended) to your application.
	 */
	-(void)setStatusCallback:(NSString*)StatusCallback {
		[super setInput:@"StatusCallback" toValue:StatusCallback];
	}

	/*!
	 * Set the value of the VoiceApplicationSID input for this Choreo.
	*(optional, string) The 34 character sid of the application Twilio should use to handle phone calls to this number.
	 */
	-(void)setVoiceApplicationSID:(NSString*)VoiceApplicationSID {
		[super setInput:@"VoiceApplicationSID" toValue:VoiceApplicationSID];
	}

	/*!
	 * Set the value of the VoiceCallerIDLookup input for this Choreo.
	*(optional, string) Do a lookup of a caller's name from the CNAM database and post it to your app. Either true or false. Defaults to false.
	 */
	-(void)setVoiceCallerIDLookup:(NSString*)VoiceCallerIDLookup {
		[super setInput:@"VoiceCallerIDLookup" toValue:VoiceCallerIDLookup];
	}

	/*!
	 * Set the value of the VoiceFallbackMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the VoiceFallbackUrl. Either GET or POST. Defaults to POST.
	 */
	-(void)setVoiceFallbackMethod:(NSString*)VoiceFallbackMethod {
		[super setInput:@"VoiceFallbackMethod" toValue:VoiceFallbackMethod];
	}

	/*!
	 * Set the value of the VoiceFallbackURL input for this Choreo.
	*(optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML at Url.
	 */
	-(void)setVoiceFallbackURL:(NSString*)VoiceFallbackURL {
		[super setInput:@"VoiceFallbackURL" toValue:VoiceFallbackURL];
	}

	/*!
	 * Set the value of the VoiceMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the VoiceUrl. Must be either GET or POST. Defaults to POST.
	 */
	-(void)setVoiceMethod:(NSString*)VoiceMethod {
		[super setInput:@"VoiceMethod" toValue:VoiceMethod];
	}

	/*!
	 * Set the value of the VoiceURL input for this Choreo.
	*(optional, string) The URL that Twilio should request when somebody dials a phone number assigned to this application.
	 */
	-(void)setVoiceURL:(NSString*)VoiceURL {
		[super setInput:@"VoiceURL" toValue:VoiceURL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateApplication Choreo.
 */
@implementation TMBTwilio_Applications_CreateApplication_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new application within your account.
 */
@implementation TMBTwilio_Applications_CreateApplication

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Applications_CreateApplication Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Applications/CreateApplication"] autorelease];
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
		TMBTwilio_Applications_CreateApplication_ResultSet *results = [[[TMBTwilio_Applications_CreateApplication_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateApplication Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Applications_CreateApplication_Inputs*)newInputSet {
		return [[[TMBTwilio_Applications_CreateApplication_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListShortCodes Choreo.
 */
@implementation TMBTwilio_ShortCodes_ListShortCodes_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) Only return the short code resources with friendly names that exactly match this name.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShortCode input for this Choreo.
	*(optional, string) Only return the short code resources that match this pattern. You can specify partial numbers and use '*' as a wildcard for any digit.
	 */
	-(void)setShortCode:(NSString*)ShortCode {
		[super setInput:@"ShortCode" toValue:ShortCode];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the list of short codes. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListShortCodes Choreo.
 */
@implementation TMBTwilio_ShortCodes_ListShortCodes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of Twilio short codes which can send and receive SMS messages with mobile phones.
 */
@implementation TMBTwilio_ShortCodes_ListShortCodes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_ShortCodes_ListShortCodes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/ShortCodes/ListShortCodes"] autorelease];
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
		TMBTwilio_ShortCodes_ListShortCodes_ResultSet *results = [[[TMBTwilio_ShortCodes_ListShortCodes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListShortCodes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_ShortCodes_ListShortCodes_Inputs*)newInputSet {
		return [[[TMBTwilio_ShortCodes_ListShortCodes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetConnectApp Choreo.
 */
@implementation TMBTwilio_ConnectApps_GetConnectApp_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the ConnectAppSID input for this Choreo.
	*(required, string) The id of the Connect App to retrieve.
	 */
	-(void)setConnectAppSID:(NSString*)ConnectAppSID {
		[super setInput:@"ConnectAppSID" toValue:ConnectAppSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetConnectApp Choreo.
 */
@implementation TMBTwilio_ConnectApps_GetConnectApp_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the details for an individual Connect App associated with a Twilio account.
 */
@implementation TMBTwilio_ConnectApps_GetConnectApp

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_ConnectApps_GetConnectApp Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/ConnectApps/GetConnectApp"] autorelease];
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
		TMBTwilio_ConnectApps_GetConnectApp_ResultSet *results = [[[TMBTwilio_ConnectApps_GetConnectApp_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetConnectApp Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_ConnectApps_GetConnectApp_Inputs*)newInputSet {
		return [[[TMBTwilio_ConnectApps_GetConnectApp_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetShortCode Choreo.
 */
@implementation TMBTwilio_ShortCodes_GetShortCode_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ShortCodeSID input for this Choreo.
	*(required, string) The id of the short code to retrieve.
	 */
	-(void)setShortCodeSID:(NSString*)ShortCodeSID {
		[super setInput:@"ShortCodeSID" toValue:ShortCodeSID];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with short code. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShortCode Choreo.
 */
@implementation TMBTwilio_ShortCodes_GetShortCode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an individual short code resource.
 */
@implementation TMBTwilio_ShortCodes_GetShortCode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_ShortCodes_GetShortCode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/ShortCodes/GetShortCode"] autorelease];
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
		TMBTwilio_ShortCodes_GetShortCode_ResultSet *results = [[[TMBTwilio_ShortCodes_GetShortCode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetShortCode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_ShortCodes_GetShortCode_Inputs*)newInputSet {
		return [[[TMBTwilio_ShortCodes_GetShortCode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListNotifications Choreo.
 */
@implementation TMBTwilio_Notifications_ListNotifications_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the LogLevel input for this Choreo.
	*(optional, integer) Specify the log level by entering: 0 for ERROR, 1 for WARNING.
	 */
	-(void)setLogLevel:(NSString*)LogLevel {
		[super setInput:@"LogLevel" toValue:LogLevel];
	}

	/*!
	 * Set the value of the MessageDate input for this Choreo.
	*(optional, string) Filter notifications by date.  Dates should be formatted as follows: YYYY-MM-DD.  Dates before, at, or after a specified date can be entered using inequality operators: >=YYYY-MM-DD
	 */
	-(void)setMessageDate:(NSString*)MessageDate {
		[super setInput:@"MessageDate" toValue:MessageDate];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount to list notifications for. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListNotifications Choreo.
 */
@implementation TMBTwilio_Notifications_ListNotifications_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Return a list of all notifications generated for a specified account.
 */
@implementation TMBTwilio_Notifications_ListNotifications

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Notifications_ListNotifications Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Notifications/ListNotifications"] autorelease];
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
		TMBTwilio_Notifications_ListNotifications_ResultSet *results = [[[TMBTwilio_Notifications_ListNotifications_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListNotifications Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Notifications_ListNotifications_Inputs*)newInputSet {
		return [[[TMBTwilio_Notifications_ListNotifications_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListQueueMembers Choreo.
 */
@implementation TMBTwilio_Queues_ListQueueMembers_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the QueueSID input for this Choreo.
	*(required, string) The id of the queue that the members belong to.
	 */
	-(void)setQueueSID:(NSString*)QueueSID {
		[super setInput:@"QueueSID" toValue:QueueSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the queue members to retrieve. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListQueueMembers Choreo.
 */
@implementation TMBTwilio_Queues_ListQueueMembers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of members in a given queue.
 */
@implementation TMBTwilio_Queues_ListQueueMembers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Queues_ListQueueMembers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Queues/ListQueueMembers"] autorelease];
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
		TMBTwilio_Queues_ListQueueMembers_ResultSet *results = [[[TMBTwilio_Queues_ListQueueMembers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListQueueMembers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Queues_ListQueueMembers_Inputs*)newInputSet {
		return [[[TMBTwilio_Queues_ListQueueMembers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListConferences Choreo.
 */
@implementation TMBTwilio_Conferences_ListConferences_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the DateCreated input for this Choreo.
	*(optional, string) Only show conferences that started on this date, given as YYYY-MM-DD. You can also specify operators such as <=YYYY-MM-DD.
	 */
	-(void)setDateCreated:(NSString*)DateCreated {
		[super setInput:@"DateCreated" toValue:DateCreated];
	}

	/*!
	 * Set the value of the DateUpdated input for this Choreo.
	*(optional, string) Only returns conferences that were last updated on this date, given as YYYY-MM-DD. You can also specify operators such as <=YYYY-MM-DD.
	 */
	-(void)setDateUpdated:(NSString*)DateUpdated {
		[super setInput:@"DateUpdated" toValue:DateUpdated];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) Returns conferences who's FriendlyName is the exact match of this string.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(optional, string) Only returns conferences currently in with this status. May be init, in-progress, or completed.
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the list of conferences. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListConferences Choreo.
 */
@implementation TMBTwilio_Conferences_ListConferences_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of conferences within an account.
 */
@implementation TMBTwilio_Conferences_ListConferences

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Conferences_ListConferences Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Conferences/ListConferences"] autorelease];
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
		TMBTwilio_Conferences_ListConferences_ResultSet *results = [[[TMBTwilio_Conferences_ListConferences_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListConferences Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Conferences_ListConferences_Inputs*)newInputSet {
		return [[[TMBTwilio_Conferences_ListConferences_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateConnectApp Choreo.
 */
@implementation TMBTwilio_ConnectApps_UpdateConnectApp_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the AuthorizeRedirectURL input for this Choreo.
	*(optional, string) The URL the user's browser will redirect to after Twilio authenticates the user and obtains authorization for this Connect App.
	 */
	-(void)setAuthorizeRedirectURL:(NSString*)AuthorizeRedirectURL {
		[super setInput:@"AuthorizeRedirectURL" toValue:AuthorizeRedirectURL];
	}

	/*!
	 * Set the value of the CompanyName input for this Choreo.
	*(optional, string) The company name for this Connect App.
	 */
	-(void)setCompanyName:(NSString*)CompanyName {
		[super setInput:@"CompanyName" toValue:CompanyName];
	}

	/*!
	 * Set the value of the ConnectAppSID input for this Choreo.
	*(required, string) The id of the Connect App to update.
	 */
	-(void)setConnectAppSID:(NSString*)ConnectAppSID {
		[super setInput:@"ConnectAppSID" toValue:ConnectAppSID];
	}

	/*!
	 * Set the value of the DeauthorizeCallbackMethod input for this Choreo.
	*(optional, string) The HTTP method to be used when making a request to the DeauthorizeCallbackUrl. Either GET or POST.
	 */
	-(void)setDeauthorizeCallbackMethod:(NSString*)DeauthorizeCallbackMethod {
		[super setInput:@"DeauthorizeCallbackMethod" toValue:DeauthorizeCallbackMethod];
	}

	/*!
	 * Set the value of the DeauthorizeCallbackURL input for this Choreo.
	*(optional, string) The URL to which Twilio will send a request when a user de-authorizes this Connect App.
	 */
	-(void)setDeauthorizeCallbackURL:(NSString*)DeauthorizeCallbackURL {
		[super setInput:@"DeauthorizeCallbackURL" toValue:DeauthorizeCallbackURL];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A more detailed human readable description of the Connect App.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) A human readable description of the Connect App, with maximum length 64 characters.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the HomepageURL input for this Choreo.
	*(optional, string) The public URL where users can obtain more information about this Connect App.
	 */
	-(void)setHomepageURL:(NSString*)HomepageURL {
		[super setInput:@"HomepageURL" toValue:HomepageURL];
	}

	/*!
	 * Set the value of the Permissions input for this Choreo.
	*(optional, string) A comma-separated list of permssions you will request from users of this ConnectApp. Valid permssions are get-all or post-all.
	 */
	-(void)setPermissions:(NSString*)Permissions {
		[super setInput:@"Permissions" toValue:Permissions];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateConnectApp Choreo.
 */
@implementation TMBTwilio_ConnectApps_UpdateConnectApp_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates the details for an individual Connect App associated with a Twilio account.
 */
@implementation TMBTwilio_ConnectApps_UpdateConnectApp

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_ConnectApps_UpdateConnectApp Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/ConnectApps/UpdateConnectApp"] autorelease];
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
		TMBTwilio_ConnectApps_UpdateConnectApp_ResultSet *results = [[[TMBTwilio_ConnectApps_UpdateConnectApp_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateConnectApp Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_ConnectApps_UpdateConnectApp_Inputs*)newInputSet {
		return [[[TMBTwilio_ConnectApps_UpdateConnectApp_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAccount Choreo.
 */
@implementation TMBTwilio_Accounts_GetAccount_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount to retrieve. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccount Choreo.
 */
@implementation TMBTwilio_Accounts_GetAccount_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves general account information associated with the Twilio credentials provided.
 */
@implementation TMBTwilio_Accounts_GetAccount

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Accounts_GetAccount Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Accounts/GetAccount"] autorelease];
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
		TMBTwilio_Accounts_GetAccount_ResultSet *results = [[[TMBTwilio_Accounts_GetAccount_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAccount Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Accounts_GetAccount_Inputs*)newInputSet {
		return [[[TMBTwilio_Accounts_GetAccount_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteNotification Choreo.
 */
@implementation TMBTwilio_Notifications_DeleteNotification_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the NotificationSID input for this Choreo.
	*(required, string) Enter the SID of the notification resource to be deleted.
	 */
	-(void)setNotificationSID:(NSString*)NotificationSID {
		[super setInput:@"NotificationSID" toValue:NotificationSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount to delete the notification from. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteNotification Choreo.
 */
@implementation TMBTwilio_Notifications_DeleteNotification_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete a notification from the account log.
 */
@implementation TMBTwilio_Notifications_DeleteNotification

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Notifications_DeleteNotification Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Notifications/DeleteNotification"] autorelease];
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
		TMBTwilio_Notifications_DeleteNotification_ResultSet *results = [[[TMBTwilio_Notifications_DeleteNotification_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteNotification Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Notifications_DeleteNotification_Inputs*)newInputSet {
		return [[[TMBTwilio_Notifications_DeleteNotification_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteQueue Choreo.
 */
@implementation TMBTwilio_Queues_DeleteQueue_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the QueueSID input for this Choreo.
	*(required, string) The id of the queue to delete.
	 */
	-(void)setQueueSID:(NSString*)QueueSID {
		[super setInput:@"QueueSID" toValue:QueueSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the queue. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteQueue Choreo.
 */
@implementation TMBTwilio_Queues_DeleteQueue_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes an individual queue.
 */
@implementation TMBTwilio_Queues_DeleteQueue

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Queues_DeleteQueue Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Queues/DeleteQueue"] autorelease];
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
		TMBTwilio_Queues_DeleteQueue_ResultSet *results = [[[TMBTwilio_Queues_DeleteQueue_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteQueue Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Queues_DeleteQueue_Inputs*)newInputSet {
		return [[[TMBTwilio_Queues_DeleteQueue_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMessages Choreo.
 */
@implementation TMBTwilio_SMSMessages_ListMessages_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the DateSent input for this Choreo.
	*(optional, date) A date in YYYY-MM-DD format. If you use this input, the Choreo will retrieve only messages sent on this date.
	 */
	-(void)setDateSent:(NSString*)DateSent {
		[super setInput:@"DateSent" toValue:DateSent];
	}

	/*!
	 * Set the value of the From input for this Choreo.
	*(optional, string) If used, the Choreo will only retrieve messages sent from this phone number.
	 */
	-(void)setFrom:(NSString*)From {
		[super setInput:@"From" toValue:From];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount to retrieve the message from. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}

	/*!
	 * Set the value of the To input for this Choreo.
	*(optional, string) If used, the Choreo will only retrieve messages sent to this phone number.
	 */
	-(void)setTo:(NSString*)To {
		[super setInput:@"To" toValue:To];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMessages Choreo.
 */
@implementation TMBTwilio_SMSMessages_ListMessages_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of SMS messages from your Twilio account.
 */
@implementation TMBTwilio_SMSMessages_ListMessages

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_SMSMessages_ListMessages Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/SMSMessages/ListMessages"] autorelease];
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
		TMBTwilio_SMSMessages_ListMessages_ResultSet *results = [[[TMBTwilio_SMSMessages_ListMessages_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMessages Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_SMSMessages_ListMessages_Inputs*)newInputSet {
		return [[[TMBTwilio_SMSMessages_ListMessages_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListConnectApps Choreo.
 */
@implementation TMBTwilio_ConnectApps_ListConnectApps_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListConnectApps Choreo.
 */
@implementation TMBTwilio_ConnectApps_ListConnectApps_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of Connect Apps within your Twilio account.
 */
@implementation TMBTwilio_ConnectApps_ListConnectApps

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_ConnectApps_ListConnectApps Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/ConnectApps/ListConnectApps"] autorelease];
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
		TMBTwilio_ConnectApps_ListConnectApps_ResultSet *results = [[[TMBTwilio_ConnectApps_ListConnectApps_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListConnectApps Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_ConnectApps_ListConnectApps_Inputs*)newInputSet {
		return [[[TMBTwilio_ConnectApps_ListConnectApps_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddPhoneNumber Choreo.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber_Inputs

	/*!
	 * Set the value of the APIVersion input for this Choreo.
	*(optional, string) Calls to this phone number will start a new TwiML session with this API version. Either 2010-04-01 or 2008-08-01.
	 */
	-(void)setAPIVersion:(NSString*)APIVersion {
		[super setInput:@"APIVersion" toValue:APIVersion];
	}

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AreaCode input for this Choreo.
	*(conditional, integer) The desired area code for your new incoming phone number. Required unless specifying the complete PhoneNumber.
	 */
	-(void)setAreaCode:(NSString*)AreaCode {
		[super setInput:@"AreaCode" toValue:AreaCode];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) A human readable description of the new incoming phone number resource, with maximum length 64 characters.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the PhoneNumber input for this Choreo.
	*(conditional, string) The phone number you want to purchase. Required unless provided the AreaCode.
	 */
	-(void)setPhoneNumber:(NSString*)PhoneNumber {
		[super setInput:@"PhoneNumber" toValue:PhoneNumber];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SmsApplicationSID input for this Choreo.
	*(optional, string) The 34 character sid of the application Twilio should use to handle SMSs sent to this number.
	 */
	-(void)setSmsApplicationSID:(NSString*)SmsApplicationSID {
		[super setInput:@"SmsApplicationSID" toValue:SmsApplicationSID];
	}

	/*!
	 * Set the value of the SmsFallbackMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the SmsFallbackUrl. Either GET or POST.
	 */
	-(void)setSmsFallbackMethod:(NSString*)SmsFallbackMethod {
		[super setInput:@"SmsFallbackMethod" toValue:SmsFallbackMethod];
	}

	/*!
	 * Set the value of the SmsFallbackURL input for this Choreo.
	*(optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by SmsUrl.
	 */
	-(void)setSmsFallbackURL:(NSString*)SmsFallbackURL {
		[super setInput:@"SmsFallbackURL" toValue:SmsFallbackURL];
	}

	/*!
	 * Set the value of the SmsMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the SmsUrl. Either GET or POST.
	 */
	-(void)setSmsMethod:(NSString*)SmsMethod {
		[super setInput:@"SmsMethod" toValue:SmsMethod];
	}

	/*!
	 * Set the value of the SmsURL input for this Choreo.
	*(optional, string) The URL that Twilio should request when somebody sends an SMS to the new phone number.
	 */
	-(void)setSmsURL:(NSString*)SmsURL {
		[super setInput:@"SmsURL" toValue:SmsURL];
	}

	/*!
	 * Set the value of the StatusCallbackMethod input for this Choreo.
	*(optional, string) The HTTP method Twilio will use to make requests to the StatusCallback URL. Either GET or POST.
	 */
	-(void)setStatusCallbackMethod:(NSString*)StatusCallbackMethod {
		[super setInput:@"StatusCallbackMethod" toValue:StatusCallbackMethod];
	}

	/*!
	 * Set the value of the StatusCallback input for this Choreo.
	*(optional, string) The URL that Twilio will request to pass status parameters (such as call ended) to your application.
	 */
	-(void)setStatusCallback:(NSString*)StatusCallback {
		[super setInput:@"StatusCallback" toValue:StatusCallback];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the phone number. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}

	/*!
	 * Set the value of the VoiceApplicationSID input for this Choreo.
	*(optional, string) The 34 character sid of the application Twilio should use to handle phone calls to this number.
	 */
	-(void)setVoiceApplicationSID:(NSString*)VoiceApplicationSID {
		[super setInput:@"VoiceApplicationSID" toValue:VoiceApplicationSID];
	}

	/*!
	 * Set the value of the VoiceCallerIDLookup input for this Choreo.
	*(optional, string) Do a lookup of a caller's name from the CNAM database and post it to your app. Either true or false.
	 */
	-(void)setVoiceCallerIDLookup:(NSString*)VoiceCallerIDLookup {
		[super setInput:@"VoiceCallerIDLookup" toValue:VoiceCallerIDLookup];
	}

	/*!
	 * Set the value of the VoiceFallbackMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the VoiceFallbackURL. Either GET or POST.
	 */
	-(void)setVoiceFallbackMethod:(NSString*)VoiceFallbackMethod {
		[super setInput:@"VoiceFallbackMethod" toValue:VoiceFallbackMethod];
	}

	/*!
	 * Set the value of the VoiceFallbackURL input for this Choreo.
	*(optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by VoiceURL.
	 */
	-(void)setVoiceFallbackURL:(NSString*)VoiceFallbackURL {
		[super setInput:@"VoiceFallbackURL" toValue:VoiceFallbackURL];
	}

	/*!
	 * Set the value of the VoiceMethod input for this Choreo.
	*(optional, string) The HTTP method that should be used to request the VoiceURL. Either GET or POST.
	 */
	-(void)setVoiceMethod:(NSString*)VoiceMethod {
		[super setInput:@"VoiceMethod" toValue:VoiceMethod];
	}

	/*!
	 * Set the value of the VoiceURL input for this Choreo.
	*(optional, string) The URL that Twilio should request when somebody dials the phone number.
	 */
	-(void)setVoiceURL:(NSString*)VoiceURL {
		[super setInput:@"VoiceURL" toValue:VoiceURL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddPhoneNumber Choreo.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Purchases a new phone number for your Twilio account.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/IncomingPhoneNumbers/AddPhoneNumber"] autorelease];
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
		TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber_ResultSet *results = [[[TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddPhoneNumber Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber_Inputs*)newInputSet {
		return [[[TMBTwilio_IncomingPhoneNumbers_AddPhoneNumber_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeletePhoneNumber Choreo.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the IncomingPhoneNumberSID input for this Choreo.
	*(required, string) The id of the incoming phone number to retrieve.
	 */
	-(void)setIncomingPhoneNumberSID:(NSString*)IncomingPhoneNumberSID {
		[super setInput:@"IncomingPhoneNumberSID" toValue:IncomingPhoneNumberSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the phone number. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePhoneNumber Choreo.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes an individual phone from Twilio.
 */
@implementation TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/IncomingPhoneNumbers/DeletePhoneNumber"] autorelease];
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
		TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber_ResultSet *results = [[[TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeletePhoneNumber Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber_Inputs*)newInputSet {
		return [[[TMBTwilio_IncomingPhoneNumbers_DeletePhoneNumber_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SendSMS Choreo.
 */
@implementation TMBTwilio_SMSMessages_SendSMS_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the Body input for this Choreo.
	*(required, string) The text of your SMS message.
	 */
	-(void)setBody:(NSString*)Body {
		[super setInput:@"Body" toValue:Body];
	}

	/*!
	 * Set the value of the From input for this Choreo.
	*(required, string) The purchased Twilio phone number (or Twilio Sandbox number) to send the message from.
	 */
	-(void)setFrom:(NSString*)From {
		[super setInput:@"From" toValue:From];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount to send the message from. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}

	/*!
	 * Set the value of the To input for this Choreo.
	*(required, string) The destination phone number for the SMS message.
	 */
	-(void)setTo:(NSString*)To {
		[super setInput:@"To" toValue:To];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendSMS Choreo.
 */
@implementation TMBTwilio_SMSMessages_SendSMS_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The Twilio response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sends an SMS to a specified phone number using the Twilio API.
 */
@implementation TMBTwilio_SMSMessages_SendSMS

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_SMSMessages_SendSMS Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/SMSMessages/SendSMS"] autorelease];
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
		TMBTwilio_SMSMessages_SendSMS_ResultSet *results = [[[TMBTwilio_SMSMessages_SendSMS_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SendSMS Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_SMSMessages_SendSMS_Inputs*)newInputSet {
		return [[[TMBTwilio_SMSMessages_SendSMS_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCallerID Choreo.
 */
@implementation TMBTwilio_OutgoingCallerIDs_DeleteCallerID_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the OutgoingCallerSID input for this Choreo.
	*(required, string) The id of the outgoing caller to retrieve.
	 */
	-(void)setOutgoingCallerSID:(NSString*)OutgoingCallerSID {
		[super setInput:@"OutgoingCallerSID" toValue:OutgoingCallerSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the outgoing caller id. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCallerID Choreo.
 */
@implementation TMBTwilio_OutgoingCallerIDs_DeleteCallerID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes an existing caller id.
 */
@implementation TMBTwilio_OutgoingCallerIDs_DeleteCallerID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_OutgoingCallerIDs_DeleteCallerID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/OutgoingCallerIDs/DeleteCallerID"] autorelease];
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
		TMBTwilio_OutgoingCallerIDs_DeleteCallerID_ResultSet *results = [[[TMBTwilio_OutgoingCallerIDs_DeleteCallerID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteCallerID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_OutgoingCallerIDs_DeleteCallerID_Inputs*)newInputSet {
		return [[[TMBTwilio_OutgoingCallerIDs_DeleteCallerID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetQueue Choreo.
 */
@implementation TMBTwilio_Queues_GetQueue_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the QueueSID input for this Choreo.
	*(required, string) The id of the queue to retrieve.
	 */
	-(void)setQueueSID:(NSString*)QueueSID {
		[super setInput:@"QueueSID" toValue:QueueSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the queue to retrieve. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetQueue Choreo.
 */
@implementation TMBTwilio_Queues_GetQueue_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves details for an individual queue.
 */
@implementation TMBTwilio_Queues_GetQueue

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Queues_GetQueue Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Queues/GetQueue"] autorelease];
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
		TMBTwilio_Queues_GetQueue_ResultSet *results = [[[TMBTwilio_Queues_GetQueue_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetQueue Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Queues_GetQueue_Inputs*)newInputSet {
		return [[[TMBTwilio_Queues_GetQueue_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteApplication Choreo.
 */
@implementation TMBTwilio_Applications_DeleteApplication_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the ApplicationSID input for this Choreo.
	*(required, string) The id of the application to retrieve.
	 */
	-(void)setApplicationSID:(NSString*)ApplicationSID {
		[super setInput:@"ApplicationSID" toValue:ApplicationSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteApplication Choreo.
 */
@implementation TMBTwilio_Applications_DeleteApplication_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes an application from your Twilio account.
 */
@implementation TMBTwilio_Applications_DeleteApplication

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Applications_DeleteApplication Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Applications/DeleteApplication"] autorelease];
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
		TMBTwilio_Applications_DeleteApplication_ResultSet *results = [[[TMBTwilio_Applications_DeleteApplication_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteApplication Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Applications_DeleteApplication_Inputs*)newInputSet {
		return [[[TMBTwilio_Applications_DeleteApplication_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListApplications Choreo.
 */
@implementation TMBTwilio_Applications_ListApplications_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) Only return applications with friendly names that exactly match this name.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListApplications Choreo.
 */
@implementation TMBTwilio_Applications_ListApplications_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of Twilio applications associated with your account.
 */
@implementation TMBTwilio_Applications_ListApplications

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Applications_ListApplications Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Applications/ListApplications"] autorelease];
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
		TMBTwilio_Applications_ListApplications_ResultSet *results = [[[TMBTwilio_Applications_ListApplications_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListApplications Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Applications_ListApplications_Inputs*)newInputSet {
		return [[[TMBTwilio_Applications_ListApplications_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCall Choreo.
 */
@implementation TMBTwilio_Calls_GetCall_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the CallSID input for this Choreo.
	*(required, string) The unique id of the call to retrieve.
	 */
	-(void)setCallSID:(NSString*)CallSID {
		[super setInput:@"CallSID" toValue:CallSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the call. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCall Choreo.
 */
@implementation TMBTwilio_Calls_GetCall_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the single Call with a given id.
 */
@implementation TMBTwilio_Calls_GetCall

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Calls_GetCall Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Calls/GetCall"] autorelease];
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
		TMBTwilio_Calls_GetCall_ResultSet *results = [[[TMBTwilio_Calls_GetCall_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCall Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Calls_GetCall_Inputs*)newInputSet {
		return [[[TMBTwilio_Calls_GetCall_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListRecordings Choreo.
 */
@implementation TMBTwilio_Calls_ListRecordings_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the CallSID input for this Choreo.
	*(required, string) The unique id of the call to retrieve a list of recordings for.
	 */
	-(void)setCallSID:(NSString*)CallSID {
		[super setInput:@"CallSID" toValue:CallSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the call. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRecordings Choreo.
 */
@implementation TMBTwilio_Calls_ListRecordings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of recordings generated during a call.
 */
@implementation TMBTwilio_Calls_ListRecordings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Calls_ListRecordings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Calls/ListRecordings"] autorelease];
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
		TMBTwilio_Calls_ListRecordings_ResultSet *results = [[[TMBTwilio_Calls_ListRecordings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListRecordings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Calls_ListRecordings_Inputs*)newInputSet {
		return [[[TMBTwilio_Calls_ListRecordings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTranscription Choreo.
 */
@implementation TMBTwilio_Transcriptions_GetTranscription_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the transcription. If not specified, the main AccountSID used to authenticate is used in request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}

	/*!
	 * Set the value of the TranscriptionSID input for this Choreo.
	*(required, string) The id of the transcription to retrieve.
	 */
	-(void)setTranscriptionSID:(NSString*)TranscriptionSID {
		[super setInput:@"TranscriptionSID" toValue:TranscriptionSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTranscription Choreo.
 */
@implementation TMBTwilio_Transcriptions_GetTranscription_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a an individual transcription of a recorded call.
 */
@implementation TMBTwilio_Transcriptions_GetTranscription

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_Transcriptions_GetTranscription Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/Transcriptions/GetTranscription"] autorelease];
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
		TMBTwilio_Transcriptions_GetTranscription_ResultSet *results = [[[TMBTwilio_Transcriptions_GetTranscription_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTranscription Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_Transcriptions_GetTranscription_Inputs*)newInputSet {
		return [[[TMBTwilio_Transcriptions_GetTranscription_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddCallerID Choreo.
 */
@implementation TMBTwilio_OutgoingCallerIDs_AddCallerID_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the PhoneNumber input for this Choreo.
	*(required, string) The phone number to verify. Should be formatted with a '+' and country code e.g., +16175551212. US formatted numbers are also accepted e.g., (415) 555-1212, 415-555-1212.
	 */
	-(void)setPhoneNumber:(NSString*)PhoneNumber {
		[super setInput:@"PhoneNumber" toValue:PhoneNumber];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the outgoing caller id. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddCallerID Choreo.
 */
@implementation TMBTwilio_OutgoingCallerIDs_AddCallerID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a new caller id to a Twilio account.
 */
@implementation TMBTwilio_OutgoingCallerIDs_AddCallerID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_OutgoingCallerIDs_AddCallerID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/OutgoingCallerIDs/AddCallerID"] autorelease];
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
		TMBTwilio_OutgoingCallerIDs_AddCallerID_ResultSet *results = [[[TMBTwilio_OutgoingCallerIDs_AddCallerID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddCallerID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_OutgoingCallerIDs_AddCallerID_Inputs*)newInputSet {
		return [[[TMBTwilio_OutgoingCallerIDs_AddCallerID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListCallerIDs Choreo.
 */
@implementation TMBTwilio_OutgoingCallerIDs_ListCallerIDs_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the FriendlyName input for this Choreo.
	*(optional, string) Only show the caller id resource that exactly matches this name.
	 */
	-(void)setFriendlyName:(NSString*)FriendlyName {
		[super setInput:@"FriendlyName" toValue:FriendlyName];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results per page.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to retrieve. Defaults to 0.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PhoneNumber input for this Choreo.
	*(optional, string) Only return the caller id resource that exactly matches this phone number.
	 */
	-(void)setPhoneNumber:(NSString*)PhoneNumber {
		[super setInput:@"PhoneNumber" toValue:PhoneNumber];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the outgoing caller id. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCallerIDs Choreo.
 */
@implementation TMBTwilio_OutgoingCallerIDs_ListCallerIDs_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of Outgoing Caller IDs for a Twilio account.
 */
@implementation TMBTwilio_OutgoingCallerIDs_ListCallerIDs

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_OutgoingCallerIDs_ListCallerIDs Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/OutgoingCallerIDs/ListCallerIDs"] autorelease];
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
		TMBTwilio_OutgoingCallerIDs_ListCallerIDs_ResultSet *results = [[[TMBTwilio_OutgoingCallerIDs_ListCallerIDs_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListCallerIDs Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_OutgoingCallerIDs_ListCallerIDs_Inputs*)newInputSet {
		return [[[TMBTwilio_OutgoingCallerIDs_ListCallerIDs_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCallerID Choreo.
 */
@implementation TMBTwilio_OutgoingCallerIDs_GetCallerID_Inputs

	/*!
	 * Set the value of the AccountSID input for this Choreo.
	*(required, string) The AccountSID provided when you signed up for a Twilio account.
	 */
	-(void)setAccountSID:(NSString*)AccountSID {
		[super setInput:@"AccountSID" toValue:AccountSID];
	}

	/*!
	 * Set the value of the AuthToken input for this Choreo.
	*(required, string) The authorization token provided when you signed up for a Twilio account.
	 */
	-(void)setAuthToken:(NSString*)AuthToken {
		[super setInput:@"AuthToken" toValue:AuthToken];
	}

	/*!
	 * Set the value of the OutgoingCallerSID input for this Choreo.
	*(required, string) The id of the outgoing caller to retrieve.
	 */
	-(void)setOutgoingCallerSID:(NSString*)OutgoingCallerSID {
		[super setInput:@"OutgoingCallerSID" toValue:OutgoingCallerSID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SubAccountSID input for this Choreo.
	*(optional, string) The SID of the subaccount associated with the outgoing caller id. If not specified, the main AccountSID used to authenticate is used in the request.
	 */
	-(void)setSubAccountSID:(NSString*)SubAccountSID {
		[super setInput:@"SubAccountSID" toValue:SubAccountSID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCallerID Choreo.
 */
@implementation TMBTwilio_OutgoingCallerIDs_GetCallerID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Twilio.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an individual outgoing caller id resource.
 */
@implementation TMBTwilio_OutgoingCallerIDs_GetCallerID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwilio_OutgoingCallerIDs_GetCallerID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twilio/OutgoingCallerIDs/GetCallerID"] autorelease];
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
		TMBTwilio_OutgoingCallerIDs_GetCallerID_ResultSet *results = [[[TMBTwilio_OutgoingCallerIDs_GetCallerID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCallerID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwilio_OutgoingCallerIDs_GetCallerID_Inputs*)newInputSet {
		return [[[TMBTwilio_OutgoingCallerIDs_GetCallerID_Inputs alloc] init] autorelease];
	}
@end
	