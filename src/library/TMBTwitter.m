/*!
 * @TMBTwitter.m
 *
 * Execute Choreographies from the Temboo Twitter bundle.
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

#import "TMBTwitter.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the HomeTimeline Choreo.
 */
@implementation TMBTwitter_Timelines_HomeTimeline_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ContributorDetails input for this Choreo.
	*(optional, boolean) Set to true to include the screen_name of the contributor. By default only the user_id of the contributor is included.
	 */
	-(void)setContributorDetails:(NSString*)ContributorDetails {
		[super setInput:@"ContributorDetails" toValue:ContributorDetails];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the ExcludeReplies input for this Choreo.
	*(optional, boolean) Set to true to prevent replies from appearing in the returned timeline.
	 */
	-(void)setExcludeReplies:(NSString*)ExcludeReplies {
		[super setInput:@"ExcludeReplies" toValue:ExcludeReplies];
	}

	/*!
	 * Set the value of the IncludeEntities input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeEntities:(NSString*)IncludeEntities {
		[super setInput:@"IncludeEntities" toValue:IncludeEntities];
	}

	/*!
	 * Set the value of the MaxId input for this Choreo.
	*(optional, integer) Returns results with an ID less than (older than) or equal to the specified ID.
	 */
	-(void)setMaxId:(NSString*)MaxId {
		[super setInput:@"MaxId" toValue:MaxId];
	}

	/*!
	 * Set the value of the SinceId input for this Choreo.
	*(optional, integer) Returns results with an ID greater than (more recent than) the specified ID.
	 */
	-(void)setSinceId:(NSString*)SinceId {
		[super setInput:@"SinceId" toValue:SinceId];
	}

	/*!
	 * Set the value of the TrimUser input for this Choreo.
	*(optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
	 */
	-(void)setTrimUser:(NSString*)TrimUser {
		[super setInput:@"TrimUser" toValue:TrimUser];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HomeTimeline Choreo.
 */
@implementation TMBTwitter_Timelines_HomeTimeline_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a collection of the most recent Tweets and retweets posted by the authenticating user and the users they follow.
 */
@implementation TMBTwitter_Timelines_HomeTimeline

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Timelines_HomeTimeline Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Timelines/HomeTimeline"] autorelease];
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
		TMBTwitter_Timelines_HomeTimeline_ResultSet *results = [[[TMBTwitter_Timelines_HomeTimeline_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the HomeTimeline Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Timelines_HomeTimeline_Inputs*)newInputSet {
		return [[[TMBTwitter_Timelines_HomeTimeline_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateFriendship Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_CreateFriendship_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Follow input for this Choreo.
	*(optional, boolean) A boolean flag that enables notifications for the target user when set to true.
	 */
	-(void)setFollow:(NSString*)Follow {
		[super setInput:@"Follow" toValue:Follow];
	}

	/*!
	 * Set the value of the ScreenName input for this Choreo.
	*(conditional, string) The screen name for the friend you want to create a friendship with. Required if UserId isn't specified.
	 */
	-(void)setScreenName:(NSString*)ScreenName {
		[super setInput:@"ScreenName" toValue:ScreenName];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(conditional, integer) The user id for the friend you want to create a friendship with. Required if ScreenName isn't specified.
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFriendship Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_CreateFriendship_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to follow another Twitter user by specifying a Twitter user id or screen name.
 */
@implementation TMBTwitter_FriendsAndFollowers_CreateFriendship

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_FriendsAndFollowers_CreateFriendship Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/FriendsAndFollowers/CreateFriendship"] autorelease];
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
		TMBTwitter_FriendsAndFollowers_CreateFriendship_ResultSet *results = [[[TMBTwitter_FriendsAndFollowers_CreateFriendship_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateFriendship Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_FriendsAndFollowers_CreateFriendship_Inputs*)newInputSet {
		return [[[TMBTwitter_FriendsAndFollowers_CreateFriendship_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Mentions Choreo.
 */
@implementation TMBTwitter_Timelines_Mentions_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.n
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ContributorDetails input for this Choreo.
	*(optional, boolean) Set to true to include the screen_name of the contributor. By default only the user_id of the contributor is included.
	 */
	-(void)setContributorDetails:(NSString*)ContributorDetails {
		[super setInput:@"ContributorDetails" toValue:ContributorDetails];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specifies the number of tweets to retrieve. Must be less than or equal to 200. Defaults to 20.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the IncludeEntities input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeEntities:(NSString*)IncludeEntities {
		[super setInput:@"IncludeEntities" toValue:IncludeEntities];
	}

	/*!
	 * Set the value of the MaxId input for this Choreo.
	*(optional, integer) Returns results with an ID less than (older than) or equal to the specified ID.
	 */
	-(void)setMaxId:(NSString*)MaxId {
		[super setInput:@"MaxId" toValue:MaxId];
	}

	/*!
	 * Set the value of the SinceId input for this Choreo.
	*(optional, integer) Returns results with an ID greater than (more recent than) the specified ID.
	 */
	-(void)setSinceId:(NSString*)SinceId {
		[super setInput:@"SinceId" toValue:SinceId];
	}

	/*!
	 * Set the value of the TrimUser input for this Choreo.
	*(optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false, which returns the complete user object.
	 */
	-(void)setTrimUser:(NSString*)TrimUser {
		[super setInput:@"TrimUser" toValue:TrimUser];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Mentions Choreo.
 */
@implementation TMBTwitter_Timelines_Mentions_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the 20 most recent mentions for the authenticating user.
 */
@implementation TMBTwitter_Timelines_Mentions

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Timelines_Mentions Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Timelines/Mentions"] autorelease];
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
		TMBTwitter_Timelines_Mentions_ResultSet *results = [[[TMBTwitter_Timelines_Mentions_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Mentions Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Timelines_Mentions_Inputs*)newInputSet {
		return [[[TMBTwitter_Timelines_Mentions_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DirectMessagesSent Choreo.
 */
@implementation TMBTwitter_DirectMessages_DirectMessagesSent_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specifies the number of records to retrieve up to a maximum of 200.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the IncludeEntities input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeEntities:(NSString*)IncludeEntities {
		[super setInput:@"IncludeEntities" toValue:IncludeEntities];
	}

	/*!
	 * Set the value of the MaxID input for this Choreo.
	*(optional, integer) Returns results with an ID less than (older than) or equal to the specified ID.
	 */
	-(void)setMaxID:(NSString*)MaxID {
		[super setInput:@"MaxID" toValue:MaxID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Specifies the page of results to retrieve.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the SinceID input for this Choreo.
	*(optional, integer) Returns results with an ID greater than (more recent than) the specified ID.
	 */
	-(void)setSinceID:(NSString*)SinceID {
		[super setInput:@"SinceID" toValue:SinceID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DirectMessagesSent Choreo.
 */
@implementation TMBTwitter_DirectMessages_DirectMessagesSent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the 20 most recent direct messages sent by the authenticating user.
 */
@implementation TMBTwitter_DirectMessages_DirectMessagesSent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_DirectMessages_DirectMessagesSent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/DirectMessages/DirectMessagesSent"] autorelease];
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
		TMBTwitter_DirectMessages_DirectMessagesSent_ResultSet *results = [[[TMBTwitter_DirectMessages_DirectMessagesSent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DirectMessagesSent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_DirectMessages_DirectMessagesSent_Inputs*)newInputSet {
		return [[[TMBTwitter_DirectMessages_DirectMessagesSent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPlaceInformation Choreo.
 */
@implementation TMBTwitter_PlacesAndGeo_GetPlaceInformation_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the PlaceId input for this Choreo.
	*(required, string) The id for a place in the world. These IDs can be retrieved from the ReverseGeocode Choreo.
	 */
	-(void)setPlaceId:(NSString*)PlaceId {
		[super setInput:@"PlaceId" toValue:PlaceId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPlaceInformation Choreo.
 */
@implementation TMBTwitter_PlacesAndGeo_GetPlaceInformation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for places that can be attached to a statuses/update using a latitude and a longitude pair, an IP address, or a name.
 */
@implementation TMBTwitter_PlacesAndGeo_GetPlaceInformation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_PlacesAndGeo_GetPlaceInformation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/PlacesAndGeo/GetPlaceInformation"] autorelease];
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
		TMBTwitter_PlacesAndGeo_GetPlaceInformation_ResultSet *results = [[[TMBTwitter_PlacesAndGeo_GetPlaceInformation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPlaceInformation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_PlacesAndGeo_GetPlaceInformation_Inputs*)newInputSet {
		return [[[TMBTwitter_PlacesAndGeo_GetPlaceInformation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBTwitter_OAuth_InitializeOAuth_Inputs

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
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ForwardingURL input for this Choreo.
	*(optional, string) The URL that Temboo will redirect your users to after they grant your application access.
	 */
	-(void)setForwardingURL:(NSString*)ForwardingURL {
		[super setInput:@"ForwardingURL" toValue:ForwardingURL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBTwitter_OAuth_InitializeOAuth_ResultSet

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
@implementation TMBTwitter_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/OAuth/InitializeOAuth"] autorelease];
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
		TMBTwitter_OAuth_InitializeOAuth_ResultSet *results = [[[TMBTwitter_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBTwitter_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the IncomingFriendships Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_IncomingFriendships_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, integer) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the StringifyIDs input for this Choreo.
	*(optional, boolean) A boolean flag indicating that Tweet IDs should be returned as strings.
	 */
	-(void)setStringifyIDs:(NSString*)StringifyIDs {
		[super setInput:@"StringifyIDs" toValue:StringifyIDs];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the IncomingFriendships Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_IncomingFriendships_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of numeric IDs for every user who has a pending request to follow the authenticating user.
 */
@implementation TMBTwitter_FriendsAndFollowers_IncomingFriendships

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_FriendsAndFollowers_IncomingFriendships Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/FriendsAndFollowers/IncomingFriendships"] autorelease];
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
		TMBTwitter_FriendsAndFollowers_IncomingFriendships_ResultSet *results = [[[TMBTwitter_FriendsAndFollowers_IncomingFriendships_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the IncomingFriendships Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_FriendsAndFollowers_IncomingFriendships_Inputs*)newInputSet {
		return [[[TMBTwitter_FriendsAndFollowers_IncomingFriendships_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GeoSearch Choreo.
 */
@implementation TMBTwitter_PlacesAndGeo_GeoSearch_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Accuracy input for this Choreo.
	*(optional, string) A hint on the "region" in which to search. If a number, then this is a radius in meters. You can also specify feet by using the ft suffix (i.e. 5ft).
	 */
	-(void)setAccuracy:(NSString*)Accuracy {
		[super setInput:@"Accuracy" toValue:Accuracy];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) If supplied, the response will use the JSONP format with a callback of the given name.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ContainedWithin input for this Choreo.
	*(optional, string) This is the place_id which you would like to restrict the search results to. This id can be retrieved with the GetPlaceInformation Choreo.
	 */
	-(void)setContainedWithin:(NSString*)ContainedWithin {
		[super setInput:@"ContainedWithin" toValue:ContainedWithin];
	}

	/*!
	 * Set the value of the Granularity input for this Choreo.
	*(optional, string) This is the minimal granularity of place types to return and must be one of: poi, neighborhood, city, admin or country. Defaults to neighborhood.
	 */
	-(void)setGranularity:(NSString*)Granularity {
		[super setInput:@"Granularity" toValue:Granularity];
	}

	/*!
	 * Set the value of the IP input for this Choreo.
	*(conditional, string) An IP address. Used when attempting to fix geolocation based off of the user's IP address. You must provide Latitude and Longitude, IP, or Query.
	 */
	-(void)setIP:(NSString*)IP {
		[super setInput:@"IP" toValue:IP];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(conditional, decimal) The latitude to search around. You must provide Latitude and Longitude, IP, or Query.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(conditional, decimal) The longitude to search around. You must provide Latitude and Longitude, IP, or Query.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(conditional, string) Free-form text to match against while executing a geo-based query. You must provide Latitude and Longitude, IP, or Query.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GeoSearch Choreo.
 */
@implementation TMBTwitter_PlacesAndGeo_GeoSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for places that can be attached to a status update using a latitude and a longitude pair, an IP address, or a name.
 */
@implementation TMBTwitter_PlacesAndGeo_GeoSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_PlacesAndGeo_GeoSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/PlacesAndGeo/GeoSearch"] autorelease];
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
		TMBTwitter_PlacesAndGeo_GeoSearch_ResultSet *results = [[[TMBTwitter_PlacesAndGeo_GeoSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GeoSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_PlacesAndGeo_GeoSearch_Inputs*)newInputSet {
		return [[[TMBTwitter_PlacesAndGeo_GeoSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@implementation TMBTwitter_Users_Search_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The number of potential user results to retrieve per page. This value has a maximum of 20.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the IncludeEntities input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeEntities:(NSString*)IncludeEntities {
		[super setInput:@"IncludeEntities" toValue:IncludeEntities];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Specifies the page of results to retrieve.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the SearchString input for this Choreo.
	*(required, string) The string used to search for users.
	 */
	-(void)setSearchString:(NSString*)SearchString {
		[super setInput:@"SearchString" toValue:SearchString];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@implementation TMBTwitter_Users_Search_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to search public user accounts on Twitter.
 */
@implementation TMBTwitter_Users_Search

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Users_Search Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Users/Search"] autorelease];
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
		TMBTwitter_Users_Search_ResultSet *results = [[[TMBTwitter_Users_Search_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Search Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Users_Search_Inputs*)newInputSet {
		return [[[TMBTwitter_Users_Search_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBTwitter_OAuth_FinalizeOAuth_Inputs

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
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The oauth_token_secret retrieved during the OAuth process. This is returned by the InitializeOAuth Choreo.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
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
@implementation TMBTwitter_OAuth_FinalizeOAuth_ResultSet

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
	 * Retrieve the value of the "ScreenName" output from an execution of this Choreo.
	 * @return - NSString* (string) The Twitter screen name associated with the access token that is being retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getScreenName {
		return [super getOutputByName:@"ScreenName"];
	}

	/*!
	 * Retrieve the value of the "UserID" output from an execution of this Choreo.
	 * @return - NSString* (integer) The Twitter user id associated with the AccessToken that is being retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getUserID {
		return [super getOutputByName:@"UserID"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Twitter access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@implementation TMBTwitter_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/OAuth/FinalizeOAuth"] autorelease];
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
		TMBTwitter_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBTwitter_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBTwitter_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the OutgoingFriendships Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_OutgoingFriendships_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, integer) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the StringifyIDs input for this Choreo.
	*(optional, boolean) A boolean flag indicating that Tweet IDs should be returned as strings.
	 */
	-(void)setStringifyIDs:(NSString*)StringifyIDs {
		[super setInput:@"StringifyIDs" toValue:StringifyIDs];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the OutgoingFriendships Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_OutgoingFriendships_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of numeric IDs for every protected user for whom the authenticating user has a pending follow request.
 */
@implementation TMBTwitter_FriendsAndFollowers_OutgoingFriendships

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_FriendsAndFollowers_OutgoingFriendships Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/FriendsAndFollowers/OutgoingFriendships"] autorelease];
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
		TMBTwitter_FriendsAndFollowers_OutgoingFriendships_ResultSet *results = [[[TMBTwitter_FriendsAndFollowers_OutgoingFriendships_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the OutgoingFriendships Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_FriendsAndFollowers_OutgoingFriendships_Inputs*)newInputSet {
		return [[[TMBTwitter_FriendsAndFollowers_OutgoingFriendships_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FriendshipsShow Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_FriendshipsShow_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the SourceScreenName input for this Choreo.
	*(conditional, string) The screen_name of the subject user. Required unless specifying the SourceUserID instead.
	 */
	-(void)setSourceScreenName:(NSString*)SourceScreenName {
		[super setInput:@"SourceScreenName" toValue:SourceScreenName];
	}

	/*!
	 * Set the value of the SourceUserID input for this Choreo.
	*(conditional, integer) The ID of the subject user. Required unless specifying the SourceScreenName instead.
	 */
	-(void)setSourceUserID:(NSString*)SourceUserID {
		[super setInput:@"SourceUserID" toValue:SourceUserID];
	}

	/*!
	 * Set the value of the TargetScreenName input for this Choreo.
	*(conditional, string) The screen_name of the target user. Required unless specifying the TargetUserID instead.
	 */
	-(void)setTargetScreenName:(NSString*)TargetScreenName {
		[super setInput:@"TargetScreenName" toValue:TargetScreenName];
	}

	/*!
	 * Set the value of the TargetUserID input for this Choreo.
	*(conditional, integer) The ID of the target user. Required unless specifying the TargetScreenName instead.
	 */
	-(void)setTargetUserID:(NSString*)TargetUserID {
		[super setInput:@"TargetUserID" toValue:TargetUserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FriendshipsShow Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_FriendshipsShow_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns detailed information about the relationship between two users.
 */
@implementation TMBTwitter_FriendsAndFollowers_FriendshipsShow

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_FriendsAndFollowers_FriendshipsShow Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/FriendsAndFollowers/FriendshipsShow"] autorelease];
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
		TMBTwitter_FriendsAndFollowers_FriendshipsShow_ResultSet *results = [[[TMBTwitter_FriendsAndFollowers_FriendshipsShow_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FriendshipsShow Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_FriendsAndFollowers_FriendshipsShow_Inputs*)newInputSet {
		return [[[TMBTwitter_FriendsAndFollowers_FriendshipsShow_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetweetsOfMe Choreo.
 */
@implementation TMBTwitter_Timelines_RetweetsOfMe_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the IncludeEntities input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeEntities:(NSString*)IncludeEntities {
		[super setInput:@"IncludeEntities" toValue:IncludeEntities];
	}

	/*!
	 * Set the value of the IncludeUserEntities input for this Choreo.
	*(optional, boolean) The user entities node will not be included when set to false.
	 */
	-(void)setIncludeUserEntities:(NSString*)IncludeUserEntities {
		[super setInput:@"IncludeUserEntities" toValue:IncludeUserEntities];
	}

	/*!
	 * Set the value of the MaxId input for this Choreo.
	*(optional, integer) Returns results with an ID less than (older than) or equal to the specified ID.
	 */
	-(void)setMaxId:(NSString*)MaxId {
		[super setInput:@"MaxId" toValue:MaxId];
	}

	/*!
	 * Set the value of the SinceId input for this Choreo.
	*(optional, integer) Returns results with an ID greater than (more recent than) the specified ID.
	 */
	-(void)setSinceId:(NSString*)SinceId {
		[super setInput:@"SinceId" toValue:SinceId];
	}

	/*!
	 * Set the value of the TrimUser input for this Choreo.
	*(optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
	 */
	-(void)setTrimUser:(NSString*)TrimUser {
		[super setInput:@"TrimUser" toValue:TrimUser];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetweetsOfMe Choreo.
 */
@implementation TMBTwitter_Timelines_RetweetsOfMe_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the most recent tweets posted by the authenticating user that have recently been retweeted by others.
 */
@implementation TMBTwitter_Timelines_RetweetsOfMe

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Timelines_RetweetsOfMe Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Timelines/RetweetsOfMe"] autorelease];
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
		TMBTwitter_Timelines_RetweetsOfMe_ResultSet *results = [[[TMBTwitter_Timelines_RetweetsOfMe_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetweetsOfMe Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Timelines_RetweetsOfMe_Inputs*)newInputSet {
		return [[[TMBTwitter_Timelines_RetweetsOfMe_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the StatusesShow Choreo.
 */
@implementation TMBTwitter_Tweets_StatusesShow_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The numerical ID of the desired Tweet.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the IncludeEntities input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeEntities:(NSString*)IncludeEntities {
		[super setInput:@"IncludeEntities" toValue:IncludeEntities];
	}

	/*!
	 * Set the value of the IncludeMyRetweet input for this Choreo.
	*(optional, boolean) When set to true, any Tweets returned that have been retweeted by the authenticating user will include an additional current_user_retweet node, containing the ID of the source status for the retweet.
	 */
	-(void)setIncludeMyRetweet:(NSString*)IncludeMyRetweet {
		[super setInput:@"IncludeMyRetweet" toValue:IncludeMyRetweet];
	}

	/*!
	 * Set the value of the TrimUser input for this Choreo.
	*(optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
	 */
	-(void)setTrimUser:(NSString*)TrimUser {
		[super setInput:@"TrimUser" toValue:TrimUser];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StatusesShow Choreo.
 */
@implementation TMBTwitter_Tweets_StatusesShow_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a single Tweet with a given ID.
 */
@implementation TMBTwitter_Tweets_StatusesShow

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Tweets_StatusesShow Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Tweets/StatusesShow"] autorelease];
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
		TMBTwitter_Tweets_StatusesShow_ResultSet *results = [[[TMBTwitter_Tweets_StatusesShow_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the StatusesShow Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Tweets_StatusesShow_Inputs*)newInputSet {
		return [[[TMBTwitter_Tweets_StatusesShow_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Show Choreo.
 */
@implementation TMBTwitter_Users_Show_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the IncludeEntities input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeEntities:(NSString*)IncludeEntities {
		[super setInput:@"IncludeEntities" toValue:IncludeEntities];
	}

	/*!
	 * Set the value of the ScreenName input for this Choreo.
	*(conditional, string) The screen name of the user for whom to return results for. Required if UserId isn't specified.
	 */
	-(void)setScreenName:(NSString*)ScreenName {
		[super setInput:@"ScreenName" toValue:ScreenName];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(conditional, integer) The ID of the user for whom to return results for. Required if ScreenName isn't specified.
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Show Choreo.
 */
@implementation TMBTwitter_Users_Show_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about a specific Twitter user.
 */
@implementation TMBTwitter_Users_Show

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Users_Show Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Users/Show"] autorelease];
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
		TMBTwitter_Users_Show_ResultSet *results = [[[TMBTwitter_Users_Show_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Show Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Users_Show_Inputs*)newInputSet {
		return [[[TMBTwitter_Users_Show_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Lookup Choreo.
 */
@implementation TMBTwitter_Users_Lookup_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the IncludeEntities input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeEntities:(NSString*)IncludeEntities {
		[super setInput:@"IncludeEntities" toValue:IncludeEntities];
	}

	/*!
	 * Set the value of the ScreenName input for this Choreo.
	*(conditional, string) A comma-separated list of up to 100 screen names. Required if UserId isn't specified.
	 */
	-(void)setScreenName:(NSString*)ScreenName {
		[super setInput:@"ScreenName" toValue:ScreenName];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(conditional, integer) A comma-separated list of up to 100 user IDs. Required if ScreenName isn't specified.
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Lookup Choreo.
 */
@implementation TMBTwitter_Users_Lookup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns user objects for up to 100 Twitter users.
 */
@implementation TMBTwitter_Users_Lookup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Users_Lookup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Users/Lookup"] autorelease];
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
		TMBTwitter_Users_Lookup_ResultSet *results = [[[TMBTwitter_Users_Lookup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Lookup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Users_Lookup_Inputs*)newInputSet {
		return [[[TMBTwitter_Users_Lookup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UserTimeline Choreo.
 */
@implementation TMBTwitter_Timelines_UserTimeline_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(conditional, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(conditional, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(conditional, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ContributorDetails input for this Choreo.
	*(optional, boolean) Set to true to include the screen_name of the contributor. By default only the user_id of the contributor is included.
	 */
	-(void)setContributorDetails:(NSString*)ContributorDetails {
		[super setInput:@"ContributorDetails" toValue:ContributorDetails];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the ExcludeReplies input for this Choreo.
	*(optional, boolean) Set to true to prevent replies from appearing in the returned timeline.
	 */
	-(void)setExcludeReplies:(NSString*)ExcludeReplies {
		[super setInput:@"ExcludeReplies" toValue:ExcludeReplies];
	}

	/*!
	 * Set the value of the IncludeRetweets input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeRetweets:(NSString*)IncludeRetweets {
		[super setInput:@"IncludeRetweets" toValue:IncludeRetweets];
	}

	/*!
	 * Set the value of the MaxId input for this Choreo.
	*(optional, integer) Returns results with an ID less than (older than) or equal to the specified ID.
	 */
	-(void)setMaxId:(NSString*)MaxId {
		[super setInput:@"MaxId" toValue:MaxId];
	}

	/*!
	 * Set the value of the ScreenName input for this Choreo.
	*(conditional, string) Screen name of the user to return results for. Required unless providing the UserId.
	 */
	-(void)setScreenName:(NSString*)ScreenName {
		[super setInput:@"ScreenName" toValue:ScreenName];
	}

	/*!
	 * Set the value of the SinceId input for this Choreo.
	*(optional, integer) Returns results with an ID greater than (more recent than) the specified ID.
	 */
	-(void)setSinceId:(NSString*)SinceId {
		[super setInput:@"SinceId" toValue:SinceId];
	}

	/*!
	 * Set the value of the TrimUser input for this Choreo.
	*(optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
	 */
	-(void)setTrimUser:(NSString*)TrimUser {
		[super setInput:@"TrimUser" toValue:TrimUser];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(conditional, integer) ID of the user to return results for. Required unless providing the ScreenName.
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserTimeline Choreo.
 */
@implementation TMBTwitter_Timelines_UserTimeline_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a collection of the most recent Tweets posted by the user whose screen_name or user_id is indicated.
 */
@implementation TMBTwitter_Timelines_UserTimeline

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Timelines_UserTimeline Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Timelines/UserTimeline"] autorelease];
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
		TMBTwitter_Timelines_UserTimeline_ResultSet *results = [[[TMBTwitter_Timelines_UserTimeline_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UserTimeline Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Timelines_UserTimeline_Inputs*)newInputSet {
		return [[[TMBTwitter_Timelines_UserTimeline_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Tweets Choreo.
 */
@implementation TMBTwitter_Search_Tweets_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Geocode input for this Choreo.
	*(optional, string) Returns tweets by users located within a given radius of the given latitude/longitude. Formatted like: 37.781157,-122.398720,1mi.
	 */
	-(void)setGeocode:(NSString*)Geocode {
		[super setInput:@"Geocode" toValue:Geocode];
	}

	/*!
	 * Set the value of the IncludeEntities input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeEntities:(NSString*)IncludeEntities {
		[super setInput:@"IncludeEntities" toValue:IncludeEntities];
	}

	/*!
	 * Set the value of the Language input for this Choreo.
	*(optional, string) Restricts tweets to the given language, given by an ISO 639-1 code.
	 */
	-(void)setLanguage:(NSString*)Language {
		[super setInput:@"Language" toValue:Language];
	}

	/*!
	 * Set the value of the MaxId input for this Choreo.
	*(optional, integer) Returns results with an ID less than (older than) or equal to the specified ID.
	 */
	-(void)setMaxId:(NSString*)MaxId {
		[super setInput:@"MaxId" toValue:MaxId];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) A search query of up to 1,000 characters.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResultType input for this Choreo.
	*(optional, string) Specifies what type of search results you want to receive. The default is "mixed." Valid values are: mixed, recent, and popular.
	 */
	-(void)setResultType:(NSString*)ResultType {
		[super setInput:@"ResultType" toValue:ResultType];
	}

	/*!
	 * Set the value of the SinceId input for this Choreo.
	*(optional, integer) Returns results with an ID greater than (more recent than) the specified ID.
	 */
	-(void)setSinceId:(NSString*)SinceId {
		[super setInput:@"SinceId" toValue:SinceId];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Returns tweets generated before the given date. Date should be formatted as YYYY-MM-DD.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Tweets Choreo.
 */
@implementation TMBTwitter_Search_Tweets_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a collection of relevant Tweets matching a specified query.
 */
@implementation TMBTwitter_Search_Tweets

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Search_Tweets Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Search/Tweets"] autorelease];
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
		TMBTwitter_Search_Tweets_ResultSet *results = [[[TMBTwitter_Search_Tweets_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Tweets Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Search_Tweets_Inputs*)newInputSet {
		return [[[TMBTwitter_Search_Tweets_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFriendsByID Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_GetFriendsByID_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, string) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the ScreenName input for this Choreo.
	*(conditional, string) The screen name of the user for whom to return results for. Required if UserId isn't specified.
	 */
	-(void)setScreenName:(NSString*)ScreenName {
		[super setInput:@"ScreenName" toValue:ScreenName];
	}

	/*!
	 * Set the value of the StringifyIDs input for this Choreo.
	*(optional, boolean) A boolean flag indicating that Tweet IDs should be returned as strings.
	 */
	-(void)setStringifyIDs:(NSString*)StringifyIDs {
		[super setInput:@"StringifyIDs" toValue:StringifyIDs];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, integer) The ID of the user for whom to return results for. Required if ScreenName isn't specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFriendsByID Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_GetFriendsByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of numeric IDs for every user the specified user is following (also known as their "friends").
 */
@implementation TMBTwitter_FriendsAndFollowers_GetFriendsByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_FriendsAndFollowers_GetFriendsByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/FriendsAndFollowers/GetFriendsByID"] autorelease];
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
		TMBTwitter_FriendsAndFollowers_GetFriendsByID_ResultSet *results = [[[TMBTwitter_FriendsAndFollowers_GetFriendsByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFriendsByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_FriendsAndFollowers_GetFriendsByID_Inputs*)newInputSet {
		return [[[TMBTwitter_FriendsAndFollowers_GetFriendsByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRetweets Choreo.
 */
@implementation TMBTwitter_Tweets_GetRetweets_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specifies the number of records to, up to a maximum of 100.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The numerical ID of the tweet to retrieve retweets for.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the TrimUser input for this Choreo.
	*(optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID.
	 */
	-(void)setTrimUser:(NSString*)TrimUser {
		[super setInput:@"TrimUser" toValue:TrimUser];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRetweets Choreo.
 */
@implementation TMBTwitter_Tweets_GetRetweets_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves up to 100 of the first retweets of a given tweet.
 */
@implementation TMBTwitter_Tweets_GetRetweets

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Tweets_GetRetweets Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Tweets/GetRetweets"] autorelease];
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
		TMBTwitter_Tweets_GetRetweets_ResultSet *results = [[[TMBTwitter_Tweets_GetRetweets_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRetweets Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Tweets_GetRetweets_Inputs*)newInputSet {
		return [[[TMBTwitter_Tweets_GetRetweets_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FriendshipsLookup Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_FriendshipsLookup_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ScreenName input for this Choreo.
	*(conditional, string) A comma separated list of screen names. Up to 100 are allowed. Required unless UserID is specified.
	 */
	-(void)setScreenName:(NSString*)ScreenName {
		[super setInput:@"ScreenName" toValue:ScreenName];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, integer) A comma separated list of user IDs. Up to 100 are allowed. Required unless ScreenName is specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FriendshipsLookup Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_FriendshipsLookup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the relationship of the authenticating user to the comma-separated list of up to 100 screen names or user IDs provided.
 */
@implementation TMBTwitter_FriendsAndFollowers_FriendshipsLookup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_FriendsAndFollowers_FriendshipsLookup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/FriendsAndFollowers/FriendshipsLookup"] autorelease];
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
		TMBTwitter_FriendsAndFollowers_FriendshipsLookup_ResultSet *results = [[[TMBTwitter_FriendsAndFollowers_FriendshipsLookup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FriendshipsLookup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_FriendsAndFollowers_FriendshipsLookup_Inputs*)newInputSet {
		return [[[TMBTwitter_FriendsAndFollowers_FriendshipsLookup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the StatusesDestroy Choreo.
 */
@implementation TMBTwitter_Tweets_StatusesDestroy_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The numerical ID of the status to delete.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the TrimUser input for this Choreo.
	*(optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID.
	 */
	-(void)setTrimUser:(NSString*)TrimUser {
		[super setInput:@"TrimUser" toValue:TrimUser];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StatusesDestroy Choreo.
 */
@implementation TMBTwitter_Tweets_StatusesDestroy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified status.
 */
@implementation TMBTwitter_Tweets_StatusesDestroy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Tweets_StatusesDestroy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Tweets/StatusesDestroy"] autorelease];
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
		TMBTwitter_Tweets_StatusesDestroy_ResultSet *results = [[[TMBTwitter_Tweets_StatusesDestroy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the StatusesDestroy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Tweets_StatusesDestroy_Inputs*)newInputSet {
		return [[[TMBTwitter_Tweets_StatusesDestroy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the StatusesUpdate Choreo.
 */
@implementation TMBTwitter_Tweets_StatusesUpdate_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the DisplayCoordinates input for this Choreo.
	*(optional, boolean) Whether or not to put a pin on the exact coordinates a tweet has been sent from.
	 */
	-(void)setDisplayCoordinates:(NSString*)DisplayCoordinates {
		[super setInput:@"DisplayCoordinates" toValue:DisplayCoordinates];
	}

	/*!
	 * Set the value of the InReplyTo input for this Choreo.
	*(optional, string) The ID of an existing status that the update is in reply to.
	 */
	-(void)setInReplyTo:(NSString*)InReplyTo {
		[super setInput:@"InReplyTo" toValue:InReplyTo];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(optional, decimal) The latitude of the location this tweet refers to.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(optional, decimal) The longitude of the location this tweet refers to.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the PlaceID input for this Choreo.
	*(optional, string) The ID associated with a place in the world. These IDs can be retrieved from the PlacesAndGeo.ReverseGeocode Choreo.
	 */
	-(void)setPlaceID:(NSString*)PlaceID {
		[super setInput:@"PlaceID" toValue:PlaceID];
	}

	/*!
	 * Set the value of the StatusUpdate input for this Choreo.
	*(required, string) The text for your status update. 140-character limit.
	 */
	-(void)setStatusUpdate:(NSString*)StatusUpdate {
		[super setInput:@"StatusUpdate" toValue:StatusUpdate];
	}

	/*!
	 * Set the value of the TrimUser input for this Choreo.
	*(optional, boolean) When set to either true, each tweet returned in a timeline will include a user object including only the status authors numerical ID.
	 */
	-(void)setTrimUser:(NSString*)TrimUser {
		[super setInput:@"TrimUser" toValue:TrimUser];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StatusesUpdate Choreo.
 */
@implementation TMBTwitter_Tweets_StatusesUpdate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to update your Twitter status (aka Tweet).
 */
@implementation TMBTwitter_Tweets_StatusesUpdate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Tweets_StatusesUpdate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Tweets/StatusesUpdate"] autorelease];
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
		TMBTwitter_Tweets_StatusesUpdate_ResultSet *results = [[[TMBTwitter_Tweets_StatusesUpdate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the StatusesUpdate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Tweets_StatusesUpdate_Inputs*)newInputSet {
		return [[[TMBTwitter_Tweets_StatusesUpdate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DestroyDirectMessage Choreo.
 */
@implementation TMBTwitter_DirectMessages_DestroyDirectMessage_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the direct message.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the IncludeEntities input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeEntities:(NSString*)IncludeEntities {
		[super setInput:@"IncludeEntities" toValue:IncludeEntities];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DestroyDirectMessage Choreo.
 */
@implementation TMBTwitter_DirectMessages_DestroyDirectMessage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified Direct Message.
 */
@implementation TMBTwitter_DirectMessages_DestroyDirectMessage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_DirectMessages_DestroyDirectMessage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/DirectMessages/DestroyDirectMessage"] autorelease];
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
		TMBTwitter_DirectMessages_DestroyDirectMessage_ResultSet *results = [[[TMBTwitter_DirectMessages_DestroyDirectMessage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DestroyDirectMessage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_DirectMessages_DestroyDirectMessage_Inputs*)newInputSet {
		return [[[TMBTwitter_DirectMessages_DestroyDirectMessage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFollowersByID Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_GetFollowersByID_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, string) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the ScreenName input for this Choreo.
	*(conditional, string) The screen name of the user for whom to return results for. Required if UserID isn't specified.
	 */
	-(void)setScreenName:(NSString*)ScreenName {
		[super setInput:@"ScreenName" toValue:ScreenName];
	}

	/*!
	 * Set the value of the StringifyIDs input for this Choreo.
	*(optional, boolean) A boolean flag indicating that Tweet IDs should be returned as strings.
	 */
	-(void)setStringifyIDs:(NSString*)StringifyIDs {
		[super setInput:@"StringifyIDs" toValue:StringifyIDs];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, integer) The ID of the user for whom to return results for. Required if ScreenName isn't specified.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFollowersByID Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_GetFollowersByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of numeric IDs for every user following the specified user.
 */
@implementation TMBTwitter_FriendsAndFollowers_GetFollowersByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_FriendsAndFollowers_GetFollowersByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/FriendsAndFollowers/GetFollowersByID"] autorelease];
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
		TMBTwitter_FriendsAndFollowers_GetFollowersByID_ResultSet *results = [[[TMBTwitter_FriendsAndFollowers_GetFollowersByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFollowersByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_FriendsAndFollowers_GetFollowersByID_Inputs*)newInputSet {
		return [[[TMBTwitter_FriendsAndFollowers_GetFollowersByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SendDirectMessage Choreo.
 */
@implementation TMBTwitter_DirectMessages_SendDirectMessage_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ScreenName input for this Choreo.
	*(conditional, string) The screen name of the user who should receive the direct message. Required unless specifying the UserId.
	 */
	-(void)setScreenName:(NSString*)ScreenName {
		[super setInput:@"ScreenName" toValue:ScreenName];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text for the direct message. Max characters is 140.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, integer) The ID of the user who should receive the direct message. Required unless specifying the ScreenName.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendDirectMessage Choreo.
 */
@implementation TMBTwitter_DirectMessages_SendDirectMessage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sends a new direct message to the specified user from the authenticating user.
 */
@implementation TMBTwitter_DirectMessages_SendDirectMessage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_DirectMessages_SendDirectMessage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/DirectMessages/SendDirectMessage"] autorelease];
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
		TMBTwitter_DirectMessages_SendDirectMessage_ResultSet *results = [[[TMBTwitter_DirectMessages_SendDirectMessage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SendDirectMessage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_DirectMessages_SendDirectMessage_Inputs*)newInputSet {
		return [[[TMBTwitter_DirectMessages_SendDirectMessage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Available Choreo.
 */
@implementation TMBTwitter_Trends_Available_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Available Choreo.
 */
@implementation TMBTwitter_Trends_Available_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the locations that Twitter has trending topic information for.
 */
@implementation TMBTwitter_Trends_Available

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_Trends_Available Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/Trends/Available"] autorelease];
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
		TMBTwitter_Trends_Available_ResultSet *results = [[[TMBTwitter_Trends_Available_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Available Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_Trends_Available_Inputs*)newInputSet {
		return [[[TMBTwitter_Trends_Available_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetDirectMessages Choreo.
 */
@implementation TMBTwitter_DirectMessages_GetDirectMessages_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specifies the number of records to retrieve up to a maximum of 200.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the IncludeEntities input for this Choreo.
	*(optional, boolean) When set to true, the response will include the "entities" node.
	 */
	-(void)setIncludeEntities:(NSString*)IncludeEntities {
		[super setInput:@"IncludeEntities" toValue:IncludeEntities];
	}

	/*!
	 * Set the value of the MaxID input for this Choreo.
	*(optional, integer) Returns results with an ID less than (older than) or equal to the specified ID.
	 */
	-(void)setMaxID:(NSString*)MaxID {
		[super setInput:@"MaxID" toValue:MaxID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Specifies the page of results to retrieve.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the SinceID input for this Choreo.
	*(optional, integer) Returns results with an ID greater than (more recent than) the specified ID.
	 */
	-(void)setSinceID:(NSString*)SinceID {
		[super setInput:@"SinceID" toValue:SinceID];
	}

	/*!
	 * Set the value of the SkipStatus input for this Choreo.
	*(optional, boolean) When set to true, statuses will not be included in the returned user objects.
	 */
	-(void)setSkipStatus:(NSString*)SkipStatus {
		[super setInput:@"SkipStatus" toValue:SkipStatus];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDirectMessages Choreo.
 */
@implementation TMBTwitter_DirectMessages_GetDirectMessages_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the 20 most recent direct messages sent to the authenticating user.
 */
@implementation TMBTwitter_DirectMessages_GetDirectMessages

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_DirectMessages_GetDirectMessages Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/DirectMessages/GetDirectMessages"] autorelease];
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
		TMBTwitter_DirectMessages_GetDirectMessages_ResultSet *results = [[[TMBTwitter_DirectMessages_GetDirectMessages_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDirectMessages Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_DirectMessages_GetDirectMessages_Inputs*)newInputSet {
		return [[[TMBTwitter_DirectMessages_GetDirectMessages_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMessageByID Choreo.
 */
@implementation TMBTwitter_DirectMessages_GetMessageByID_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the direct message.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMessageByID Choreo.
 */
@implementation TMBTwitter_DirectMessages_GetMessageByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a single direct message, specified by an id.
 */
@implementation TMBTwitter_DirectMessages_GetMessageByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_DirectMessages_GetMessageByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/DirectMessages/GetMessageByID"] autorelease];
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
		TMBTwitter_DirectMessages_GetMessageByID_ResultSet *results = [[[TMBTwitter_DirectMessages_GetMessageByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMessageByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_DirectMessages_GetMessageByID_Inputs*)newInputSet {
		return [[[TMBTwitter_DirectMessages_GetMessageByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFriendship Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_DeleteFriendship_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ScreenName input for this Choreo.
	*(conditional, string) The screen name for the friend you want to unfollow. Required if UserId isn't specified.
	 */
	-(void)setScreenName:(NSString*)ScreenName {
		[super setInput:@"ScreenName" toValue:ScreenName];
	}

	/*!
	 * Set the value of the UserId input for this Choreo.
	*(conditional, integer) The user ID for the friend you want to unfollow. Required if ScreenName isn't specified.
	 */
	-(void)setUserId:(NSString*)UserId {
		[super setInput:@"UserId" toValue:UserId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFriendship Choreo.
 */
@implementation TMBTwitter_FriendsAndFollowers_DeleteFriendship_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to unfollow another Twitter user when you specify a Twitter user ID or screen name.
 */
@implementation TMBTwitter_FriendsAndFollowers_DeleteFriendship

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_FriendsAndFollowers_DeleteFriendship Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/FriendsAndFollowers/DeleteFriendship"] autorelease];
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
		TMBTwitter_FriendsAndFollowers_DeleteFriendship_ResultSet *results = [[[TMBTwitter_FriendsAndFollowers_DeleteFriendship_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFriendship Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_FriendsAndFollowers_DeleteFriendship_Inputs*)newInputSet {
		return [[[TMBTwitter_FriendsAndFollowers_DeleteFriendship_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SimilarPlaces Choreo.
 */
@implementation TMBTwitter_PlacesAndGeo_SimilarPlaces_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) If supplied, the response will use the JSONP format with a callback of the given name.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ContainedWithin input for this Choreo.
	*(optional, string) This is the place_id which you would like to restrict the search results to. This id can be retrieved with the GetPlaceInformation Choreo.
	 */
	-(void)setContainedWithin:(NSString*)ContainedWithin {
		[super setInput:@"ContainedWithin" toValue:ContainedWithin];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude to search around.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude to search around.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the place.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SimilarPlaces Choreo.
 */
@implementation TMBTwitter_PlacesAndGeo_SimilarPlaces_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Locates places near the given coordinates which have a similar name.
 */
@implementation TMBTwitter_PlacesAndGeo_SimilarPlaces

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_PlacesAndGeo_SimilarPlaces Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/PlacesAndGeo/SimilarPlaces"] autorelease];
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
		TMBTwitter_PlacesAndGeo_SimilarPlaces_ResultSet *results = [[[TMBTwitter_PlacesAndGeo_SimilarPlaces_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SimilarPlaces Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_PlacesAndGeo_SimilarPlaces_Inputs*)newInputSet {
		return [[[TMBTwitter_PlacesAndGeo_SimilarPlaces_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReverseGeocode Choreo.
 */
@implementation TMBTwitter_PlacesAndGeo_ReverseGeocode_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Accuracy input for this Choreo.
	*(optional, string) A hint on the "region" in which to search. If a number, then this is a radius in meters. You can also specify feet by using the ft suffix (i.e. 5ft).
	 */
	-(void)setAccuracy:(NSString*)Accuracy {
		[super setInput:@"Accuracy" toValue:Accuracy];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) If supplied, the response will use the JSONP format with a callback of the given name.
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Twitter.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Twitter.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Granularity input for this Choreo.
	*(optional, string) This is the minimal granularity of place types to return and must be one of: poi, neighborhood, city, admin or country. Defaults to neighborhood.
	 */
	-(void)setGranularity:(NSString*)Granularity {
		[super setInput:@"Granularity" toValue:Granularity];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude to search around.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude to search around.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(optional, integer) The maximum number of results to return.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReverseGeocode Choreo.
 */
@implementation TMBTwitter_PlacesAndGeo_ReverseGeocode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Twitter.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Given a latitude and a longitude coordinates, returns up to 20 places that can be used as a Place ID when updating a status.
 */
@implementation TMBTwitter_PlacesAndGeo_ReverseGeocode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTwitter_PlacesAndGeo_ReverseGeocode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Twitter/PlacesAndGeo/ReverseGeocode"] autorelease];
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
		TMBTwitter_PlacesAndGeo_ReverseGeocode_ResultSet *results = [[[TMBTwitter_PlacesAndGeo_ReverseGeocode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReverseGeocode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTwitter_PlacesAndGeo_ReverseGeocode_Inputs*)newInputSet {
		return [[[TMBTwitter_PlacesAndGeo_ReverseGeocode_Inputs alloc] init] autorelease];
	}
@end
	