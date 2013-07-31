/*!
 * @header Temboo iOS SDK Twitter classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBTwitter.Timelines.HomeTimeline Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the HomeTimeline Choreo.
 */
@interface TMBTwitter_Timelines_HomeTimeline_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setContributorDetails:(NSString*)ContributorDetails;
	-(void)setCount:(NSString*)Count;
	-(void)setExcludeReplies:(NSString*)ExcludeReplies;
	-(void)setIncludeEntities:(NSString*)IncludeEntities;
	-(void)setMaxId:(NSString*)MaxId;
	-(void)setSinceId:(NSString*)SinceId;
	-(void)setTrimUser:(NSString*)TrimUser;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HomeTimeline Choreo.
 */
@interface TMBTwitter_Timelines_HomeTimeline_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a collection of the most recent Tweets and retweets posted by the authenticating user and the users they follow.
 */
@interface TMBTwitter_Timelines_HomeTimeline : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Timelines_HomeTimeline_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Timelines_HomeTimeline Choreo */


/*! group TMBTwitter.FriendsAndFollowers.CreateFriendship Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateFriendship Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_CreateFriendship_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setFollow:(NSString*)Follow;
	-(void)setScreenName:(NSString*)ScreenName;
	-(void)setUserId:(NSString*)UserId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFriendship Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_CreateFriendship_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to follow another Twitter user by specifying a Twitter user id or screen name.
 */
@interface TMBTwitter_FriendsAndFollowers_CreateFriendship : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_FriendsAndFollowers_CreateFriendship_Inputs*)newInputSet;
@end

/*! group TMBTwitter.FriendsAndFollowers_CreateFriendship Choreo */


/*! group TMBTwitter.Timelines.Mentions Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Mentions Choreo.
 */
@interface TMBTwitter_Timelines_Mentions_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setContributorDetails:(NSString*)ContributorDetails;
	-(void)setCount:(NSString*)Count;
	-(void)setIncludeEntities:(NSString*)IncludeEntities;
	-(void)setMaxId:(NSString*)MaxId;
	-(void)setSinceId:(NSString*)SinceId;
	-(void)setTrimUser:(NSString*)TrimUser;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Mentions Choreo.
 */
@interface TMBTwitter_Timelines_Mentions_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the 20 most recent mentions for the authenticating user.
 */
@interface TMBTwitter_Timelines_Mentions : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Timelines_Mentions_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Timelines_Mentions Choreo */


/*! group TMBTwitter.DirectMessages.DirectMessagesSent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DirectMessagesSent Choreo.
 */
@interface TMBTwitter_DirectMessages_DirectMessagesSent_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setIncludeEntities:(NSString*)IncludeEntities;
	-(void)setMaxID:(NSString*)MaxID;
	-(void)setPage:(NSString*)Page;
	-(void)setSinceID:(NSString*)SinceID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DirectMessagesSent Choreo.
 */
@interface TMBTwitter_DirectMessages_DirectMessagesSent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the 20 most recent direct messages sent by the authenticating user.
 */
@interface TMBTwitter_DirectMessages_DirectMessagesSent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_DirectMessages_DirectMessagesSent_Inputs*)newInputSet;
@end

/*! group TMBTwitter.DirectMessages_DirectMessagesSent Choreo */


/*! group TMBTwitter.PlacesAndGeo.GetPlaceInformation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPlaceInformation Choreo.
 */
@interface TMBTwitter_PlacesAndGeo_GetPlaceInformation_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setPlaceId:(NSString*)PlaceId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPlaceInformation Choreo.
 */
@interface TMBTwitter_PlacesAndGeo_GetPlaceInformation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for places that can be attached to a statuses/update using a latitude and a longitude pair, an IP address, or a name.
 */
@interface TMBTwitter_PlacesAndGeo_GetPlaceInformation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_PlacesAndGeo_GetPlaceInformation_Inputs*)newInputSet;
@end

/*! group TMBTwitter.PlacesAndGeo_GetPlaceInformation Choreo */


/*! group TMBTwitter.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBTwitter_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBTwitter_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;
	-(NSString*)getOAuthTokenSecret;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBTwitter_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBTwitter.OAuth_InitializeOAuth Choreo */


