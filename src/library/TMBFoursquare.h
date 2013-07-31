/*!
 * @header Temboo iOS SDK Foursquare classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBFoursquare.Checkins.Likes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Likes Choreo.
 */
@interface TMBFoursquare_Checkins_Likes_Inputs : TMBChoreographyInputSet
	-(void)setCheckinID:(NSString*)CheckinID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Likes Choreo.
 */
@interface TMBFoursquare_Checkins_Likes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;

	
@end

/*!
 * Returns friends and a total count of users who have liked a check-in.
 */
@interface TMBFoursquare_Checkins_Likes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Checkins_Likes_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Checkins_Likes Choreo */


/*! group TMBFoursquare.Tips.Listed Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Listed Choreo.
 */
@interface TMBFoursquare_Tips_Listed_Inputs : TMBChoreographyInputSet
	-(void)setGroup:(NSString*)Group;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTipID:(NSString*)TipID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Listed Choreo.
 */
@interface TMBFoursquare_Tips_Listed_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns the lists that a tip appears on.
 */
@interface TMBFoursquare_Tips_Listed : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Tips_Listed_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Tips_Listed Choreo */


/*! group TMBFoursquare.Lists.FollowList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FollowList Choreo.
 */
@interface TMBFoursquare_Lists_FollowList_Inputs : TMBChoreographyInputSet
	-(void)setListID:(NSString*)ListID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FollowList Choreo.
 */
@interface TMBFoursquare_Lists_FollowList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows a user to follow a list.
 */
@interface TMBFoursquare_Lists_FollowList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Lists_FollowList_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Lists_FollowList Choreo */


/*! group TMBFoursquare.Lists.UpdateList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateList Choreo.
 */
@interface TMBFoursquare_Lists_UpdateList_Inputs : TMBChoreographyInputSet
	-(void)setCollaborative:(NSString*)Collaborative;
	-(void)setDescription:(NSString*)Description;
	-(void)setListID:(NSString*)ListID;
	-(void)setName:(NSString*)Name;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateList Choreo.
 */
@interface TMBFoursquare_Lists_UpdateList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Updates a given list.
 */
@interface TMBFoursquare_Lists_UpdateList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Lists_UpdateList_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Lists_UpdateList Choreo */


/*! group TMBFoursquare.Lists.UnfollowList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UnfollowList Choreo.
 */
@interface TMBFoursquare_Lists_UnfollowList_Inputs : TMBChoreographyInputSet
	-(void)setListID:(NSString*)ListID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnfollowList Choreo.
 */
@interface TMBFoursquare_Lists_UnfollowList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows a user to unfollow a list.
 */
@interface TMBFoursquare_Lists_UnfollowList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Lists_UnfollowList_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Lists_UnfollowList Choreo */


/*! group TMBFoursquare.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBFoursquare_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
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
@interface TMBFoursquare_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getAuthorizeURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBFoursquare_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.OAuth_InitializeOAuth Choreo */


/*! group TMBFoursquare.Lists.AddItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddItem Choreo.
 */
@interface TMBFoursquare_Lists_AddItem_Inputs : TMBChoreographyInputSet
	-(void)setItemID:(NSString*)ItemID;
	-(void)setItemListID:(NSString*)ItemListID;
	-(void)setListID:(NSString*)ListID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setText:(NSString*)Text;
	-(void)setTipID:(NSString*)TipID;
	-(void)setURL:(NSString*)URL;
	-(void)setVenueID:(NSString*)VenueID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddItem Choreo.
 */
@interface TMBFoursquare_Lists_AddItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows a user to add an item to a list.
 */
@interface TMBFoursquare_Lists_AddItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Lists_AddItem_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Lists_AddItem Choreo */


/*! group TMBFoursquare.Venues.VenueEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VenueEvents Choreo.
 */
@interface TMBFoursquare_Venues_VenueEvents_Inputs : TMBChoreographyInputSet
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVenueID:(NSString*)VenueID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VenueEvents Choreo.
 */
@interface TMBFoursquare_Venues_VenueEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows you to access information about the current events at a place.
 */
@interface TMBFoursquare_Venues_VenueEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Venues_VenueEvents_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Venues_VenueEvents Choreo */


