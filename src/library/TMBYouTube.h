/*!
 * @header Temboo iOS SDK YouTube classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBYouTube.Activities.ListMyActivities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMyActivities Choreo.
 */
@interface TMBYouTube_Activities_ListMyActivities_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setPublishedAfter:(NSString*)PublishedAfter;
	-(void)setPublishedBefore:(NSString*)PublishedBefore;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMyActivities Choreo.
 */
@interface TMBYouTube_Activities_ListMyActivities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of activity events for the authenticated user.
 */
@interface TMBYouTube_Activities_ListMyActivities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Activities_ListMyActivities_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Activities_ListMyActivities Choreo */


/*! group TMBYouTube.Channels.ListChannelsByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListChannelsByID Choreo.
 */
@interface TMBYouTube_Channels_ListChannelsByID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setChannelID:(NSString*)ChannelID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListChannelsByID Choreo.
 */
@interface TMBYouTube_Channels_ListChannelsByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of channels that match the list of IDs provided.
 */
@interface TMBYouTube_Channels_ListChannelsByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Channels_ListChannelsByID_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Channels_ListChannelsByID Choreo */


/*! group TMBYouTube.Channels.ListMyChannels Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMyChannels Choreo.
 */
@interface TMBYouTube_Channels_ListMyChannels_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMyChannels Choreo.
 */
@interface TMBYouTube_Channels_ListMyChannels_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of channels owned by the authenticated user.
 */
@interface TMBYouTube_Channels_ListMyChannels : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Channels_ListMyChannels_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Channels_ListMyChannels Choreo */


/*! group TMBYouTube.GuideCategories.ListGuideCategoriesByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListGuideCategoriesByID Choreo.
 */
@interface TMBYouTube_GuideCategories_ListGuideCategoriesByID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setGuideCategoryID:(NSString*)GuideCategoryID;
	-(void)setH1:(NSString*)H1;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGuideCategoriesByID Choreo.
 */
@interface TMBYouTube_GuideCategories_ListGuideCategoriesByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of categories that match the IDs provided.
 */
@interface TMBYouTube_GuideCategories_ListGuideCategoriesByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_GuideCategories_ListGuideCategoriesByID_Inputs*)newInputSet;
@end

/*! group TMBYouTube.GuideCategories_ListGuideCategoriesByID Choreo */


/*! group TMBYouTube.Subscriptions.DeleteSubscription Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteSubscription Choreo.
 */
@interface TMBYouTube_Subscriptions_DeleteSubscription_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setSubscriptionID:(NSString*)SubscriptionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteSubscription Choreo.
 */
@interface TMBYouTube_Subscriptions_DeleteSubscription_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Deletes a YouTube subscription.
 */
@interface TMBYouTube_Subscriptions_DeleteSubscription : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Subscriptions_DeleteSubscription_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Subscriptions_DeleteSubscription Choreo */


/*! group TMBYouTube.Activities.ListActivitiesByChannel Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListActivitiesByChannel Choreo.
 */
@interface TMBYouTube_Activities_ListActivitiesByChannel_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setChannelID:(NSString*)ChannelID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setPublishedAfter:(NSString*)PublishedAfter;
	-(void)setPublishedBefore:(NSString*)PublishedBefore;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListActivitiesByChannel Choreo.
 */
@interface TMBYouTube_Activities_ListActivitiesByChannel_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of activities for a specified channel.
 */
@interface TMBYouTube_Activities_ListActivitiesByChannel : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Activities_ListActivitiesByChannel_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Activities_ListActivitiesByChannel Choreo */


/*! group TMBYouTube.Playlists.UpdatePlaylist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePlaylist Choreo.
 */
@interface TMBYouTube_Playlists_UpdatePlaylist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setDescription:(NSString*)Description;
	-(void)setFields:(NSString*)Fields;
	-(void)setPart:(NSString*)Part;
	-(void)setPlaylistID:(NSString*)PlaylistID;
	-(void)setPrivacyStatus:(NSString*)PrivacyStatus;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setTitle:(NSString*)Title;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePlaylist Choreo.
 */