/*! group TMBTwitter.FriendsAndFollowers.IncomingFriendships Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the IncomingFriendships Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_IncomingFriendships_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCursor:(NSString*)Cursor;
	-(void)setStringifyIDs:(NSString*)StringifyIDs;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the IncomingFriendships Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_IncomingFriendships_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of numeric IDs for every user who has a pending request to follow the authenticating user.
 */
@interface TMBTwitter_FriendsAndFollowers_IncomingFriendships : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_FriendsAndFollowers_IncomingFriendships_Inputs*)newInputSet;
@end

/*! group TMBTwitter.FriendsAndFollowers_IncomingFriendships Choreo */


/*! group TMBTwitter.PlacesAndGeo.GeoSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GeoSearch Choreo.
 */
@interface TMBTwitter_PlacesAndGeo_GeoSearch_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAccuracy:(NSString*)Accuracy;
	-(void)setCallback:(NSString*)Callback;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setContainedWithin:(NSString*)ContainedWithin;
	-(void)setGranularity:(NSString*)Granularity;
	-(void)setIP:(NSString*)IP;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setQuery:(NSString*)Query;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GeoSearch Choreo.
 */
@interface TMBTwitter_PlacesAndGeo_GeoSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for places that can be attached to a status update using a latitude and a longitude pair, an IP address, or a name.
 */
@interface TMBTwitter_PlacesAndGeo_GeoSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_PlacesAndGeo_GeoSearch_Inputs*)newInputSet;
@end

/*! group TMBTwitter.PlacesAndGeo_GeoSearch Choreo */


/*! group TMBTwitter.Users.Search Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@interface TMBTwitter_Users_Search_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setIncludeEntities:(NSString*)IncludeEntities;
	-(void)setPage:(NSString*)Page;
	-(void)setSearchString:(NSString*)SearchString;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@interface TMBTwitter_Users_Search_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to search public user accounts on Twitter.
 */
@interface TMBTwitter_Users_Search : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Users_Search_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Users_Search Choreo */


/*! group TMBTwitter.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBTwitter_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBTwitter_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessTokenSecret;
	-(NSString*)getAccessToken;
	-(NSString*)getScreenName;
	-(NSString*)getUserID;	
@end

/*!
 * Completes the OAuth process by retrieving a Twitter access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@interface TMBTwitter_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBTwitter.OAuth_FinalizeOAuth Choreo */


/*! group TMBTwitter.FriendsAndFollowers.OutgoingFriendships Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the OutgoingFriendships Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_OutgoingFriendships_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCursor:(NSString*)Cursor;
	-(void)setStringifyIDs:(NSString*)StringifyIDs;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the OutgoingFriendships Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_OutgoingFriendships_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of numeric IDs for every protected user for whom the authenticating user has a pending follow request.
 */
@interface TMBTwitter_FriendsAndFollowers_OutgoingFriendships : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_FriendsAndFollowers_OutgoingFriendships_Inputs*)newInputSet;
@end

/*! group TMBTwitter.FriendsAndFollowers_OutgoingFriendships Choreo */


/*! group TMBTwitter.FriendsAndFollowers.FriendshipsShow Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FriendshipsShow Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_FriendshipsShow_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setSourceScreenName:(NSString*)SourceScreenName;
	-(void)setSourceUserID:(NSString*)SourceUserID;
	-(void)setTargetScreenName:(NSString*)TargetScreenName;
	-(void)setTargetUserID:(NSString*)TargetUserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FriendshipsShow Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_FriendshipsShow_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns detailed information about the relationship between two users.
 */
@interface TMBTwitter_FriendsAndFollowers_FriendshipsShow : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_FriendsAndFollowers_FriendshipsShow_Inputs*)newInputSet;
@end

/*! group TMBTwitter.FriendsAndFollowers_FriendshipsShow Choreo */


/*! group TMBTwitter.Timelines.RetweetsOfMe Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetweetsOfMe Choreo.
 */
@interface TMBTwitter_Timelines_RetweetsOfMe_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setIncludeEntities:(NSString*)IncludeEntities;
	-(void)setIncludeUserEntities:(NSString*)IncludeUserEntities;
	-(void)setMaxId:(NSString*)MaxId;
	-(void)setSinceId:(NSString*)SinceId;
	-(void)setTrimUser:(NSString*)TrimUser;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetweetsOfMe Choreo.
 */
@interface TMBTwitter_Timelines_RetweetsOfMe_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the most recent tweets posted by the authenticating user that have recently been retweeted by others.
 */