/*! group TMBFoursquare.Checkins.Reply Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Reply Choreo.
 */
@interface TMBFoursquare_Checkins_Reply_Inputs : TMBChoreographyInputSet
	-(void)setCheckinID:(NSString*)CheckinID;
	-(void)setContentID:(NSString*)ContentID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setText:(NSString*)Text;
	-(void)setURL:(NSString*)URL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Reply Choreo.
 */
@interface TMBFoursquare_Checkins_Reply_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Replies to a user about their check-in.
 */
@interface TMBFoursquare_Checkins_Reply : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Checkins_Reply_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Checkins_Reply Choreo */


/*! group TMBFoursquare.Photos.PhotoDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PhotoDetails Choreo.
 */
@interface TMBFoursquare_Photos_PhotoDetails_Inputs : TMBChoreographyInputSet
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PhotoDetails Choreo.
 */
@interface TMBFoursquare_Photos_PhotoDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Retrieves details of a photo. 
 */
@interface TMBFoursquare_Photos_PhotoDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Photos_PhotoDetails_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Photos_PhotoDetails Choreo */


/*! group TMBFoursquare.Tips.SearchNearbyTips Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchNearbyTips Choreo.
 */
@interface TMBFoursquare_Tips_SearchNearbyTips_Inputs : TMBChoreographyInputSet
	-(void)setFilter:(NSString*)Filter;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setOffset:(NSString*)Offset;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchNearbyTips Choreo.
 */
@interface TMBFoursquare_Tips_SearchNearbyTips_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Get a list of tips near the specified area.
 */
@interface TMBFoursquare_Tips_SearchNearbyTips : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Tips_SearchNearbyTips_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Tips_SearchNearbyTips Choreo */


/*! group TMBFoursquare.Users.PhotosFromUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PhotosFromUser Choreo.
 */
@interface TMBFoursquare_Users_PhotosFromUser_Inputs : TMBChoreographyInputSet
	-(void)setLimit:(NSString*)Limit;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PhotosFromUser Choreo.
 */
@interface TMBFoursquare_Users_PhotosFromUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns photos from a user.
 */
@interface TMBFoursquare_Users_PhotosFromUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_PhotosFromUser_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_PhotosFromUser Choreo */


/*! group TMBFoursquare.Tips.AddTips Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddTips Choreo.
 */
@interface TMBFoursquare_Tips_AddTips_Inputs : TMBChoreographyInputSet
	-(void)setBroadcast:(NSString*)Broadcast;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setText:(NSString*)Text;
	-(void)setURL:(NSString*)URL;
	-(void)setVenueID:(NSString*)VenueID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddTips Choreo.
 */
@interface TMBFoursquare_Tips_AddTips_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows you to add a new tip at a venue. 
 */
@interface TMBFoursquare_Tips_AddTips : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Tips_AddTips_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Tips_AddTips Choreo */


/*! group TMBFoursquare.Users.VenueHistory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VenueHistory Choreo.
 */
@interface TMBFoursquare_Users_VenueHistory_Inputs : TMBChoreographyInputSet
	-(void)setAfterTimeStamp:(NSString*)AfterTimeStamp;
	-(void)setBeforeTimeStamp:(NSString*)BeforeTimeStamp;
	-(void)setCategoryID:(NSString*)CategoryID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VenueHistory Choreo.
 */
@interface TMBFoursquare_Users_VenueHistory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns a list of all venues visited by the specified user, along with how many visits and when they were last there. 
 */
@interface TMBFoursquare_Users_VenueHistory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_VenueHistory_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_VenueHistory Choreo */


/*! group TMBFoursquare.Users.PendingFriendRequests Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PendingFriendRequests Choreo.
 */
@interface TMBFoursquare_Users_PendingFriendRequests_Inputs : TMBChoreographyInputSet
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PendingFriendRequests Choreo.
 */
@interface TMBFoursquare_Users_PendingFriendRequests_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Retrieves a list of pending friend requests for the authenticated user.
 */
@interface TMBFoursquare_Users_PendingFriendRequests : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_PendingFriendRequests_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_PendingFriendRequests Choreo */


