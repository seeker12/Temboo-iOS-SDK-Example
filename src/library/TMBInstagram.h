/*!
 * @header Temboo iOS SDK Instagram classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBInstagram.GetUserInformation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUserInformation Choreo.
 */
@interface TMBInstagram_GetUserInformation_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserInformation Choreo.
 */
@interface TMBInstagram_GetUserInformation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves basic information about a user.
 */
@interface TMBInstagram_GetUserInformation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_GetUserInformation_Inputs*)newInputSet;
@end

/*! group TMBInstagram_GetUserInformation Choreo */


/*! group TMBInstagram.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBInstagram_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBInstagram_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBInstagram_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBInstagram.OAuth_InitializeOAuth Choreo */


/*! group TMBInstagram.GetUserFeed Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUserFeed Choreo.
 */
@interface TMBInstagram_GetUserFeed_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCount:(NSString*)Count;
	-(void)setMaxID:(NSString*)MaxID;
	-(void)setMinID:(NSString*)MinID;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserFeed Choreo.
 */
@interface TMBInstagram_GetUserFeed_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the authenticated user's feed.
 */
@interface TMBInstagram_GetUserFeed : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_GetUserFeed_Inputs*)newInputSet;
@end

/*! group TMBInstagram_GetUserFeed Choreo */


/*! group TMBInstagram.TagName Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TagName Choreo.
 */
@interface TMBInstagram_TagName_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setTagName:(NSString*)TagName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TagName Choreo.
 */
@interface TMBInstagram_TagName_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about a tag object.
 */
@interface TMBInstagram_TagName : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_TagName_Inputs*)newInputSet;
@end

/*! group TMBInstagram_TagName Choreo */


/*! group TMBInstagram.GetPopularMedia Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPopularMedia Choreo.
 */
@interface TMBInstagram_GetPopularMedia_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPopularMedia Choreo.
 */
@interface TMBInstagram_GetPopularMedia_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of what media is most popular at the moment.
 */
@interface TMBInstagram_GetPopularMedia : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_GetPopularMedia_Inputs*)newInputSet;
@end

/*! group TMBInstagram_GetPopularMedia Choreo */


/*! group TMBInstagram.UserIsFollowedBy Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UserIsFollowedBy Choreo.
 */
@interface TMBInstagram_UserIsFollowedBy_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserIsFollowedBy Choreo.
 */
@interface TMBInstagram_UserIsFollowedBy_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve the list of users following this user.
 */
@interface TMBInstagram_UserIsFollowedBy : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_UserIsFollowedBy_Inputs*)newInputSet;
@end

/*! group TMBInstagram_UserIsFollowedBy Choreo */


/*! group TMBInstagram.GetRecentMediaForLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentMediaForLocation Choreo.
 */
@interface TMBInstagram_GetRecentMediaForLocation_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setLocationID:(NSString*)LocationID;
	-(void)setMaxID:(NSString*)MaxID;
	-(void)setMaxTimestamp:(NSString*)MaxTimestamp;
	-(void)setMinID:(NSString*)MinID;
	-(void)setMinTimestamp:(NSString*)MinTimestamp;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentMediaForLocation Choreo.
 */
@interface TMBInstagram_GetRecentMediaForLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of recent media objects from a given location.
 */
@interface TMBInstagram_GetRecentMediaForLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_GetRecentMediaForLocation_Inputs*)newInputSet;
@end

/*! group TMBInstagram_GetRecentMediaForLocation Choreo */


/*! group TMBInstagram.GetMediaComments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMediaComments Choreo.
 */
@interface TMBInstagram_GetMediaComments_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setMediaID:(NSString*)MediaID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMediaComments Choreo.
 */
@interface TMBInstagram_GetMediaComments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a full list of comments for a specified media object.
 */
@interface TMBInstagram_GetMediaComments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_GetMediaComments_Inputs*)newInputSet;
@end

/*! group TMBInstagram_GetMediaComments Choreo */


/*! group TMBInstagram.GetLikedMediaForUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLikedMediaForUser Choreo.
 */
@interface TMBInstagram_GetLikedMediaForUser_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCount:(NSString*)Count;
	-(void)setMaxID:(NSString*)MaxID;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLikedMediaForUser Choreo.
 */
@interface TMBInstagram_GetLikedMediaForUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the authenticated user's list of media they've liked.
 */
@interface TMBInstagram_GetLikedMediaForUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_GetLikedMediaForUser_Inputs*)newInputSet;
@end

/*! group TMBInstagram_GetLikedMediaForUser Choreo */


/*! group TMBInstagram.CreateMediaComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateMediaComment Choreo.
 */
@interface TMBInstagram_CreateMediaComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMediaID:(NSString*)MediaID;
	-(void)setText:(NSString*)Text;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateMediaComment Choreo.
 */
@interface TMBInstagram_CreateMediaComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a comment on a specified media object. 
 */