@interface TMBTwitter_Timelines_RetweetsOfMe : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Timelines_RetweetsOfMe_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Timelines_RetweetsOfMe Choreo */


/*! group TMBTwitter.Tweets.StatusesShow Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the StatusesShow Choreo.
 */
@interface TMBTwitter_Tweets_StatusesShow_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setID:(NSString*)ID;
	-(void)setIncludeEntities:(NSString*)IncludeEntities;
	-(void)setIncludeMyRetweet:(NSString*)IncludeMyRetweet;
	-(void)setTrimUser:(NSString*)TrimUser;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StatusesShow Choreo.
 */
@interface TMBTwitter_Tweets_StatusesShow_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a single Tweet with a given ID.
 */
@interface TMBTwitter_Tweets_StatusesShow : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Tweets_StatusesShow_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Tweets_StatusesShow Choreo */


/*! group TMBTwitter.Users.Show Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Show Choreo.
 */
@interface TMBTwitter_Users_Show_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setIncludeEntities:(NSString*)IncludeEntities;
	-(void)setScreenName:(NSString*)ScreenName;
	-(void)setUserId:(NSString*)UserId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Show Choreo.
 */
@interface TMBTwitter_Users_Show_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about a specific Twitter user.
 */
@interface TMBTwitter_Users_Show : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Users_Show_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Users_Show Choreo */


/*! group TMBTwitter.Users.Lookup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Lookup Choreo.
 */
@interface TMBTwitter_Users_Lookup_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setIncludeEntities:(NSString*)IncludeEntities;
	-(void)setScreenName:(NSString*)ScreenName;
	-(void)setUserId:(NSString*)UserId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Lookup Choreo.
 */
@interface TMBTwitter_Users_Lookup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns user objects for up to 100 Twitter users.
 */
@interface TMBTwitter_Users_Lookup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Users_Lookup_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Users_Lookup Choreo */


/*! group TMBTwitter.Timelines.UserTimeline Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UserTimeline Choreo.
 */
@interface TMBTwitter_Timelines_UserTimeline_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setContributorDetails:(NSString*)ContributorDetails;
	-(void)setCount:(NSString*)Count;
	-(void)setExcludeReplies:(NSString*)ExcludeReplies;
	-(void)setIncludeRetweets:(NSString*)IncludeRetweets;
	-(void)setMaxId:(NSString*)MaxId;
	-(void)setScreenName:(NSString*)ScreenName;
	-(void)setSinceId:(NSString*)SinceId;
	-(void)setTrimUser:(NSString*)TrimUser;
	-(void)setUserId:(NSString*)UserId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserTimeline Choreo.
 */
@interface TMBTwitter_Timelines_UserTimeline_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a collection of the most recent Tweets posted by the user whose screen_name or user_id is indicated.
 */
@interface TMBTwitter_Timelines_UserTimeline : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Timelines_UserTimeline_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Timelines_UserTimeline Choreo */


/*! group TMBTwitter.Search.Tweets Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Tweets Choreo.
 */
@interface TMBTwitter_Search_Tweets_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setGeocode:(NSString*)Geocode;
	-(void)setIncludeEntities:(NSString*)IncludeEntities;
	-(void)setLanguage:(NSString*)Language;
	-(void)setMaxId:(NSString*)MaxId;
	-(void)setQuery:(NSString*)Query;
	-(void)setResultType:(NSString*)ResultType;
	-(void)setSinceId:(NSString*)SinceId;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Tweets Choreo.
 */
@interface TMBTwitter_Search_Tweets_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a collection of relevant Tweets matching a specified query.
 */
@interface TMBTwitter_Search_Tweets : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Search_Tweets_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Search_Tweets Choreo */


/*! group TMBTwitter.FriendsAndFollowers.GetFriendsByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFriendsByID Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_GetFriendsByID_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCursor:(NSString*)Cursor;
	-(void)setScreenName:(NSString*)ScreenName;
	-(void)setStringifyIDs:(NSString*)StringifyIDs;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFriendsByID Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_GetFriendsByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of numeric IDs for every user the specified user is following (also known as their "friends").
 */
@interface TMBTwitter_FriendsAndFollowers_GetFriendsByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_FriendsAndFollowers_GetFriendsByID_Inputs*)newInputSet;
@end

/*! group TMBTwitter.FriendsAndFollowers_GetFriendsByID Choreo */