/*! group TMBFoursquare.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBFoursquare_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
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
@interface TMBFoursquare_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;	
@end

/*!
 * Completes the OAuth process by retrieving a Foursquare access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@interface TMBFoursquare_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.OAuth_FinalizeOAuth Choreo */


/*! group TMBFoursquare.Lists.UpdateItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateItem Choreo.
 */
@interface TMBFoursquare_Lists_UpdateItem_Inputs : TMBChoreographyInputSet
	-(void)setItemID:(NSString*)ItemID;
	-(void)setListID:(NSString*)ListID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setText:(NSString*)Text;
	-(void)setTipID:(NSString*)TipID;
	-(void)setURL:(NSString*)URL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateItem Choreo.
 */
@interface TMBFoursquare_Lists_UpdateItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows you to add or remove photos and tips from items on user-created lists.
 */
@interface TMBFoursquare_Lists_UpdateItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Lists_UpdateItem_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Lists_UpdateItem Choreo */


/*! group TMBFoursquare.Venues.SearchVenues Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchVenues Choreo.
 */
@interface TMBFoursquare_Venues_SearchVenues_Inputs : TMBChoreographyInputSet
	-(void)setAccuracyOfCoordinates:(NSString*)AccuracyOfCoordinates;
	-(void)setAltitudeAccuracy:(NSString*)AltitudeAccuracy;
	-(void)setAltitude:(NSString*)Altitude;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setIntent:(NSString*)Intent;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchVenues Choreo.
 */
@interface TMBFoursquare_Venues_SearchVenues_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Obtain a list of venues near the current location. 
 */
@interface TMBFoursquare_Venues_SearchVenues : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Venues_SearchVenues_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Venues_SearchVenues Choreo */


/*! group TMBFoursquare.Checkins.CreateCheckin Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateCheckin Choreo.
 */
@interface TMBFoursquare_Checkins_CreateCheckin_Inputs : TMBChoreographyInputSet
	-(void)setAccuracyOfCoordinates:(NSString*)AccuracyOfCoordinates;
	-(void)setAltitudeAccuracy:(NSString*)AltitudeAccuracy;
	-(void)setAltitude:(NSString*)Altitude;
	-(void)setBroadcast:(NSString*)Broadcast;
	-(void)setEventID:(NSString*)EventID;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShout:(NSString*)Shout;
	-(void)setVenueID:(NSString*)VenueID;
	-(void)setVenue:(NSString*)Venue;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCheckin Choreo.
 */
@interface TMBFoursquare_Checkins_CreateCheckin_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows you to create a check-in with Foursquare.
 */
@interface TMBFoursquare_Checkins_CreateCheckin : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Checkins_CreateCheckin_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Checkins_CreateCheckin Choreo */


/*! group TMBFoursquare.Users.Leaderboard Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Leaderboard Choreo.
 */
@interface TMBFoursquare_Users_Leaderboard_Inputs : TMBChoreographyInputSet
	-(void)setNeighbors:(NSString*)Neighbors;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Leaderboard Choreo.
 */
@interface TMBFoursquare_Users_Leaderboard_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Return the user's Leaderboard
 */
@interface TMBFoursquare_Users_Leaderboard : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_Leaderboard_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_Leaderboard Choreo */


/*! group TMBFoursquare.Users.UserLists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UserLists Choreo.
 */
@interface TMBFoursquare_Users_UserLists_Inputs : TMBChoreographyInputSet
	-(void)setGroup:(NSString*)Group;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UserLists Choreo.
 */
@interface TMBFoursquare_Users_UserLists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Retrieves user lists.
 */
@interface TMBFoursquare_Users_UserLists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_UserLists_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_UserLists Choreo */


/*! group TMBFoursquare.Lists.DeleteItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteItem Choreo.
 */
@interface TMBFoursquare_Lists_DeleteItem_Inputs : TMBChoreographyInputSet
	-(void)setItemID:(NSString*)ItemID;
	-(void)setListID:(NSString*)ListID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteItem Choreo.
 */
@interface TMBFoursquare_Lists_DeleteItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows a user to delete an item from a list.

 */
@interface TMBFoursquare_Lists_DeleteItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Lists_DeleteItem_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Lists_DeleteItem Choreo */