@interface TMBInstagram_CreateMediaComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_CreateMediaComment_Inputs*)newInputSet;
@end

/*! group TMBInstagram_CreateMediaComment Choreo */


/*! group TMBInstagram.SearchMedia Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchMedia Choreo.
 */
@interface TMBInstagram_SearchMedia_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setDistance:(NSString*)Distance;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setMaxTimestamp:(NSString*)MaxTimestamp;
	-(void)setMinTimestamp:(NSString*)MinTimestamp;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchMedia Choreo.
 */
@interface TMBInstagram_SearchMedia_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to search for media in a given area.
 */
@interface TMBInstagram_SearchMedia : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_SearchMedia_Inputs*)newInputSet;
@end

/*! group TMBInstagram_SearchMedia Choreo */


/*! group TMBInstagram.GetMediaByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMediaByID Choreo.
 */
@interface TMBInstagram_GetMediaByID_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setMediaID:(NSString*)MediaID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMediaByID Choreo.
 */
@interface TMBInstagram_GetMediaByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about a specified media object.
 */
@interface TMBInstagram_GetMediaByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_GetMediaByID_Inputs*)newInputSet;
@end

/*! group TMBInstagram_GetMediaByID Choreo */


/*! group TMBInstagram.RecentlyTaggedMedia Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RecentlyTaggedMedia Choreo.
 */
@interface TMBInstagram_RecentlyTaggedMedia_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setMaxID:(NSString*)MaxID;
	-(void)setMinID:(NSString*)MinID;
	-(void)setTagName:(NSString*)TagName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RecentlyTaggedMedia Choreo.
 */
@interface TMBInstagram_RecentlyTaggedMedia_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of recently tagged media.
 */
@interface TMBInstagram_RecentlyTaggedMedia : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_RecentlyTaggedMedia_Inputs*)newInputSet;
@end

/*! group TMBInstagram_RecentlyTaggedMedia Choreo */


/*! group TMBInstagram.SearchLocations Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchLocations Choreo.
 */
@interface TMBInstagram_SearchLocations_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setDistance:(NSString*)Distance;
	-(void)setFoursquareID:(NSString*)FoursquareID;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchLocations Choreo.
 */
@interface TMBInstagram_SearchLocations_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for locations by geographic coordinates. 
 */
@interface TMBInstagram_SearchLocations : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_SearchLocations_Inputs*)newInputSet;
@end

/*! group TMBInstagram_SearchLocations Choreo */


/*! group TMBInstagram.UserFollows Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UserFollows Choreo.
 */
@interface TMBInstagram_UserFollows_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserFollows Choreo.
 */
@interface TMBInstagram_UserFollows_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve the list of users that this user is following.
 */
@interface TMBInstagram_UserFollows : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_UserFollows_Inputs*)newInputSet;
@end

/*! group TMBInstagram_UserFollows Choreo */


/*! group TMBInstagram.GetRecentMediaForUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentMediaForUser Choreo.
 */
@interface TMBInstagram_GetRecentMediaForUser_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCount:(NSString*)Count;
	-(void)setMaxID:(NSString*)MaxID;
	-(void)setMinID:(NSString*)MinID;
	-(void)setMinTimestamp:(NSString*)MinTimestamp;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentMediaForUser Choreo.
 */
@interface TMBInstagram_GetRecentMediaForUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the most recent media published by a user.
 */
@interface TMBInstagram_GetRecentMediaForUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_GetRecentMediaForUser_Inputs*)newInputSet;
@end

/*! group TMBInstagram_GetRecentMediaForUser Choreo */


/*! group TMBInstagram.GetLocationInformation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLocationInformation Choreo.
 */
@interface TMBInstagram_GetLocationInformation_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setLocationID:(NSString*)LocationID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLocationInformation Choreo.
 */
@interface TMBInstagram_GetLocationInformation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about a location.
 */
@interface TMBInstagram_GetLocationInformation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_GetLocationInformation_Inputs*)newInputSet;
@end

/*! group TMBInstagram_GetLocationInformation Choreo */


/*! group TMBInstagram.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBInstagram_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBInstagram_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getResponse;	
@end

/*!
 * Completes the OAuth process by retrieving a Instagram access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@interface TMBInstagram_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBInstagram.OAuth_FinalizeOAuth Choreo */


/*! group TMBInstagram.GetMediaByLikes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMediaByLikes Choreo.
 */
@interface TMBInstagram_GetMediaByLikes_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setMediaID:(NSString*)MediaID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMediaByLikes Choreo.
 */
@interface TMBInstagram_GetMediaByLikes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of what media is most popular at the moment, sorted by Likes.
 */
@interface TMBInstagram_GetMediaByLikes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBInstagram_GetMediaByLikes_Inputs*)newInputSet;
@end

/*! group TMBInstagram_GetMediaByLikes Choreo */