@interface TMBYouTube_Playlists_UpdatePlaylist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates a playlist.
 */
@interface TMBYouTube_Playlists_UpdatePlaylist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Playlists_UpdatePlaylist_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Playlists_UpdatePlaylist Choreo */


/*! group TMBYouTube.Subscriptions.ListSubscriptionsByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListSubscriptionsByID Choreo.
 */
@interface TMBYouTube_Subscriptions_ListSubscriptionsByID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setForChannelId:(NSString*)ForChannelId;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setOrder:(NSString*)Order;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setSubscriptionID:(NSString*)SubscriptionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSubscriptionsByID Choreo.
 */
@interface TMBYouTube_Subscriptions_ListSubscriptionsByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of subscription that match the provided IDs.
 */
@interface TMBYouTube_Subscriptions_ListSubscriptionsByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Subscriptions_ListSubscriptionsByID_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Subscriptions_ListSubscriptionsByID Choreo */


/*! group TMBYouTube.Playlists.ListPlaylistsByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPlaylistsByID Choreo.
 */
@interface TMBYouTube_Playlists_ListPlaylistsByID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setPlaylistID:(NSString*)PlaylistID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPlaylistsByID Choreo.
 */
@interface TMBYouTube_Playlists_ListPlaylistsByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a collection of playlists that match the provided IDs.
 */
@interface TMBYouTube_Playlists_ListPlaylistsByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Playlists_ListPlaylistsByID_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Playlists_ListPlaylistsByID Choreo */


/*! group TMBYouTube.Subscriptions.SubscribeToChannel Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SubscribeToChannel Choreo.
 */
@interface TMBYouTube_Subscriptions_SubscribeToChannel_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setChannelID:(NSString*)ChannelID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SubscribeToChannel Choreo.
 */
@interface TMBYouTube_Subscriptions_SubscribeToChannel_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Adds a specified channel to the authenticated user's subscriptions.
 */
@interface TMBYouTube_Subscriptions_SubscribeToChannel : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Subscriptions_SubscribeToChannel_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Subscriptions_SubscribeToChannel Choreo */


/*! group TMBYouTube.VideoCategories.ListCategoriesByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListCategoriesByID Choreo.
 */
@interface TMBYouTube_VideoCategories_ListCategoriesByID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCategoryID:(NSString*)CategoryID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setH1:(NSString*)H1;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCategoriesByID Choreo.
 */
@interface TMBYouTube_VideoCategories_ListCategoriesByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of categories that match the provided IDs.
 */
@interface TMBYouTube_VideoCategories_ListCategoriesByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_VideoCategories_ListCategoriesByID_Inputs*)newInputSet;
@end

/*! group TMBYouTube.VideoCategories_ListCategoriesByID Choreo */


/*! group TMBYouTube.Playlists.InsertPlaylist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InsertPlaylist Choreo.
 */
@interface TMBYouTube_Playlists_InsertPlaylist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setDescription:(NSString*)Description;
	-(void)setFields:(NSString*)Fields;
	-(void)setPart:(NSString*)Part;
	-(void)setPrivacyStatus:(NSString*)PrivacyStatus;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setTitle:(NSString*)Title;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertPlaylist Choreo.
 */
@interface TMBYouTube_Playlists_InsertPlaylist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a playlist.
 */
@interface TMBYouTube_Playlists_InsertPlaylist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Playlists_InsertPlaylist_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Playlists_InsertPlaylist Choreo */


/*! group TMBYouTube.Subscriptions.ListMySubscriptions Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMySubscriptions Choreo.
 */
@interface TMBYouTube_Subscriptions_ListMySubscriptions_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setForChannelId:(NSString*)ForChannelId;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setOrder:(NSString*)Order;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMySubscriptions Choreo.
 */