/*! group TMBFoursquare.Checkins.AddPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddPost Choreo.
 */
@interface TMBFoursquare_Checkins_AddPost_Inputs : TMBChoreographyInputSet
	-(void)setCheckinID:(NSString*)CheckinID;
	-(void)setContentID:(NSString*)ContentID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setText:(NSString*)Text;
	-(void)setURL:(NSString*)URL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddPost Choreo.
 */
@interface TMBFoursquare_Checkins_AddPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Posts user-generated content from an external app to a Foursquare check-in.
 */
@interface TMBFoursquare_Checkins_AddPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Checkins_AddPost_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Checkins_AddPost Choreo */


/*! group TMBFoursquare.Venues.Similar Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Similar Choreo.
 */
@interface TMBFoursquare_Venues_Similar_Inputs : TMBChoreographyInputSet
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVenueID:(NSString*)VenueID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Similar Choreo.
 */
@interface TMBFoursquare_Venues_Similar_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns a list of venues similar to the specified venue.
 */
@interface TMBFoursquare_Venues_Similar : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Venues_Similar_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Venues_Similar Choreo */


/*! group TMBFoursquare.Users.ListFriends Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListFriends Choreo.
 */
@interface TMBFoursquare_Users_ListFriends_Inputs : TMBChoreographyInputSet
	-(void)setLimit:(NSString*)Limit;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListFriends Choreo.
 */
@interface TMBFoursquare_Users_ListFriends_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Retrieve a list of a user's friends.
 */
@interface TMBFoursquare_Users_ListFriends : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_ListFriends_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_ListFriends Choreo */


/*! group TMBFoursquare.Users.FindUsers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindUsers Choreo.
 */
@interface TMBFoursquare_Users_FindUsers_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setFacebookID:(NSString*)FacebookID;
	-(void)setName:(NSString*)Name;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setPhone:(NSString*)Phone;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTwitterSource:(NSString*)TwitterSource;
	-(void)setTwitter:(NSString*)Twitter;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindUsers Choreo.
 */
@interface TMBFoursquare_Users_FindUsers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows a user to locate friends.
 */
@interface TMBFoursquare_Users_FindUsers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_FindUsers_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_FindUsers Choreo */


/*! group TMBFoursquare.Lists.ListDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListDetails Choreo.
 */
@interface TMBFoursquare_Lists_ListDetails_Inputs : TMBChoreographyInputSet
	-(void)setLimit:(NSString*)Limit;
	-(void)setListID:(NSString*)ListID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListDetails Choreo.
 */
@interface TMBFoursquare_Lists_ListDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns details about a given list. 
 */
@interface TMBFoursquare_Lists_ListDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Lists_ListDetails_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Lists_ListDetails Choreo */


/*! group TMBFoursquare.Checkins.AddComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddComment Choreo.
 */
@interface TMBFoursquare_Checkins_AddComment_Inputs : TMBChoreographyInputSet
	-(void)setCheckinID:(NSString*)CheckinID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setText:(NSString*)Text;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddComment Choreo.
 */
@interface TMBFoursquare_Checkins_AddComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Adds a comment to a specified check-in.
 */
@interface TMBFoursquare_Checkins_AddComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Checkins_AddComment_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Checkins_AddComment Choreo */


/*! group TMBFoursquare.Checkins.CheckinDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CheckinDetails Choreo.
 */
@interface TMBFoursquare_Checkins_CheckinDetails_Inputs : TMBChoreographyInputSet
	-(void)setCheckinID:(NSString*)CheckinID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSignature:(NSString*)Signature;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CheckinDetails Choreo.
 */
@interface TMBFoursquare_Checkins_CheckinDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns details of a check-in.
 */
@interface TMBFoursquare_Checkins_CheckinDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Checkins_CheckinDetails_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Checkins_CheckinDetails Choreo */


/*! group TMBFoursquare.Users.Badges Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Badges Choreo.
 */
@interface TMBFoursquare_Users_Badges_Inputs : TMBChoreographyInputSet
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Badges Choreo.
 */
@interface TMBFoursquare_Users_Badges_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns badges for a given user.
 */
@interface TMBFoursquare_Users_Badges : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_Badges_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_Badges Choreo */


