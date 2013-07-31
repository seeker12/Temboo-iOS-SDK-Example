/*!
 * @header Temboo iOS SDK LastFm classes
 *
 * Execute Choreographies from the Temboo LastFm bundle.
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

/*! group TMBLastFm.Artist.GetPastEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPastEvents Choreo.
 */
@interface TMBLastFm_Artist_GetPastEvents_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMbID:(NSString*)MbID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPastEvents Choreo.
 */
@interface TMBLastFm_Artist_GetPastEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a paginated list of all the events this artist has played at in the past.
 */
@interface TMBLastFm_Artist_GetPastEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetPastEvents_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetPastEvents Choreo */


/*! group TMBLastFm.User.GetInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetInfo Choreo.
 */
@interface TMBLastFm_User_GetInfo_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInfo Choreo.
 */
@interface TMBLastFm_User_GetInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get information about a user profile.
 */
@interface TMBLastFm_User_GetInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetInfo_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetInfo Choreo */


/*! group TMBLastFm.User.GetShouts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetShouts Choreo.
 */
@interface TMBLastFm_User_GetShouts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShouts Choreo.
 */
@interface TMBLastFm_User_GetShouts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of shouts for a specified user.
 */
@interface TMBLastFm_User_GetShouts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetShouts_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetShouts Choreo */


/*! group TMBLastFm.User.GetRecommendedArtists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecommendedArtists Choreo.
 */
@interface TMBLastFm_User_GetRecommendedArtists_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setSessionKey:(NSString*)SessionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecommendedArtists Choreo.
 */
@interface TMBLastFm_User_GetRecommendedArtists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves Last.fm artist recommendations for a user.
 */
@interface TMBLastFm_User_GetRecommendedArtists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetRecommendedArtists_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetRecommendedArtists Choreo */


/*! group TMBLastFm.User.GetTopTracks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopTracks Choreo.
 */
@interface TMBLastFm_User_GetTopTracks_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setPeriod:(NSString*)Period;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopTracks Choreo.
 */
@interface TMBLastFm_User_GetTopTracks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the top tracks listened to by a user.
 */
@interface TMBLastFm_User_GetTopTracks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetTopTracks_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetTopTracks Choreo */


/*! group TMBLastFm.Artist.Share Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Share Choreo.
 */
@interface TMBLastFm_Artist_Share_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setArtist:(NSString*)Artist;
	-(void)setMessage:(NSString*)Message;
	-(void)setPublic:(NSString*)Public;
	-(void)setRecipient:(NSString*)Recipient;
	-(void)setSessionKey:(NSString*)SessionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Share Choreo.
 */
@interface TMBLastFm_Artist_Share_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to share an artist with Last.fm users or other friends.
 */
@interface TMBLastFm_Artist_Share : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_Share_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_Share Choreo */


/*! group TMBLastFm.User.GetTopAlbums Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopAlbums Choreo.
 */
@interface TMBLastFm_User_GetTopAlbums_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setPeriod:(NSString*)Period;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopAlbums Choreo.
 */
@interface TMBLastFm_User_GetTopAlbums_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the top albums listened to by a user.
 */
@interface TMBLastFm_User_GetTopAlbums : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetTopAlbums_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetTopAlbums Choreo */


/*! group TMBLastFm.Artist.GetEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetEvents Choreo.
 */
@interface TMBLastFm_Artist_GetEvents_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setFestivalsOnly:(NSString*)FestivalsOnly;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMbID:(NSString*)MbID;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEvents Choreo.
 */
@interface TMBLastFm_Artist_GetEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of upcoming events for this artist.
 */
@interface TMBLastFm_Artist_GetEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetEvents_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetEvents Choreo */


/*! group TMBLastFm.User.GetWeeklyArtistChart Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWeeklyArtistChart Choreo.
 */
@interface TMBLastFm_User_GetWeeklyArtistChart_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEndTimestamp:(NSString*)EndTimestamp;
	-(void)setStartTimestamp:(NSString*)StartTimestamp;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeeklyArtistChart Choreo.
 */
@interface TMBLastFm_User_GetWeeklyArtistChart_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an artist chart for a user profile, for a given date range.
 */
@interface TMBLastFm_User_GetWeeklyArtistChart : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetWeeklyArtistChart_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetWeeklyArtistChart Choreo */