@interface TMBYouTube_Subscriptions_ListMySubscriptions_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of the authenticated user's subscriptions.
 */
@interface TMBYouTube_Subscriptions_ListMySubscriptions : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Subscriptions_ListMySubscriptions_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Subscriptions_ListMySubscriptions Choreo */


/*! group TMBYouTube.Playlists.ListPlaylistsByChannel Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPlaylistsByChannel Choreo.
 */
@interface TMBYouTube_Playlists_ListPlaylistsByChannel_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setChannelID:(NSString*)ChannelID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPlaylistsByChannel Choreo.
 */
@interface TMBYouTube_Playlists_ListPlaylistsByChannel_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a collection of playlists associated with a specified channel.
 */
@interface TMBYouTube_Playlists_ListPlaylistsByChannel : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Playlists_ListPlaylistsByChannel_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Playlists_ListPlaylistsByChannel Choreo */


/*! group TMBYouTube.PlaylistItems.InsertItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InsertItem Choreo.
 */
@interface TMBYouTube_PlaylistItems_InsertItem_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setPart:(NSString*)Part;
	-(void)setPlaylistID:(NSString*)PlaylistID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setVideoID:(NSString*)VideoID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertItem Choreo.
 */
@interface TMBYouTube_PlaylistItems_InsertItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a new item within a playlist.
 */
@interface TMBYouTube_PlaylistItems_InsertItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_PlaylistItems_InsertItem_Inputs*)newInputSet;
@end

/*! group TMBYouTube.PlaylistItems_InsertItem Choreo */


/*! group TMBYouTube.Playlists.ListMyPlaylists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMyPlaylists Choreo.
 */
@interface TMBYouTube_Playlists_ListMyPlaylists_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMyPlaylists Choreo.
 */
@interface TMBYouTube_Playlists_ListMyPlaylists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a collection of playlists owned by the authenticated user.
 */
@interface TMBYouTube_Playlists_ListMyPlaylists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Playlists_ListMyPlaylists_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Playlists_ListMyPlaylists Choreo */


/*! group TMBYouTube.Videos.DeleteVideo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteVideo Choreo.
 */
@interface TMBYouTube_Videos_DeleteVideo_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setVideoID:(NSString*)VideoID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteVideo Choreo.
 */
@interface TMBYouTube_Videos_DeleteVideo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Deletes a YouTube video.
 */
@interface TMBYouTube_Videos_DeleteVideo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Videos_DeleteVideo_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Videos_DeleteVideo Choreo */


/*! group TMBYouTube.Subscriptions.ListSubscriptionsByChannel Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListSubscriptionsByChannel Choreo.
 */
@interface TMBYouTube_Subscriptions_ListSubscriptionsByChannel_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setChannelID:(NSString*)ChannelID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setForChannelId:(NSString*)ForChannelId;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setOrder:(NSString*)Order;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSubscriptionsByChannel Choreo.
 */
@interface TMBYouTube_Subscriptions_ListSubscriptionsByChannel_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of subscription for a specified channel.
 */
@interface TMBYouTube_Subscriptions_ListSubscriptionsByChannel : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Subscriptions_ListSubscriptionsByChannel_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Subscriptions_ListSubscriptionsByChannel Choreo */


/*! group TMBYouTube.Channels.ListChannelsByCategory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListChannelsByCategory Choreo.
 */
@interface TMBYouTube_Channels_ListChannelsByCategory_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCategoryID:(NSString*)CategoryID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListChannelsByCategory Choreo.
 */
@interface TMBYouTube_Channels_ListChannelsByCategory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of channels associated with a particular category.
 */
@interface TMBYouTube_Channels_ListChannelsByCategory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Channels_ListChannelsByCategory_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Channels_ListChannelsByCategory Choreo */


/*! group TMBYouTube.Channels.ListMySubscribers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMySubscribers Choreo.
 */
@interface TMBYouTube_Channels_ListMySubscribers_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMySubscribers Choreo.
 */