/*! group TMBFoursquare.Photos.AddPhoto Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddPhoto Choreo.
 */
@interface TMBFoursquare_Photos_AddPhoto_Inputs : TMBChoreographyInputSet
	-(void)setAltitudeAccuracy:(NSString*)AltitudeAccuracy;
	-(void)setAltitude:(NSString*)Altitude;
	-(void)setBroadcast:(NSString*)Broadcast;
	-(void)setCheckinID:(NSString*)CheckinID;
	-(void)setImageFile:(NSString*)ImageFile;
	-(void)setLLAccuracy:(NSString*)LLAccuracy;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTipID:(NSString*)TipID;
	-(void)setVenueID:(NSString*)VenueID;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddPhoto Choreo.
 */
@interface TMBFoursquare_Photos_AddPhoto_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows a user to add a new photo to a check-in, tip, or a venue.
 */
@interface TMBFoursquare_Photos_AddPhoto : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Photos_AddPhoto_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Photos_AddPhoto Choreo */


/*! group TMBFoursquare.Checkins.DeleteComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteComment Choreo.
 */
@interface TMBFoursquare_Checkins_DeleteComment_Inputs : TMBChoreographyInputSet
	-(void)setCheckinID:(NSString*)CheckinID;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteComment Choreo.
 */
@interface TMBFoursquare_Checkins_DeleteComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Removes a comment to a specified check-in.
 */
@interface TMBFoursquare_Checkins_DeleteComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Checkins_DeleteComment_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Checkins_DeleteComment Choreo */


/*! group TMBFoursquare.Checkins.Like Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Like Choreo.
 */
@interface TMBFoursquare_Checkins_Like_Inputs : TMBChoreographyInputSet
	-(void)setCheckinID:(NSString*)CheckinID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSet:(NSString*)Set;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Like Choreo.
 */
@interface TMBFoursquare_Checkins_Like_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows the authenticated user to like or unlike a check-in.
 */
@interface TMBFoursquare_Checkins_Like : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Checkins_Like_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Checkins_Like Choreo */


/*! group TMBFoursquare.Users.DenyFriendRequest Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DenyFriendRequest Choreo.
 */
@interface TMBFoursquare_Users_DenyFriendRequest_Inputs : TMBChoreographyInputSet
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DenyFriendRequest Choreo.
 */
@interface TMBFoursquare_Users_DenyFriendRequest_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Denies a pending friend request from another user.
 */
@interface TMBFoursquare_Users_DenyFriendRequest : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_DenyFriendRequest_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_DenyFriendRequest Choreo */


/*! group TMBFoursquare.Venues.TrendingVenues Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TrendingVenues Choreo.
 */
@interface TMBFoursquare_Venues_TrendingVenues_Inputs : TMBChoreographyInputSet
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setRadius:(NSString*)Radius;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TrendingVenues Choreo.
 */
@interface TMBFoursquare_Venues_TrendingVenues_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns a list of venues near the current location with the most people currently checked in.
 */
@interface TMBFoursquare_Venues_TrendingVenues : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Venues_TrendingVenues_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Venues_TrendingVenues Choreo */


/*! group TMBFoursquare.Users.Mayorships Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Mayorships Choreo.
 */
@interface TMBFoursquare_Users_Mayorships_Inputs : TMBChoreographyInputSet
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Mayorships Choreo.
 */
@interface TMBFoursquare_Users_Mayorships_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns a user's mayorships.
 */
@interface TMBFoursquare_Users_Mayorships : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_Mayorships_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_Mayorships Choreo */


/*! group TMBFoursquare.Venues.Likes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Likes Choreo.
 */
@interface TMBFoursquare_Venues_Likes_Inputs : TMBChoreographyInputSet
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVenueID:(NSString*)VenueID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Likes Choreo.
 */
@interface TMBFoursquare_Venues_Likes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns friends and a total count of users who have liked a venue.
 */
@interface TMBFoursquare_Venues_Likes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Venues_Likes_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Venues_Likes Choreo */


/*! group TMBFoursquare.Venues.Explore Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Explore Choreo.
 */