/*! group TMBTwitter.Tweets.GetRetweets Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRetweets Choreo.
 */
@interface TMBTwitter_Tweets_GetRetweets_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setID:(NSString*)ID;
	-(void)setTrimUser:(NSString*)TrimUser;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRetweets Choreo.
 */
@interface TMBTwitter_Tweets_GetRetweets_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves up to 100 of the first retweets of a given tweet.
 */
@interface TMBTwitter_Tweets_GetRetweets : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Tweets_GetRetweets_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Tweets_GetRetweets Choreo */


/*! group TMBTwitter.FriendsAndFollowers.FriendshipsLookup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FriendshipsLookup Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_FriendshipsLookup_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setScreenName:(NSString*)ScreenName;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FriendshipsLookup Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_FriendshipsLookup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the relationship of the authenticating user to the comma-separated list of up to 100 screen names or user IDs provided.
 */
@interface TMBTwitter_FriendsAndFollowers_FriendshipsLookup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_FriendsAndFollowers_FriendshipsLookup_Inputs*)newInputSet;
@end

/*! group TMBTwitter.FriendsAndFollowers_FriendshipsLookup Choreo */


/*! group TMBTwitter.Tweets.StatusesDestroy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the StatusesDestroy Choreo.
 */
@interface TMBTwitter_Tweets_StatusesDestroy_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setID:(NSString*)ID;
	-(void)setTrimUser:(NSString*)TrimUser;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StatusesDestroy Choreo.
 */
@interface TMBTwitter_Tweets_StatusesDestroy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified status.
 */
@interface TMBTwitter_Tweets_StatusesDestroy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Tweets_StatusesDestroy_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Tweets_StatusesDestroy Choreo */


/*! group TMBTwitter.Tweets.StatusesUpdate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the StatusesUpdate Choreo.
 */
@interface TMBTwitter_Tweets_StatusesUpdate_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDisplayCoordinates:(NSString*)DisplayCoordinates;
	-(void)setInReplyTo:(NSString*)InReplyTo;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setPlaceID:(NSString*)PlaceID;
	-(void)setStatusUpdate:(NSString*)StatusUpdate;
	-(void)setTrimUser:(NSString*)TrimUser;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StatusesUpdate Choreo.
 */
@interface TMBTwitter_Tweets_StatusesUpdate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to update your Twitter status (aka Tweet).
 */
@interface TMBTwitter_Tweets_StatusesUpdate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Tweets_StatusesUpdate_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Tweets_StatusesUpdate Choreo */


/*! group TMBTwitter.DirectMessages.DestroyDirectMessage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DestroyDirectMessage Choreo.
 */
@interface TMBTwitter_DirectMessages_DestroyDirectMessage_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setID:(NSString*)ID;
	-(void)setIncludeEntities:(NSString*)IncludeEntities;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DestroyDirectMessage Choreo.
 */
@interface TMBTwitter_DirectMessages_DestroyDirectMessage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified Direct Message.
 */
@interface TMBTwitter_DirectMessages_DestroyDirectMessage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_DirectMessages_DestroyDirectMessage_Inputs*)newInputSet;
@end

/*! group TMBTwitter.DirectMessages_DestroyDirectMessage Choreo */


/*! group TMBTwitter.FriendsAndFollowers.GetFollowersByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFollowersByID Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_GetFollowersByID_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCursor:(NSString*)Cursor;
	-(void)setScreenName:(NSString*)ScreenName;
	-(void)setStringifyIDs:(NSString*)StringifyIDs;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFollowersByID Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_GetFollowersByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of numeric IDs for every user following the specified user.
 */
@interface TMBTwitter_FriendsAndFollowers_GetFollowersByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_FriendsAndFollowers_GetFollowersByID_Inputs*)newInputSet;
@end

/*! group TMBTwitter.FriendsAndFollowers_GetFollowersByID Choreo */


/*! group TMBTwitter.DirectMessages.SendDirectMessage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SendDirectMessage Choreo.
 */
@interface TMBTwitter_DirectMessages_SendDirectMessage_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setScreenName:(NSString*)ScreenName;
	-(void)setText:(NSString*)Text;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendDirectMessage Choreo.
 */
@interface TMBTwitter_DirectMessages_SendDirectMessage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sends a new direct message to the specified user from the authenticating user.
 */