@interface TMBYouTube_Channels_ListMySubscribers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of channels that have subscribed to the authenticated user's channel.
 */
@interface TMBYouTube_Channels_ListMySubscribers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Channels_ListMySubscribers_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Channels_ListMySubscribers Choreo */


/*! group TMBYouTube.GuideCategories.ListGuideCategoriesByRegion Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListGuideCategoriesByRegion Choreo.
 */
@interface TMBYouTube_GuideCategories_ListGuideCategoriesByRegion_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setH1:(NSString*)H1;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setRegionCode:(NSString*)RegionCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGuideCategoriesByRegion Choreo.
 */
@interface TMBYouTube_GuideCategories_ListGuideCategoriesByRegion_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of guide categories available in the specified country.
 */
@interface TMBYouTube_GuideCategories_ListGuideCategoriesByRegion : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_GuideCategories_ListGuideCategoriesByRegion_Inputs*)newInputSet;
@end

/*! group TMBYouTube.GuideCategories_ListGuideCategoriesByRegion Choreo */


/*! group TMBYouTube.Videos.ListVideosByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListVideosByID Choreo.
 */
@interface TMBYouTube_Videos_ListVideosByID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setVideoID:(NSString*)VideoID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListVideosByID Choreo.
 */
@interface TMBYouTube_Videos_ListVideosByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of YouTube videos that match the IDs provided.
 */
@interface TMBYouTube_Videos_ListVideosByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Videos_ListVideosByID_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Videos_ListVideosByID Choreo */


/*! group TMBYouTube.Activities.InsertActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InsertActivity Choreo.
 */
@interface TMBYouTube_Activities_InsertActivity_Inputs : TMBChoreographyInputSet
	-(void)setActivityMetadata:(NSString*)ActivityMetadata;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertActivity Choreo.
 */
@interface TMBYouTube_Activities_InsertActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Posts a bulletin for a specific channel.
 */
@interface TMBYouTube_Activities_InsertActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Activities_InsertActivity_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Activities_InsertActivity Choreo */


/*! group TMBYouTube.Activities.ListHomePageActivities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListHomePageActivities Choreo.
 */
@interface TMBYouTube_Activities_ListHomePageActivities_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setPublishedAfter:(NSString*)PublishedAfter;
	-(void)setPublishedBefore:(NSString*)PublishedBefore;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListHomePageActivities Choreo.
 */
@interface TMBYouTube_Activities_ListHomePageActivities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns an activity feed that displays on the YouTube home page for the currently authenticated user.
 */
@interface TMBYouTube_Activities_ListHomePageActivities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Activities_ListHomePageActivities_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Activities_ListHomePageActivities Choreo */


/*! group TMBYouTube.Videos.UpdateVideo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateVideo Choreo.
 */
@interface TMBYouTube_Videos_UpdateVideo_Inputs : TMBChoreographyInputSet
	-(void)setVideoMetadata:(NSString*)VideoMetadata;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateVideo Choreo.
 */
@interface TMBYouTube_Videos_UpdateVideo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates a video's metadata.
 */
@interface TMBYouTube_Videos_UpdateVideo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Videos_UpdateVideo_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Videos_UpdateVideo Choreo */


/*! group TMBYouTube.VideoCategories.ListCategoriesByRegion Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListCategoriesByRegion Choreo.
 */
@interface TMBYouTube_VideoCategories_ListCategoriesByRegion_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setH1:(NSString*)H1;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setRegionCode:(NSString*)RegionCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCategoriesByRegion Choreo.
 */
@interface TMBYouTube_VideoCategories_ListCategoriesByRegion_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of categories available in the specified country.
 */
@interface TMBYouTube_VideoCategories_ListCategoriesByRegion : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_VideoCategories_ListCategoriesByRegion_Inputs*)newInputSet;
@end