@interface TMBFoursquare_Venues_Explore_Inputs : TMBChoreographyInputSet
	-(void)setAccuracyOfCoordinates:(NSString*)AccuracyOfCoordinates;
	-(void)setAltitudeAccuracy:(NSString*)AltitudeAccuracy;
	-(void)setAltitude:(NSString*)Altitude;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setIntent:(NSString*)Intent;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setNear:(NSString*)Near;
	-(void)setNovelty:(NSString*)Novelty;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setQuery:(NSString*)Query;
	-(void)setRadius:(NSString*)Radius;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSection:(NSString*)Section;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Explore Choreo.
 */
@interface TMBFoursquare_Venues_Explore_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns a list of recommended venues near the current location.
 */
@interface TMBFoursquare_Venues_Explore : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Venues_Explore_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Venues_Explore Choreo */


/*! group TMBFoursquare.Users.ApproveFriendRequest Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ApproveFriendRequest Choreo.
 */
@interface TMBFoursquare_Users_ApproveFriendRequest_Inputs : TMBChoreographyInputSet
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ApproveFriendRequest Choreo.
 */
@interface TMBFoursquare_Users_ApproveFriendRequest_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Approves a pending friend request from another user.
 */
@interface TMBFoursquare_Users_ApproveFriendRequest : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_ApproveFriendRequest_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_ApproveFriendRequest Choreo */


/*! group TMBFoursquare.Venues.VenueDetail Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VenueDetail Choreo.
 */
@interface TMBFoursquare_Venues_VenueDetail_Inputs : TMBChoreographyInputSet
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVenueID:(NSString*)VenueID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VenueDetail Choreo.
 */
@interface TMBFoursquare_Venues_VenueDetail_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Obtain details about venues, including location, mayorship, tags, tips, specials and category.  Users who have authenticated via their oauth_token credential, also receive information about who is at the location being queried.
 */
@interface TMBFoursquare_Venues_VenueDetail : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Venues_VenueDetail_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Venues_VenueDetail Choreo */


/*! group TMBFoursquare.Tips.Done Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Done Choreo.
 */
@interface TMBFoursquare_Tips_Done_Inputs : TMBChoreographyInputSet
	-(void)setLimit:(NSString*)Limit;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTipID:(NSString*)TipID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Done Choreo.
 */
@interface TMBFoursquare_Tips_Done_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns an array of users have done this tip.
 */
@interface TMBFoursquare_Tips_Done : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Tips_Done_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Tips_Done Choreo */


/*! group TMBFoursquare.Venues.HereNow Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the HereNow Choreo.
 */
@interface TMBFoursquare_Venues_HereNow_Inputs : TMBChoreographyInputSet
	-(void)setAfterTimestamp:(NSString*)AfterTimestamp;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVenueID:(NSString*)VenueID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HereNow Choreo.
 */
@interface TMBFoursquare_Venues_HereNow_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Retrieves a count of how many people are at a given venue. For authenticated users, friends and friends-of-friends at the venue are also returned.
 */
@interface TMBFoursquare_Venues_HereNow : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Venues_HereNow_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Venues_HereNow Choreo */


/*! group TMBFoursquare.Checkins.RecentCheckins Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RecentCheckins Choreo.
 */
@interface TMBFoursquare_Checkins_RecentCheckins_Inputs : TMBChoreographyInputSet
	-(void)setAfterTimeStamp:(NSString*)AfterTimeStamp;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RecentCheckins Choreo.
 */
@interface TMBFoursquare_Checkins_RecentCheckins_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns a list of recent friends' check-ins.
 */
@interface TMBFoursquare_Checkins_RecentCheckins : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Checkins_RecentCheckins_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Checkins_RecentCheckins Choreo */


/*! group TMBFoursquare.Users.TipsFromUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TipsFromUser Choreo.
 */
@interface TMBFoursquare_Users_TipsFromUser_Inputs : TMBChoreographyInputSet
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSort:(NSString*)Sort;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TipsFromUser Choreo.
 */
@interface TMBFoursquare_Users_TipsFromUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns tips from a user.
 */
@interface TMBFoursquare_Users_TipsFromUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_TipsFromUser_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_TipsFromUser Choreo */


/*! group TMBFoursquare.Venues.Like Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Like Choreo.
 */
