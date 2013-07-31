/*!
 * @TMBDwolla.m
 *
 * Execute Choreographies from the Temboo Dwolla bundle.
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

#import "TMBDwolla.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the FundingSourcesListing Choreo.
 */
@implementation TMBDwolla_FundingSources_FundingSourcesListing_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FundingSourcesListing Choreo.
 */
@implementation TMBDwolla_FundingSources_FundingSourcesListing_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of verified funding sources for the user associated with the authorized access token.
 */
@implementation TMBDwolla_FundingSources_FundingSourcesListing

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_FundingSources_FundingSourcesListing Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/FundingSources/FundingSourcesListing"] autorelease];
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
		TMBDwolla_FundingSources_FundingSourcesListing_ResultSet *results = [[[TMBDwolla_FundingSources_FundingSourcesListing_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FundingSourcesListing Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_FundingSources_FundingSourcesListing_Inputs*)newInputSet {
		return [[[TMBDwolla_FundingSources_FundingSourcesListing_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBDwolla_OAuth_InitializeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppKeyName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyName:(NSString*)AppKeyName {
		[super setInput:@"AppKeyName" toValue:AppKeyName];
	}

	/*!
	 * Set the value of the AppKeyValue input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyValue:(NSString*)AppKeyValue {
		[super setInput:@"AppKeyValue" toValue:AppKeyValue];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by Dwolla after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the CustomCallbackID input for this Choreo.
	*(optional, string) A unique identifier that you can pass to eliminate the need to wait for a Temboo generated CallbackID. Callback identifiers may only contain numbers, letters, periods, and hyphens.
	 */
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID {
		[super setInput:@"CustomCallbackID" toValue:CustomCallbackID];
	}

	/*!
	 * Set the value of the ForwardingURL input for this Choreo.
	*(optional, string) The URL that Temboo will redirect your users to after they grant your application access.
	 */
	-(void)setForwardingURL:(NSString*)ForwardingURL {
		[super setInput:@"ForwardingURL" toValue:ForwardingURL];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(required, string) Lists which access permissions the app requires. Multiple scopes - separated by '|' (ex of all: "AccountInfoFull|Contacts|Transactions|Balance|Send|Request|Funding" ). For more info see docs.
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBDwolla_OAuth_InitializeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AuthorizationURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAuthorizationURL {
		return [super getOutputByName:@"AuthorizationURL"];
	}

	/*!
	 * Retrieve the value of the "CallbackID" output from an execution of this Choreo.
	 * @return - NSString* (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCallbackID {
		return [super getOutputByName:@"CallbackID"];
	}
	
@end

/*!
 * Generates an authorization URL and callback ID that an application can use to complete the first step in the OAuth process.
 */
@implementation TMBDwolla_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/OAuth/InitializeOAuth"] autorelease];
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
		TMBDwolla_OAuth_InitializeOAuth_ResultSet *results = [[[TMBDwolla_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBDwolla_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Basic Choreo.
 */
@implementation TMBDwolla_Users_Basic_Inputs

	/*!
	 * Set the value of the AccountIdentifier input for this Choreo.
	*(required, string) Dwolla account identifier or email address of the Dwolla account.
	 */
	-(void)setAccountIdentifier:(NSString*)AccountIdentifier {
		[super setInput:@"AccountIdentifier" toValue:AccountIdentifier];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by Dwolla (AKA the Consumer Key).
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by Dwolla (AKA the Consumer Secret).
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Basic Choreo.
 */
@implementation TMBDwolla_Users_Basic_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the Dwolla account information for the user associated with the specified consumer credentials and Dwolla account identifier.
 */
@implementation TMBDwolla_Users_Basic

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_Users_Basic Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/Users/Basic"] autorelease];
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
		TMBDwolla_Users_Basic_ResultSet *results = [[[TMBDwolla_Users_Basic_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Basic Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_Users_Basic_Inputs*)newInputSet {
		return [[[TMBDwolla_Users_Basic_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FundingSourcesByID Choreo.
 */
@implementation TMBDwolla_FundingSources_FundingSourcesByID_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the FundingID input for this Choreo.
	*(required, string) Funding source identifier of the funding source being requested.
	 */
	-(void)setFundingID:(NSString*)FundingID {
		[super setInput:@"FundingID" toValue:FundingID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FundingSourcesByID Choreo.
 */
@implementation TMBDwolla_FundingSources_FundingSourcesByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the account information for the user associated with the given authorized access token.
 */
@implementation TMBDwolla_FundingSources_FundingSourcesByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_FundingSources_FundingSourcesByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/FundingSources/FundingSourcesByID"] autorelease];
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
		TMBDwolla_FundingSources_FundingSourcesByID_ResultSet *results = [[[TMBDwolla_FundingSources_FundingSourcesByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FundingSourcesByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_FundingSources_FundingSourcesByID_Inputs*)newInputSet {
		return [[[TMBDwolla_FundingSources_FundingSourcesByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBalance Choreo.
 */
@implementation TMBDwolla_Balance_GetBalance_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBalance Choreo.
 */
@implementation TMBDwolla_Balance_GetBalance_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the account balance for the user associated with the given authorized access token.
 */
@implementation TMBDwolla_Balance_GetBalance

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_Balance_GetBalance Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/Balance/GetBalance"] autorelease];
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
		TMBDwolla_Balance_GetBalance_ResultSet *results = [[[TMBDwolla_Balance_GetBalance_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBalance Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_Balance_GetBalance_Inputs*)newInputSet {
		return [[[TMBDwolla_Balance_GetBalance_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBDwolla_OAuth_FinalizeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppKeyName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyName:(NSString*)AppKeyName {
		[super setInput:@"AppKeyName" toValue:AppKeyName];
	}

	/*!
	 * Set the value of the AppKeyValue input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyValue:(NSString*)AppKeyValue {
		[super setInput:@"AppKeyValue" toValue:AppKeyValue];
	}

	/*!
	 * Set the value of the CallbackID input for this Choreo.
	*(required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the authorization code after the user authorizes.
	 */
	-(void)setCallbackID:(NSString*)CallbackID {
		[super setInput:@"CallbackID" toValue:CallbackID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by Dwolla after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by Dwolla after registering your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Timeout input for this Choreo.
	*(optional, integer) The amount of time (in seconds) to poll your Temboo callback URL to see if your app's user has allowed or denied the request for access. Defaults to 20. Max is 60.
	 */
	-(void)setTimeout:(NSString*)Timeout {
		[super setInput:@"Timeout" toValue:Timeout];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@implementation TMBDwolla_OAuth_FinalizeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The access token for the user that has granted access to your application.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Dwolla access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@implementation TMBDwolla_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/OAuth/FinalizeOAuth"] autorelease];
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
		TMBDwolla_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBDwolla_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBDwolla_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UserContacts Choreo.
 */
@implementation TMBDwolla_Contacts_UserContacts_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of contacts to retrieve. Defaults to 10. Can be between 1 and 200 contacts.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Search input for this Choreo.
	*(optional, string) Search term used to search the contacts.
	 */
	-(void)setSearch:(NSString*)Search {
		[super setInput:@"Search" toValue:Search];
	}

	/*!
	 * Set the value of the Types input for this Choreo.
	*(optional, string) Type of accounts to retrieve, in the form of a comma-separated list (e.g. "Facebook,Dwolla")
	 */
	-(void)setTypes:(NSString*)Types {
		[super setInput:@"Types" toValue:Types];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserContacts Choreo.
 */
@implementation TMBDwolla_Contacts_UserContacts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the information for contacts for the user assoicated with the authorized access token.
 */
@implementation TMBDwolla_Contacts_UserContacts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_Contacts_UserContacts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/Contacts/UserContacts"] autorelease];
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
		TMBDwolla_Contacts_UserContacts_ResultSet *results = [[[TMBDwolla_Contacts_UserContacts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UserContacts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_Contacts_UserContacts_Inputs*)newInputSet {
		return [[[TMBDwolla_Contacts_UserContacts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Request Choreo.
 */
@implementation TMBDwolla_Transactions_Request_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(required, decimal) Amount of funds to request from the source user.
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the FacillitatorAmount input for this Choreo.
	*(optional, decimal) Amount of the facilitator fee to override. Only applicable if the facilitator fee feature is enabled. If set to 0, facilitator fee is disabled for transaction. Cannot exceed 25% of the 'amount'.
	 */
	-(void)setFacillitatorAmount:(NSString*)FacillitatorAmount {
		[super setInput:@"FacillitatorAmount" toValue:FacillitatorAmount];
	}

	/*!
	 * Set the value of the Notes input for this Choreo.
	*(optional, multiline) Note to attach to the transaction. Limited to 250 characters.
	 */
	-(void)setNotes:(NSString*)Notes {
		[super setInput:@"Notes" toValue:Notes];
	}

	/*!
	 * Set the value of the Pin input for this Choreo.
	*(required, integer) User's PIN associated with their account.
	 */
	-(void)setPin:(NSString*)Pin {
		[super setInput:@"Pin" toValue:Pin];
	}

	/*!
	 * Set the value of the SourceID input for this Choreo.
	*(required, string) Identification of the user to request funds from. Must be the Dwolla identifier, Facebook identifier, Twitter screename, phone number, or email address.
	 */
	-(void)setSourceID:(NSString*)SourceID {
		[super setInput:@"SourceID" toValue:SourceID];
	}

	/*!
	 * Set the value of the SourceType input for this Choreo.
	*(optional, string) Type of destination user. Defaults to Dwolla. Can be Dwolla, Facebook, Twitter, Email, or Phone.
	 */
	-(void)setSourceType:(NSString*)SourceType {
		[super setInput:@"SourceType" toValue:SourceType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Request Choreo.
 */
@implementation TMBDwolla_Transactions_Request_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Use this method to request funds from a source user, originating from the user associated with the authorized access token.
 */
@implementation TMBDwolla_Transactions_Request

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_Transactions_Request Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/Transactions/Request"] autorelease];
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
		TMBDwolla_Transactions_Request_ResultSet *results = [[[TMBDwolla_Transactions_Request_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Request Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_Transactions_Request_Inputs*)newInputSet {
		return [[[TMBDwolla_Transactions_Request_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Account Choreo.
 */
@implementation TMBDwolla_Users_Account_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Account Choreo.
 */
@implementation TMBDwolla_Users_Account_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the account information for the user associated with the given authorized access token.
 */
@implementation TMBDwolla_Users_Account

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_Users_Account Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/Users/Account"] autorelease];
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
		TMBDwolla_Users_Account_ResultSet *results = [[[TMBDwolla_Users_Account_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Account Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_Users_Account_Inputs*)newInputSet {
		return [[[TMBDwolla_Users_Account_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Send Choreo.
 */
@implementation TMBDwolla_Transactions_Send_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(required, decimal) Amount of funds to transfer to the destination user.
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the AssumeCosts input for this Choreo.
	*(required, boolean) Set to true if the user will assume the Dwolla fee. Set to false if the destination user will assume the Dwolla fee. Does not affect facilitator fees. Defaults to false.
	 */
	-(void)setAssumeCosts:(NSString*)AssumeCosts {
		[super setInput:@"AssumeCosts" toValue:AssumeCosts];
	}

	/*!
	 * Set the value of the DestinationId input for this Choreo.
	*(required, string) Identification of the user to send funds to. Must be the Dwolla identifier, Facebook identifier, Twitter identifier, phone number, or email address.
	 */
	-(void)setDestinationId:(NSString*)DestinationId {
		[super setInput:@"DestinationId" toValue:DestinationId];
	}

	/*!
	 * Set the value of the DestinationType input for this Choreo.
	*(optional, string) Type of destination user. Defaults to Dwolla. Can be Dwolla, Facebook, Twitter, Email, or Phone.
	 */
	-(void)setDestinationType:(NSString*)DestinationType {
		[super setInput:@"DestinationType" toValue:DestinationType];
	}

	/*!
	 * Set the value of the FacillitatorAmount input for this Choreo.
	*(required, string) Amount of the facilitator fee to override. Only applicable if the facilitator fee feature is enabled. If set to 0, facilitator fee is disabled for transaction. Cannot exceed 25% of the 'amount'.
	 */
	-(void)setFacillitatorAmount:(NSString*)FacillitatorAmount {
		[super setInput:@"FacillitatorAmount" toValue:FacillitatorAmount];
	}

	/*!
	 * Set the value of the FundsSource input for this Choreo.
	*(required, string) Id of funding source to send funds from. Defaults to Balance.  Balance sourced transfers process immediately. Non-balanced sourced transfers may process immediately or take up to five business days.
	 */
	-(void)setFundsSource:(NSString*)FundsSource {
		[super setInput:@"FundsSource" toValue:FundsSource];
	}

	/*!
	 * Set the value of the Notes input for this Choreo.
	*(required, multiline) Note to attach to the transaction. Limited to 250 characters.
	 */
	-(void)setNotes:(NSString*)Notes {
		[super setInput:@"Notes" toValue:Notes];
	}

	/*!
	 * Set the value of the Pin input for this Choreo.
	*(required, integer) User's PIN associated with their account
	 */
	-(void)setPin:(NSString*)Pin {
		[super setInput:@"Pin" toValue:Pin];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Send Choreo.
 */
@implementation TMBDwolla_Transactions_Send_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Use this method to send funds to a destination user, from the user associated with the authorized access token.
 */
@implementation TMBDwolla_Transactions_Send

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_Transactions_Send Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/Transactions/Send"] autorelease];
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
		TMBDwolla_Transactions_Send_ResultSet *results = [[[TMBDwolla_Transactions_Send_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Send Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_Transactions_Send_Inputs*)newInputSet {
		return [[[TMBDwolla_Transactions_Send_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the NearbyContacts Choreo.
 */
@implementation TMBDwolla_Contacts_NearbyContacts_Inputs

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by Dwolla (AKA the Consumer Key).
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by Dwolla (AKA the Consumer Secret).
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) Current latitude.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of spots to retrieve. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) Current longitude.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Range input for this Choreo.
	*(optional, integer) Range to retrieve spots for in miles.
	 */
	-(void)setRange:(NSString*)Range {
		[super setInput:@"Range" toValue:Range];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NearbyContacts Choreo.
 */
@implementation TMBDwolla_Contacts_NearbyContacts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves nearby Dwolla spots within the range of the provided latitude and longitude.
 */
@implementation TMBDwolla_Contacts_NearbyContacts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_Contacts_NearbyContacts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/Contacts/NearbyContacts"] autorelease];
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
		TMBDwolla_Contacts_NearbyContacts_ResultSet *results = [[[TMBDwolla_Contacts_NearbyContacts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the NearbyContacts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_Contacts_NearbyContacts_Inputs*)newInputSet {
		return [[[TMBDwolla_Contacts_NearbyContacts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Listing Choreo.
 */
@implementation TMBDwolla_Transactions_Listing_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of transactions to retrieve. Defaults to 10. Can be between 1 and 200 transactions.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the SinceDate input for this Choreo.
	*(optional, string) Earliest date and time for which to retrieve transactions. Defaults to 7 days prior to current date and time in UTC.
	 */
	-(void)setSinceDate:(NSString*)SinceDate {
		[super setInput:@"SinceDate" toValue:SinceDate];
	}

	/*!
	 * Set the value of the Skip input for this Choreo.
	*(optional, integer) Number of transactions to skip. Defaults to 0.
	 */
	-(void)setSkip:(NSString*)Skip {
		[super setInput:@"Skip" toValue:Skip];
	}

	/*!
	 * Set the value of the Types input for this Choreo.
	*(optional, string) Transaction types to retrieve. Must be delimited by a '|'. Options are money_sent, money_received, deposit, withdrawal, and fee. Defaults to include all transaction types.
	 */
	-(void)setTypes:(NSString*)Types {
		[super setInput:@"Types" toValue:Types];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Listing Choreo.
 */
@implementation TMBDwolla_Transactions_Listing_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of transactions for the user associated with the authorized access token.
 */
@implementation TMBDwolla_Transactions_Listing

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_Transactions_Listing Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/Transactions/Listing"] autorelease];
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
		TMBDwolla_Transactions_Listing_ResultSet *results = [[[TMBDwolla_Transactions_Listing_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Listing Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_Transactions_Listing_Inputs*)newInputSet {
		return [[[TMBDwolla_Transactions_Listing_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByID Choreo.
 */
@implementation TMBDwolla_Transactions_ByID_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the TransactionID input for this Choreo.
	*(required, integer) Transaction identifier of the transaction being requested.
	 */
	-(void)setTransactionID:(NSString*)TransactionID {
		[super setInput:@"TransactionID" toValue:TransactionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByID Choreo.
 */
@implementation TMBDwolla_Transactions_ByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the account information about the specified transaction by Transaction ID.
 */
@implementation TMBDwolla_Transactions_ByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_Transactions_ByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/Transactions/ByID"] autorelease];
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
		TMBDwolla_Transactions_ByID_ResultSet *results = [[[TMBDwolla_Transactions_ByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_Transactions_ByID_Inputs*)newInputSet {
		return [[[TMBDwolla_Transactions_ByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Stats Choreo.
 */
@implementation TMBDwolla_Transactions_Stats_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) Ending date and time to for which to process transactions stats. Defaults to current date and time in UTC.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) Starting date and time to for which to process transactions stats. Defaults to 0300 of the current day in UTC.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Types input for this Choreo.
	*(optional, string) Types of status to retrieve. Must be comma delimited. Options are TransactionsCount and TransactionsTotal. Defaults to include all stats.
	 */
	-(void)setTypes:(NSString*)Types {
		[super setInput:@"Types" toValue:Types];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Stats Choreo.
 */
@implementation TMBDwolla_Transactions_Stats_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Dwolla.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the account information for the user associated with the given authorized access token.
 */
@implementation TMBDwolla_Transactions_Stats

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDwolla_Transactions_Stats Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dwolla/Transactions/Stats"] autorelease];
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
		TMBDwolla_Transactions_Stats_ResultSet *results = [[[TMBDwolla_Transactions_Stats_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Stats Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDwolla_Transactions_Stats_Inputs*)newInputSet {
		return [[[TMBDwolla_Transactions_Stats_Inputs alloc] init] autorelease];
	}
@end
	