/*! group TMBYouTube.VideoCategories_ListCategoriesByRegion Choreo */


/*! group TMBYouTube.Playlists.DeletePlaylist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeletePlaylist Choreo.
 */
@interface TMBYouTube_Playlists_DeletePlaylist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setPlaylistID:(NSString*)PlaylistID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePlaylist Choreo.
 */
@interface TMBYouTube_Playlists_DeletePlaylist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Deletes a YouTube playlist.
 */
@interface TMBYouTube_Playlists_DeletePlaylist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Playlists_DeletePlaylist_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Playlists_DeletePlaylist Choreo */


/*! group TMBYouTube.Search.ListSearchResults Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListSearchResults Choreo.
 */
@interface TMBYouTube_Search_ListSearchResults_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setChannelID:(NSString*)ChannelID;
	-(void)setChannelType:(NSString*)ChannelType;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setOrder:(NSString*)Order;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setPublishedAfter:(NSString*)PublishedAfter;
	-(void)setPublishedBefore:(NSString*)PublishedBefore;
	-(void)setQuery:(NSString*)Query;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setRegionCode:(NSString*)RegionCode;
	-(void)setRelatedToVideoID:(NSString*)RelatedToVideoID;
	-(void)setTopicID:(NSString*)TopicID;
	-(void)setType:(NSString*)Type;
	-(void)setVideoCaption:(NSString*)VideoCaption;
	-(void)setVideoCategoryID:(NSString*)VideoCategoryID;
	-(void)setVideoDefinition:(NSString*)VideoDefinition;
	-(void)setVideoDimension:(NSString*)VideoDimension;
	-(void)setVideoDuration:(NSString*)VideoDuration;
	-(void)setVideoEmbeddable:(NSString*)VideoEmbeddable;
	-(void)setVideoLicense:(NSString*)VideoLicense;
	-(void)setVideoSyndicated:(NSString*)VideoSyndicated;
	-(void)setVideoType:(NSString*)VideoType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSearchResults Choreo.
 */
@interface TMBYouTube_Search_ListSearchResults_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a list of search results that match the specified query parameters.
 */
@interface TMBYouTube_Search_ListSearchResults : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_Search_ListSearchResults_Inputs*)newInputSet;
@end

/*! group TMBYouTube.Search_ListSearchResults Choreo */


/*! group TMBYouTube.PlaylistItems.ListItemsByPlaylist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListItemsByPlaylist Choreo.
 */
@interface TMBYouTube_PlaylistItems_ListItemsByPlaylist_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setPlaylistID:(NSString*)PlaylistID;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setVideoID:(NSString*)VideoID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListItemsByPlaylist Choreo.
 */
@interface TMBYouTube_PlaylistItems_ListItemsByPlaylist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a collection of playlist items within a specific playlist.
 */
@interface TMBYouTube_PlaylistItems_ListItemsByPlaylist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_PlaylistItems_ListItemsByPlaylist_Inputs*)newInputSet;
@end

/*! group TMBYouTube.PlaylistItems_ListItemsByPlaylist Choreo */


/*! group TMBYouTube.PlaylistItems.ListItemsByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListItemsByID Choreo.
 */
@interface TMBYouTube_PlaylistItems_ListItemsByID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setFields:(NSString*)Fields;
	-(void)setItemID:(NSString*)ItemID;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setPageToken:(NSString*)PageToken;
	-(void)setPart:(NSString*)Part;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setVideoID:(NSString*)VideoID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListItemsByID Choreo.
 */
@interface TMBYouTube_PlaylistItems_ListItemsByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNewAccessToken;
	-(NSString*)getResponse;
	
@end

/*!
 * Returns a collection of playlist items that match the list of IDs provided.
 */
@interface TMBYouTube_PlaylistItems_ListItemsByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYouTube_PlaylistItems_ListItemsByID_Inputs*)newInputSet;
@end

/*! group TMBYouTube.PlaylistItems_ListItemsByID Choreo */