@interface TMBFoursquare_Venues_Like_Inputs : TMBChoreographyInputSet
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSet:(NSString*)Set;
	-(void)setVenueID:(NSString*)VenueID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Like Choreo.
 */
@interface TMBFoursquare_Venues_Like_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Allows the authenticated user to like or unlike a venue.
 */
@interface TMBFoursquare_Venues_Like : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Venues_Like_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Venues_Like Choreo */


/*! group TMBFoursquare.Venues.TipsFromVenue Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TipsFromVenue Choreo.
 */
@interface TMBFoursquare_Venues_TipsFromVenue_Inputs : TMBChoreographyInputSet
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSort:(NSString*)Sort;
	-(void)setVenueID:(NSString*)VenueID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TipsFromVenue Choreo.
 */
@interface TMBFoursquare_Venues_TipsFromVenue_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * This choreo returns tips for a particular venue written by other Foursquare users.
 */
@interface TMBFoursquare_Venues_TipsFromVenue : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Venues_TipsFromVenue_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Venues_TipsFromVenue Choreo */


/*! group TMBFoursquare.Lists.ListFollowers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListFollowers Choreo.
 */
@interface TMBFoursquare_Lists_ListFollowers_Inputs : TMBChoreographyInputSet
	-(void)setListID:(NSString*)ListID;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListFollowers Choreo.
 */
@interface TMBFoursquare_Lists_ListFollowers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns a count and items of users following the specified list.
 */
@interface TMBFoursquare_Lists_ListFollowers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Lists_ListFollowers_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Lists_ListFollowers Choreo */


/*! group TMBFoursquare.Tips.TipDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TipDetails Choreo.
 */
@interface TMBFoursquare_Tips_TipDetails_Inputs : TMBChoreographyInputSet
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTipID:(NSString*)TipID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TipDetails Choreo.
 */
@interface TMBFoursquare_Tips_TipDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Gives details about a tip, including which users (especially friends) have marked the tip to-do or done. 
 */
@interface TMBFoursquare_Tips_TipDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Tips_TipDetails_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Tips_TipDetails Choreo */


/*! group TMBFoursquare.Users.CheckinsByUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CheckinsByUser Choreo.
 */
@interface TMBFoursquare_Users_CheckinsByUser_Inputs : TMBChoreographyInputSet
	-(void)setAfterTimeStamp:(NSString*)AfterTimeStamp;
	-(void)setBeforeTimeStamp:(NSString*)BeforeTimeStamp;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CheckinsByUser Choreo.
 */
@interface TMBFoursquare_Users_CheckinsByUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Retrieve a list of check-ins for an authenticated user.
 */
@interface TMBFoursquare_Users_CheckinsByUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Users_CheckinsByUser_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Users_CheckinsByUser Choreo */


/*! group TMBFoursquare.Specials.SearchSpecials Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchSpecials Choreo.
 */
@interface TMBFoursquare_Specials_SearchSpecials_Inputs : TMBChoreographyInputSet
	-(void)setAccuracyOfCoordinates:(NSString*)AccuracyOfCoordinates;
	-(void)setAltitudeAccuracy:(NSString*)AltitudeAccuracy;
	-(void)setAltitude:(NSString*)Altitude;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setRadius:(NSString*)Radius;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchSpecials Choreo.
 */
@interface TMBFoursquare_Specials_SearchSpecials_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Returns a list of specials near the current location.
 */
@interface TMBFoursquare_Specials_SearchSpecials : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Specials_SearchSpecials_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Specials_SearchSpecials Choreo */


/*! group TMBFoursquare.Lists.AddList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddList Choreo.
 */
@interface TMBFoursquare_Lists_AddList_Inputs : TMBChoreographyInputSet
	-(void)setCollaborative:(NSString*)Collaborative;
	-(void)setDescription:(NSString*)Description;
	-(void)setName:(NSString*)Name;
	-(void)setOauthToken:(NSString*)OauthToken;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddList Choreo.
 */
@interface TMBFoursquare_Lists_AddList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;


	
@end

/*!
 * Creates a new list.
 */
@interface TMBFoursquare_Lists_AddList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFoursquare_Lists_AddList_Inputs*)newInputSet;
@end

/*! group TMBFoursquare.Lists_AddList Choreo */