@interface TMBTwitter_DirectMessages_SendDirectMessage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_DirectMessages_SendDirectMessage_Inputs*)newInputSet;
@end

/*! group TMBTwitter.DirectMessages_SendDirectMessage Choreo */


/*! group TMBTwitter.Trends.Available Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Available Choreo.
 */
@interface TMBTwitter_Trends_Available_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Available Choreo.
 */
@interface TMBTwitter_Trends_Available_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the locations that Twitter has trending topic information for.
 */
@interface TMBTwitter_Trends_Available : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_Trends_Available_Inputs*)newInputSet;
@end

/*! group TMBTwitter.Trends_Available Choreo */


/*! group TMBTwitter.DirectMessages.GetDirectMessages Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDirectMessages Choreo.
 */
@interface TMBTwitter_DirectMessages_GetDirectMessages_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setIncludeEntities:(NSString*)IncludeEntities;
	-(void)setMaxID:(NSString*)MaxID;
	-(void)setPage:(NSString*)Page;
	-(void)setSinceID:(NSString*)SinceID;
	-(void)setSkipStatus:(NSString*)SkipStatus;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDirectMessages Choreo.
 */
@interface TMBTwitter_DirectMessages_GetDirectMessages_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the 20 most recent direct messages sent to the authenticating user.
 */
@interface TMBTwitter_DirectMessages_GetDirectMessages : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_DirectMessages_GetDirectMessages_Inputs*)newInputSet;
@end

/*! group TMBTwitter.DirectMessages_GetDirectMessages Choreo */


/*! group TMBTwitter.DirectMessages.GetMessageByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMessageByID Choreo.
 */
@interface TMBTwitter_DirectMessages_GetMessageByID_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMessageByID Choreo.
 */
@interface TMBTwitter_DirectMessages_GetMessageByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a single direct message, specified by an id.
 */
@interface TMBTwitter_DirectMessages_GetMessageByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_DirectMessages_GetMessageByID_Inputs*)newInputSet;
@end

/*! group TMBTwitter.DirectMessages_GetMessageByID Choreo */


/*! group TMBTwitter.FriendsAndFollowers.DeleteFriendship Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFriendship Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_DeleteFriendship_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setScreenName:(NSString*)ScreenName;
	-(void)setUserId:(NSString*)UserId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFriendship Choreo.
 */
@interface TMBTwitter_FriendsAndFollowers_DeleteFriendship_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to unfollow another Twitter user when you specify a Twitter user ID or screen name.
 */
@interface TMBTwitter_FriendsAndFollowers_DeleteFriendship : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_FriendsAndFollowers_DeleteFriendship_Inputs*)newInputSet;
@end

/*! group TMBTwitter.FriendsAndFollowers_DeleteFriendship Choreo */


/*! group TMBTwitter.PlacesAndGeo.SimilarPlaces Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SimilarPlaces Choreo.
 */
@interface TMBTwitter_PlacesAndGeo_SimilarPlaces_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCallback:(NSString*)Callback;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setContainedWithin:(NSString*)ContainedWithin;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setName:(NSString*)Name;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SimilarPlaces Choreo.
 */
@interface TMBTwitter_PlacesAndGeo_SimilarPlaces_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Locates places near the given coordinates which have a similar name.
 */
@interface TMBTwitter_PlacesAndGeo_SimilarPlaces : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_PlacesAndGeo_SimilarPlaces_Inputs*)newInputSet;
@end

/*! group TMBTwitter.PlacesAndGeo_SimilarPlaces Choreo */


/*! group TMBTwitter.PlacesAndGeo.ReverseGeocode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReverseGeocode Choreo.
 */
@interface TMBTwitter_PlacesAndGeo_ReverseGeocode_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAccuracy:(NSString*)Accuracy;
	-(void)setCallback:(NSString*)Callback;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setGranularity:(NSString*)Granularity;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setMaxResults:(NSString*)MaxResults;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReverseGeocode Choreo.
 */
@interface TMBTwitter_PlacesAndGeo_ReverseGeocode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Given a latitude and a longitude coordinates, returns up to 20 places that can be used as a Place ID when updating a status.
 */
@interface TMBTwitter_PlacesAndGeo_ReverseGeocode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTwitter_PlacesAndGeo_ReverseGeocode_Inputs*)newInputSet;
@end

/*! group TMBTwitter.PlacesAndGeo_ReverseGeocode Choreo */