/*! group TMBLastFm.Artist.GetTopAlbums Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopAlbums Choreo.
 */
@interface TMBLastFm_Artist_GetTopAlbums_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMbID:(NSString*)MbID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopAlbums Choreo.
 */
@interface TMBLastFm_Artist_GetTopAlbums_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the top albums for an artist on Last.fm, ordered by popularity.
 */
@interface TMBLastFm_Artist_GetTopAlbums : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetTopAlbums_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetTopAlbums Choreo */


/*! group TMBLastFm.User.GetTopTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopTags Choreo.
 */
@interface TMBLastFm_User_GetTopTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopTags Choreo.
 */
@interface TMBLastFm_User_GetTopTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the top tags used by a user. 
 */
@interface TMBLastFm_User_GetTopTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetTopTags_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetTopTags Choreo */


/*! group TMBLastFm.Artist.Search Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@interface TMBLastFm_Artist_Search_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@interface TMBLastFm_Artist_Search_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for an artist by name. Returns artist matches sorted by relevance.
 */
@interface TMBLastFm_Artist_Search : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_Search_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_Search Choreo */


/*! group TMBLastFm.Album.AddTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddTags Choreo.
 */
@interface TMBLastFm_Album_AddTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAlbum:(NSString*)Album;
	-(void)setArtist:(NSString*)Artist;
	-(void)setSessionKey:(NSString*)SessionKey;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddTags Choreo.
 */
@interface TMBLastFm_Album_AddTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Tags an album using a list of user supplied tags. 
 */
@interface TMBLastFm_Album_AddTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Album_AddTags_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Album_AddTags Choreo */


/*! group TMBLastFm.Artist.GetTopTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopTags Choreo.
 */
@interface TMBLastFm_Artist_GetTopTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setMbID:(NSString*)MbID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopTags Choreo.
 */
@interface TMBLastFm_Artist_GetTopTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the top tags for an artist on Last.fm, ordered by popularity.
 */
@interface TMBLastFm_Artist_GetTopTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetTopTags_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetTopTags Choreo */


/*! group TMBLastFm.User.GetEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetEvents Choreo.
 */
@interface TMBLastFm_User_GetEvents_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setFestivalsOnly:(NSString*)FestivalsOnly;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEvents Choreo.
 */
@interface TMBLastFm_User_GetEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of upcoming events that a user is attending.
 */
@interface TMBLastFm_User_GetEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetEvents_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetEvents Choreo */


/*! group TMBLastFm.Album.GetBuyLinks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBuyLinks Choreo.
 */
@interface TMBLastFm_Album_GetBuyLinks_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAlbum:(NSString*)Album;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setCountry:(NSString*)Country;
	-(void)setMbID:(NSString*)MbID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBuyLinks Choreo.
 */
@interface TMBLastFm_Album_GetBuyLinks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of Buy Links for a particular Album.
 */
@interface TMBLastFm_Album_GetBuyLinks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Album_GetBuyLinks_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Album_GetBuyLinks Choreo */


/*! group TMBLastFm.Album.Search Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@interface TMBLastFm_Album_Search_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAlbum:(NSString*)Album;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@interface TMBLastFm_Album_Search_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for an album by name. Returns album matches sorted by relevance.
 */
@interface TMBLastFm_Album_Search : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Album_Search_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Album_Search Choreo */


/*! group TMBLastFm.Artist.GetInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetInfo Choreo.
 */
@interface TMBLastFm_Artist_GetInfo_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setLanguage:(NSString*)Language;
	-(void)setMbID:(NSString*)MbID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInfo Choreo.
 */
@interface TMBLastFm_Artist_GetInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the metadata for an artist including biographical data.
 */
@interface TMBLastFm_Artist_GetInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetInfo_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetInfo Choreo */


/*! group TMBLastFm.User.GetNewReleases Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetNewReleases Choreo.
 */
@interface TMBLastFm_User_GetNewReleases_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setUserRecommendations:(NSString*)UserRecommendations;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewReleases Choreo.
 */
@interface TMBLastFm_User_GetNewReleases_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of forthcoming releases based on a user's musical taste. 
 */
@interface TMBLastFm_User_GetNewReleases : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetNewReleases_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetNewReleases Choreo */


