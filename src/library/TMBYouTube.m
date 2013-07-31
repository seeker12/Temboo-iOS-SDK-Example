/*!
 * @TMBYouTube.m
 *
 * Execute Choreographies from the Temboo YouTube bundle.
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

#import "TMBYouTube.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ListMyActivities Choreo.
 */
@implementation TMBYouTube_Activities_ListMyActivities_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of one or more activity resource properties that the API response will include. Part names that you can pass are id, snippet, and contentDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the PublishedAfter input for this Choreo.
	*(optional, date) Returns only results created after the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
	 */
	-(void)setPublishedAfter:(NSString*)PublishedAfter {
		[super setInput:@"PublishedAfter" toValue:PublishedAfter];
	}

	/*!
	 * Set the value of the PublishedBefore input for this Choreo.
	*(optional, date) Returns only results created before the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
	 */
	-(void)setPublishedBefore:(NSString*)PublishedBefore {
		[super setInput:@"PublishedBefore" toValue:PublishedBefore];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMyActivities Choreo.
 */
@implementation TMBYouTube_Activities_ListMyActivities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of activity events for the authenticated user.
 */
@implementation TMBYouTube_Activities_ListMyActivities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Activities_ListMyActivities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Activities/ListMyActivities"] autorelease];
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
		TMBYouTube_Activities_ListMyActivities_ResultSet *results = [[[TMBYouTube_Activities_ListMyActivities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMyActivities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Activities_ListMyActivities_Inputs*)newInputSet {
		return [[[TMBYouTube_Activities_ListMyActivities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListChannelsByID Choreo.
 */
@implementation TMBYouTube_Channels_ListChannelsByID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ChannelID input for this Choreo.
	*(required, string) A comma-separated list of the YouTube channel ID(s) for the resource(s) that are being retrieved.
	 */
	-(void)setChannelID:(NSString*)ChannelID {
		[super setInput:@"ChannelID" toValue:ChannelID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of channels resource properties that the API response will include. Part names that you can pass are: id, snippet, contentDetails, statistics, and topicDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListChannelsByID Choreo.
 */
@implementation TMBYouTube_Channels_ListChannelsByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of channels that match the list of IDs provided.
 */
@implementation TMBYouTube_Channels_ListChannelsByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Channels_ListChannelsByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Channels/ListChannelsByID"] autorelease];
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
		TMBYouTube_Channels_ListChannelsByID_ResultSet *results = [[[TMBYouTube_Channels_ListChannelsByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListChannelsByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Channels_ListChannelsByID_Inputs*)newInputSet {
		return [[[TMBYouTube_Channels_ListChannelsByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMyChannels Choreo.
 */
@implementation TMBYouTube_Channels_ListMyChannels_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of channels resource properties that the API response will include. Part names that you can pass are: id, snippet, contentDetails, statistics, and topicDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMyChannels Choreo.
 */
@implementation TMBYouTube_Channels_ListMyChannels_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of channels owned by the authenticated user.
 */
@implementation TMBYouTube_Channels_ListMyChannels

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Channels_ListMyChannels Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Channels/ListMyChannels"] autorelease];
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
		TMBYouTube_Channels_ListMyChannels_ResultSet *results = [[[TMBYouTube_Channels_ListMyChannels_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMyChannels Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Channels_ListMyChannels_Inputs*)newInputSet {
		return [[[TMBYouTube_Channels_ListMyChannels_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListGuideCategoriesByID Choreo.
 */
@implementation TMBYouTube_GuideCategories_ListGuideCategoriesByID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the GuideCategoryID input for this Choreo.
	*(conditional, string) A comma-separated list of the YouTube channel category ID(s) for the resource(s) that are being retrieved.
	 */
	-(void)setGuideCategoryID:(NSString*)GuideCategoryID {
		[super setInput:@"GuideCategoryID" toValue:GuideCategoryID];
	}

	/*!
	 * Set the value of the H1 input for this Choreo.
	*(optional, string) The hl parameter specifies the language that should be used for text values in the API response. The default value is en_US.
	 */
	-(void)setH1:(NSString*)H1 {
		[super setInput:@"H1" toValue:H1];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of one or more guideCategory resource properties that the API response will include. Valid values are: id and snippet.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGuideCategoriesByID Choreo.
 */
@implementation TMBYouTube_GuideCategories_ListGuideCategoriesByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of categories that match the IDs provided.
 */
@implementation TMBYouTube_GuideCategories_ListGuideCategoriesByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_GuideCategories_ListGuideCategoriesByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/GuideCategories/ListGuideCategoriesByID"] autorelease];
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
		TMBYouTube_GuideCategories_ListGuideCategoriesByID_ResultSet *results = [[[TMBYouTube_GuideCategories_ListGuideCategoriesByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListGuideCategoriesByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_GuideCategories_ListGuideCategoriesByID_Inputs*)newInputSet {
		return [[[TMBYouTube_GuideCategories_ListGuideCategoriesByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteSubscription Choreo.
 */
@implementation TMBYouTube_Subscriptions_DeleteSubscription_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the SubscriptionID input for this Choreo.
	*(required, string) The id of the subscription to delete.
	 */
	-(void)setSubscriptionID:(NSString*)SubscriptionID {
		[super setInput:@"SubscriptionID" toValue:SubscriptionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteSubscription Choreo.
 */
@implementation TMBYouTube_Subscriptions_DeleteSubscription_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Deletes a YouTube subscription.
 */
@implementation TMBYouTube_Subscriptions_DeleteSubscription

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Subscriptions_DeleteSubscription Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Subscriptions/DeleteSubscription"] autorelease];
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
		TMBYouTube_Subscriptions_DeleteSubscription_ResultSet *results = [[[TMBYouTube_Subscriptions_DeleteSubscription_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteSubscription Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Subscriptions_DeleteSubscription_Inputs*)newInputSet {
		return [[[TMBYouTube_Subscriptions_DeleteSubscription_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListActivitiesByChannel Choreo.
 */
@implementation TMBYouTube_Activities_ListActivitiesByChannel_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ChannelID input for this Choreo.
	*(required, string) The id of the channel to list activities for.
	 */
	-(void)setChannelID:(NSString*)ChannelID {
		[super setInput:@"ChannelID" toValue:ChannelID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of one or more activity resource properties that the API response will include. Part names that you can pass are id, snippet, and contentDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the PublishedAfter input for this Choreo.
	*(optional, date) Returns only results created after the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
	 */
	-(void)setPublishedAfter:(NSString*)PublishedAfter {
		[super setInput:@"PublishedAfter" toValue:PublishedAfter];
	}

	/*!
	 * Set the value of the PublishedBefore input for this Choreo.
	*(optional, date) Returns only results created before the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
	 */
	-(void)setPublishedBefore:(NSString*)PublishedBefore {
		[super setInput:@"PublishedBefore" toValue:PublishedBefore];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListActivitiesByChannel Choreo.
 */
@implementation TMBYouTube_Activities_ListActivitiesByChannel_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of activities for a specified channel.
 */
@implementation TMBYouTube_Activities_ListActivitiesByChannel

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Activities_ListActivitiesByChannel Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Activities/ListActivitiesByChannel"] autorelease];
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
		TMBYouTube_Activities_ListActivitiesByChannel_ResultSet *results = [[[TMBYouTube_Activities_ListActivitiesByChannel_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListActivitiesByChannel Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Activities_ListActivitiesByChannel_Inputs*)newInputSet {
		return [[[TMBYouTube_Activities_ListActivitiesByChannel_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePlaylist Choreo.
 */
@implementation TMBYouTube_Playlists_UpdatePlaylist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) The playlist's description.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of fields that are being set and that will be returned in the response (i.e. snippet,status).
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the PlaylistID input for this Choreo.
	*(required, string) The id of the playlist to update.
	 */
	-(void)setPlaylistID:(NSString*)PlaylistID {
		[super setInput:@"PlaylistID" toValue:PlaylistID];
	}

	/*!
	 * Set the value of the PrivacyStatus input for this Choreo.
	*(optional, string) The playlist's privacy status. Valid values are: private or public.
	 */
	-(void)setPrivacyStatus:(NSString*)PrivacyStatus {
		[super setInput:@"PrivacyStatus" toValue:PrivacyStatus];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the playlist.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePlaylist Choreo.
 */
@implementation TMBYouTube_Playlists_UpdatePlaylist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates a playlist.
 */
@implementation TMBYouTube_Playlists_UpdatePlaylist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Playlists_UpdatePlaylist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Playlists/UpdatePlaylist"] autorelease];
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
		TMBYouTube_Playlists_UpdatePlaylist_ResultSet *results = [[[TMBYouTube_Playlists_UpdatePlaylist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdatePlaylist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Playlists_UpdatePlaylist_Inputs*)newInputSet {
		return [[[TMBYouTube_Playlists_UpdatePlaylist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListSubscriptionsByID Choreo.
 */
@implementation TMBYouTube_Subscriptions_ListSubscriptionsByID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the ForChannelId input for this Choreo.
	*(optional, string) A comma-separated list of channel IDs. The response will include only subscription matching these channels.
	 */
	-(void)setForChannelId:(NSString*)ForChannelId {
		[super setInput:@"ForChannelId" toValue:ForChannelId];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) Indicates how the results are sorted. Valid values are: alphabetical, relevance, or unread.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of fields to include. Valid values are: id, snippet, and contentDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the SubscriptionID input for this Choreo.
	*(required, string) A comma-separated list of the YouTube subscription ID(s) for the resource(s) that are being retrieved.
	 */
	-(void)setSubscriptionID:(NSString*)SubscriptionID {
		[super setInput:@"SubscriptionID" toValue:SubscriptionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSubscriptionsByID Choreo.
 */
@implementation TMBYouTube_Subscriptions_ListSubscriptionsByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of subscription that match the provided IDs.
 */
@implementation TMBYouTube_Subscriptions_ListSubscriptionsByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Subscriptions_ListSubscriptionsByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Subscriptions/ListSubscriptionsByID"] autorelease];
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
		TMBYouTube_Subscriptions_ListSubscriptionsByID_ResultSet *results = [[[TMBYouTube_Subscriptions_ListSubscriptionsByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListSubscriptionsByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Subscriptions_ListSubscriptionsByID_Inputs*)newInputSet {
		return [[[TMBYouTube_Subscriptions_ListSubscriptionsByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPlaylistsByID Choreo.
 */
@implementation TMBYouTube_Playlists_ListPlaylistsByID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of playlist resource properties that the API response will include. Part names that you can pass are: id, snippet, and status.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the PlaylistID input for this Choreo.
	*(required, string) A comma-separated list of the YouTube playlist ID(s) for the resource(s) that are being retrieved.
	 */
	-(void)setPlaylistID:(NSString*)PlaylistID {
		[super setInput:@"PlaylistID" toValue:PlaylistID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPlaylistsByID Choreo.
 */
@implementation TMBYouTube_Playlists_ListPlaylistsByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a collection of playlists that match the provided IDs.
 */
@implementation TMBYouTube_Playlists_ListPlaylistsByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Playlists_ListPlaylistsByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Playlists/ListPlaylistsByID"] autorelease];
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
		TMBYouTube_Playlists_ListPlaylistsByID_ResultSet *results = [[[TMBYouTube_Playlists_ListPlaylistsByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPlaylistsByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Playlists_ListPlaylistsByID_Inputs*)newInputSet {
		return [[[TMBYouTube_Playlists_ListPlaylistsByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SubscribeToChannel Choreo.
 */
@implementation TMBYouTube_Subscriptions_SubscribeToChannel_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ChannelID input for this Choreo.
	*(required, string) The id of the channel to subscribe to.
	 */
	-(void)setChannelID:(NSString*)ChannelID {
		[super setInput:@"ChannelID" toValue:ChannelID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of fields that are being set and that will be returned in the response (i.e. snippet,contentDetails).
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SubscribeToChannel Choreo.
 */
@implementation TMBYouTube_Subscriptions_SubscribeToChannel_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Adds a specified channel to the authenticated user's subscriptions.
 */
@implementation TMBYouTube_Subscriptions_SubscribeToChannel

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Subscriptions_SubscribeToChannel Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Subscriptions/SubscribeToChannel"] autorelease];
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
		TMBYouTube_Subscriptions_SubscribeToChannel_ResultSet *results = [[[TMBYouTube_Subscriptions_SubscribeToChannel_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SubscribeToChannel Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Subscriptions_SubscribeToChannel_Inputs*)newInputSet {
		return [[[TMBYouTube_Subscriptions_SubscribeToChannel_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListCategoriesByID Choreo.
 */
@implementation TMBYouTube_VideoCategories_ListCategoriesByID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CategoryID input for this Choreo.
	*(conditional, string) A comma-separated list of the YouTube video category ID(s) that are being retrieved.
	 */
	-(void)setCategoryID:(NSString*)CategoryID {
		[super setInput:@"CategoryID" toValue:CategoryID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the H1 input for this Choreo.
	*(optional, string) The hl parameter specifies the language that should be used for text values in the API response. The default value is en_US.
	 */
	-(void)setH1:(NSString*)H1 {
		[super setInput:@"H1" toValue:H1];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies the videoCategory resource parts that the API response will include. Valid values are: id and snippet.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCategoriesByID Choreo.
 */
@implementation TMBYouTube_VideoCategories_ListCategoriesByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of categories that match the provided IDs.
 */
@implementation TMBYouTube_VideoCategories_ListCategoriesByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_VideoCategories_ListCategoriesByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/VideoCategories/ListCategoriesByID"] autorelease];
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
		TMBYouTube_VideoCategories_ListCategoriesByID_ResultSet *results = [[[TMBYouTube_VideoCategories_ListCategoriesByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListCategoriesByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_VideoCategories_ListCategoriesByID_Inputs*)newInputSet {
		return [[[TMBYouTube_VideoCategories_ListCategoriesByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InsertPlaylist Choreo.
 */
@implementation TMBYouTube_Playlists_InsertPlaylist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) The playlist's description.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of fields that are being set and that will be returned in the response (i.e. snippet,status).
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the PrivacyStatus input for this Choreo.
	*(optional, string) The playlist's privacy status. Valid values are: private or public.
	 */
	-(void)setPrivacyStatus:(NSString*)PrivacyStatus {
		[super setInput:@"PrivacyStatus" toValue:PrivacyStatus];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The title of the playlist.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertPlaylist Choreo.
 */
@implementation TMBYouTube_Playlists_InsertPlaylist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a playlist.
 */
@implementation TMBYouTube_Playlists_InsertPlaylist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Playlists_InsertPlaylist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Playlists/InsertPlaylist"] autorelease];
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
		TMBYouTube_Playlists_InsertPlaylist_ResultSet *results = [[[TMBYouTube_Playlists_InsertPlaylist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InsertPlaylist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Playlists_InsertPlaylist_Inputs*)newInputSet {
		return [[[TMBYouTube_Playlists_InsertPlaylist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMySubscriptions Choreo.
 */
@implementation TMBYouTube_Subscriptions_ListMySubscriptions_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the ForChannelId input for this Choreo.
	*(optional, string) A comma-separated list of channel IDs. The response will include only subscription matching these channels.
	 */
	-(void)setForChannelId:(NSString*)ForChannelId {
		[super setInput:@"ForChannelId" toValue:ForChannelId];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) Indicates how the results are sorted. Valid values are: alphabetical, relevance, or unread.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of fields to include. Valid values are: id, snippet, and contentDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMySubscriptions Choreo.
 */
@implementation TMBYouTube_Subscriptions_ListMySubscriptions_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of the authenticated user's subscriptions.
 */
@implementation TMBYouTube_Subscriptions_ListMySubscriptions

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Subscriptions_ListMySubscriptions Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Subscriptions/ListMySubscriptions"] autorelease];
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
		TMBYouTube_Subscriptions_ListMySubscriptions_ResultSet *results = [[[TMBYouTube_Subscriptions_ListMySubscriptions_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMySubscriptions Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Subscriptions_ListMySubscriptions_Inputs*)newInputSet {
		return [[[TMBYouTube_Subscriptions_ListMySubscriptions_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPlaylistsByChannel Choreo.
 */
@implementation TMBYouTube_Playlists_ListPlaylistsByChannel_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ChannelID input for this Choreo.
	*(required, string) Indicates that only the specified channel's playlists should be returned.
	 */
	-(void)setChannelID:(NSString*)ChannelID {
		[super setInput:@"ChannelID" toValue:ChannelID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of playlist resource properties that the API response will include. Part names that you can pass are: id, snippet, and status.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPlaylistsByChannel Choreo.
 */
@implementation TMBYouTube_Playlists_ListPlaylistsByChannel_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a collection of playlists associated with a specified channel.
 */
@implementation TMBYouTube_Playlists_ListPlaylistsByChannel

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Playlists_ListPlaylistsByChannel Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Playlists/ListPlaylistsByChannel"] autorelease];
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
		TMBYouTube_Playlists_ListPlaylistsByChannel_ResultSet *results = [[[TMBYouTube_Playlists_ListPlaylistsByChannel_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPlaylistsByChannel Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Playlists_ListPlaylistsByChannel_Inputs*)newInputSet {
		return [[[TMBYouTube_Playlists_ListPlaylistsByChannel_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InsertItem Choreo.
 */
@implementation TMBYouTube_PlaylistItems_InsertItem_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of fields that are being set and that will be returned in the response. Part names that can be passed are: snippet and contentDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the PlaylistID input for this Choreo.
	*(required, string) The id of the playlist to add an item to.
	 */
	-(void)setPlaylistID:(NSString*)PlaylistID {
		[super setInput:@"PlaylistID" toValue:PlaylistID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the VideoID input for this Choreo.
	*(required, string) The id of the video to add to the playlist.
	 */
	-(void)setVideoID:(NSString*)VideoID {
		[super setInput:@"VideoID" toValue:VideoID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertItem Choreo.
 */
@implementation TMBYouTube_PlaylistItems_InsertItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a new item within a playlist.
 */
@implementation TMBYouTube_PlaylistItems_InsertItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_PlaylistItems_InsertItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/PlaylistItems/InsertItem"] autorelease];
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
		TMBYouTube_PlaylistItems_InsertItem_ResultSet *results = [[[TMBYouTube_PlaylistItems_InsertItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InsertItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_PlaylistItems_InsertItem_Inputs*)newInputSet {
		return [[[TMBYouTube_PlaylistItems_InsertItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMyPlaylists Choreo.
 */
@implementation TMBYouTube_Playlists_ListMyPlaylists_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of playlist resource properties that the API response will include. Part names that you can pass are: id, snippet, and status.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMyPlaylists Choreo.
 */
@implementation TMBYouTube_Playlists_ListMyPlaylists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a collection of playlists owned by the authenticated user.
 */
@implementation TMBYouTube_Playlists_ListMyPlaylists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Playlists_ListMyPlaylists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Playlists/ListMyPlaylists"] autorelease];
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
		TMBYouTube_Playlists_ListMyPlaylists_ResultSet *results = [[[TMBYouTube_Playlists_ListMyPlaylists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMyPlaylists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Playlists_ListMyPlaylists_Inputs*)newInputSet {
		return [[[TMBYouTube_Playlists_ListMyPlaylists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteVideo Choreo.
 */
@implementation TMBYouTube_Videos_DeleteVideo_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the VideoID input for this Choreo.
	*(required, string) The id of the video to delete.
	 */
	-(void)setVideoID:(NSString*)VideoID {
		[super setInput:@"VideoID" toValue:VideoID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteVideo Choreo.
 */
@implementation TMBYouTube_Videos_DeleteVideo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Deletes a YouTube video.
 */
@implementation TMBYouTube_Videos_DeleteVideo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Videos_DeleteVideo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Videos/DeleteVideo"] autorelease];
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
		TMBYouTube_Videos_DeleteVideo_ResultSet *results = [[[TMBYouTube_Videos_DeleteVideo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteVideo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Videos_DeleteVideo_Inputs*)newInputSet {
		return [[[TMBYouTube_Videos_DeleteVideo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListSubscriptionsByChannel Choreo.
 */
@implementation TMBYouTube_Subscriptions_ListSubscriptionsByChannel_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ChannelID input for this Choreo.
	*(required, string) Indicates that the API only return this channel's subscriptions.
	 */
	-(void)setChannelID:(NSString*)ChannelID {
		[super setInput:@"ChannelID" toValue:ChannelID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the ForChannelId input for this Choreo.
	*(optional, string) A comma-separated list of channel IDs. The response will include only subscription matching these channels.
	 */
	-(void)setForChannelId:(NSString*)ForChannelId {
		[super setInput:@"ForChannelId" toValue:ForChannelId];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) Indicates how the results are sorted. Valid values are: alphabetical, relevance, or unread.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of fields to include. Valid values are: id, snippet, and contentDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSubscriptionsByChannel Choreo.
 */
@implementation TMBYouTube_Subscriptions_ListSubscriptionsByChannel_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of subscription for a specified channel.
 */
@implementation TMBYouTube_Subscriptions_ListSubscriptionsByChannel

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Subscriptions_ListSubscriptionsByChannel Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Subscriptions/ListSubscriptionsByChannel"] autorelease];
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
		TMBYouTube_Subscriptions_ListSubscriptionsByChannel_ResultSet *results = [[[TMBYouTube_Subscriptions_ListSubscriptionsByChannel_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListSubscriptionsByChannel Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Subscriptions_ListSubscriptionsByChannel_Inputs*)newInputSet {
		return [[[TMBYouTube_Subscriptions_ListSubscriptionsByChannel_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListChannelsByCategory Choreo.
 */
@implementation TMBYouTube_Channels_ListChannelsByCategory_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CategoryID input for this Choreo.
	*(required, string) The id of a category. Indicates that only channels associated with a particular category should be returned.
	 */
	-(void)setCategoryID:(NSString*)CategoryID {
		[super setInput:@"CategoryID" toValue:CategoryID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of channels resource properties that the API response will include. Part names that you can pass are: id, snippet, contentDetails, statistics, and topicDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListChannelsByCategory Choreo.
 */
@implementation TMBYouTube_Channels_ListChannelsByCategory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of channels associated with a particular category.
 */
@implementation TMBYouTube_Channels_ListChannelsByCategory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Channels_ListChannelsByCategory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Channels/ListChannelsByCategory"] autorelease];
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
		TMBYouTube_Channels_ListChannelsByCategory_ResultSet *results = [[[TMBYouTube_Channels_ListChannelsByCategory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListChannelsByCategory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Channels_ListChannelsByCategory_Inputs*)newInputSet {
		return [[[TMBYouTube_Channels_ListChannelsByCategory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMySubscribers Choreo.
 */
@implementation TMBYouTube_Channels_ListMySubscribers_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of channels resource properties that the API response will include. Part names that you can pass are: id, snippet, contentDetails, statistics, and topicDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMySubscribers Choreo.
 */
@implementation TMBYouTube_Channels_ListMySubscribers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of channels that have subscribed to the authenticated user's channel.
 */
@implementation TMBYouTube_Channels_ListMySubscribers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Channels_ListMySubscribers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Channels/ListMySubscribers"] autorelease];
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
		TMBYouTube_Channels_ListMySubscribers_ResultSet *results = [[[TMBYouTube_Channels_ListMySubscribers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMySubscribers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Channels_ListMySubscribers_Inputs*)newInputSet {
		return [[[TMBYouTube_Channels_ListMySubscribers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListGuideCategoriesByRegion Choreo.
 */
@implementation TMBYouTube_GuideCategories_ListGuideCategoriesByRegion_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the H1 input for this Choreo.
	*(optional, string) The hl parameter specifies the language that should be used for text values in the API response. The default value is en_US.
	 */
	-(void)setH1:(NSString*)H1 {
		[super setInput:@"H1" toValue:H1];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of one or more guideCategory resource properties that the API response will include. Valid values are: id and snippet.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the RegionCode input for this Choreo.
	*(optional, string) Indicates to return the list of guide categories available in the specified country. The parameter value is an ISO 3166-1 alpha-2 country code. Defaults to US.
	 */
	-(void)setRegionCode:(NSString*)RegionCode {
		[super setInput:@"RegionCode" toValue:RegionCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGuideCategoriesByRegion Choreo.
 */
@implementation TMBYouTube_GuideCategories_ListGuideCategoriesByRegion_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of guide categories available in the specified country.
 */
@implementation TMBYouTube_GuideCategories_ListGuideCategoriesByRegion

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_GuideCategories_ListGuideCategoriesByRegion Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/GuideCategories/ListGuideCategoriesByRegion"] autorelease];
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
		TMBYouTube_GuideCategories_ListGuideCategoriesByRegion_ResultSet *results = [[[TMBYouTube_GuideCategories_ListGuideCategoriesByRegion_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListGuideCategoriesByRegion Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_GuideCategories_ListGuideCategoriesByRegion_Inputs*)newInputSet {
		return [[[TMBYouTube_GuideCategories_ListGuideCategoriesByRegion_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListVideosByID Choreo.
 */
@implementation TMBYouTube_Videos_ListVideosByID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of fields to include. Valid values are: id, snippet, contentDetails, fileDetails, player, processingDetails, recordingDetails, statistics, status, suggestions, and topicDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the VideoID input for this Choreo.
	*(required, string) A comma-separated list of the YouTube video ID(s) that are being retrieved.
	 */
	-(void)setVideoID:(NSString*)VideoID {
		[super setInput:@"VideoID" toValue:VideoID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListVideosByID Choreo.
 */
@implementation TMBYouTube_Videos_ListVideosByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of YouTube videos that match the IDs provided.
 */
@implementation TMBYouTube_Videos_ListVideosByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Videos_ListVideosByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Videos/ListVideosByID"] autorelease];
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
		TMBYouTube_Videos_ListVideosByID_ResultSet *results = [[[TMBYouTube_Videos_ListVideosByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListVideosByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Videos_ListVideosByID_Inputs*)newInputSet {
		return [[[TMBYouTube_Videos_ListVideosByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InsertActivity Choreo.
 */
@implementation TMBYouTube_Activities_InsertActivity_Inputs

	/*!
	 * Set the value of the ActivityMetadata input for this Choreo.
	*(required, json) A JSON representation of the activity resource to create. See documentation for examples.
	 */
	-(void)setActivityMetadata:(NSString*)ActivityMetadata {
		[super setInput:@"ActivityMetadata" toValue:ActivityMetadata];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of fields that are being set and that will be returned in the response. Part names that can be passed are: snippet and contentDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertActivity Choreo.
 */
@implementation TMBYouTube_Activities_InsertActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Posts a bulletin for a specific channel.
 */
@implementation TMBYouTube_Activities_InsertActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Activities_InsertActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Activities/InsertActivity"] autorelease];
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
		TMBYouTube_Activities_InsertActivity_ResultSet *results = [[[TMBYouTube_Activities_InsertActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InsertActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Activities_InsertActivity_Inputs*)newInputSet {
		return [[[TMBYouTube_Activities_InsertActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListHomePageActivities Choreo.
 */
@implementation TMBYouTube_Activities_ListHomePageActivities_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of one or more activity resource properties that the API response will include. Part names that you can pass are id, snippet, and contentDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the PublishedAfter input for this Choreo.
	*(optional, date) Returns only results created after the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
	 */
	-(void)setPublishedAfter:(NSString*)PublishedAfter {
		[super setInput:@"PublishedAfter" toValue:PublishedAfter];
	}

	/*!
	 * Set the value of the PublishedBefore input for this Choreo.
	*(optional, date) Returns only results created before the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
	 */
	-(void)setPublishedBefore:(NSString*)PublishedBefore {
		[super setInput:@"PublishedBefore" toValue:PublishedBefore];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListHomePageActivities Choreo.
 */
@implementation TMBYouTube_Activities_ListHomePageActivities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns an activity feed that displays on the YouTube home page for the currently authenticated user.
 */
@implementation TMBYouTube_Activities_ListHomePageActivities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Activities_ListHomePageActivities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Activities/ListHomePageActivities"] autorelease];
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
		TMBYouTube_Activities_ListHomePageActivities_ResultSet *results = [[[TMBYouTube_Activities_ListHomePageActivities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListHomePageActivities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Activities_ListHomePageActivities_Inputs*)newInputSet {
		return [[[TMBYouTube_Activities_ListHomePageActivities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateVideo Choreo.
 */
@implementation TMBYouTube_Videos_UpdateVideo_Inputs

	/*!
	 * Set the value of the VideoMetadata input for this Choreo.
	*(required, json) A JSON representation of the video resource containing fields to update. The id key for the video is requried for updates. See documentation for examples.
	 */
	-(void)setVideoMetadata:(NSString*)VideoMetadata {
		[super setInput:@"VideoMetadata" toValue:VideoMetadata];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) A comma-separated list of fields that are being set and that will be returned in the response (i.e. snippet,status).
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateVideo Choreo.
 */
@implementation TMBYouTube_Videos_UpdateVideo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates a video's metadata.
 */
@implementation TMBYouTube_Videos_UpdateVideo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Videos_UpdateVideo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Videos/UpdateVideo"] autorelease];
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
		TMBYouTube_Videos_UpdateVideo_ResultSet *results = [[[TMBYouTube_Videos_UpdateVideo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateVideo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Videos_UpdateVideo_Inputs*)newInputSet {
		return [[[TMBYouTube_Videos_UpdateVideo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListCategoriesByRegion Choreo.
 */
@implementation TMBYouTube_VideoCategories_ListCategoriesByRegion_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the H1 input for this Choreo.
	*(optional, string) The hl parameter specifies the language that should be used for text values in the API response. The default value is en_US.
	 */
	-(void)setH1:(NSString*)H1 {
		[super setInput:@"H1" toValue:H1];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies the videoCategory resource parts that the API response will include. Valid values are: id and snippet.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the RegionCode input for this Choreo.
	*(conditional, string) Indicates to return the list of video categories available in the specified country. The parameter value is an ISO 3166-1 alpha-2 country code.
	 */
	-(void)setRegionCode:(NSString*)RegionCode {
		[super setInput:@"RegionCode" toValue:RegionCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCategoriesByRegion Choreo.
 */
@implementation TMBYouTube_VideoCategories_ListCategoriesByRegion_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of categories available in the specified country.
 */
@implementation TMBYouTube_VideoCategories_ListCategoriesByRegion

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_VideoCategories_ListCategoriesByRegion Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/VideoCategories/ListCategoriesByRegion"] autorelease];
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
		TMBYouTube_VideoCategories_ListCategoriesByRegion_ResultSet *results = [[[TMBYouTube_VideoCategories_ListCategoriesByRegion_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListCategoriesByRegion Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_VideoCategories_ListCategoriesByRegion_Inputs*)newInputSet {
		return [[[TMBYouTube_VideoCategories_ListCategoriesByRegion_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeletePlaylist Choreo.
 */
@implementation TMBYouTube_Playlists_DeletePlaylist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the PlaylistID input for this Choreo.
	*(required, string) The id of the playlist to delete.
	 */
	-(void)setPlaylistID:(NSString*)PlaylistID {
		[super setInput:@"PlaylistID" toValue:PlaylistID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePlaylist Choreo.
 */
@implementation TMBYouTube_Playlists_DeletePlaylist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Google.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Deletes a YouTube playlist.
 */
@implementation TMBYouTube_Playlists_DeletePlaylist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Playlists_DeletePlaylist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Playlists/DeletePlaylist"] autorelease];
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
		TMBYouTube_Playlists_DeletePlaylist_ResultSet *results = [[[TMBYouTube_Playlists_DeletePlaylist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeletePlaylist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Playlists_DeletePlaylist_Inputs*)newInputSet {
		return [[[TMBYouTube_Playlists_DeletePlaylist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListSearchResults Choreo.
 */
@implementation TMBYouTube_Search_ListSearchResults_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ChannelID input for this Choreo.
	*(optional, string) Indicates that the response should only contain resources created by this channel.
	 */
	-(void)setChannelID:(NSString*)ChannelID {
		[super setInput:@"ChannelID" toValue:ChannelID];
	}

	/*!
	 * Set the value of the ChannelType input for this Choreo.
	*(optional, string) Restricts a search to a particular type of channel. Valid values are: "any" (returns all channels) and "show" (only retrieves shows).
	 */
	-(void)setChannelType:(NSString*)ChannelType {
		[super setInput:@"ChannelType" toValue:ChannelType];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(optional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(optional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) Indicates how the results are sorted. Valid values are: date, rating, relevance, and viewCount.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of one or more search resource properties that the API response will include. Part names that you can pass are 'id' and 'snippet' (the default).
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the PublishedAfter input for this Choreo.
	*(optional, date) Returns only results created after the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
	 */
	-(void)setPublishedAfter:(NSString*)PublishedAfter {
		[super setInput:@"PublishedAfter" toValue:PublishedAfter];
	}

	/*!
	 * Set the value of the PublishedBefore input for this Choreo.
	*(optional, date) Returns only results created before the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
	 */
	-(void)setPublishedBefore:(NSString*)PublishedBefore {
		[super setInput:@"PublishedBefore" toValue:PublishedBefore];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(conditional, string) A query string for searching videos.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(optional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the RegionCode input for this Choreo.
	*(optional, string) Returns results for the specified country. The parameter value is an ISO 3166-1 alpha-2 country code.
	 */
	-(void)setRegionCode:(NSString*)RegionCode {
		[super setInput:@"RegionCode" toValue:RegionCode];
	}

	/*!
	 * Set the value of the RelatedToVideoID input for this Choreo.
	*(optional, string) Retrieves a list of videos that are related to this video id. When using this parameter, the Type parameter must be set to video.
	 */
	-(void)setRelatedToVideoID:(NSString*)RelatedToVideoID {
		[super setInput:@"RelatedToVideoID" toValue:RelatedToVideoID];
	}

	/*!
	 * Set the value of the TopicID input for this Choreo.
	*(optional, string) Returns only results associated with the specified topic.
	 */
	-(void)setTopicID:(NSString*)TopicID {
		[super setInput:@"TopicID" toValue:TopicID];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) Restricts a search query to only retrieve a particular type of resource. The default value is: video,channel,playlist.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the VideoCaption input for this Choreo.
	*(optional, string) Returns filtered results based on whether videos have captions. Valid values are: any (the default), closedCaption (only returns videos with captions), or none (only returns videos without captions).
	 */
	-(void)setVideoCaption:(NSString*)VideoCaption {
		[super setInput:@"VideoCaption" toValue:VideoCaption];
	}

	/*!
	 * Set the value of the VideoCategoryID input for this Choreo.
	*(optional, string) Filters video search results based on their category.
	 */
	-(void)setVideoCategoryID:(NSString*)VideoCategoryID {
		[super setInput:@"VideoCategoryID" toValue:VideoCategoryID];
	}

	/*!
	 * Set the value of the VideoDefinition input for this Choreo.
	*(optional, string) Filters video results based high or standard definition. Valid values are: any, high, or standard.
	 */
	-(void)setVideoDefinition:(NSString*)VideoDefinition {
		[super setInput:@"VideoDefinition" toValue:VideoDefinition];
	}

	/*!
	 * Set the value of the VideoDimension input for this Choreo.
	*(optional, string) Restrict a search to only retrieve 2D or 3D videos. Valid values are: 2d, 3d, or any.
	 */
	-(void)setVideoDimension:(NSString*)VideoDimension {
		[super setInput:@"VideoDimension" toValue:VideoDimension];
	}

	/*!
	 * Set the value of the VideoDuration input for this Choreo.
	*(optional, string) Filters search results based on the video duration. Valid values are: any, long, medium, and short.
	 */
	-(void)setVideoDuration:(NSString*)VideoDuration {
		[super setInput:@"VideoDuration" toValue:VideoDuration];
	}

	/*!
	 * Set the value of the VideoEmbeddable input for this Choreo.
	*(optional, string) Filters search results to include only videos that can be embedded into a webpage. Valid values are: any (the default) or true (which will enable this filter).
	 */
	-(void)setVideoEmbeddable:(NSString*)VideoEmbeddable {
		[super setInput:@"VideoEmbeddable" toValue:VideoEmbeddable];
	}

	/*!
	 * Set the value of the VideoLicense input for this Choreo.
	*(optional, string) Filters search results to only include videos with a particular license. Valid values are: any, creativeCommon, and youtube.
	 */
	-(void)setVideoLicense:(NSString*)VideoLicense {
		[super setInput:@"VideoLicense" toValue:VideoLicense];
	}

	/*!
	 * Set the value of the VideoSyndicated input for this Choreo.
	*(optional, string) Filters search results for videos that can be played outside of youtube.com. Valid values are: any (the default) or true (which will enable this filter).
	 */
	-(void)setVideoSyndicated:(NSString*)VideoSyndicated {
		[super setInput:@"VideoSyndicated" toValue:VideoSyndicated];
	}

	/*!
	 * Set the value of the VideoType input for this Choreo.
	*(optional, string) Filters search results to a particular type of videos. Valid values are: any, episode, and movie.
	 */
	-(void)setVideoType:(NSString*)VideoType {
		[super setInput:@"VideoType" toValue:VideoType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSearchResults Choreo.
 */
@implementation TMBYouTube_Search_ListSearchResults_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a list of search results that match the specified query parameters.
 */
@implementation TMBYouTube_Search_ListSearchResults

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_Search_ListSearchResults Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/Search/ListSearchResults"] autorelease];
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
		TMBYouTube_Search_ListSearchResults_ResultSet *results = [[[TMBYouTube_Search_ListSearchResults_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListSearchResults Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_Search_ListSearchResults_Inputs*)newInputSet {
		return [[[TMBYouTube_Search_ListSearchResults_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListItemsByPlaylist Choreo.
 */
@implementation TMBYouTube_PlaylistItems_ListItemsByPlaylist_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of playlistItem resource properties that the API response will include. Part names that you can pass are: id, snippet, and contentDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the PlaylistID input for this Choreo.
	*(conditional, string) A unique ID of the playlist for which you want to retrieve playlist items.
	 */
	-(void)setPlaylistID:(NSString*)PlaylistID {
		[super setInput:@"PlaylistID" toValue:PlaylistID];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the VideoID input for this Choreo.
	*(optional, string) Indicates that only the playlist items that contain the specified video should be returned.
	 */
	-(void)setVideoID:(NSString*)VideoID {
		[super setInput:@"VideoID" toValue:VideoID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListItemsByPlaylist Choreo.
 */
@implementation TMBYouTube_PlaylistItems_ListItemsByPlaylist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a collection of playlist items within a specific playlist.
 */
@implementation TMBYouTube_PlaylistItems_ListItemsByPlaylist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_PlaylistItems_ListItemsByPlaylist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/PlaylistItems/ListItemsByPlaylist"] autorelease];
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
		TMBYouTube_PlaylistItems_ListItemsByPlaylist_ResultSet *results = [[[TMBYouTube_PlaylistItems_ListItemsByPlaylist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListItemsByPlaylist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_PlaylistItems_ListItemsByPlaylist_Inputs*)newInputSet {
		return [[[TMBYouTube_PlaylistItems_ListItemsByPlaylist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListItemsByID Choreo.
 */
@implementation TMBYouTube_PlaylistItems_ListItemsByID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the ItemID input for this Choreo.
	*(conditional, string) A comma-separated list of IDs for playlist items to retrieve.
	 */
	-(void)setItemID:(NSString*)ItemID {
		[super setInput:@"ItemID" toValue:ItemID];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the PageToken input for this Choreo.
	*(optional, string) The "nextPageToken" found in the response which is used to page through results.
	 */
	-(void)setPageToken:(NSString*)PageToken {
		[super setInput:@"PageToken" toValue:PageToken];
	}

	/*!
	 * Set the value of the Part input for this Choreo.
	*(optional, string) Specifies a comma-separated list of playlistItem resource properties that the API response will include. Part names that you can pass are: id, snippet, and contentDetails.
	 */
	-(void)setPart:(NSString*)Part {
		[super setInput:@"Part" toValue:Part];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the VideoID input for this Choreo.
	*(optional, string) Indicates that only the playlist items that contain the specified video should be returned.
	 */
	-(void)setVideoID:(NSString*)VideoID {
		[super setInput:@"VideoID" toValue:VideoID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListItemsByID Choreo.
 */
@implementation TMBYouTube_PlaylistItems_ListItemsByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "NewAccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains a new AccessToken when the RefreshToken is provided.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewAccessToken {
		return [super getOutputByName:@"NewAccessToken"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from YouTube.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Returns a collection of playlist items that match the list of IDs provided.
 */
@implementation TMBYouTube_PlaylistItems_ListItemsByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYouTube_PlaylistItems_ListItemsByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/YouTube/PlaylistItems/ListItemsByID"] autorelease];
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
		TMBYouTube_PlaylistItems_ListItemsByID_ResultSet *results = [[[TMBYouTube_PlaylistItems_ListItemsByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListItemsByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYouTube_PlaylistItems_ListItemsByID_Inputs*)newInputSet {
		return [[[TMBYouTube_PlaylistItems_ListItemsByID_Inputs alloc] init] autorelease];
	}
@end
	