/*!
 * @TMBFoursquare.m
 *
 * Execute Choreographies from the Temboo Foursquare bundle.
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

#import "TMBFoursquare.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the Likes Choreo.
 */
@implementation TMBFoursquare_Checkins_Likes_Inputs

	/*!
	 * Set the value of the CheckinID input for this Choreo.
	*(required, string) The ID of the check-in to retrieve likes for.
	 */
	-(void)setCheckinID:(NSString*)CheckinID {
		[super setInput:@"CheckinID" toValue:CheckinID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string. Required unless specifying the ClientID and ClientSecret.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Likes Choreo.
 */
@implementation TMBFoursquare_Checkins_Likes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}




	
@end

/*!
 * Returns friends and a total count of users who have liked a check-in.
 */
@implementation TMBFoursquare_Checkins_Likes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Checkins_Likes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Checkins/Likes"] autorelease];
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
		TMBFoursquare_Checkins_Likes_ResultSet *results = [[[TMBFoursquare_Checkins_Likes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Likes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Checkins_Likes_Inputs*)newInputSet {
		return [[[TMBFoursquare_Checkins_Likes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Listed Choreo.
 */
@implementation TMBFoursquare_Tips_Listed_Inputs

	/*!
	 * Set the value of the Group input for this Choreo.
	*(optional, string) Accepted values are: created, edited, followed, friends, other. If no acting user is present, only other is supported.
	 */
	-(void)setGroup:(NSString*)Group {
		[super setInput:@"Group" toValue:Group];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) Your Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TipID input for this Choreo.
	*(required, string) The id of a tip to get lists for.
	 */
	-(void)setTipID:(NSString*)TipID {
		[super setInput:@"TipID" toValue:TipID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Listed Choreo.
 */
@implementation TMBFoursquare_Tips_Listed_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns the lists that a tip appears on.
 */
@implementation TMBFoursquare_Tips_Listed

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Tips_Listed Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Tips/Listed"] autorelease];
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
		TMBFoursquare_Tips_Listed_ResultSet *results = [[[TMBFoursquare_Tips_Listed_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Listed Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Tips_Listed_Inputs*)newInputSet {
		return [[[TMBFoursquare_Tips_Listed_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FollowList Choreo.
 */
@implementation TMBFoursquare_Lists_FollowList_Inputs

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, string) The id of a user-created list.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FollowList Choreo.
 */
@implementation TMBFoursquare_Lists_FollowList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows a user to follow a list.
 */
@implementation TMBFoursquare_Lists_FollowList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Lists_FollowList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Lists/FollowList"] autorelease];
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
		TMBFoursquare_Lists_FollowList_ResultSet *results = [[[TMBFoursquare_Lists_FollowList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FollowList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Lists_FollowList_Inputs*)newInputSet {
		return [[[TMBFoursquare_Lists_FollowList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateList Choreo.
 */
@implementation TMBFoursquare_Lists_UpdateList_Inputs

	/*!
	 * Set the value of the Collaborative input for this Choreo.
	*(optional, boolean) A flag indicating that this list can be edited by friends. Set to 1 for true. Defaults to 0 (false).
	 */
	-(void)setCollaborative:(NSString*)Collaborative {
		[super setInput:@"Collaborative" toValue:Collaborative];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) The description of the list.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, string) The id of the list to update.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the list.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(optional, string) The id of a photo that should be set as the list photo.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateList Choreo.
 */
@implementation TMBFoursquare_Lists_UpdateList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Updates a given list.
 */
@implementation TMBFoursquare_Lists_UpdateList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Lists_UpdateList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Lists/UpdateList"] autorelease];
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
		TMBFoursquare_Lists_UpdateList_ResultSet *results = [[[TMBFoursquare_Lists_UpdateList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Lists_UpdateList_Inputs*)newInputSet {
		return [[[TMBFoursquare_Lists_UpdateList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UnfollowList Choreo.
 */
@implementation TMBFoursquare_Lists_UnfollowList_Inputs

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, string) The id of a user-created list.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnfollowList Choreo.
 */
@implementation TMBFoursquare_Lists_UnfollowList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows a user to unfollow a list.
 */
@implementation TMBFoursquare_Lists_UnfollowList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Lists_UnfollowList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Lists/UnfollowList"] autorelease];
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
		TMBFoursquare_Lists_UnfollowList_ResultSet *results = [[[TMBFoursquare_Lists_UnfollowList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UnfollowList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Lists_UnfollowList_Inputs*)newInputSet {
		return [[[TMBFoursquare_Lists_UnfollowList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBFoursquare_OAuth_InitializeOAuth_Inputs

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
	*(required, string) The Client ID provided by Foursquare after registering your application.
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
@implementation TMBFoursquare_OAuth_InitializeOAuth_ResultSet

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
	 * Retrieve the value of the "AuthorizeURL" output from an execution of this Choreo.
	 * @return - NSString* (string) (Deprecated) Please refer to the AuthorizationURL output variable in your code. This output variable will be removed soon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAuthorizeURL {
		return [super getOutputByName:@"AuthorizeURL"];
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
@implementation TMBFoursquare_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/OAuth/InitializeOAuth"] autorelease];
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
		TMBFoursquare_OAuth_InitializeOAuth_ResultSet *results = [[[TMBFoursquare_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBFoursquare_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddItem Choreo.
 */
@implementation TMBFoursquare_Lists_AddItem_Inputs

	/*!
	 * Set the value of the ItemID input for this Choreo.
	*(conditional, string) The id of an item on a list that you wish to copy to the target list. Used in conjuction with ListID. Note that one of the following must be specified: VenueID, TipID, ItemListID, or ItemID.
	 */
	-(void)setItemID:(NSString*)ItemID {
		[super setInput:@"ItemID" toValue:ItemID];
	}

	/*!
	 * Set the value of the ItemListID input for this Choreo.
	*(conditional, string) The ID of a list that contains an item that you wish to copy to the new list. Used in conjuction with ItemID. Note that one of the following must be specified: VenueID, TipID, ItemListID, or ItemID.
	 */
	-(void)setItemListID:(NSString*)ItemListID {
		[super setInput:@"ItemListID" toValue:ItemListID];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, string) The ID of the list that  you are adding an item to. This can be a user-created list id or one of tips, todos, or dones.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(optional, string) If the target is a user-created list, this will create a public tip on the venue. If the target is todos, the text will be a private note that is only visible to the author.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}

	/*!
	 * Set the value of the TipID input for this Choreo.
	*(conditional, string) The id of a tip to add to the list. Cannot be used in conjunction with the Text and URL inputs. Note that one of the following must be specified: VenueID, TipID, ItemListID, or ItemID.
	 */
	-(void)setTipID:(NSString*)TipID {
		[super setInput:@"TipID" toValue:TipID];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(optional, string) If adding a new tip using the Text input, this can associate a url with the tip.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(conditional, string) The id of a venue to add to the list. Note that one of the following must be specified: VenueID, TipID, ItemListID, or ItemID.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddItem Choreo.
 */
@implementation TMBFoursquare_Lists_AddItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows a user to add an item to a list.
 */
@implementation TMBFoursquare_Lists_AddItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Lists_AddItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Lists/AddItem"] autorelease];
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
		TMBFoursquare_Lists_AddItem_ResultSet *results = [[[TMBFoursquare_Lists_AddItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Lists_AddItem_Inputs*)newInputSet {
		return [[[TMBFoursquare_Lists_AddItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VenueEvents Choreo.
 */
@implementation TMBFoursquare_Venues_VenueEvents_Inputs

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(required, string) The ID associated with the venue you want to retrieve details for.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VenueEvents Choreo.
 */
@implementation TMBFoursquare_Venues_VenueEvents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows you to access information about the current events at a place.
 */
@implementation TMBFoursquare_Venues_VenueEvents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Venues_VenueEvents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Venues/VenueEvents"] autorelease];
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
		TMBFoursquare_Venues_VenueEvents_ResultSet *results = [[[TMBFoursquare_Venues_VenueEvents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VenueEvents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Venues_VenueEvents_Inputs*)newInputSet {
		return [[[TMBFoursquare_Venues_VenueEvents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Reply Choreo.
 */
@implementation TMBFoursquare_Checkins_Reply_Inputs

	/*!
	 * Set the value of the CheckinID input for this Choreo.
	*(required, string) The ID of the check-in to add a post to.
	 */
	-(void)setCheckinID:(NSString*)CheckinID {
		[super setInput:@"CheckinID" toValue:CheckinID];
	}

	/*!
	 * Set the value of the ContentID input for this Choreo.
	*(optional, string) An ID for the reply to be used in a native link. Can be up to 50 characters. The URL input must also be specified when using this parameter.
	 */
	-(void)setContentID:(NSString*)ContentID {
		[super setInput:@"ContentID" toValue:ContentID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text of the post. Max length is 200 characters.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(optional, string) A URL linking to more details. The following URL schemes are supported: http, https, foursquare, mailto, tel, and sms.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Reply Choreo.
 */
@implementation TMBFoursquare_Checkins_Reply_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Replies to a user about their check-in.
 */
@implementation TMBFoursquare_Checkins_Reply

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Checkins_Reply Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Checkins/Reply"] autorelease];
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
		TMBFoursquare_Checkins_Reply_ResultSet *results = [[[TMBFoursquare_Checkins_Reply_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Reply Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Checkins_Reply_Inputs*)newInputSet {
		return [[[TMBFoursquare_Checkins_Reply_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PhotoDetails Choreo.
 */
@implementation TMBFoursquare_Photos_PhotoDetails_Inputs

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, string) The ID of the photo to get details for.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PhotoDetails Choreo.
 */
@implementation TMBFoursquare_Photos_PhotoDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Retrieves details of a photo. 
 */
@implementation TMBFoursquare_Photos_PhotoDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Photos_PhotoDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Photos/PhotoDetails"] autorelease];
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
		TMBFoursquare_Photos_PhotoDetails_ResultSet *results = [[[TMBFoursquare_Photos_PhotoDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PhotoDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Photos_PhotoDetails_Inputs*)newInputSet {
		return [[[TMBFoursquare_Photos_PhotoDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchNearbyTips Choreo.
 */
@implementation TMBFoursquare_Tips_SearchNearbyTips_Inputs

	/*!
	 * Set the value of the Filter input for this Choreo.
	*(optional, string) Filter results.  If set to 'friends', the choreo returns tips from friends.
	 */
	-(void)setFilter:(NSString*)Filter {
		[super setInput:@"Filter" toValue:Filter];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude point of the user's location.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of results to be returned by the search, up to 500.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude point of the user's location.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) Your Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Use to page through the list of results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) Only find tips matching the given term. Cannot be used in conjunction with 'friends' filter.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchNearbyTips Choreo.
 */
@implementation TMBFoursquare_Tips_SearchNearbyTips_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Get a list of tips near the specified area.
 */
@implementation TMBFoursquare_Tips_SearchNearbyTips

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Tips_SearchNearbyTips Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Tips/SearchNearbyTips"] autorelease];
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
		TMBFoursquare_Tips_SearchNearbyTips_ResultSet *results = [[[TMBFoursquare_Tips_SearchNearbyTips_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchNearbyTips Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Tips_SearchNearbyTips_Inputs*)newInputSet {
		return [[[TMBFoursquare_Tips_SearchNearbyTips_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PhotosFromUser Choreo.
 */
@implementation TMBFoursquare_Users_PhotosFromUser_Inputs

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of results to return, up to 500.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Identity of the user to get badges for. Defaults to "self" to get lists of the acting user.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PhotosFromUser Choreo.
 */
@implementation TMBFoursquare_Users_PhotosFromUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns photos from a user.
 */
@implementation TMBFoursquare_Users_PhotosFromUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_PhotosFromUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/PhotosFromUser"] autorelease];
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
		TMBFoursquare_Users_PhotosFromUser_ResultSet *results = [[[TMBFoursquare_Users_PhotosFromUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PhotosFromUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_PhotosFromUser_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_PhotosFromUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddTips Choreo.
 */
@implementation TMBFoursquare_Tips_AddTips_Inputs

	/*!
	 * Set the value of the Broadcast input for this Choreo.
	*(optional, string) Whether to broadcast this tip. Set to "twitter" if you want to send to twitter, "facebook" if you want to send to facebook, or "twitter,facebook" if you want to send to both.
	 */
	-(void)setBroadcast:(NSString*)Broadcast {
		[super setInput:@"Broadcast" toValue:Broadcast];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) Your Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text of the tip, up to 200 characters.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(optional, string) A URL related to this tip.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(required, string) The venue where you want to add this tip.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddTips Choreo.
 */
@implementation TMBFoursquare_Tips_AddTips_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows you to add a new tip at a venue. 
 */
@implementation TMBFoursquare_Tips_AddTips

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Tips_AddTips Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Tips/AddTips"] autorelease];
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
		TMBFoursquare_Tips_AddTips_ResultSet *results = [[[TMBFoursquare_Tips_AddTips_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddTips Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Tips_AddTips_Inputs*)newInputSet {
		return [[[TMBFoursquare_Tips_AddTips_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VenueHistory Choreo.
 */
@implementation TMBFoursquare_Users_VenueHistory_Inputs

	/*!
	 * Set the value of the AfterTimeStamp input for this Choreo.
	*(optional, date) Retrieve the first results after the seconds entered since epoch time.
	 */
	-(void)setAfterTimeStamp:(NSString*)AfterTimeStamp {
		[super setInput:@"AfterTimeStamp" toValue:AfterTimeStamp];
	}

	/*!
	 * Set the value of the BeforeTimeStamp input for this Choreo.
	*(optional, date) Retrieve the first results prior to the seconds specified. Useful for paging backward in time.
	 */
	-(void)setBeforeTimeStamp:(NSString*)BeforeTimeStamp {
		[super setInput:@"BeforeTimeStamp" toValue:BeforeTimeStamp];
	}

	/*!
	 * Set the value of the CategoryID input for this Choreo.
	*(optional, string) Limits returned venues to those in this category. If specifying a top-level category, all sub-categories will also match the query.
	 */
	-(void)setCategoryID:(NSString*)CategoryID {
		[super setInput:@"CategoryID" toValue:CategoryID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Only 'self' is supported at this moment by the Foursquare API. Defaults to: self.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VenueHistory Choreo.
 */
@implementation TMBFoursquare_Users_VenueHistory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns a list of all venues visited by the specified user, along with how many visits and when they were last there. 
 */
@implementation TMBFoursquare_Users_VenueHistory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_VenueHistory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/VenueHistory"] autorelease];
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
		TMBFoursquare_Users_VenueHistory_ResultSet *results = [[[TMBFoursquare_Users_VenueHistory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VenueHistory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_VenueHistory_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_VenueHistory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PendingFriendRequests Choreo.
 */
@implementation TMBFoursquare_Users_PendingFriendRequests_Inputs

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PendingFriendRequests Choreo.
 */
@implementation TMBFoursquare_Users_PendingFriendRequests_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Retrieves a list of pending friend requests for the authenticated user.
 */
@implementation TMBFoursquare_Users_PendingFriendRequests

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_PendingFriendRequests Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/PendingFriendRequests"] autorelease];
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
		TMBFoursquare_Users_PendingFriendRequests_ResultSet *results = [[[TMBFoursquare_Users_PendingFriendRequests_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PendingFriendRequests Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_PendingFriendRequests_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_PendingFriendRequests_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBFoursquare_OAuth_FinalizeOAuth_Inputs

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
	*(required, string) The Client ID provided by Foursquare after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by Foursquare after registering your application.
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
@implementation TMBFoursquare_OAuth_FinalizeOAuth_ResultSet

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
 * Completes the OAuth process by retrieving a Foursquare access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@implementation TMBFoursquare_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/OAuth/FinalizeOAuth"] autorelease];
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
		TMBFoursquare_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBFoursquare_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBFoursquare_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateItem Choreo.
 */
@implementation TMBFoursquare_Lists_UpdateItem_Inputs

	/*!
	 * Set the value of the ItemID input for this Choreo.
	*(required, string) The id of an item on a list that you wish to update.
	 */
	-(void)setItemID:(NSString*)ItemID {
		[super setInput:@"ItemID" toValue:ItemID];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, string) The ID of a user-created list to update
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(optional, string) If present and non-empty, adds a photo to this item. If present and empty, will remove the photo on this item. If the photo was a private checkin photo, it will be promoted to a public venue photo.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(optional, string) If present, this creates a public tip on the venue and replaces any existing tip on the item. Cannot be used in conjuction with TipID or PhotoID.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}

	/*!
	 * Set the value of the TipID input for this Choreo.
	*(optional, string) The id of a tip to add to the list. Cannot be used in conjunction with the Text and URL inputs. Note that one of the following must be specified: VenueID, TipID, ItemListID, or ItemID.
	 */
	-(void)setTipID:(NSString*)TipID {
		[super setInput:@"TipID" toValue:TipID];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(optional, string) If adding a new tip using the Text input, this can associate a url with the tip.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateItem Choreo.
 */
@implementation TMBFoursquare_Lists_UpdateItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows you to add or remove photos and tips from items on user-created lists.
 */
@implementation TMBFoursquare_Lists_UpdateItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Lists_UpdateItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Lists/UpdateItem"] autorelease];
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
		TMBFoursquare_Lists_UpdateItem_ResultSet *results = [[[TMBFoursquare_Lists_UpdateItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Lists_UpdateItem_Inputs*)newInputSet {
		return [[[TMBFoursquare_Lists_UpdateItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchVenues Choreo.
 */
@implementation TMBFoursquare_Venues_SearchVenues_Inputs

	/*!
	 * Set the value of the AccuracyOfCoordinates input for this Choreo.
	*(optional, integer) Accuracy of latitude and longitude, in meters. Currently, this parameter   does not affect search results.
	 */
	-(void)setAccuracyOfCoordinates:(NSString*)AccuracyOfCoordinates {
		[super setInput:@"AccuracyOfCoordinates" toValue:AccuracyOfCoordinates];
	}

	/*!
	 * Set the value of the AltitudeAccuracy input for this Choreo.
	*(optional, integer) Accuracy of the user's altitude, in meters. Currently, this parameter does not affect search results.
	 */
	-(void)setAltitudeAccuracy:(NSString*)AltitudeAccuracy {
		[super setInput:@"AltitudeAccuracy" toValue:AltitudeAccuracy];
	}

	/*!
	 * Set the value of the Altitude input for this Choreo.
	*(optional, integer) Altitude of the user's location, in meters. Currently, this parameter does not affect search results.
	 */
	-(void)setAltitude:(NSString*)Altitude {
		[super setInput:@"Altitude" toValue:Altitude];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Intent input for this Choreo.
	*(optional, string) Indicates your intent when performing the search.  Enter: checkin (default), match (requires Query and Latitude/Longitude to be provided).
	 */
	-(void)setIntent:(NSString*)Intent {
		[super setInput:@"Intent" toValue:Intent];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude point of the user's location.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of results to retun, up to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude point of the user's location.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(conditional, string) The Foursquare API Oauth token string. Required unless specifying the ClientID and ClientSecret.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) Your search string.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchVenues Choreo.
 */
@implementation TMBFoursquare_Venues_SearchVenues_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Obtain a list of venues near the current location. 
 */
@implementation TMBFoursquare_Venues_SearchVenues

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Venues_SearchVenues Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Venues/SearchVenues"] autorelease];
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
		TMBFoursquare_Venues_SearchVenues_ResultSet *results = [[[TMBFoursquare_Venues_SearchVenues_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchVenues Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Venues_SearchVenues_Inputs*)newInputSet {
		return [[[TMBFoursquare_Venues_SearchVenues_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateCheckin Choreo.
 */
@implementation TMBFoursquare_Checkins_CreateCheckin_Inputs

	/*!
	 * Set the value of the AccuracyOfCoordinates input for this Choreo.
	*(optional, integer) Accuracy of the user's latitude and longitude, in meters.
	 */
	-(void)setAccuracyOfCoordinates:(NSString*)AccuracyOfCoordinates {
		[super setInput:@"AccuracyOfCoordinates" toValue:AccuracyOfCoordinates];
	}

	/*!
	 * Set the value of the AltitudeAccuracy input for this Choreo.
	*(optional, integer) Vertical accuracy of the user's location, in meters.
	 */
	-(void)setAltitudeAccuracy:(NSString*)AltitudeAccuracy {
		[super setInput:@"AltitudeAccuracy" toValue:AltitudeAccuracy];
	}

	/*!
	 * Set the value of the Altitude input for this Choreo.
	*(optional, integer) Altitude of the user's location, in meters.
	 */
	-(void)setAltitude:(NSString*)Altitude {
		[super setInput:@"Altitude" toValue:Altitude];
	}

	/*!
	 * Set the value of the Broadcast input for this Choreo.
	*(optional, string) Who to broadcast this check-in to. Can be a comma-delimited list: private, public, facebook, twitter, or followers. Defaults to 'public'.
	 */
	-(void)setBroadcast:(NSString*)Broadcast {
		[super setInput:@"Broadcast" toValue:Broadcast];
	}

	/*!
	 * Set the value of the EventID input for this Choreo.
	*(optional, string) The event the user is checking in to. A venueId for a venue with this eventId must also be specified in the request.
	 */
	-(void)setEventID:(NSString*)EventID {
		[super setInput:@"EventID" toValue:EventID];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(optional, decimal) The latitude point of the user's location.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(optional, decimal) The longitude point of the user's location.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Shout input for this Choreo.
	*(optional, string) A message about your check-in. The maximum length of this field is 140 characters.
	 */
	-(void)setShout:(NSString*)Shout {
		[super setInput:@"Shout" toValue:Shout];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(required, string) The venue where the user is checking in. No venueid is needed if shouting or just providing a venue name.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}

	/*!
	 * Set the value of the Venue input for this Choreo.
	*(optional, string) If you are not shouting, but you don't have a venue ID or prefer a 'venueless' checkin, pass the venue name as a string using this parameter.
	 */
	-(void)setVenue:(NSString*)Venue {
		[super setInput:@"Venue" toValue:Venue];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCheckin Choreo.
 */
@implementation TMBFoursquare_Checkins_CreateCheckin_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows you to create a check-in with Foursquare.
 */
@implementation TMBFoursquare_Checkins_CreateCheckin

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Checkins_CreateCheckin Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Checkins/CreateCheckin"] autorelease];
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
		TMBFoursquare_Checkins_CreateCheckin_ResultSet *results = [[[TMBFoursquare_Checkins_CreateCheckin_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateCheckin Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Checkins_CreateCheckin_Inputs*)newInputSet {
		return [[[TMBFoursquare_Checkins_CreateCheckin_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Leaderboard Choreo.
 */
@implementation TMBFoursquare_Users_Leaderboard_Inputs

	/*!
	 * Set the value of the Neighbors input for this Choreo.
	*(optional, integer) The number of friends' scores to return that are adjacent to your score, in ranked order.
	 */
	-(void)setNeighbors:(NSString*)Neighbors {
		[super setInput:@"Neighbors" toValue:Neighbors];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Leaderboard Choreo.
 */
@implementation TMBFoursquare_Users_Leaderboard_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Return the user's Leaderboard
 */
@implementation TMBFoursquare_Users_Leaderboard

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_Leaderboard Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/Leaderboard"] autorelease];
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
		TMBFoursquare_Users_Leaderboard_ResultSet *results = [[[TMBFoursquare_Users_Leaderboard_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Leaderboard Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_Leaderboard_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_Leaderboard_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UserLists Choreo.
 */
@implementation TMBFoursquare_Users_UserLists_Inputs

	/*!
	 * Set the value of the Group input for this Choreo.
	*(optional, string) Used to narrow down the lists to returns. Valid values are: created, edited, followed, friends, and suggested. See documentation for definitions of these parameter values.
	 */
	-(void)setGroup:(NSString*)Group {
		[super setInput:@"Group" toValue:Group];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(conditional, decimal) Latitude of user's location. Required in order to return the suggested group.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(conditional, decimal) Longitude of user's location. Required in order to return the suggested group.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Identity of the user to get lists for. Defaults to "self" to get lists of the acting user.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserLists Choreo.
 */
@implementation TMBFoursquare_Users_UserLists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Retrieves user lists.
 */
@implementation TMBFoursquare_Users_UserLists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_UserLists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/UserLists"] autorelease];
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
		TMBFoursquare_Users_UserLists_ResultSet *results = [[[TMBFoursquare_Users_UserLists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UserLists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_UserLists_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_UserLists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteItem Choreo.
 */
@implementation TMBFoursquare_Lists_DeleteItem_Inputs

	/*!
	 * Set the value of the ItemID input for this Choreo.
	*(required, string) The id of the item to delete.
	 */
	-(void)setItemID:(NSString*)ItemID {
		[super setInput:@"ItemID" toValue:ItemID];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, string) This can be a user-created list id or one of tips, todos, or dones.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteItem Choreo.
 */
@implementation TMBFoursquare_Lists_DeleteItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows a user to delete an item from a list.

 */
@implementation TMBFoursquare_Lists_DeleteItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Lists_DeleteItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Lists/DeleteItem"] autorelease];
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
		TMBFoursquare_Lists_DeleteItem_ResultSet *results = [[[TMBFoursquare_Lists_DeleteItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Lists_DeleteItem_Inputs*)newInputSet {
		return [[[TMBFoursquare_Lists_DeleteItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddPost Choreo.
 */
@implementation TMBFoursquare_Checkins_AddPost_Inputs

	/*!
	 * Set the value of the CheckinID input for this Choreo.
	*(required, string) The ID of the check-in to add a post to.
	 */
	-(void)setCheckinID:(NSString*)CheckinID {
		[super setInput:@"CheckinID" toValue:CheckinID];
	}

	/*!
	 * Set the value of the ContentID input for this Choreo.
	*(optional, string) An ID for the post to be used in a native link. Can be up to 50 characters. The URL input must also be specified when using this parameter.
	 */
	-(void)setContentID:(NSString*)ContentID {
		[super setInput:@"ContentID" toValue:ContentID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text of the post. Max length is 200 characters.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(optional, string) A URL linking to more details. The following URL schemes are supported: http, https, foursquare, mailto, tel, and sms.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddPost Choreo.
 */
@implementation TMBFoursquare_Checkins_AddPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Posts user-generated content from an external app to a Foursquare check-in.
 */
@implementation TMBFoursquare_Checkins_AddPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Checkins_AddPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Checkins/AddPost"] autorelease];
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
		TMBFoursquare_Checkins_AddPost_ResultSet *results = [[[TMBFoursquare_Checkins_AddPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Checkins_AddPost_Inputs*)newInputSet {
		return [[[TMBFoursquare_Checkins_AddPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Similar Choreo.
 */
@implementation TMBFoursquare_Venues_Similar_Inputs

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(required, string) The id for the venue you want similar venues for.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Similar Choreo.
 */
@implementation TMBFoursquare_Venues_Similar_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns a list of venues similar to the specified venue.
 */
@implementation TMBFoursquare_Venues_Similar

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Venues_Similar Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Venues/Similar"] autorelease];
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
		TMBFoursquare_Venues_Similar_ResultSet *results = [[[TMBFoursquare_Venues_Similar_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Similar Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Venues_Similar_Inputs*)newInputSet {
		return [[[TMBFoursquare_Venues_Similar_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListFriends Choreo.
 */
@implementation TMBFoursquare_Users_ListFriends_Inputs

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results returned, up to 500.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Specify an offest to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Identity of the user to get friends for. Defaults to "self" to get lists of the acting user.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListFriends Choreo.
 */
@implementation TMBFoursquare_Users_ListFriends_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Retrieve a list of a user's friends.
 */
@implementation TMBFoursquare_Users_ListFriends

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_ListFriends Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/ListFriends"] autorelease];
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
		TMBFoursquare_Users_ListFriends_ResultSet *results = [[[TMBFoursquare_Users_ListFriends_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListFriends Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_ListFriends_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_ListFriends_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindUsers Choreo.
 */
@implementation TMBFoursquare_Users_FindUsers_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) A comma-delimited list of email addresses to look for. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the FacebookID input for this Choreo.
	*(conditional, string) A comma-delimited list of Facebook ID's to look for. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
	 */
	-(void)setFacebookID:(NSString*)FacebookID {
		[super setInput:@"FacebookID" toValue:FacebookID];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(conditional, string) A single string to search for in users' names. A single string to search for in users' names. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Phone input for this Choreo.
	*(conditional, string) A comma-delimited list of phone numbers to look for. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
	 */
	-(void)setPhone:(NSString*)Phone {
		[super setInput:@"Phone" toValue:Phone];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TwitterSource input for this Choreo.
	*(conditional, string) A single Twitter handle. Results will be users that this handle follows on Twitter who use Foursquare. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
	 */
	-(void)setTwitterSource:(NSString*)TwitterSource {
		[super setInput:@"TwitterSource" toValue:TwitterSource];
	}

	/*!
	 * Set the value of the Twitter input for this Choreo.
	*(conditional, string) A comma-delimited list of Twitter handles to look for. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
	 */
	-(void)setTwitter:(NSString*)Twitter {
		[super setInput:@"Twitter" toValue:Twitter];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindUsers Choreo.
 */
@implementation TMBFoursquare_Users_FindUsers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows a user to locate friends.
 */
@implementation TMBFoursquare_Users_FindUsers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_FindUsers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/FindUsers"] autorelease];
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
		TMBFoursquare_Users_FindUsers_ResultSet *results = [[[TMBFoursquare_Users_FindUsers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindUsers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_FindUsers_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_FindUsers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListDetails Choreo.
 */
@implementation TMBFoursquare_Lists_ListDetails_Inputs

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of results to return, up to 500.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, string) The id of a user-created or followed list or an id for a tip or todo in the form of USER_ID/tips or USER_ID/todos. When getting tips or todos for the acting user, the user id is not required.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Identity of the user to get lists for. Defaults to "self" to get lists of the acting user.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListDetails Choreo.
 */
@implementation TMBFoursquare_Lists_ListDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns details about a given list. 
 */
@implementation TMBFoursquare_Lists_ListDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Lists_ListDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Lists/ListDetails"] autorelease];
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
		TMBFoursquare_Lists_ListDetails_ResultSet *results = [[[TMBFoursquare_Lists_ListDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Lists_ListDetails_Inputs*)newInputSet {
		return [[[TMBFoursquare_Lists_ListDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddComment Choreo.
 */
@implementation TMBFoursquare_Checkins_AddComment_Inputs

	/*!
	 * Set the value of the CheckinID input for this Choreo.
	*(required, string) The ID of the check-in that you want to create a comment for.
	 */
	-(void)setCheckinID:(NSString*)CheckinID {
		[super setInput:@"CheckinID" toValue:CheckinID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(required, string) The text of the comment, up to 200 characters.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddComment Choreo.
 */
@implementation TMBFoursquare_Checkins_AddComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Adds a comment to a specified check-in.
 */
@implementation TMBFoursquare_Checkins_AddComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Checkins_AddComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Checkins/AddComment"] autorelease];
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
		TMBFoursquare_Checkins_AddComment_ResultSet *results = [[[TMBFoursquare_Checkins_AddComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Checkins_AddComment_Inputs*)newInputSet {
		return [[[TMBFoursquare_Checkins_AddComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CheckinDetails Choreo.
 */
@implementation TMBFoursquare_Checkins_CheckinDetails_Inputs

	/*!
	 * Set the value of the CheckinID input for this Choreo.
	*(required, string) The ID of the check-in to retrieve additional information for.
	 */
	-(void)setCheckinID:(NSString*)CheckinID {
		[super setInput:@"CheckinID" toValue:CheckinID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Signature input for this Choreo.
	*(optional, string) When check-ins are sent to public feeds such as Twitter, foursquare appends a signature to them (s=XXXXXX). The same value can be used here.
	 */
	-(void)setSignature:(NSString*)Signature {
		[super setInput:@"Signature" toValue:Signature];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CheckinDetails Choreo.
 */
@implementation TMBFoursquare_Checkins_CheckinDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns details of a check-in.
 */
@implementation TMBFoursquare_Checkins_CheckinDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Checkins_CheckinDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Checkins/CheckinDetails"] autorelease];
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
		TMBFoursquare_Checkins_CheckinDetails_ResultSet *results = [[[TMBFoursquare_Checkins_CheckinDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CheckinDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Checkins_CheckinDetails_Inputs*)newInputSet {
		return [[[TMBFoursquare_Checkins_CheckinDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Badges Choreo.
 */
@implementation TMBFoursquare_Users_Badges_Inputs

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Identity of the user to get badges for. Defaults to "self" to get lists of the acting user.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Badges Choreo.
 */
@implementation TMBFoursquare_Users_Badges_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns badges for a given user.
 */
@implementation TMBFoursquare_Users_Badges

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_Badges Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/Badges"] autorelease];
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
		TMBFoursquare_Users_Badges_ResultSet *results = [[[TMBFoursquare_Users_Badges_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Badges Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_Badges_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_Badges_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddPhoto Choreo.
 */
@implementation TMBFoursquare_Photos_AddPhoto_Inputs

	/*!
	 * Set the value of the AltitudeAccuracy input for this Choreo.
	*(optional, integer) Vertical accuracy of the user's location, in meters.
	 */
	-(void)setAltitudeAccuracy:(NSString*)AltitudeAccuracy {
		[super setInput:@"AltitudeAccuracy" toValue:AltitudeAccuracy];
	}

	/*!
	 * Set the value of the Altitude input for this Choreo.
	*(optional, integer) Altitude of the user's location, in meters.
	 */
	-(void)setAltitude:(NSString*)Altitude {
		[super setInput:@"Altitude" toValue:Altitude];
	}

	/*!
	 * Set the value of the Broadcast input for this Choreo.
	*(optional, string) Whether to broadcast this photo. Set to "twitter" if you want to send to twitter, "facebook "if you want to send to facebook, or "twitter,facebook" if you want to send to both.
	 */
	-(void)setBroadcast:(NSString*)Broadcast {
		[super setInput:@"Broadcast" toValue:Broadcast];
	}

	/*!
	 * Set the value of the CheckinID input for this Choreo.
	*(conditional, any) The ID of the checkin to attach a photo to. One of the id fields (CheckinID, TipID, or VenueID) must be specified.
	 */
	-(void)setCheckinID:(NSString*)CheckinID {
		[super setInput:@"CheckinID" toValue:CheckinID];
	}

	/*!
	 * Set the value of the ImageFile input for this Choreo.
	*(conditional, string) The base64 encoded image contents. Required unless using the VaultFile alias (an advanced option used when running Choreos in the Temboo Designer).
	 */
	-(void)setImageFile:(NSString*)ImageFile {
		[super setInput:@"ImageFile" toValue:ImageFile];
	}

	/*!
	 * Set the value of the LLAccuracy input for this Choreo.
	*(optional, integer) Accuracy of the user's latitude and longitude, in meters.
	 */
	-(void)setLLAccuracy:(NSString*)LLAccuracy {
		[super setInput:@"LLAccuracy" toValue:LLAccuracy];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(optional, decimal) Laitude of the user's location.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(optional, decimal) Longitude of the user's location.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TipID input for this Choreo.
	*(conditional, string) The ID of the tip to attach a photo to. One of the id fields (CheckinID, TipID, or VenueID) must be specified.
	 */
	-(void)setTipID:(NSString*)TipID {
		[super setInput:@"TipID" toValue:TipID];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(conditional, string) The ID of the venue to attach a photo to. One of the id fields (CheckinID, TipID, or VenueID) must be specified.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*A path to an image in the vault. Required unless specifying the ImageFile input variable.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddPhoto Choreo.
 */
@implementation TMBFoursquare_Photos_AddPhoto_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows a user to add a new photo to a check-in, tip, or a venue.
 */
@implementation TMBFoursquare_Photos_AddPhoto

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Photos_AddPhoto Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Photos/AddPhoto"] autorelease];
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
		TMBFoursquare_Photos_AddPhoto_ResultSet *results = [[[TMBFoursquare_Photos_AddPhoto_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddPhoto Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Photos_AddPhoto_Inputs*)newInputSet {
		return [[[TMBFoursquare_Photos_AddPhoto_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteComment Choreo.
 */
@implementation TMBFoursquare_Checkins_DeleteComment_Inputs

	/*!
	 * Set the value of the CheckinID input for this Choreo.
	*(required, string) The ID of the check-in associated with the comment you want to remove.
	 */
	-(void)setCheckinID:(NSString*)CheckinID {
		[super setInput:@"CheckinID" toValue:CheckinID];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The id of the comment to remove.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteComment Choreo.
 */
@implementation TMBFoursquare_Checkins_DeleteComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Removes a comment to a specified check-in.
 */
@implementation TMBFoursquare_Checkins_DeleteComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Checkins_DeleteComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Checkins/DeleteComment"] autorelease];
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
		TMBFoursquare_Checkins_DeleteComment_ResultSet *results = [[[TMBFoursquare_Checkins_DeleteComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Checkins_DeleteComment_Inputs*)newInputSet {
		return [[[TMBFoursquare_Checkins_DeleteComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Like Choreo.
 */
@implementation TMBFoursquare_Checkins_Like_Inputs

	/*!
	 * Set the value of the CheckinID input for this Choreo.
	*(required, string) The ID of the check-in to like or unlike.
	 */
	-(void)setCheckinID:(NSString*)CheckinID {
		[super setInput:@"CheckinID" toValue:CheckinID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Set input for this Choreo.
	*(optional, boolean) Set to 1 (the default) to like this check-in. Set to 0 to undo a previous like.
	 */
	-(void)setSet:(NSString*)Set {
		[super setInput:@"Set" toValue:Set];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Like Choreo.
 */
@implementation TMBFoursquare_Checkins_Like_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows the authenticated user to like or unlike a check-in.
 */
@implementation TMBFoursquare_Checkins_Like

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Checkins_Like Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Checkins/Like"] autorelease];
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
		TMBFoursquare_Checkins_Like_ResultSet *results = [[[TMBFoursquare_Checkins_Like_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Like Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Checkins_Like_Inputs*)newInputSet {
		return [[[TMBFoursquare_Checkins_Like_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DenyFriendRequest Choreo.
 */
@implementation TMBFoursquare_Users_DenyFriendRequest_Inputs

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The user ID of a pending friend.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DenyFriendRequest Choreo.
 */
@implementation TMBFoursquare_Users_DenyFriendRequest_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Denies a pending friend request from another user.
 */
@implementation TMBFoursquare_Users_DenyFriendRequest

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_DenyFriendRequest Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/DenyFriendRequest"] autorelease];
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
		TMBFoursquare_Users_DenyFriendRequest_ResultSet *results = [[[TMBFoursquare_Users_DenyFriendRequest_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DenyFriendRequest Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_DenyFriendRequest_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_DenyFriendRequest_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TrendingVenues Choreo.
 */
@implementation TMBFoursquare_Venues_TrendingVenues_Inputs

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude point of the user's location.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of results to retun, up to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude point of the user's location.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Radius input for this Choreo.
	*(optional, integer) Radius in meters, up to approximately 2000 meters.
	 */
	-(void)setRadius:(NSString*)Radius {
		[super setInput:@"Radius" toValue:Radius];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TrendingVenues Choreo.
 */
@implementation TMBFoursquare_Venues_TrendingVenues_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns a list of venues near the current location with the most people currently checked in.
 */
@implementation TMBFoursquare_Venues_TrendingVenues

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Venues_TrendingVenues Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Venues/TrendingVenues"] autorelease];
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
		TMBFoursquare_Venues_TrendingVenues_ResultSet *results = [[[TMBFoursquare_Venues_TrendingVenues_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TrendingVenues Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Venues_TrendingVenues_Inputs*)newInputSet {
		return [[[TMBFoursquare_Venues_TrendingVenues_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Mayorships Choreo.
 */
@implementation TMBFoursquare_Users_Mayorships_Inputs

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Identity of the user to get mayorships for. Defaults to "self" to get lists of the acting user.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Mayorships Choreo.
 */
@implementation TMBFoursquare_Users_Mayorships_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns a user's mayorships.
 */
@implementation TMBFoursquare_Users_Mayorships

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_Mayorships Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/Mayorships"] autorelease];
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
		TMBFoursquare_Users_Mayorships_ResultSet *results = [[[TMBFoursquare_Users_Mayorships_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Mayorships Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_Mayorships_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_Mayorships_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Likes Choreo.
 */
@implementation TMBFoursquare_Venues_Likes_Inputs

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string. Required unless specifying the ClientID and ClientSecret.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(required, string) The ID of the venue to retrieve likes for.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Likes Choreo.
 */
@implementation TMBFoursquare_Venues_Likes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns friends and a total count of users who have liked a venue.
 */
@implementation TMBFoursquare_Venues_Likes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Venues_Likes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Venues/Likes"] autorelease];
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
		TMBFoursquare_Venues_Likes_ResultSet *results = [[[TMBFoursquare_Venues_Likes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Likes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Venues_Likes_Inputs*)newInputSet {
		return [[[TMBFoursquare_Venues_Likes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Explore Choreo.
 */
@implementation TMBFoursquare_Venues_Explore_Inputs

	/*!
	 * Set the value of the AccuracyOfCoordinates input for this Choreo.
	*(optional, integer) Accuracy of latitude and longitude, in meters.
	 */
	-(void)setAccuracyOfCoordinates:(NSString*)AccuracyOfCoordinates {
		[super setInput:@"AccuracyOfCoordinates" toValue:AccuracyOfCoordinates];
	}

	/*!
	 * Set the value of the AltitudeAccuracy input for this Choreo.
	*(optional, integer) Accuracy of the user's altitude, in meters.
	 */
	-(void)setAltitudeAccuracy:(NSString*)AltitudeAccuracy {
		[super setInput:@"AltitudeAccuracy" toValue:AltitudeAccuracy];
	}

	/*!
	 * Set the value of the Altitude input for this Choreo.
	*(optional, integer) Altitude of the user's location, in meters.
	 */
	-(void)setAltitude:(NSString*)Altitude {
		[super setInput:@"Altitude" toValue:Altitude];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Intent input for this Choreo.
	*(optional, string) Limit results to venues when set to "specials".
	 */
	-(void)setIntent:(NSString*)Intent {
		[super setInput:@"Intent" toValue:Intent];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(conditional, decimal) The latitude point of the user's location. Required unless the Near parameter is provided.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of results to retun, up to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(conditional, decimal) The longitude point of the user's location. Required unless the Near parameter is provided.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Near input for this Choreo.
	*(conditional, string) A string naming a place in the world. If the near string is not geocodable, returns a failed_geocode error. Required unless provided Latitude and Longitude.
	 */
	-(void)setNear:(NSString*)Near {
		[super setInput:@"Near" toValue:Near];
	}

	/*!
	 * Set the value of the Novelty input for this Choreo.
	*(optional, string) Pass new or old to limit results to places the acting user hasn't been or has been, respectively. Omitting this parameter returns a mixture of both new and old.
	 */
	-(void)setNovelty:(NSString*)Novelty {
		[super setInput:@"Novelty" toValue:Novelty];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(conditional, string) The Foursquare API Oauth token string. Required unless specifying the ClientID and ClientSecret.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A search term to be applied against tips, category, etc. at a venue.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Radius input for this Choreo.
	*(optional, integer) Radius to search within, in meters. If radius is not specified, a suggested radius will be used depending on the density of venues in the area.
	 */
	-(void)setRadius:(NSString*)Radius {
		[super setInput:@"Radius" toValue:Radius];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Section input for this Choreo.
	*(optional, string) One of food, drinks, coffee, shops, arts, or outdoors. Choosing one of these limits results to venues with categories matching these terms.
	 */
	-(void)setSection:(NSString*)Section {
		[super setInput:@"Section" toValue:Section];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Explore Choreo.
 */
@implementation TMBFoursquare_Venues_Explore_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns a list of recommended venues near the current location.
 */
@implementation TMBFoursquare_Venues_Explore

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Venues_Explore Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Venues/Explore"] autorelease];
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
		TMBFoursquare_Venues_Explore_ResultSet *results = [[[TMBFoursquare_Venues_Explore_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Explore Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Venues_Explore_Inputs*)newInputSet {
		return [[[TMBFoursquare_Venues_Explore_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ApproveFriendRequest Choreo.
 */
@implementation TMBFoursquare_Users_ApproveFriendRequest_Inputs

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The user ID of a pending friend.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ApproveFriendRequest Choreo.
 */
@implementation TMBFoursquare_Users_ApproveFriendRequest_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Approves a pending friend request from another user.
 */
@implementation TMBFoursquare_Users_ApproveFriendRequest

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_ApproveFriendRequest Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/ApproveFriendRequest"] autorelease];
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
		TMBFoursquare_Users_ApproveFriendRequest_ResultSet *results = [[[TMBFoursquare_Users_ApproveFriendRequest_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ApproveFriendRequest Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_ApproveFriendRequest_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_ApproveFriendRequest_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VenueDetail Choreo.
 */
@implementation TMBFoursquare_Venues_VenueDetail_Inputs

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(conditional, string) The Foursquare API Oauth token string. Required unless specifying the ClientID and ClientSecret.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(required, string) The ID associated with the venue you want to retrieve details for.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VenueDetail Choreo.
 */
@implementation TMBFoursquare_Venues_VenueDetail_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Obtain details about venues, including location, mayorship, tags, tips, specials and category.  Users who have authenticated via their oauth_token credential, also receive information about who is at the location being queried.
 */
@implementation TMBFoursquare_Venues_VenueDetail

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Venues_VenueDetail Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Venues/VenueDetail"] autorelease];
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
		TMBFoursquare_Venues_VenueDetail_ResultSet *results = [[[TMBFoursquare_Venues_VenueDetail_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VenueDetail Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Venues_VenueDetail_Inputs*)newInputSet {
		return [[[TMBFoursquare_Venues_VenueDetail_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Done Choreo.
 */
@implementation TMBFoursquare_Tips_Done_Inputs

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of results to return, up to 200.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) Your Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TipID input for this Choreo.
	*(required, string) The id of a tip to get users who have marked the tip as done.
	 */
	-(void)setTipID:(NSString*)TipID {
		[super setInput:@"TipID" toValue:TipID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Done Choreo.
 */
@implementation TMBFoursquare_Tips_Done_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns an array of users have done this tip.
 */
@implementation TMBFoursquare_Tips_Done

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Tips_Done Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Tips/Done"] autorelease];
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
		TMBFoursquare_Tips_Done_ResultSet *results = [[[TMBFoursquare_Tips_Done_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Done Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Tips_Done_Inputs*)newInputSet {
		return [[[TMBFoursquare_Tips_Done_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the HereNow Choreo.
 */
@implementation TMBFoursquare_Venues_HereNow_Inputs

	/*!
	 * Set the value of the AfterTimestamp input for this Choreo.
	*(optional, date) Retrieve the first results to follow this timestamp (an epoch timestamp in seconds).
	 */
	-(void)setAfterTimestamp:(NSString*)AfterTimestamp {
		[super setInput:@"AfterTimestamp" toValue:AfterTimestamp];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to return, up to 500.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(required, string) The ID associated with the venue you want to retrieve details for.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HereNow Choreo.
 */
@implementation TMBFoursquare_Venues_HereNow_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Retrieves a count of how many people are at a given venue. For authenticated users, friends and friends-of-friends at the venue are also returned.
 */
@implementation TMBFoursquare_Venues_HereNow

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Venues_HereNow Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Venues/HereNow"] autorelease];
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
		TMBFoursquare_Venues_HereNow_ResultSet *results = [[[TMBFoursquare_Venues_HereNow_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the HereNow Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Venues_HereNow_Inputs*)newInputSet {
		return [[[TMBFoursquare_Venues_HereNow_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RecentCheckins Choreo.
 */
@implementation TMBFoursquare_Checkins_RecentCheckins_Inputs

	/*!
	 * Set the value of the AfterTimeStamp input for this Choreo.
	*(optional, integer) Seconds after which to look for check-ins, e.g. for looking for new check-ins since the last fetch.
	 */
	-(void)setAfterTimeStamp:(NSString*)AfterTimeStamp {
		[super setInput:@"AfterTimeStamp" toValue:AfterTimeStamp];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(optional, decimal) The latitude point of the user's location.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of results to return, up to 100.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(optional, decimal) The longitude point of the user's location.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RecentCheckins Choreo.
 */
@implementation TMBFoursquare_Checkins_RecentCheckins_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns a list of recent friends' check-ins.
 */
@implementation TMBFoursquare_Checkins_RecentCheckins

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Checkins_RecentCheckins Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Checkins/RecentCheckins"] autorelease];
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
		TMBFoursquare_Checkins_RecentCheckins_ResultSet *results = [[[TMBFoursquare_Checkins_RecentCheckins_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RecentCheckins Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Checkins_RecentCheckins_Inputs*)newInputSet {
		return [[[TMBFoursquare_Checkins_RecentCheckins_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TipsFromUser Choreo.
 */
@implementation TMBFoursquare_Users_TipsFromUser_Inputs

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(optional, decimal) The latitude point of the user's location.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of results to return, up to 500.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(optional, decimal) The longitude point of the user's location.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Enter: recent, nearby, or popular. NEARBY requires geolat and geolong to be provided.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Identity of the user to get tips for. Defaults to "self" to get lists of the acting user.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TipsFromUser Choreo.
 */
@implementation TMBFoursquare_Users_TipsFromUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns tips from a user.
 */
@implementation TMBFoursquare_Users_TipsFromUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_TipsFromUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/TipsFromUser"] autorelease];
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
		TMBFoursquare_Users_TipsFromUser_ResultSet *results = [[[TMBFoursquare_Users_TipsFromUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TipsFromUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_TipsFromUser_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_TipsFromUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Like Choreo.
 */
@implementation TMBFoursquare_Venues_Like_Inputs

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Set input for this Choreo.
	*(optional, boolean) Set to 1 (the default) to like this checkin. Set to 0 to undo a previous like.
	 */
	-(void)setSet:(NSString*)Set {
		[super setInput:@"Set" toValue:Set];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(required, string) The ID of the venue to like or unlike.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Like Choreo.
 */
@implementation TMBFoursquare_Venues_Like_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Allows the authenticated user to like or unlike a venue.
 */
@implementation TMBFoursquare_Venues_Like

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Venues_Like Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Venues/Like"] autorelease];
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
		TMBFoursquare_Venues_Like_ResultSet *results = [[[TMBFoursquare_Venues_Like_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Like Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Venues_Like_Inputs*)newInputSet {
		return [[[TMBFoursquare_Venues_Like_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TipsFromVenue Choreo.
 */
@implementation TMBFoursquare_Venues_TipsFromVenue_Inputs

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of results to retun, up to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(conditional, string) The Foursquare API Oauth token string. Required unless specifying the ClientID and ClientSecret.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Enter: recent or popular.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(required, string) The venue you want tips for.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TipsFromVenue Choreo.
 */
@implementation TMBFoursquare_Venues_TipsFromVenue_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * This choreo returns tips for a particular venue written by other Foursquare users.
 */
@implementation TMBFoursquare_Venues_TipsFromVenue

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Venues_TipsFromVenue Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Venues/TipsFromVenue"] autorelease];
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
		TMBFoursquare_Venues_TipsFromVenue_ResultSet *results = [[[TMBFoursquare_Venues_TipsFromVenue_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TipsFromVenue Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Venues_TipsFromVenue_Inputs*)newInputSet {
		return [[[TMBFoursquare_Venues_TipsFromVenue_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListFollowers Choreo.
 */
@implementation TMBFoursquare_Lists_ListFollowers_Inputs

	/*!
	 * Set the value of the ListID input for this Choreo.
	*(required, string) The id of a user-created list.
	 */
	-(void)setListID:(NSString*)ListID {
		[super setInput:@"ListID" toValue:ListID];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListFollowers Choreo.
 */
@implementation TMBFoursquare_Lists_ListFollowers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns a count and items of users following the specified list.
 */
@implementation TMBFoursquare_Lists_ListFollowers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Lists_ListFollowers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Lists/ListFollowers"] autorelease];
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
		TMBFoursquare_Lists_ListFollowers_ResultSet *results = [[[TMBFoursquare_Lists_ListFollowers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListFollowers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Lists_ListFollowers_Inputs*)newInputSet {
		return [[[TMBFoursquare_Lists_ListFollowers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TipDetails Choreo.
 */
@implementation TMBFoursquare_Tips_TipDetails_Inputs

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) Your Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TipID input for this Choreo.
	*(required, string) ID of tip to retrieve
	 */
	-(void)setTipID:(NSString*)TipID {
		[super setInput:@"TipID" toValue:TipID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TipDetails Choreo.
 */
@implementation TMBFoursquare_Tips_TipDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Gives details about a tip, including which users (especially friends) have marked the tip to-do or done. 
 */
@implementation TMBFoursquare_Tips_TipDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Tips_TipDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Tips/TipDetails"] autorelease];
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
		TMBFoursquare_Tips_TipDetails_ResultSet *results = [[[TMBFoursquare_Tips_TipDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TipDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Tips_TipDetails_Inputs*)newInputSet {
		return [[[TMBFoursquare_Tips_TipDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CheckinsByUser Choreo.
 */
@implementation TMBFoursquare_Users_CheckinsByUser_Inputs

	/*!
	 * Set the value of the AfterTimeStamp input for this Choreo.
	*(optional, date) Retrieve the first results after the seconds entered since epoch time.
	 */
	-(void)setAfterTimeStamp:(NSString*)AfterTimeStamp {
		[super setInput:@"AfterTimeStamp" toValue:AfterTimeStamp];
	}

	/*!
	 * Set the value of the BeforeTimeStamp input for this Choreo.
	*(optional, date) Retrieve the first results prior to the seconds specified. Useful for paging backward in time.
	 */
	-(void)setBeforeTimeStamp:(NSString*)BeforeTimeStamp {
		[super setInput:@"BeforeTimeStamp" toValue:BeforeTimeStamp];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The total number of results to be returned, up to 250.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The Foursquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The number of results to skip. Used to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) Only 'self' is supported at this moment by the Foursquare API. Defaults to: self.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CheckinsByUser Choreo.
 */
@implementation TMBFoursquare_Users_CheckinsByUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Retrieve a list of check-ins for an authenticated user.
 */
@implementation TMBFoursquare_Users_CheckinsByUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Users_CheckinsByUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Users/CheckinsByUser"] autorelease];
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
		TMBFoursquare_Users_CheckinsByUser_ResultSet *results = [[[TMBFoursquare_Users_CheckinsByUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CheckinsByUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Users_CheckinsByUser_Inputs*)newInputSet {
		return [[[TMBFoursquare_Users_CheckinsByUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchSpecials Choreo.
 */
@implementation TMBFoursquare_Specials_SearchSpecials_Inputs

	/*!
	 * Set the value of the AccuracyOfCoordinates input for this Choreo.
	*(optional, integer) Accuracy of latitude and longitude, in meters.
	 */
	-(void)setAccuracyOfCoordinates:(NSString*)AccuracyOfCoordinates {
		[super setInput:@"AccuracyOfCoordinates" toValue:AccuracyOfCoordinates];
	}

	/*!
	 * Set the value of the AltitudeAccuracy input for this Choreo.
	*(optional, integer) Accuracy of the user's altitude, in meters.
	 */
	-(void)setAltitudeAccuracy:(NSString*)AltitudeAccuracy {
		[super setInput:@"AltitudeAccuracy" toValue:AltitudeAccuracy];
	}

	/*!
	 * Set the value of the Altitude input for this Choreo.
	*(optional, integer) Altitude of the user's location, in meters.
	 */
	-(void)setAltitude:(NSString*)Altitude {
		[super setInput:@"Altitude" toValue:Altitude];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(conditional, decimal) The latitude point of the user's location.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Number of results to retun, up to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(conditional, decimal) The longitude point of the user's location.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(conditional, string) The Foursquare API Oauth token string. Required unless specifying the ClientID and ClientSecret.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the Radius input for this Choreo.
	*(optional, integer) Limit results to venues within this many meters of the specified location. Defaults to a city-wide area.
	 */
	-(void)setRadius:(NSString*)Radius {
		[super setInput:@"Radius" toValue:Radius];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchSpecials Choreo.
 */
@implementation TMBFoursquare_Specials_SearchSpecials_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Returns a list of specials near the current location.
 */
@implementation TMBFoursquare_Specials_SearchSpecials

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Specials_SearchSpecials Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Specials/SearchSpecials"] autorelease];
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
		TMBFoursquare_Specials_SearchSpecials_ResultSet *results = [[[TMBFoursquare_Specials_SearchSpecials_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchSpecials Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Specials_SearchSpecials_Inputs*)newInputSet {
		return [[[TMBFoursquare_Specials_SearchSpecials_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddList Choreo.
 */
@implementation TMBFoursquare_Lists_AddList_Inputs

	/*!
	 * Set the value of the Collaborative input for this Choreo.
	*(optional, boolean) A flag indicating that this list can be edited by friends. Set to 1 for true. Defaults to 0 (false).
	 */
	-(void)setCollaborative:(NSString*)Collaborative {
		[super setInput:@"Collaborative" toValue:Collaborative];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) The description of the list.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the list.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the OauthToken input for this Choreo.
	*(required, string) The FourSquare API Oauth token string.
	 */
	-(void)setOauthToken:(NSString*)OauthToken {
		[super setInput:@"OauthToken" toValue:OauthToken];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(optional, string) The id of a photo that should be set as the list photo.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddList Choreo.
 */
@implementation TMBFoursquare_Lists_AddList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}






	
@end

/*!
 * Creates a new list.
 */
@implementation TMBFoursquare_Lists_AddList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFoursquare_Lists_AddList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Foursquare/Lists/AddList"] autorelease];
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
		TMBFoursquare_Lists_AddList_ResultSet *results = [[[TMBFoursquare_Lists_AddList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFoursquare_Lists_AddList_Inputs*)newInputSet {
		return [[[TMBFoursquare_Lists_AddList_Inputs alloc] init] autorelease];
	}
@end
	