/*! group TMBLastFm.Artist.GetImages Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetImages Choreo.
 */
@interface TMBLastFm_Artist_GetImages_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMbID:(NSString*)MbID;
	-(void)setOrder:(NSString*)Order;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetImages Choreo.
 */
@interface TMBLastFm_Artist_GetImages_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of images for a specified artist in a variety of sizes. 
 */
@interface TMBLastFm_Artist_GetImages : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetImages_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetImages Choreo */


/*! group TMBLastFm.Album.GetTopTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopTags Choreo.
 */
@interface TMBLastFm_Album_GetTopTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAlbum:(NSString*)Album;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setMbID:(NSString*)MbID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopTags Choreo.
 */
@interface TMBLastFm_Album_GetTopTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of the top tags for an album on Last.fm, ordered by popularity. 
 */
@interface TMBLastFm_Album_GetTopTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Album_GetTopTags_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Album_GetTopTags Choreo */


/*! group TMBLastFm.Album.Share Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Share Choreo.
 */
@interface TMBLastFm_Album_Share_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAlbum:(NSString*)Album;
	-(void)setArtist:(NSString*)Artist;
	-(void)setMessage:(NSString*)Message;
	-(void)setPublic:(NSString*)Public;
	-(void)setRecipient:(NSString*)Recipient;
	-(void)setSessionKey:(NSString*)SessionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Share Choreo.
 */
@interface TMBLastFm_Album_Share_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to share an album with one or more Last.fm users or other friends.
 */
@interface TMBLastFm_Album_Share : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Album_Share_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Album_Share Choreo */


/*! group TMBLastFm.Artist.GetTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTags Choreo.
 */
@interface TMBLastFm_Artist_GetTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setMbID:(NSString*)MbID;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTags Choreo.
 */
@interface TMBLastFm_Artist_GetTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the tags applied by an individual user to an artist on Last.fm.
 */
@interface TMBLastFm_Artist_GetTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetTags_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetTags Choreo */


/*! group TMBLastFm.Album.GetShouts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetShouts Choreo.
 */
@interface TMBLastFm_Album_GetShouts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAlbum:(NSString*)Album;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setMbID:(NSString*)MbID;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShouts Choreo.
 */
@interface TMBLastFm_Album_GetShouts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of shouts for a specified album.
 */
@interface TMBLastFm_Album_GetShouts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Album_GetShouts_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Album_GetShouts Choreo */


/*! group TMBLastFm.User.GetTopArtists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopArtists Choreo.
 */
@interface TMBLastFm_User_GetTopArtists_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setPeriod:(NSString*)Period;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopArtists Choreo.
 */
@interface TMBLastFm_User_GetTopArtists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the top artists listened to by a user.
 */
@interface TMBLastFm_User_GetTopArtists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetTopArtists_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetTopArtists Choreo */


/*! group TMBLastFm.Artist.GetCorrection Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCorrection Choreo.
 */
@interface TMBLastFm_Artist_GetCorrection_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCorrection Choreo.
 */
@interface TMBLastFm_Artist_GetCorrection_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to check whether the supplied artist has a correction to a canonical artist.
 */
@interface TMBLastFm_Artist_GetCorrection : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetCorrection_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetCorrection Choreo */


/*! group TMBLastFm.Album.GetTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTags Choreo.
 */
@interface TMBLastFm_Album_GetTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAlbum:(NSString*)Album;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setMbID:(NSString*)MbID;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTags Choreo.
 */
@interface TMBLastFm_Album_GetTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the tags applied by an individual user to an album on Last.fm.
 */
@interface TMBLastFm_Album_GetTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Album_GetTags_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Album_GetTags Choreo */


/*! group TMBLastFm.User.GetPastEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPastEvents Choreo.
 */
@interface TMBLastFm_User_GetPastEvents_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPastEvents Choreo.
 */
@interface TMBLastFm_User_GetPastEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a paginated list of all events a user has attended in the past. 
 */
@interface TMBLastFm_User_GetPastEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetPastEvents_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetPastEvents Choreo */


/*! group TMBLastFm.User.GetFriends Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFriends Choreo.
 */
@interface TMBLastFm_User_GetFriends_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setRecentTracks:(NSString*)RecentTracks;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFriends Choreo.
 */
@interface TMBLastFm_User_GetFriends_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of the user's friends on Last.fm.
 */
