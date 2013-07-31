/*!
 * @TMBNetflix.m
 *
 * Execute Choreographies from the Temboo Netflix bundle.
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

#import "TMBNetflix.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetRecommendations Choreo.
 */
@implementation TMBNetflix_GetRecommendations_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) Set this to the maximum number of results to return. This number cannot be greater than 500. If you do not specify max_results, the default value is 25
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the SharedSecret input for this Choreo.
	*(required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
	 */
	-(void)setSharedSecret:(NSString*)SharedSecret {
		[super setInput:@"SharedSecret" toValue:SharedSecret];
	}

	/*!
	 * Set the value of the StartIndex input for this Choreo.
	*(optional, integer) The offset number of the results from the query.
	 */
	-(void)setStartIndex:(NSString*)StartIndex {
		[super setInput:@"StartIndex" toValue:StartIndex];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The ID associated with the user whose recommendations you want to retrieve.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecommendations Choreo.
 */
@implementation TMBNetflix_GetRecommendations_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Netflix.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of catalog title recommendations for a subscriber.
 */
@implementation TMBNetflix_GetRecommendations

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNetflix_GetRecommendations Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Netflix/GetRecommendations"] autorelease];
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
		TMBNetflix_GetRecommendations_ResultSet *results = [[[TMBNetflix_GetRecommendations_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecommendations Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNetflix_GetRecommendations_Inputs*)newInputSet {
		return [[[TMBNetflix_GetRecommendations_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetQueues Choreo.
 */
@implementation TMBNetflix_GetQueues_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) Set this to the maximum number of results to return. This number cannot be greater than 500. If you do not specify max_results, the default value is 25
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the SharedSecret input for this Choreo.
	*(required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
	 */
	-(void)setSharedSecret:(NSString*)SharedSecret {
		[super setInput:@"SharedSecret" toValue:SharedSecret];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Use this to specify the sort order for the queue entries. Sort order may be by queue_sequence, date_added, or alphabetical. The default sort order, if you do not specify one, is queue_sequence.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the StartIndex input for this Choreo.
	*(optional, integer) The offset number of the results from the query.
	 */
	-(void)setStartIndex:(NSString*)StartIndex {
		[super setInput:@"StartIndex" toValue:StartIndex];
	}

	/*!
	 * Set the value of the UpdatedMin input for this Choreo.
	*(optional, date) If set, the response will include only those items with updated timestamps greater than or equal to the timestamp provided. Specify this value either in Unix time format (seconds since epoch).
	 */
	-(void)setUpdatedMin:(NSString*)UpdatedMin {
		[super setInput:@"UpdatedMin" toValue:UpdatedMin];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The ID associated with the user whose queue information you want to retrieve.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetQueues Choreo.
 */
@implementation TMBNetflix_GetQueues_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Netflix.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of a subscriber's queues.
 */
@implementation TMBNetflix_GetQueues

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNetflix_GetQueues Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Netflix/GetQueues"] autorelease];
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
		TMBNetflix_GetQueues_ResultSet *results = [[[TMBNetflix_GetQueues_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetQueues Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNetflix_GetQueues_Inputs*)newInputSet {
		return [[[TMBNetflix_GetQueues_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchTitleCatalog Choreo.
 */
@implementation TMBNetflix_SearchTitleCatalog_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) Set this to the maximum number of results to return. This number cannot be greater than 500. If you do not specify max_results, the default value is 25
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the SharedSecret input for this Choreo.
	*(required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
	 */
	-(void)setSharedSecret:(NSString*)SharedSecret {
		[super setInput:@"SharedSecret" toValue:SharedSecret];
	}

	/*!
	 * Set the value of the StartIndex input for this Choreo.
	*(optional, integer) The offset number of the results from the query.
	 */
	-(void)setStartIndex:(NSString*)StartIndex {
		[super setInput:@"StartIndex" toValue:StartIndex];
	}

	/*!
	 * Set the value of the Term input for this Choreo.
	*(required, string) Enter a word or phrase to search for in the instant-watch catalog. The Netflix API searches for matching titles and synopses in the catalog.
	 */
	-(void)setTerm:(NSString*)Term {
		[super setInput:@"Term" toValue:Term];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchTitleCatalog Choreo.
 */
@implementation TMBNetflix_SearchTitleCatalog_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Netflix.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for a title in the instant-watch title catalog.
 */
@implementation TMBNetflix_SearchTitleCatalog

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNetflix_SearchTitleCatalog Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Netflix/SearchTitleCatalog"] autorelease];
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
		TMBNetflix_SearchTitleCatalog_ResultSet *results = [[[TMBNetflix_SearchTitleCatalog_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchTitleCatalog Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNetflix_SearchTitleCatalog_Inputs*)newInputSet {
		return [[[TMBNetflix_SearchTitleCatalog_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetInstantQueue Choreo.
 */
@implementation TMBNetflix_GetInstantQueue_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) Set this to the maximum number of results to return. This number cannot be greater than 500. If you do not specify max_results, the default value is 25
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the SharedSecret input for this Choreo.
	*(required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
	 */
	-(void)setSharedSecret:(NSString*)SharedSecret {
		[super setInput:@"SharedSecret" toValue:SharedSecret];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Use this to specify the sort order for the queue entries. Sort order may be by queue_sequence, date_added, or alphabetical. The default sort order, if you do not specify one, is queue_sequence.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the StartIndex input for this Choreo.
	*(optional, integer) The offset number of the results from the query.
	 */
	-(void)setStartIndex:(NSString*)StartIndex {
		[super setInput:@"StartIndex" toValue:StartIndex];
	}

	/*!
	 * Set the value of the UpdatedMin input for this Choreo.
	*(optional, date) If set, the response will include only those items with updated timestamps greater than or equal to the timestamp provided. Specify this value either in Unix time format (seconds since epoch).
	 */
	-(void)setUpdatedMin:(NSString*)UpdatedMin {
		[super setInput:@"UpdatedMin" toValue:UpdatedMin];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The ID associated with the user whose queue information you want to retrieve.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInstantQueue Choreo.
 */
@implementation TMBNetflix_GetInstantQueue_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Netflix.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the contents of a subscriber's instant-watch queue.
 */
@implementation TMBNetflix_GetInstantQueue

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNetflix_GetInstantQueue Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Netflix/GetInstantQueue"] autorelease];
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
		TMBNetflix_GetInstantQueue_ResultSet *results = [[[TMBNetflix_GetInstantQueue_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetInstantQueue Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNetflix_GetInstantQueue_Inputs*)newInputSet {
		return [[[TMBNetflix_GetInstantQueue_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBNetflix_OAuth_InitializeOAuth_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

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
	 * Set the value of the ForwardingURL input for this Choreo.
	*(optional, string) The URL that Temboo will redirect your users to after they grant access to your application.
	 */
	-(void)setForwardingURL:(NSString*)ForwardingURL {
		[super setInput:@"ForwardingURL" toValue:ForwardingURL];
	}

	/*!
	 * Set the value of the SharedSecret input for this Choreo.
	*(required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
	 */
	-(void)setSharedSecret:(NSString*)SharedSecret {
		[super setInput:@"SharedSecret" toValue:SharedSecret];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBNetflix_OAuth_InitializeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AuthorizationURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The authorization URL that the user needs to go to in order to grant access to your application.
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

	/*!
	 * Retrieve the value of the "OAuthTokenSecret" output from an execution of this Choreo.
	 * @return - NSString* (string) The temporary OAuth Token Secret that can be exchanged for permanent tokens using the FinalizeOAuth Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getOAuthTokenSecret {
		return [super getOutputByName:@"OAuthTokenSecret"];
	}
	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@implementation TMBNetflix_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNetflix_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Netflix/OAuth/InitializeOAuth"] autorelease];
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
		TMBNetflix_OAuth_InitializeOAuth_ResultSet *results = [[[TMBNetflix_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNetflix_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBNetflix_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBNetflix_OAuth_FinalizeOAuth_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

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
	*(required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the callback data after the user authorizes.
	 */
	-(void)setCallbackID:(NSString*)CallbackID {
		[super setInput:@"CallbackID" toValue:CallbackID];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuth Token Secret retrieved during the OAuth process. This is returned by the InitializeOAuth Choreo.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the SharedSecret input for this Choreo.
	*(required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
	 */
	-(void)setSharedSecret:(NSString*)SharedSecret {
		[super setInput:@"SharedSecret" toValue:SharedSecret];
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
@implementation TMBNetflix_OAuth_FinalizeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessTokenSecret" output from an execution of this Choreo.
	 * @return - NSString* (string) The Access Token Secret retrieved during the OAuth process.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessTokenSecret {
		return [super getOutputByName:@"AccessTokenSecret"];
	}

	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The Access Token retrieved during the OAuth process.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "UserID" output from an execution of this Choreo.
	 * @return - NSString* (string) The Netflix Subscriber ID (encrypted) associated with the access token that is being retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getUserID {
		return [super getOutputByName:@"UserID"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Netflix access token, token secret, and user ID for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@implementation TMBNetflix_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNetflix_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Netflix/OAuth/FinalizeOAuth"] autorelease];
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
		TMBNetflix_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBNetflix_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNetflix_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBNetflix_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetDiscQueue Choreo.
 */
@implementation TMBNetflix_GetDiscQueue_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) Set this to the maximum number of results to return. This number cannot be greater than 500. If you do not specify max_results, the default value is 25
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the SharedSecret input for this Choreo.
	*(required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
	 */
	-(void)setSharedSecret:(NSString*)SharedSecret {
		[super setInput:@"SharedSecret" toValue:SharedSecret];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Use this to specify the sort order for the queue entries. Sort order may be by queue_sequence, date_added, or alphabetical. The default sort order, if you do not specify one, is queue_sequence.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the StartIndex input for this Choreo.
	*(optional, integer) The offset number of the results from the query.
	 */
	-(void)setStartIndex:(NSString*)StartIndex {
		[super setInput:@"StartIndex" toValue:StartIndex];
	}

	/*!
	 * Set the value of the UpdatedMin input for this Choreo.
	*(optional, date) If set, the response will include only those items with updated timestamps greater than or equal to the timestamp provided. Specify this value either in Unix time format (seconds since epoch).
	 */
	-(void)setUpdatedMin:(NSString*)UpdatedMin {
		[super setInput:@"UpdatedMin" toValue:UpdatedMin];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The ID associated with the user whose queue information you want to retrieve.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDiscQueue Choreo.
 */
@implementation TMBNetflix_GetDiscQueue_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Netflix.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the contents of a subscriber's disc queue.
 */
@implementation TMBNetflix_GetDiscQueue

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNetflix_GetDiscQueue Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Netflix/GetDiscQueue"] autorelease];
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
		TMBNetflix_GetDiscQueue_ResultSet *results = [[[TMBNetflix_GetDiscQueue_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDiscQueue Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNetflix_GetDiscQueue_Inputs*)newInputSet {
		return [[[TMBNetflix_GetDiscQueue_Inputs alloc] init] autorelease];
	}
@end
	