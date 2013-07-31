/*!
 * @TMBInstagram.m
 *
 * Execute Choreographies from the Temboo Instagram bundle.
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

#import "TMBInstagram.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetUserInformation Choreo.
 */
@implementation TMBInstagram_GetUserInformation_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth 2.0 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The ID of the user that you want to retrieve. Defaults to 'self' which will return the user associated with the access token.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserInformation Choreo.
 */
@implementation TMBInstagram_GetUserInformation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves basic information about a user.
 */
@implementation TMBInstagram_GetUserInformation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_GetUserInformation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/GetUserInformation"] autorelease];
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
		TMBInstagram_GetUserInformation_ResultSet *results = [[[TMBInstagram_GetUserInformation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUserInformation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_GetUserInformation_Inputs*)newInputSet {
		return [[[TMBInstagram_GetUserInformation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBInstagram_OAuth_InitializeOAuth_Inputs

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
	*(required, string) The Client ID provided by Instagram after registering your application.
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

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBInstagram_OAuth_InitializeOAuth_ResultSet

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
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@implementation TMBInstagram_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/OAuth/InitializeOAuth"] autorelease];
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
		TMBInstagram_OAuth_InitializeOAuth_ResultSet *results = [[[TMBInstagram_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBInstagram_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUserFeed Choreo.
 */
@implementation TMBInstagram_GetUserFeed_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth 2.0 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Count of media to return.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the MaxID input for this Choreo.
	*(optional, integer) Returns media earlier than this max_id.
	 */
	-(void)setMaxID:(NSString*)MaxID {
		[super setInput:@"MaxID" toValue:MaxID];
	}

	/*!
	 * Set the value of the MinID input for this Choreo.
	*(optional, integer) Returns media later than this min_id.
	 */
	-(void)setMinID:(NSString*)MinID {
		[super setInput:@"MinID" toValue:MinID];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The ID of the user that you want to retrieve. Defaults to 'self' which will return the user associated with the access token.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserFeed Choreo.
 */
@implementation TMBInstagram_GetUserFeed_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the authenticated user's feed.
 */
@implementation TMBInstagram_GetUserFeed

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_GetUserFeed Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/GetUserFeed"] autorelease];
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
		TMBInstagram_GetUserFeed_ResultSet *results = [[[TMBInstagram_GetUserFeed_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUserFeed Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_GetUserFeed_Inputs*)newInputSet {
		return [[[TMBInstagram_GetUserFeed_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TagName Choreo.
 */
@implementation TMBInstagram_TagName_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the TagName input for this Choreo.
	*(required, string) Enter a valid tag identifier, such as: nofliter
	 */
	-(void)setTagName:(NSString*)TagName {
		[super setInput:@"TagName" toValue:TagName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TagName Choreo.
 */
@implementation TMBInstagram_TagName_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about a tag object.
 */
@implementation TMBInstagram_TagName

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_TagName Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/TagName"] autorelease];
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
		TMBInstagram_TagName_ResultSet *results = [[[TMBInstagram_TagName_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TagName Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_TagName_Inputs*)newInputSet {
		return [[[TMBInstagram_TagName_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPopularMedia Choreo.
 */
@implementation TMBInstagram_GetPopularMedia_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPopularMedia Choreo.
 */
@implementation TMBInstagram_GetPopularMedia_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of what media is most popular at the moment.
 */
@implementation TMBInstagram_GetPopularMedia

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_GetPopularMedia Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/GetPopularMedia"] autorelease];
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
		TMBInstagram_GetPopularMedia_ResultSet *results = [[[TMBInstagram_GetPopularMedia_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPopularMedia Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_GetPopularMedia_Inputs*)newInputSet {
		return [[[TMBInstagram_GetPopularMedia_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UserIsFollowedBy Choreo.
 */
@implementation TMBInstagram_UserIsFollowedBy_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The ID of the user that you want to retrieve. Defaults to 'self' which will return the user associated with the access token.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserIsFollowedBy Choreo.
 */
@implementation TMBInstagram_UserIsFollowedBy_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve the list of users following this user.
 */
@implementation TMBInstagram_UserIsFollowedBy

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_UserIsFollowedBy Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/UserIsFollowedBy"] autorelease];
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
		TMBInstagram_UserIsFollowedBy_ResultSet *results = [[[TMBInstagram_UserIsFollowedBy_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UserIsFollowedBy Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_UserIsFollowedBy_Inputs*)newInputSet {
		return [[[TMBInstagram_UserIsFollowedBy_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentMediaForLocation Choreo.
 */
@implementation TMBInstagram_GetRecentMediaForLocation_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the LocationID input for this Choreo.
	*(required, integer) The ID for the location that you want to retrieve information for.
	 */
	-(void)setLocationID:(NSString*)LocationID {
		[super setInput:@"LocationID" toValue:LocationID];
	}

	/*!
	 * Set the value of the MaxID input for this Choreo.
	*(optional, integer) Returns media after this max_id.
	 */
	-(void)setMaxID:(NSString*)MaxID {
		[super setInput:@"MaxID" toValue:MaxID];
	}

	/*!
	 * Set the value of the MaxTimestamp input for this Choreo.
	*(optional, date) Returns media before this UNIX timestamp.
	 */
	-(void)setMaxTimestamp:(NSString*)MaxTimestamp {
		[super setInput:@"MaxTimestamp" toValue:MaxTimestamp];
	}

	/*!
	 * Set the value of the MinID input for this Choreo.
	*(optional, integer) Returns media before this min_id.
	 */
	-(void)setMinID:(NSString*)MinID {
		[super setInput:@"MinID" toValue:MinID];
	}

	/*!
	 * Set the value of the MinTimestamp input for this Choreo.
	*(optional, date) Returns media after this UNIX timestamp.
	 */
	-(void)setMinTimestamp:(NSString*)MinTimestamp {
		[super setInput:@"MinTimestamp" toValue:MinTimestamp];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentMediaForLocation Choreo.
 */
@implementation TMBInstagram_GetRecentMediaForLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of recent media objects from a given location.
 */
@implementation TMBInstagram_GetRecentMediaForLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_GetRecentMediaForLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/GetRecentMediaForLocation"] autorelease];
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
		TMBInstagram_GetRecentMediaForLocation_ResultSet *results = [[[TMBInstagram_GetRecentMediaForLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecentMediaForLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_GetRecentMediaForLocation_Inputs*)newInputSet {
		return [[[TMBInstagram_GetRecentMediaForLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMediaComments Choreo.
 */
@implementation TMBInstagram_GetMediaComments_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the MediaID input for this Choreo.
	*(required, integer) The ID of the media object that you want to get comments for. For example, a valid MediaID could be 3.
	 */
	-(void)setMediaID:(NSString*)MediaID {
		[super setInput:@"MediaID" toValue:MediaID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMediaComments Choreo.
 */
@implementation TMBInstagram_GetMediaComments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a full list of comments for a specified media object.
 */
@implementation TMBInstagram_GetMediaComments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_GetMediaComments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/GetMediaComments"] autorelease];
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
		TMBInstagram_GetMediaComments_ResultSet *results = [[[TMBInstagram_GetMediaComments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMediaComments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_GetMediaComments_Inputs*)newInputSet {
		return [[[TMBInstagram_GetMediaComments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLikedMediaForUser Choreo.
 */
@implementation TMBInstagram_GetLikedMediaForUser_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth 2.0 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Count of media to return.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the MaxID input for this Choreo.
	*(optional, integer) Returns media liked before this id.
	 */
	-(void)setMaxID:(NSString*)MaxID {
		[super setInput:@"MaxID" toValue:MaxID];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The ID of the user that you want to retrieve. Defaults to 'self' which will return the user associated with the access token.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLikedMediaForUser Choreo.
 */
@implementation TMBInstagram_GetLikedMediaForUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the authenticated user's list of media they've liked.
 */
@implementation TMBInstagram_GetLikedMediaForUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_GetLikedMediaForUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/GetLikedMediaForUser"] autorelease];
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
		TMBInstagram_GetLikedMediaForUser_ResultSet *results = [[[TMBInstagram_GetLikedMediaForUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLikedMediaForUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_GetLikedMediaForUser_Inputs*)newInputSet {
		return [[[TMBInstagram_GetLikedMediaForUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateMediaComment Choreo.
 */
@implementation TMBInstagram_CreateMediaComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth 2.0 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the MediaID input for this Choreo.
	*(required, integer) The ID of the media object that you want to get comments for. For example, a valid MediaID could be 3.
	 */
	-(void)setMediaID:(NSString*)MediaID {
		[super setInput:@"MediaID" toValue:MediaID];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text to post as a comment on the media.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateMediaComment Choreo.
 */
@implementation TMBInstagram_CreateMediaComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a comment on a specified media object. 
 */
@implementation TMBInstagram_CreateMediaComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_CreateMediaComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/CreateMediaComment"] autorelease];
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
		TMBInstagram_CreateMediaComment_ResultSet *results = [[[TMBInstagram_CreateMediaComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateMediaComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_CreateMediaComment_Inputs*)newInputSet {
		return [[[TMBInstagram_CreateMediaComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchMedia Choreo.
 */
@implementation TMBInstagram_SearchMedia_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the Distance input for this Choreo.
	*(optional, integer) The distance in meters. Defaults to 1000. Max is 5000.
	 */
	-(void)setDistance:(NSString*)Distance {
		[super setInput:@"Distance" toValue:Distance];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) Latitude of the center search coordinate.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) Longitude of the center search coordinate.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the MaxTimestamp input for this Choreo.
	*(optional, date) A unix timestamp. All media returned will be taken earlier than this timestamp.
	 */
	-(void)setMaxTimestamp:(NSString*)MaxTimestamp {
		[super setInput:@"MaxTimestamp" toValue:MaxTimestamp];
	}

	/*!
	 * Set the value of the MinTimestamp input for this Choreo.
	*(optional, date) A unix timestamp. All media returned will be taken later than this timestamp.
	 */
	-(void)setMinTimestamp:(NSString*)MinTimestamp {
		[super setInput:@"MinTimestamp" toValue:MinTimestamp];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchMedia Choreo.
 */
@implementation TMBInstagram_SearchMedia_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to search for media in a given area.
 */
@implementation TMBInstagram_SearchMedia

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_SearchMedia Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/SearchMedia"] autorelease];
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
		TMBInstagram_SearchMedia_ResultSet *results = [[[TMBInstagram_SearchMedia_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchMedia Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_SearchMedia_Inputs*)newInputSet {
		return [[[TMBInstagram_SearchMedia_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMediaByID Choreo.
 */
@implementation TMBInstagram_GetMediaByID_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the MediaID input for this Choreo.
	*(required, integer) The ID of the media object you want to retrieve. For example, a valid MediaID could be 3.
	 */
	-(void)setMediaID:(NSString*)MediaID {
		[super setInput:@"MediaID" toValue:MediaID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMediaByID Choreo.
 */
@implementation TMBInstagram_GetMediaByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about a specified media object.
 */
@implementation TMBInstagram_GetMediaByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_GetMediaByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/GetMediaByID"] autorelease];
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
		TMBInstagram_GetMediaByID_ResultSet *results = [[[TMBInstagram_GetMediaByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMediaByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_GetMediaByID_Inputs*)newInputSet {
		return [[[TMBInstagram_GetMediaByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RecentlyTaggedMedia Choreo.
 */
@implementation TMBInstagram_RecentlyTaggedMedia_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the MaxID input for this Choreo.
	*(optional, integer) Returns media earlier than this max_id.
	 */
	-(void)setMaxID:(NSString*)MaxID {
		[super setInput:@"MaxID" toValue:MaxID];
	}

	/*!
	 * Set the value of the MinID input for this Choreo.
	*(optional, integer) Returns media later than this min_id.
	 */
	-(void)setMinID:(NSString*)MinID {
		[super setInput:@"MinID" toValue:MinID];
	}

	/*!
	 * Set the value of the TagName input for this Choreo.
	*(required, string) Enter a valid tag identifier, such as: nofliter
	 */
	-(void)setTagName:(NSString*)TagName {
		[super setInput:@"TagName" toValue:TagName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RecentlyTaggedMedia Choreo.
 */
@implementation TMBInstagram_RecentlyTaggedMedia_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of recently tagged media.
 */
@implementation TMBInstagram_RecentlyTaggedMedia

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_RecentlyTaggedMedia Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/RecentlyTaggedMedia"] autorelease];
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
		TMBInstagram_RecentlyTaggedMedia_ResultSet *results = [[[TMBInstagram_RecentlyTaggedMedia_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RecentlyTaggedMedia Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_RecentlyTaggedMedia_Inputs*)newInputSet {
		return [[[TMBInstagram_RecentlyTaggedMedia_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchLocations Choreo.
 */
@implementation TMBInstagram_SearchLocations_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the Distance input for this Choreo.
	*(optional, integer) The distance to search. Default is 1000m (distance=1000), max distance is 5000.
	 */
	-(void)setDistance:(NSString*)Distance {
		[super setInput:@"Distance" toValue:Distance];
	}

	/*!
	 * Set the value of the FoursquareID input for this Choreo.
	*(conditional, string) Returns a location mapped off of a foursquare v2 api location id. If used, you are not required to provide values for Latitude or Longitude.
	 */
	-(void)setFoursquareID:(NSString*)FoursquareID {
		[super setInput:@"FoursquareID" toValue:FoursquareID];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(conditional, decimal) Latitude of the center search coordinate. If used, Longitude is required.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(conditional, decimal) Longitude of the center search coordinate. If used, Latitude is required.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchLocations Choreo.
 */
@implementation TMBInstagram_SearchLocations_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for locations by geographic coordinates. 
 */
@implementation TMBInstagram_SearchLocations

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_SearchLocations Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/SearchLocations"] autorelease];
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
		TMBInstagram_SearchLocations_ResultSet *results = [[[TMBInstagram_SearchLocations_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchLocations Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_SearchLocations_Inputs*)newInputSet {
		return [[[TMBInstagram_SearchLocations_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UserFollows Choreo.
 */
@implementation TMBInstagram_UserFollows_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth 2.0 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The ID of the user that you want to retrieve. Defaults to 'self' which will return the user associated with the access token.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserFollows Choreo.
 */
@implementation TMBInstagram_UserFollows_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve the list of users that this user is following.
 */
@implementation TMBInstagram_UserFollows

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_UserFollows Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/UserFollows"] autorelease];
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
		TMBInstagram_UserFollows_ResultSet *results = [[[TMBInstagram_UserFollows_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UserFollows Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_UserFollows_Inputs*)newInputSet {
		return [[[TMBInstagram_UserFollows_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentMediaForUser Choreo.
 */
@implementation TMBInstagram_GetRecentMediaForUser_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth 2.0 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Count of media to return.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the MaxID input for this Choreo.
	*(optional, integer) Return media liked before this id.
	 */
	-(void)setMaxID:(NSString*)MaxID {
		[super setInput:@"MaxID" toValue:MaxID];
	}

	/*!
	 * Set the value of the MinID input for this Choreo.
	*(optional, integer) Returns media later than this min_id.
	 */
	-(void)setMinID:(NSString*)MinID {
		[super setInput:@"MinID" toValue:MinID];
	}

	/*!
	 * Set the value of the MinTimestamp input for this Choreo.
	*(optional, date) Returns media after this UNIX timestamp.
	 */
	-(void)setMinTimestamp:(NSString*)MinTimestamp {
		[super setInput:@"MinTimestamp" toValue:MinTimestamp];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The ID of the user that you want to retrieve. Defaults to 'self' which will return the user associated with the access token.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentMediaForUser Choreo.
 */
@implementation TMBInstagram_GetRecentMediaForUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the most recent media published by a user.
 */
@implementation TMBInstagram_GetRecentMediaForUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_GetRecentMediaForUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/GetRecentMediaForUser"] autorelease];
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
		TMBInstagram_GetRecentMediaForUser_ResultSet *results = [[[TMBInstagram_GetRecentMediaForUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecentMediaForUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_GetRecentMediaForUser_Inputs*)newInputSet {
		return [[[TMBInstagram_GetRecentMediaForUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLocationInformation Choreo.
 */
@implementation TMBInstagram_GetLocationInformation_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the LocationID input for this Choreo.
	*(required, integer) The ID for the location that you want to retrieve information for.
	 */
	-(void)setLocationID:(NSString*)LocationID {
		[super setInput:@"LocationID" toValue:LocationID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLocationInformation Choreo.
 */
@implementation TMBInstagram_GetLocationInformation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about a location.
 */
@implementation TMBInstagram_GetLocationInformation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_GetLocationInformation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/GetLocationInformation"] autorelease];
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
		TMBInstagram_GetLocationInformation_ResultSet *results = [[[TMBInstagram_GetLocationInformation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLocationInformation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_GetLocationInformation_Inputs*)newInputSet {
		return [[[TMBInstagram_GetLocationInformation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBInstagram_OAuth_FinalizeOAuth_Inputs

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
	*(required, string) The Client ID provided by Instagram after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by Instagram after registering your application.
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
@implementation TMBInstagram_OAuth_FinalizeOAuth_ResultSet

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

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Instagram access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@implementation TMBInstagram_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/OAuth/FinalizeOAuth"] autorelease];
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
		TMBInstagram_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBInstagram_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBInstagram_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMediaByLikes Choreo.
 */
@implementation TMBInstagram_GetMediaByLikes_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the MediaID input for this Choreo.
	*(required, integer) The ID of the media object you want to retrieve. For example, a valid MediaID could be 3.
	 */
	-(void)setMediaID:(NSString*)MediaID {
		[super setInput:@"MediaID" toValue:MediaID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMediaByLikes Choreo.
 */
@implementation TMBInstagram_GetMediaByLikes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Instagram.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of what media is most popular at the moment, sorted by Likes.
 */
@implementation TMBInstagram_GetMediaByLikes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInstagram_GetMediaByLikes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Instagram/GetMediaByLikes"] autorelease];
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
		TMBInstagram_GetMediaByLikes_ResultSet *results = [[[TMBInstagram_GetMediaByLikes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMediaByLikes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInstagram_GetMediaByLikes_Inputs*)newInputSet {
		return [[[TMBInstagram_GetMediaByLikes_Inputs alloc] init] autorelease];
	}
@end
	