@interface TMBLastFm_User_GetFriends : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetFriends_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetFriends Choreo */


/*! group TMBLastFm.Artist.RemoveTag Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemoveTag Choreo.
 */
@interface TMBLastFm_Artist_RemoveTag_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setArtist:(NSString*)Artist;
	-(void)setSessionKey:(NSString*)SessionKey;
	-(void)setTag:(NSString*)Tag;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveTag Choreo.
 */
@interface TMBLastFm_Artist_RemoveTag_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes a user's tag from an artist.
 */
@interface TMBLastFm_Artist_RemoveTag : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_RemoveTag_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_RemoveTag Choreo */


/*! group TMBLastFm.User.GetRecommendedEvents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecommendedEvents Choreo.
 */
@interface TMBLastFm_User_GetRecommendedEvents_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setSessionKey:(NSString*)SessionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecommendedEvents Choreo.
 */
@interface TMBLastFm_User_GetRecommendedEvents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a paginated list of all events recommended to a user by Last.fm, based on their listening profile. 
 */
@interface TMBLastFm_User_GetRecommendedEvents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetRecommendedEvents_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetRecommendedEvents Choreo */


/*! group TMBLastFm.User.GetPersonalTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPersonalTags Choreo.
 */
@interface TMBLastFm_User_GetPersonalTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setTag:(NSString*)Tag;
	-(void)setTaggingType:(NSString*)TaggingType;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPersonalTags Choreo.
 */
@interface TMBLastFm_User_GetPersonalTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a user's personal tags.
 */
@interface TMBLastFm_User_GetPersonalTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetPersonalTags_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetPersonalTags Choreo */


/*! group TMBLastFm.Artist.GetShouts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetShouts Choreo.
 */
@interface TMBLastFm_Artist_GetShouts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMbID:(NSString*)MbID;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShouts Choreo.
 */
@interface TMBLastFm_Artist_GetShouts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of shouts for a specified artist.
 */
@interface TMBLastFm_Artist_GetShouts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetShouts_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetShouts Choreo */


/*! group TMBLastFm.User.GetWeeklyChartList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWeeklyChartList Choreo.
 */
@interface TMBLastFm_User_GetWeeklyChartList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeeklyChartList Choreo.
 */
@interface TMBLastFm_User_GetWeeklyChartList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of available charts for this user, expressed as date ranges which can be sent to the chart services.
 */
@interface TMBLastFm_User_GetWeeklyChartList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetWeeklyChartList_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetWeeklyChartList Choreo */


/*! group TMBLastFm.Artist.GetTopFans Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopFans Choreo.
 */
@interface TMBLastFm_Artist_GetTopFans_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setMbID:(NSString*)MbID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopFans Choreo.
 */
@interface TMBLastFm_Artist_GetTopFans_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the top fans for an artist on Last.fm, based on listening data.
 */
@interface TMBLastFm_Artist_GetTopFans : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetTopFans_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetTopFans Choreo */


/*! group TMBLastFm.Album.RemoveTag Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemoveTag Choreo.
 */
@interface TMBLastFm_Album_RemoveTag_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAlbum:(NSString*)Album;
	-(void)setArtist:(NSString*)Artist;
	-(void)setSessionKey:(NSString*)SessionKey;
	-(void)setTag:(NSString*)Tag;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveTag Choreo.
 */
@interface TMBLastFm_Album_RemoveTag_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes a user's tag from a specified album.
 */
@interface TMBLastFm_Album_RemoveTag : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Album_RemoveTag_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Album_RemoveTag Choreo */


/*! group TMBLastFm.Tasteometer.CompareUsers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CompareUsers Choreo.
 */
@interface TMBLastFm_Tasteometer_CompareUsers_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setUser1:(NSString*)User1;
	-(void)setUser2:(NSString*)User2;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompareUsers Choreo.
 */
@interface TMBLastFm_Tasteometer_CompareUsers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a Tasteometer score from two user inputs, along with a list of shared artists.
 */
@interface TMBLastFm_Tasteometer_CompareUsers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Tasteometer_CompareUsers_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Tasteometer_CompareUsers Choreo */


/*! group TMBLastFm.Artist.GetPodcast Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPodcast Choreo.
 */
@interface TMBLastFm_Artist_GetPodcast_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setMbID:(NSString*)MbID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPodcast Choreo.
 */
@interface TMBLastFm_Artist_GetPodcast_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a podcast of free mp3s based on a specified artist.
 */
@interface TMBLastFm_Artist_GetPodcast : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetPodcast_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetPodcast Choreo */


/*! group TMBLastFm.User.GetNeighbours Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetNeighbours Choreo.
 */
@interface TMBLastFm_User_GetNeighbours_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNeighbours Choreo.
 */
@interface TMBLastFm_User_GetNeighbours_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of a user's neighbours on Last.fm. 
 */
@interface TMBLastFm_User_GetNeighbours : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetNeighbours_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetNeighbours Choreo */


/*! group TMBLastFm.Artist.GetTopTracks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopTracks Choreo.
 */
@interface TMBLastFm_Artist_GetTopTracks_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMbID:(NSString*)MbID;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopTracks Choreo.
 */
@interface TMBLastFm_Artist_GetTopTracks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the top tracks by an artist on Last.fm, ordered by popularity.
 */
@interface TMBLastFm_Artist_GetTopTracks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetTopTracks_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetTopTracks Choreo */


/*! group TMBLastFm.Artist.GetSimilar Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSimilar Choreo.
 */
@interface TMBLastFm_Artist_GetSimilar_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMbID:(NSString*)MbID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSimilar Choreo.
 */
@interface TMBLastFm_Artist_GetSimilar_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all the artists similar to the specified artist.
 */
@interface TMBLastFm_Artist_GetSimilar : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_GetSimilar_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_GetSimilar Choreo */


/*! group TMBLastFm.Artist.AddTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddTags Choreo.
 */
@interface TMBLastFm_Artist_AddTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setArtist:(NSString*)Artist;
	-(void)setSessionKey:(NSString*)SessionKey;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddTags Choreo.
 */
@interface TMBLastFm_Artist_AddTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Tags an artist with one or more user supplied tags. 
 */
@interface TMBLastFm_Artist_AddTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_AddTags_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_AddTags Choreo */


/*! group TMBLastFm.User.GetRecentStations Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentStations Choreo.
 */
@interface TMBLastFm_User_GetRecentStations_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setSessionKey:(NSString*)SessionKey;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentStations Choreo.
 */
@interface TMBLastFm_User_GetRecentStations_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of the recent Stations listened to by this user.
 */
@interface TMBLastFm_User_GetRecentStations : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetRecentStations_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetRecentStations Choreo */


/*! group TMBLastFm.User.GetLovedTracks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLovedTracks Choreo.
 */
@interface TMBLastFm_User_GetLovedTracks_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLovedTracks Choreo.
 */
@interface TMBLastFm_User_GetLovedTracks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of the last 50 tracks loved by a user.
 */
@interface TMBLastFm_User_GetLovedTracks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetLovedTracks_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetLovedTracks Choreo */


/*! group TMBLastFm.User.GetPlaylists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPlaylists Choreo.
 */
@interface TMBLastFm_User_GetPlaylists_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPlaylists Choreo.
 */
@interface TMBLastFm_User_GetPlaylists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of a user's playlists on Last.fm. 
 */
@interface TMBLastFm_User_GetPlaylists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetPlaylists_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetPlaylists Choreo */


/*! group TMBLastFm.Tasteometer.CompareArtists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CompareArtists Choreo.
 */
@interface TMBLastFm_Tasteometer_CompareArtists_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist1:(NSString*)Artist1;
	-(void)setArtist2:(NSString*)Artist2;
	-(void)setLimit:(NSString*)Limit;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompareArtists Choreo.
 */
@interface TMBLastFm_Tasteometer_CompareArtists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a Tasteometer score from two artist inputs.
 */
@interface TMBLastFm_Tasteometer_CompareArtists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Tasteometer_CompareArtists_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Tasteometer_CompareArtists Choreo */


/*! group TMBLastFm.User.GetWeeklyAlbumChart Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWeeklyAlbumChart Choreo.
 */
@interface TMBLastFm_User_GetWeeklyAlbumChart_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEndTimestamp:(NSString*)EndTimestamp;
	-(void)setStartTimestamp:(NSString*)StartTimestamp;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeeklyAlbumChart Choreo.
 */
@interface TMBLastFm_User_GetWeeklyAlbumChart_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an album chart for a user profile, for a given date range.
 */
@interface TMBLastFm_User_GetWeeklyAlbumChart : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetWeeklyAlbumChart_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetWeeklyAlbumChart Choreo */


/*! group TMBLastFm.User.GetWeeklyTrackChart Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWeeklyTrackChart Choreo.
 */
@interface TMBLastFm_User_GetWeeklyTrackChart_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEndTimestamp:(NSString*)EndTimestamp;
	-(void)setStartTimestamp:(NSString*)StartTimestamp;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeeklyTrackChart Choreo.
 */
@interface TMBLastFm_User_GetWeeklyTrackChart_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a track chart for a user profile, for a given date range.
 */
@interface TMBLastFm_User_GetWeeklyTrackChart : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetWeeklyTrackChart_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetWeeklyTrackChart Choreo */


/*! group TMBLastFm.User.GetRecentTracks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentTracks Choreo.
 */
@interface TMBLastFm_User_GetRecentTracks_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEndTimestamp:(NSString*)EndTimestamp;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setStartTimestamp:(NSString*)StartTimestamp;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentTracks Choreo.
 */
@interface TMBLastFm_User_GetRecentTracks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get a list of the recent tracks listened to by this user.
 */
@interface TMBLastFm_User_GetRecentTracks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetRecentTracks_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetRecentTracks Choreo */


/*! group TMBLastFm.User.GetBannedTracks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBannedTracks Choreo.
 */
@interface TMBLastFm_User_GetBannedTracks_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPage:(NSString*)Page;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBannedTracks Choreo.
 */
@interface TMBLastFm_User_GetBannedTracks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of the tracks banned by a particular user.
 */
@interface TMBLastFm_User_GetBannedTracks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetBannedTracks_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetBannedTracks Choreo */


/*! group TMBLastFm.Album.GetInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetInfo Choreo.
 */
@interface TMBLastFm_Album_GetInfo_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAlbum:(NSString*)Album;
	-(void)setArtist:(NSString*)Artist;
	-(void)setAutoCorrect:(NSString*)AutoCorrect;
	-(void)setLanguage:(NSString*)Language;
	-(void)setMbID:(NSString*)MbID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInfo Choreo.
 */
@interface TMBLastFm_Album_GetInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the metadata for an album on Last.fm using the album and artist name or a musicbrainz id.
 */
@interface TMBLastFm_Album_GetInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Album_GetInfo_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Album_GetInfo Choreo */


/*! group TMBLastFm.Artist.Shout Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Shout Choreo.
 */
@interface TMBLastFm_Artist_Shout_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setArtist:(NSString*)Artist;
	-(void)setMessage:(NSString*)Message;
	-(void)setSessionKey:(NSString*)SessionKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Shout Choreo.
 */
@interface TMBLastFm_Artist_Shout_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a message in an artist's shoutbox.
 */
@interface TMBLastFm_Artist_Shout : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_Artist_Shout_Inputs*)newInputSet;
@end

/*! group TMBLastFm.Artist_Shout Choreo */


/*! group TMBLastFm.User.Shout Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Shout Choreo.
 */
@interface TMBLastFm_User_Shout_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setMessage:(NSString*)Message;
	-(void)setSessionKey:(NSString*)SessionKey;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Shout Choreo.
 */
@interface TMBLastFm_User_Shout_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a message in a user's shoutbox 
 */
@interface TMBLastFm_User_Shout : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_Shout_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_Shout Choreo */


/*! group TMBLastFm.User.GetArtistTracks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetArtistTracks Choreo.
 */
@interface TMBLastFm_User_GetArtistTracks_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArtist:(NSString*)Artist;
	-(void)setEndTimestamp:(NSString*)EndTimestamp;
	-(void)setPage:(NSString*)Page;
	-(void)setStartTimestamp:(NSString*)StartTimestamp;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetArtistTracks Choreo.
 */
@interface TMBLastFm_User_GetArtistTracks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of tracks by a given artist scrobbled by this user, including scrobble time.
 */
@interface TMBLastFm_User_GetArtistTracks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLastFm_User_GetArtistTracks_Inputs*)newInputSet;
@end

/*! group TMBLastFm.User_GetArtistTracks Choreo */
