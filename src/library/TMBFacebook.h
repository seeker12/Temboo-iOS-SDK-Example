/*!
 * @header Temboo iOS SDK Facebook classes
 *
 * Execute Choreographies from the Temboo Facebook bundle.
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

/*! group TMBFacebook.Actions.General.Follows.DeleteFollow Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFollow Choreo.
 */
@interface TMBFacebook_Actions_General_Follows_DeleteFollow_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFollow Choreo.
 */
@interface TMBFacebook_Actions_General_Follows_DeleteFollow_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given follow action.
 */
@interface TMBFacebook_Actions_General_Follows_DeleteFollow : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Follows_DeleteFollow_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Follows_DeleteFollow Choreo */


/*! group TMBFacebook.Publishing.UploadPhoto Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UploadPhoto Choreo.
 */
@interface TMBFacebook_Publishing_UploadPhoto_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAlbumID:(NSString*)AlbumID;
	-(void)setMessage:(NSString*)Message;
	-(void)setPhoto:(NSString*)Photo;
	-(void)setPlace:(NSString*)Place;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSource:(NSString*)Source;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadPhoto Choreo.
 */
@interface TMBFacebook_Publishing_UploadPhoto_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Uploads a photo to a given album.
 */
@interface TMBFacebook_Publishing_UploadPhoto : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Publishing_UploadPhoto_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Publishing_UploadPhoto Choreo */


/*! group TMBFacebook.Reading.Notes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Notes Choreo.
 */
@interface TMBFacebook_Reading_Notes_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Notes Choreo.
 */
@interface TMBFacebook_Reading_Notes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves notes associated with a specified user.
 */
@interface TMBFacebook_Reading_Notes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Notes_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Notes Choreo */


/*! group TMBFacebook.Reading.ProfileFeed Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ProfileFeed Choreo.
 */
@interface TMBFacebook_Reading_ProfileFeed_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ProfileFeed Choreo.
 */
@interface TMBFacebook_Reading_ProfileFeed_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves the feed from a specified user's Wall.
 */
@interface TMBFacebook_Reading_ProfileFeed : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_ProfileFeed_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_ProfileFeed Choreo */


/*! group TMBFacebook.Reading.Comments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Comments Choreo.
 */
@interface TMBFacebook_Reading_Comments_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFilter:(NSString*)Filter;
	-(void)setLimt:(NSString*)Limt;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Comments Choreo.
 */
@interface TMBFacebook_Reading_Comments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves comments for a specified Graph API object.
 */
@interface TMBFacebook_Reading_Comments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Comments_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Comments Choreo */


/*! group TMBFacebook.Actions.Books.Quotes.UpdateQuote Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateQuote Choreo.
 */
@interface TMBFacebook_Actions_Books_Quotes_UpdateQuote_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setBody:(NSString*)Body;
	-(void)setBook:(NSString*)Book;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateQuote Choreo.
 */
@interface TMBFacebook_Actions_Books_Quotes_UpdateQuote_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing quote action.
 */
@interface TMBFacebook_Actions_Books_Quotes_UpdateQuote : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Quotes_UpdateQuote_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Quotes_UpdateQuote Choreo */


/*! group TMBFacebook.Actions.Video.Watches.ReadWatch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_Watches_ReadWatch_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_Watches_ReadWatch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more video watch actions.
 */
@interface TMBFacebook_Actions_Video_Watches_ReadWatch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_Watches_ReadWatch_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.Watches_ReadWatch Choreo */


/*! group TMBFacebook.Reading.VideoTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VideoTags Choreo.
 */
@interface TMBFacebook_Reading_VideoTags_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VideoTags Choreo.
 */
@interface TMBFacebook_Reading_VideoTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of video tags associated with a specified user.
 */
@interface TMBFacebook_Reading_VideoTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_VideoTags_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_VideoTags Choreo */


/*! group TMBFacebook.Actions.Books.Quotes.CreateQuote Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateQuote Choreo.
 */
@interface TMBFacebook_Actions_Books_Quotes_CreateQuote_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBody:(NSString*)Body;
	-(void)setBook:(NSString*)Book;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateQuote Choreo.
 */
@interface TMBFacebook_Actions_Books_Quotes_CreateQuote_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user quoting from a book.
 */
@interface TMBFacebook_Actions_Books_Quotes_CreateQuote : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Quotes_CreateQuote_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Quotes_CreateQuote Choreo */


/*! group TMBFacebook.Searching.Search Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@interface TMBFacebook_Searching_Search_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCenter:(NSString*)Center;
	-(void)setDistance:(NSString*)Distance;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setObjectType:(NSString*)ObjectType;
	-(void)setOffset:(NSString*)Offset;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@interface TMBFacebook_Searching_Search_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Search public objects across the social graph.
 */
@interface TMBFacebook_Searching_Search : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Searching_Search_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Searching_Search Choreo */


/*! group TMBFacebook.Actions.Video.Rates.UpdateRating Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateRating Choreo.
 */
@interface TMBFacebook_Actions_Video_Rates_UpdateRating_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setEpisode:(NSString*)Episode;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setMovie:(NSString*)Movie;
	-(void)setOther:(NSString*)Other;
	-(void)setPlace:(NSString*)Place;
	-(void)setRatingNormalizedValue:(NSString*)RatingNormalizedValue;
	-(void)setRatingScale:(NSString*)RatingScale;
	-(void)setRatingValue:(NSString*)RatingValue;
	-(void)setReviewText:(NSString*)ReviewText;
	-(void)setReview:(NSString*)Review;
	-(void)setTVShow:(NSString*)TVShow;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateRating Choreo.
 */
@interface TMBFacebook_Actions_Video_Rates_UpdateRating_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing video rating action.
 */
@interface TMBFacebook_Actions_Video_Rates_UpdateRating : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_Rates_UpdateRating_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.Rates_UpdateRating Choreo */


/*! group TMBFacebook.Reading.Inbox Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Inbox Choreo.
 */
@interface TMBFacebook_Reading_Inbox_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Inbox Choreo.
 */
@interface TMBFacebook_Reading_Inbox_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;

	
@end

/*!
 * Retrieves a list of messages in a specified user's inbox.
 */
@interface TMBFacebook_Reading_Inbox : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Inbox_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Inbox Choreo */


/*! group TMBFacebook.Actions.News.Publishes.CreatePublication Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreatePublication Choreo.
 */
@interface TMBFacebook_Actions_News_Publishes_CreatePublication_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setArticle:(NSString*)Article;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePublication Choreo.
 */
@interface TMBFacebook_Actions_News_Publishes_CreatePublication_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user publishing a news article.
 */
@interface TMBFacebook_Actions_News_Publishes_CreatePublication : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_News_Publishes_CreatePublication_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.News.Publishes_CreatePublication Choreo */


/*! group TMBFacebook.Actions.Music.Playlists.DeletePlaylist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeletePlaylist Choreo.
 */
@interface TMBFacebook_Actions_Music_Playlists_DeletePlaylist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePlaylist Choreo.
 */
@interface TMBFacebook_Actions_Music_Playlists_DeletePlaylist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given playlist action.
 */
@interface TMBFacebook_Actions_Music_Playlists_DeletePlaylist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Music_Playlists_DeletePlaylist_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Music.Playlists_DeletePlaylist Choreo */


/*! group TMBFacebook.Actions.Books.Reads.DeleteReading Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteReading Choreo.
 */
@interface TMBFacebook_Actions_Books_Reads_DeleteReading_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteReading Choreo.
 */
@interface TMBFacebook_Actions_Books_Reads_DeleteReading_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given book reading action.
 */
@interface TMBFacebook_Actions_Books_Reads_DeleteReading : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Reads_DeleteReading_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Reads_DeleteReading Choreo */


/*! group TMBFacebook.Publishing.PublishNote Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PublishNote Choreo.
 */
@interface TMBFacebook_Publishing_PublishNote_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMessage:(NSString*)Message;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSubject:(NSString*)Subject;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PublishNote Choreo.
 */
@interface TMBFacebook_Publishing_PublishNote_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Publishes a note on a given profile.
 */
@interface TMBFacebook_Publishing_PublishNote : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Publishing_PublishNote_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Publishing_PublishNote Choreo */


/*! group TMBFacebook.Actions.General.Follows.UpdateFollow Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateFollow Choreo.
 */
@interface TMBFacebook_Actions_General_Follows_UpdateFollow_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfile:(NSString*)Profile;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateFollow Choreo.
 */
@interface TMBFacebook_Actions_General_Follows_UpdateFollow_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Update an existing follow action.
 */
@interface TMBFacebook_Actions_General_Follows_UpdateFollow : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Follows_UpdateFollow_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Follows_UpdateFollow Choreo */


/*! group TMBFacebook.Actions.News.Reads.CreateReading Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateReading Choreo.
 */
@interface TMBFacebook_Actions_News_Reads_CreateReading_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setArticle:(NSString*)Article;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateReading Choreo.
 */
@interface TMBFacebook_Actions_News_Reads_CreateReading_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user reading a news article.
 */
@interface TMBFacebook_Actions_News_Reads_CreateReading : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_News_Reads_CreateReading_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.News.Reads_CreateReading Choreo */


/*! group TMBFacebook.Reading.Accounts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Accounts Choreo.
 */
@interface TMBFacebook_Reading_Accounts_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Accounts Choreo.
 */
@interface TMBFacebook_Reading_Accounts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of the Facebook apps and pages owned by the specified user.
 */
@interface TMBFacebook_Reading_Accounts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Accounts_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Accounts Choreo */


/*! group TMBFacebook.Actions.News.Publishes.UpdatePublication Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePublication Choreo.
 */
@interface TMBFacebook_Actions_News_Publishes_UpdatePublication_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setArticle:(NSString*)Article;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePublication Choreo.
 */
@interface TMBFacebook_Actions_News_Publishes_UpdatePublication_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing news publishing action.
 */
@interface TMBFacebook_Actions_News_Publishes_UpdatePublication : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_News_Publishes_UpdatePublication_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.News.Publishes_UpdatePublication Choreo */


/*! group TMBFacebook.Publishing.Like Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Like Choreo.
 */
@interface TMBFacebook_Publishing_Like_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setObjectID:(NSString*)ObjectID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Like Choreo.
 */
@interface TMBFacebook_Publishing_Like_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows a user to "like" a Graph API object.
 */
@interface TMBFacebook_Publishing_Like : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Publishing_Like_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Publishing_Like Choreo */


/*! group TMBFacebook.Reading.Likes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Likes Choreo.
 */
@interface TMBFacebook_Reading_Likes_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Likes Choreo.
 */
@interface TMBFacebook_Reading_Likes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves the Likes for a specified user.
 */
@interface TMBFacebook_Reading_Likes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Likes_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Likes Choreo */


/*! group TMBFacebook.Actions.News.Reads.ReadReadings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadReadings Choreo.
 */
@interface TMBFacebook_Actions_News_Reads_ReadReadings_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadReadings Choreo.
 */
@interface TMBFacebook_Actions_News_Reads_ReadReadings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more news reading actions.
 */
@interface TMBFacebook_Actions_News_Reads_ReadReadings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_News_Reads_ReadReadings_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.News.Reads_ReadReadings Choreo */


/*! group TMBFacebook.Reading.Events Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Events Choreo.
 */
@interface TMBFacebook_Reading_Events_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Events Choreo.
 */
@interface TMBFacebook_Reading_Events_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of events associated with a specified user.
 */
@interface TMBFacebook_Reading_Events : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Events_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Events Choreo */


/*! group TMBFacebook.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBFacebook_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setLongLivedToken:(NSString*)LongLivedToken;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBFacebook_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getErrorMessage;
	-(NSString*)getExpires;	
@end

/*!
 * Completes the OAuth process by retrieving a Facebook access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@interface TMBFacebook_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBFacebook.OAuth_FinalizeOAuth Choreo */


/*! group TMBFacebook.Actions.General.Posts.DeletePost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeletePost Choreo.
 */
@interface TMBFacebook_Actions_General_Posts_DeletePost_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePost Choreo.
 */
@interface TMBFacebook_Actions_General_Posts_DeletePost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given post action.
 */
@interface TMBFacebook_Actions_General_Posts_DeletePost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Posts_DeletePost_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Posts_DeletePost Choreo */


/*! group TMBFacebook.Actions.Video.Watches.UpdateWatch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_Watches_UpdateWatch_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setEpisode:(NSString*)Episode;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setMovie:(NSString*)Movie;
	-(void)setPlace:(NSString*)Place;
	-(void)setTVShow:(NSString*)TVShow;
	-(void)setTags:(NSString*)Tags;
	-(void)setVideo:(NSString*)Video;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_Watches_UpdateWatch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing watch action.
 */
@interface TMBFacebook_Actions_Video_Watches_UpdateWatch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_Watches_UpdateWatch_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.Watches_UpdateWatch Choreo */


/*! group TMBFacebook.Actions.News.Reads.DeleteReading Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteReading Choreo.
 */
@interface TMBFacebook_Actions_News_Reads_DeleteReading_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteReading Choreo.
 */
@interface TMBFacebook_Actions_News_Reads_DeleteReading_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given news reading action.
 */
@interface TMBFacebook_Actions_News_Reads_DeleteReading : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_News_Reads_DeleteReading_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.News.Reads_DeleteReading Choreo */


/*! group TMBFacebook.Reading.Groups Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Groups Choreo.
 */
@interface TMBFacebook_Reading_Groups_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Groups Choreo.
 */
@interface TMBFacebook_Reading_Groups_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of groups associated with a specified user.
 */
@interface TMBFacebook_Reading_Groups : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Groups_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Groups Choreo */


/*! group TMBFacebook.BatchRequests.Batch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Batch Choreo.
 */
@interface TMBFacebook_BatchRequests_Batch_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBatch:(NSString*)Batch;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Batch Choreo.
 */
@interface TMBFacebook_BatchRequests_Batch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to perform multiple graph operations in one request.
 */
@interface TMBFacebook_BatchRequests_Batch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_BatchRequests_Batch_Inputs*)newInputSet;
@end

/*! group TMBFacebook.BatchRequests_Batch Choreo */


/*! group TMBFacebook.Actions.Books.WantsToRead.CreateWantsToRead Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateWantsToRead Choreo.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBook:(NSString*)Book;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateWantsToRead Choreo.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user wanting to read a book.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.WantsToRead_CreateWantsToRead Choreo */


/*! group TMBFacebook.Actions.Custom.UpdateAction Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAction Choreo.
 */
@interface TMBFacebook_Actions_Custom_UpdateAction_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setPropertyName:(NSString*)PropertyName;
	-(void)setPropertyValue:(NSString*)PropertyValue;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAction Choreo.
 */
@interface TMBFacebook_Actions_Custom_UpdateAction_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing custom action.
 */
@interface TMBFacebook_Actions_Custom_UpdateAction : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Custom_UpdateAction_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Custom_UpdateAction Choreo */


/*! group TMBFacebook.Actions.Video.WantsToWatch.ReadWantsToWatch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadWantsToWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadWantsToWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more video wants_to_watch actions.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.WantsToWatch_ReadWantsToWatch Choreo */


/*! group TMBFacebook.Actions.General.Follows.CreateFollow Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateFollow Choreo.
 */
@interface TMBFacebook_Actions_General_Follows_CreateFollow_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setProfile:(NSString*)Profile;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFollow Choreo.
 */
@interface TMBFacebook_Actions_General_Follows_CreateFollow_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents someone following a Facebook user.
 */
@interface TMBFacebook_Actions_General_Follows_CreateFollow : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Follows_CreateFollow_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Follows_CreateFollow Choreo */


/*! group TMBFacebook.Actions.Video.WantsToWatch.CreateWantsToWatch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateWantsToWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAiringEndTime:(NSString*)AiringEndTime;
	-(void)setAiringID:(NSString*)AiringID;
	-(void)setAiringStartTime:(NSString*)AiringStartTime;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setEpisode:(NSString*)Episode;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setMovie:(NSString*)Movie;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setOther:(NSString*)Other;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTVShow:(NSString*)TVShow;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateWantsToWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user wanting to watch video content.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.WantsToWatch_CreateWantsToWatch Choreo */


/*! group TMBFacebook.Deleting.DeleteStatus Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteStatus Choreo.
 */
@interface TMBFacebook_Deleting_DeleteStatus_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setStatusID:(NSString*)StatusID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteStatus Choreo.
 */
@interface TMBFacebook_Deleting_DeleteStatus_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified status message from the authenticated user's feed.
 */
@interface TMBFacebook_Deleting_DeleteStatus : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Deleting_DeleteStatus_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Deleting_DeleteStatus Choreo */


/*! group TMBFacebook.Actions.Fitness.Runs.CreateRun Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateRun Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Runs_CreateRun_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCourse:(NSString*)Course;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRun Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Runs_CreateRun_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user running a course.
 */
@interface TMBFacebook_Actions_Fitness_Runs_CreateRun : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Runs_CreateRun_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Runs_CreateRun Choreo */


/*! group TMBFacebook.Actions.General.Likes.DeleteLike Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteLike Choreo.
 */
@interface TMBFacebook_Actions_General_Likes_DeleteLike_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteLike Choreo.
 */
@interface TMBFacebook_Actions_General_Likes_DeleteLike_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given like action.
 */
@interface TMBFacebook_Actions_General_Likes_DeleteLike : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Likes_DeleteLike_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Likes_DeleteLike Choreo */


/*! group TMBFacebook.Actions.Books.Reads.UpdateReading Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateReading Choreo.
 */
@interface TMBFacebook_Actions_Books_Reads_UpdateReading_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setBook:(NSString*)Book;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setProgressPercentComplete:(NSString*)ProgressPercentComplete;
	-(void)setProgressTimestamp:(NSString*)ProgressTimestamp;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateReading Choreo.
 */
@interface TMBFacebook_Actions_Books_Reads_UpdateReading_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing book reading action.
 */
@interface TMBFacebook_Actions_Books_Reads_UpdateReading : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Reads_UpdateReading_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Reads_UpdateReading Choreo */


/*! group TMBFacebook.Actions.Custom.ReadActions Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadActions Choreo.
 */
@interface TMBFacebook_Actions_Custom_ReadActions_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setActionType:(NSString*)ActionType;
	-(void)setAppNamespace:(NSString*)AppNamespace;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadActions Choreo.
 */
@interface TMBFacebook_Actions_Custom_ReadActions_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more custom actions.
 */
@interface TMBFacebook_Actions_Custom_ReadActions : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Custom_ReadActions_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Custom_ReadActions Choreo */


/*! group TMBFacebook.Actions.Music.Playlists.CreatePlaylist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreatePlaylist Choreo.
 */
@interface TMBFacebook_Actions_Music_Playlists_CreatePlaylist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setPlaylist:(NSString*)Playlist;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePlaylist Choreo.
 */
@interface TMBFacebook_Actions_Music_Playlists_CreatePlaylist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action representing someone creating a playlist.
 */
@interface TMBFacebook_Actions_Music_Playlists_CreatePlaylist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Music_Playlists_CreatePlaylist_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Music.Playlists_CreatePlaylist Choreo */


/*! group TMBFacebook.Reading.Checkins Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Checkins Choreo.
 */
@interface TMBFacebook_Reading_Checkins_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Checkins Choreo.
 */
@interface TMBFacebook_Reading_Checkins_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of checkins associated with a specified user.
 */
@interface TMBFacebook_Reading_Checkins : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Checkins_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Checkins Choreo */


/*! group TMBFacebook.Actions.Books.Quotes.ReadQuotes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadQuotes Choreo.
 */
@interface TMBFacebook_Actions_Books_Quotes_ReadQuotes_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadQuotes Choreo.
 */
@interface TMBFacebook_Actions_Books_Quotes_ReadQuotes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more quote actions.
 */
@interface TMBFacebook_Actions_Books_Quotes_ReadQuotes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Quotes_ReadQuotes_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Quotes_ReadQuotes Choreo */


/*! group TMBFacebook.Publishing.SetStatus Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SetStatus Choreo.
 */
@interface TMBFacebook_Publishing_SetStatus_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMessage:(NSString*)Message;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetStatus Choreo.
 */
@interface TMBFacebook_Publishing_SetStatus_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Updates a user's Facebook status.
 */
@interface TMBFacebook_Publishing_SetStatus : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Publishing_SetStatus_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Publishing_SetStatus Choreo */


/*! group TMBFacebook.Actions.Fitness.Runs.DeleteRun Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRun Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Runs_DeleteRun_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRun Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Runs_DeleteRun_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given run action.
 */
@interface TMBFacebook_Actions_Fitness_Runs_DeleteRun : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Runs_DeleteRun_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Runs_DeleteRun Choreo */


/*! group TMBFacebook.Actions.Video.WantsToWatch.UpdateWantsToWatch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateWantsToWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setAiringEndTime:(NSString*)AiringEndTime;
	-(void)setAiringID:(NSString*)AiringID;
	-(void)setAiringStartTime:(NSString*)AiringStartTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setEpisode:(NSString*)Episode;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setMovie:(NSString*)Movie;
	-(void)setOther:(NSString*)Other;
	-(void)setPlace:(NSString*)Place;
	-(void)setTVShow:(NSString*)TVShow;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateWantsToWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing wants_to_watch action.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.WantsToWatch_UpdateWantsToWatch Choreo */


/*! group TMBFacebook.Actions.Books.WantsToRead.ReadWantsToReads Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadWantsToReads Choreo.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadWantsToReads Choreo.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more wants_to_read actions.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.WantsToRead_ReadWantsToReads Choreo */


/*! group TMBFacebook.Reading.NewsFeed Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the NewsFeed Choreo.
 */
@interface TMBFacebook_Reading_NewsFeed_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NewsFeed Choreo.
 */
@interface TMBFacebook_Reading_NewsFeed_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves the current news feed associated with a specified user.
 */
@interface TMBFacebook_Reading_NewsFeed : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_NewsFeed_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_NewsFeed Choreo */


/*! group TMBFacebook.Searching.MultiQuery Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MultiQuery Choreo.
 */
@interface TMBFacebook_Searching_MultiQuery_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setQueries:(NSString*)Queries;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MultiQuery Choreo.
 */
@interface TMBFacebook_Searching_MultiQuery_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to submit multiple FQL statements and retrieve all the results you need in one request.
 */
@interface TMBFacebook_Searching_MultiQuery : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Searching_MultiQuery_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Searching_MultiQuery Choreo */


/*! group TMBFacebook.Actions.Books.Quotes.DeleteQuote Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteQuote Choreo.
 */
@interface TMBFacebook_Actions_Books_Quotes_DeleteQuote_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteQuote Choreo.
 */
@interface TMBFacebook_Actions_Books_Quotes_DeleteQuote_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given quote action.
 */
@interface TMBFacebook_Actions_Books_Quotes_DeleteQuote : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Quotes_DeleteQuote_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Quotes_DeleteQuote Choreo */


/*! group TMBFacebook.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBFacebook_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
	-(void)setScope:(NSString*)Scope;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBFacebook_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBFacebook_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBFacebook.OAuth_InitializeOAuth Choreo */


/*! group TMBFacebook.Actions.General.Follows.ReadFollows Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadFollows Choreo.
 */
@interface TMBFacebook_Actions_General_Follows_ReadFollows_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadFollows Choreo.
 */
@interface TMBFacebook_Actions_General_Follows_ReadFollows_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more follow actions.
 */
@interface TMBFacebook_Actions_General_Follows_ReadFollows : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Follows_ReadFollows_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Follows_ReadFollows Choreo */


/*! group TMBFacebook.Reading.Friends Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Friends Choreo.
 */
@interface TMBFacebook_Reading_Friends_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Friends Choreo.
 */
@interface TMBFacebook_Reading_Friends_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of names and profile IDs for Facebook friends associated with a specified user.
 */
@interface TMBFacebook_Reading_Friends : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Friends_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Friends Choreo */


/*! group TMBFacebook.Reading.GetObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetObject Choreo.
 */
@interface TMBFacebook_Reading_GetObject_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetObject Choreo.
 */
@interface TMBFacebook_Reading_GetObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves retrieves the details for a Graph API object that you specify.
 */
@interface TMBFacebook_Reading_GetObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_GetObject_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_GetObject Choreo */


/*! group TMBFacebook.Actions.News.Reads.UpdateReading Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateReading Choreo.
 */
@interface TMBFacebook_Actions_News_Reads_UpdateReading_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setArticle:(NSString*)Article;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateReading Choreo.
 */
@interface TMBFacebook_Actions_News_Reads_UpdateReading_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing news reading action.
 */
@interface TMBFacebook_Actions_News_Reads_UpdateReading : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_News_Reads_UpdateReading_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.News.Reads_UpdateReading Choreo */


/*! group TMBFacebook.Actions.Custom.CreateAction Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAction Choreo.
 */
@interface TMBFacebook_Actions_Custom_CreateAction_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionType:(NSString*)ActionType;
	-(void)setAppNamespace:(NSString*)AppNamespace;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setPropertyName:(NSString*)PropertyName;
	-(void)setPropertyValue:(NSString*)PropertyValue;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAction Choreo.
 */
@interface TMBFacebook_Actions_Custom_CreateAction_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an Open Graph action that represents a user performing the specified action while using your app.
 */
@interface TMBFacebook_Actions_Custom_CreateAction : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Custom_CreateAction_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Custom_CreateAction Choreo */


/*! group TMBFacebook.Publishing.CreateEvent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateEvent Choreo.
 */
@interface TMBFacebook_Publishing_CreateEvent_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setName:(NSString*)Name;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEvent Choreo.
 */
@interface TMBFacebook_Publishing_CreateEvent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates an event.
 */
@interface TMBFacebook_Publishing_CreateEvent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Publishing_CreateEvent_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Publishing_CreateEvent Choreo */


/*! group TMBFacebook.Actions.Books.Rates.DeleteRating Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRating Choreo.
 */
@interface TMBFacebook_Actions_Books_Rates_DeleteRating_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRating Choreo.
 */
@interface TMBFacebook_Actions_Books_Rates_DeleteRating_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given book rating action.
 */
@interface TMBFacebook_Actions_Books_Rates_DeleteRating : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Rates_DeleteRating_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Rates_DeleteRating Choreo */


/*! group TMBFacebook.Actions.Books.Rates.CreateRating Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateRating Choreo.
 */
@interface TMBFacebook_Actions_Books_Rates_CreateRating_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBook:(NSString*)Book;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setRatingNormalizedValue:(NSString*)RatingNormalizedValue;
	-(void)setRatingScale:(NSString*)RatingScale;
	-(void)setRatingValue:(NSString*)RatingValue;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setReviewText:(NSString*)ReviewText;
	-(void)setReview:(NSString*)Review;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRating Choreo.
 */
@interface TMBFacebook_Actions_Books_Rates_CreateRating_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user giving a book a rating.
 */
@interface TMBFacebook_Actions_Books_Rates_CreateRating : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Rates_CreateRating_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Rates_CreateRating Choreo */


/*! group TMBFacebook.Publishing.CreateCheckin Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateCheckin Choreo.
 */
@interface TMBFacebook_Publishing_CreateCheckin_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlaceID:(NSString*)PlaceID;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCheckin Choreo.
 */
@interface TMBFacebook_Publishing_CreateCheckin_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a checkin at a location represented by a Page.
 */
@interface TMBFacebook_Publishing_CreateCheckin : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Publishing_CreateCheckin_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Publishing_CreateCheckin Choreo */


/*! group TMBFacebook.Actions.Books.Reads.ReadReadings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadReadings Choreo.
 */
@interface TMBFacebook_Actions_Books_Reads_ReadReadings_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadReadings Choreo.
 */
@interface TMBFacebook_Actions_Books_Reads_ReadReadings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more book reading actions.
 */
@interface TMBFacebook_Actions_Books_Reads_ReadReadings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Reads_ReadReadings_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Reads_ReadReadings Choreo */


/*! group TMBFacebook.Actions.Fitness.Walks.ReadWalks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadWalks Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Walks_ReadWalks_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadWalks Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Walks_ReadWalks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more walk actions.
 */
@interface TMBFacebook_Actions_Fitness_Walks_ReadWalks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Walks_ReadWalks_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Walks_ReadWalks Choreo */


/*! group TMBFacebook.Actions.Fitness.Runs.UpdateRun Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateRun Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Runs_UpdateRun_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setCourse:(NSString*)Course;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateRun Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Runs_UpdateRun_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing run action.
 */
@interface TMBFacebook_Actions_Fitness_Runs_UpdateRun : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Runs_UpdateRun_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Runs_UpdateRun Choreo */


/*! group TMBFacebook.Actions.Fitness.Walks.UpdateWalk Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateWalk Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Walks_UpdateWalk_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setCourse:(NSString*)Course;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateWalk Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Walks_UpdateWalk_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing walk action.
 */
@interface TMBFacebook_Actions_Fitness_Walks_UpdateWalk : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Walks_UpdateWalk_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Walks_UpdateWalk Choreo */


/*! group TMBFacebook.Actions.Music.Playlists.ReadPlaylist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadPlaylist Choreo.
 */
@interface TMBFacebook_Actions_Music_Playlists_ReadPlaylist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadPlaylist Choreo.
 */
@interface TMBFacebook_Actions_Music_Playlists_ReadPlaylist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more playlist actions.
 */
@interface TMBFacebook_Actions_Music_Playlists_ReadPlaylist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Music_Playlists_ReadPlaylist_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Music.Playlists_ReadPlaylist Choreo */


/*! group TMBFacebook.Reading.FriendRequests Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FriendRequests Choreo.
 */
@interface TMBFacebook_Reading_FriendRequests_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimt:(NSString*)Limt;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FriendRequests Choreo.
 */
@interface TMBFacebook_Reading_FriendRequests_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;

	
@end

/*!
 * Retrieves a list of friend requests for a specified user.
 */
@interface TMBFacebook_Reading_FriendRequests : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_FriendRequests_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_FriendRequests Choreo */


/*! group TMBFacebook.Actions.News.Publishes.DeletePublication Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeletePublication Choreo.
 */
@interface TMBFacebook_Actions_News_Publishes_DeletePublication_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePublication Choreo.
 */
@interface TMBFacebook_Actions_News_Publishes_DeletePublication_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given news publishing action.
 */
@interface TMBFacebook_Actions_News_Publishes_DeletePublication : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_News_Publishes_DeletePublication_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.News.Publishes_DeletePublication Choreo */


/*! group TMBFacebook.Actions.General.Likes.UpdateLike Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateLike Choreo.
 */
@interface TMBFacebook_Actions_General_Likes_UpdateLike_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setObject:(NSString*)Object;
	-(void)setPlace:(NSString*)Place;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateLike Choreo.
 */
@interface TMBFacebook_Actions_General_Likes_UpdateLike_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user liking an object.
 */
@interface TMBFacebook_Actions_General_Likes_UpdateLike : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Likes_UpdateLike_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Likes_UpdateLike Choreo */


/*! group TMBFacebook.Publishing.PublishLink Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PublishLink Choreo.
 */
@interface TMBFacebook_Publishing_PublishLink_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCaption:(NSString*)Caption;
	-(void)setDescription:(NSString*)Description;
	-(void)setLink:(NSString*)Link;
	-(void)setMessage:(NSString*)Message;
	-(void)setName:(NSString*)Name;
	-(void)setPicture:(NSString*)Picture;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PublishLink Choreo.
 */
@interface TMBFacebook_Publishing_PublishLink_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Publishes a link on a given profile.
 */
@interface TMBFacebook_Publishing_PublishLink : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Publishing_PublishLink_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Publishing_PublishLink Choreo */


/*! group TMBFacebook.Publishing.Post Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Post Choreo.
 */
@interface TMBFacebook_Publishing_Post_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCaption:(NSString*)Caption;
	-(void)setDescription:(NSString*)Description;
	-(void)setLink:(NSString*)Link;
	-(void)setMessage:(NSString*)Message;
	-(void)setName:(NSString*)Name;
	-(void)setPicture:(NSString*)Picture;
	-(void)setPlaceID:(NSString*)PlaceID;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Post Choreo.
 */
@interface TMBFacebook_Publishing_Post_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Adds an entry to a user's profile feed.
 */
@interface TMBFacebook_Publishing_Post : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Publishing_Post_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Publishing_Post Choreo */


/*! group TMBFacebook.Actions.Fitness.Walks.DeleteWalk Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWalk Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Walks_DeleteWalk_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWalk Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Walks_DeleteWalk_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given walk action.
 */
@interface TMBFacebook_Actions_Fitness_Walks_DeleteWalk : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Walks_DeleteWalk_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Walks_DeleteWalk Choreo */


/*! group TMBFacebook.Actions.Video.Watches.DeleteWatch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_Watches_DeleteWatch_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_Watches_DeleteWatch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given watch action.
 */
@interface TMBFacebook_Actions_Video_Watches_DeleteWatch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_Watches_DeleteWatch_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.Watches_DeleteWatch Choreo */


/*! group TMBFacebook.Actions.Fitness.Bikes.CreateBike Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateBike Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_CreateBike_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCourse:(NSString*)Course;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateBike Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_CreateBike_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user cycling a course.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_CreateBike : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Bikes_CreateBike_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Bikes_CreateBike Choreo */


/*! group TMBFacebook.Actions.Music.Listens.ReadListens Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadListens Choreo.
 */
@interface TMBFacebook_Actions_Music_Listens_ReadListens_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadListens Choreo.
 */
@interface TMBFacebook_Actions_Music_Listens_ReadListens_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more listen actions.
 */
@interface TMBFacebook_Actions_Music_Listens_ReadListens : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Music_Listens_ReadListens_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Music.Listens_ReadListens Choreo */


/*! group TMBFacebook.Actions.General.Likes.CreateLike Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateLike Choreo.
 */
@interface TMBFacebook_Actions_General_Likes_CreateLike_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setObject:(NSString*)Object;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateLike Choreo.
 */
@interface TMBFacebook_Actions_General_Likes_CreateLike_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action representing someone liking an object.
 */
@interface TMBFacebook_Actions_General_Likes_CreateLike : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Likes_CreateLike_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Likes_CreateLike Choreo */


/*! group TMBFacebook.Reading.Movies Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Movies Choreo.
 */
@interface TMBFacebook_Reading_Movies_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Movies Choreo.
 */
@interface TMBFacebook_Reading_Movies_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves movies associated with a specified user.
 */
@interface TMBFacebook_Reading_Movies : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Movies_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Movies Choreo */


/*! group TMBFacebook.Actions.Fitness.Runs.ReadRuns Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadRuns Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Runs_ReadRuns_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadRuns Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Runs_ReadRuns_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more run actions.
 */
@interface TMBFacebook_Actions_Fitness_Runs_ReadRuns : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Runs_ReadRuns_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Runs_ReadRuns Choreo */


/*! group TMBFacebook.Reading.PhotoTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PhotoTags Choreo.
 */
@interface TMBFacebook_Reading_PhotoTags_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PhotoTags Choreo.
 */
@interface TMBFacebook_Reading_PhotoTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of photos associated with a specified user.
 */
@interface TMBFacebook_Reading_PhotoTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_PhotoTags_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_PhotoTags Choreo */


/*! group TMBFacebook.Actions.Fitness.Walks.CreateWalk Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateWalk Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Walks_CreateWalk_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCourse:(NSString*)Course;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateWalk Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Walks_CreateWalk_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user walking a course.
 */
@interface TMBFacebook_Actions_Fitness_Walks_CreateWalk : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Walks_CreateWalk_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Walks_CreateWalk Choreo */


/*! group TMBFacebook.Actions.Music.Listens.CreateListen Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateListen Choreo.
 */
@interface TMBFacebook_Actions_Music_Listens_CreateListen_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAlbum:(NSString*)Album;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setMusician:(NSString*)Musician;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPaused:(NSString*)Paused;
	-(void)setPlace:(NSString*)Place;
	-(void)setPlaylist:(NSString*)Playlist;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setRadioStation:(NSString*)RadioStation;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSong:(NSString*)Song;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
	-(void)setViaUser:(NSString*)ViaUser;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateListen Choreo.
 */
@interface TMBFacebook_Actions_Music_Listens_CreateListen_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user listening to music.
 */
@interface TMBFacebook_Actions_Music_Listens_CreateListen : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Music_Listens_CreateListen_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Music.Listens_CreateListen Choreo */


/*! group TMBFacebook.Reading.Picture Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Picture Choreo.
 */
@interface TMBFacebook_Reading_Picture_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReturnSSLResources:(NSString*)ReturnSSLResources;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Picture Choreo.
 */
@interface TMBFacebook_Reading_Picture_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the current profile photo for any object in the Facebook graph, and returns the image as a Base64 encoded string.
 */
@interface TMBFacebook_Reading_Picture : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Picture_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Picture Choreo */


/*! group TMBFacebook.Actions.General.Posts.ReadPosts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadPosts Choreo.
 */
@interface TMBFacebook_Actions_General_Posts_ReadPosts_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadPosts Choreo.
 */
@interface TMBFacebook_Actions_General_Posts_ReadPosts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more post actions.
 */
@interface TMBFacebook_Actions_General_Posts_ReadPosts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Posts_ReadPosts_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Posts_ReadPosts Choreo */


/*! group TMBFacebook.Actions.Video.Watches.CreateWatch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_Watches_CreateWatch_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setEpisode:(NSString*)Episode;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setMovie:(NSString*)Movie;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTVShow:(NSString*)TVShow;
	-(void)setTags:(NSString*)Tags;
	-(void)setVideo:(NSString*)Video;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_Watches_CreateWatch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user watching video content.
 */
@interface TMBFacebook_Actions_Video_Watches_CreateWatch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_Watches_CreateWatch_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.Watches_CreateWatch Choreo */


/*! group TMBFacebook.Actions.Books.WantsToRead.DeleteWantsToRead Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWantsToRead Choreo.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWantsToRead Choreo.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given wants_to_read action.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.WantsToRead_DeleteWantsToRead Choreo */


/*! group TMBFacebook.Reading.VideoUploads Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VideoUploads Choreo.
 */
@interface TMBFacebook_Reading_VideoUploads_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VideoUploads Choreo.
 */
@interface TMBFacebook_Reading_VideoUploads_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of uploaded videos associated with a specified user.
 */
@interface TMBFacebook_Reading_VideoUploads : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_VideoUploads_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_VideoUploads Choreo */


/*! group TMBFacebook.Reading.User Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the User Choreo.
 */
@interface TMBFacebook_Reading_User_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the User Choreo.
 */
@interface TMBFacebook_Reading_User_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves information about the specified user.
 */
@interface TMBFacebook_Reading_User : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_User_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_User Choreo */


/*! group TMBFacebook.Publishing.RSVPEvent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RSVPEvent Choreo.
 */
@interface TMBFacebook_Publishing_RSVPEvent_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEventID:(NSString*)EventID;
	-(void)setRSVP:(NSString*)RSVP;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RSVPEvent Choreo.
 */
@interface TMBFacebook_Publishing_RSVPEvent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * RSVP to an event as "attending", "maybe", or "declined".
 */
@interface TMBFacebook_Publishing_RSVPEvent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Publishing_RSVPEvent_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Publishing_RSVPEvent Choreo */


/*! group TMBFacebook.Searching.FQL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FQL Choreo.
 */
@interface TMBFacebook_Searching_FQL_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConditions:(NSString*)Conditions;
	-(void)setFields:(NSString*)Fields;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTable:(NSString*)Table;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FQL Choreo.
 */
@interface TMBFacebook_Searching_FQL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to use a SQL-style syntax to query data in the Graph API.
 */
@interface TMBFacebook_Searching_FQL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Searching_FQL_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Searching_FQL Choreo */


/*! group TMBFacebook.Deleting.DeleteComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteComment Choreo.
 */
@interface TMBFacebook_Deleting_DeleteComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCommentID:(NSString*)CommentID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteComment Choreo.
 */
@interface TMBFacebook_Deleting_DeleteComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified comment.
 */
@interface TMBFacebook_Deleting_DeleteComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Deleting_DeleteComment_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Deleting_DeleteComment Choreo */


/*! group TMBFacebook.Actions.Music.Listens.UpdateListen Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateListen Choreo.
 */
@interface TMBFacebook_Actions_Music_Listens_UpdateListen_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setAlbum:(NSString*)Album;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setMusician:(NSString*)Musician;
	-(void)setPaused:(NSString*)Paused;
	-(void)setPlace:(NSString*)Place;
	-(void)setPlaylist:(NSString*)Playlist;
	-(void)setRadioStation:(NSString*)RadioStation;
	-(void)setSong:(NSString*)Song;
	-(void)setTags:(NSString*)Tags;
	-(void)setViaUser:(NSString*)ViaUser;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateListen Choreo.
 */
@interface TMBFacebook_Actions_Music_Listens_UpdateListen_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates and existing listen action.
 */
@interface TMBFacebook_Actions_Music_Listens_UpdateListen : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Music_Listens_UpdateListen_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Music.Listens_UpdateListen Choreo */


/*! group TMBFacebook.Actions.Video.Rates.ReadRatings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadRatings Choreo.
 */
@interface TMBFacebook_Actions_Video_Rates_ReadRatings_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadRatings Choreo.
 */
@interface TMBFacebook_Actions_Video_Rates_ReadRatings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more video rating actions.
 */
@interface TMBFacebook_Actions_Video_Rates_ReadRatings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_Rates_ReadRatings_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.Rates_ReadRatings Choreo */


/*! group TMBFacebook.Reading.Outbox Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Outbox Choreo.
 */
@interface TMBFacebook_Reading_Outbox_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Outbox Choreo.
 */
@interface TMBFacebook_Reading_Outbox_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of messages in a specified user's outbox.
 */
@interface TMBFacebook_Reading_Outbox : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Outbox_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Outbox Choreo */


/*! group TMBFacebook.Actions.Books.Rates.ReadRatings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadRatings Choreo.
 */
@interface TMBFacebook_Actions_Books_Rates_ReadRatings_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadRatings Choreo.
 */
@interface TMBFacebook_Actions_Books_Rates_ReadRatings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more book rating actions.
 */
@interface TMBFacebook_Actions_Books_Rates_ReadRatings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Rates_ReadRatings_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Rates_ReadRatings Choreo */


/*! group TMBFacebook.Actions.Books.Rates.UpdateRating Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateRating Choreo.
 */
@interface TMBFacebook_Actions_Books_Rates_UpdateRating_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setBook:(NSString*)Book;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setRatingNormalizedValue:(NSString*)RatingNormalizedValue;
	-(void)setRatingScale:(NSString*)RatingScale;
	-(void)setRatingValue:(NSString*)RatingValue;
	-(void)setReviewText:(NSString*)ReviewText;
	-(void)setReview:(NSString*)Review;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateRating Choreo.
 */
@interface TMBFacebook_Actions_Books_Rates_UpdateRating_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing book rating action.
 */
@interface TMBFacebook_Actions_Books_Rates_UpdateRating : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Rates_UpdateRating_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Rates_UpdateRating Choreo */


/*! group TMBFacebook.Actions.General.Posts.UpdatePost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePost Choreo.
 */
@interface TMBFacebook_Actions_General_Posts_UpdatePost_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setObject:(NSString*)Object;
	-(void)setPlace:(NSString*)Place;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePost Choreo.
 */
@interface TMBFacebook_Actions_General_Posts_UpdatePost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a given post action.
 */
@interface TMBFacebook_Actions_General_Posts_UpdatePost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Posts_UpdatePost_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Posts_UpdatePost Choreo */


/*! group TMBFacebook.Publishing.CreateAlbum Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAlbum Choreo.
 */
@interface TMBFacebook_Publishing_CreateAlbum_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMessage:(NSString*)Message;
	-(void)setName:(NSString*)Name;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAlbum Choreo.
 */
@interface TMBFacebook_Publishing_CreateAlbum_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates an album.
 */
@interface TMBFacebook_Publishing_CreateAlbum : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Publishing_CreateAlbum_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Publishing_CreateAlbum Choreo */


/*! group TMBFacebook.Actions.Books.Reads.CreateReading Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateReading Choreo.
 */
@interface TMBFacebook_Actions_Books_Reads_CreateReading_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBook:(NSString*)Book;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setProgressPercentComplete:(NSString*)ProgressPercentComplete;
	-(void)setProgressTimestamp:(NSString*)ProgressTimestamp;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateReading Choreo.
 */
@interface TMBFacebook_Actions_Books_Reads_CreateReading_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user reading a book.
 */
@interface TMBFacebook_Actions_Books_Reads_CreateReading : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_Reads_CreateReading_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.Reads_CreateReading Choreo */


/*! group TMBFacebook.Actions.Fitness.Bikes.UpdateBike Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateBike Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_UpdateBike_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setCourse:(NSString*)Course;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateBike Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_UpdateBike_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing bike action.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_UpdateBike : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Bikes_UpdateBike_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Bikes_UpdateBike Choreo */


/*! group TMBFacebook.Actions.Video.Rates.DeleteRating Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRating Choreo.
 */
@interface TMBFacebook_Actions_Video_Rates_DeleteRating_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRating Choreo.
 */
@interface TMBFacebook_Actions_Video_Rates_DeleteRating_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given video rating action.
 */
@interface TMBFacebook_Actions_Video_Rates_DeleteRating : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_Rates_DeleteRating_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.Rates_DeleteRating Choreo */


/*! group TMBFacebook.Actions.Fitness.Bikes.DeleteBike Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBike Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_DeleteBike_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBike Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_DeleteBike_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given bike action.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_DeleteBike : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Bikes_DeleteBike_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Bikes_DeleteBike Choreo */


/*! group TMBFacebook.Actions.Music.Playlists.UpdatePlaylist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePlaylist Choreo.
 */
@interface TMBFacebook_Actions_Music_Playlists_UpdatePlaylist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setPlayList:(NSString*)PlayList;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePlaylist Choreo.
 */
@interface TMBFacebook_Actions_Music_Playlists_UpdatePlaylist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing playlist action.
 */
@interface TMBFacebook_Actions_Music_Playlists_UpdatePlaylist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Music_Playlists_UpdatePlaylist_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Music.Playlists_UpdatePlaylist Choreo */


/*! group TMBFacebook.Deleting.DeleteObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteObject Choreo.
 */
@interface TMBFacebook_Deleting_DeleteObject_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setObjectID:(NSString*)ObjectID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteObject Choreo.
 */
@interface TMBFacebook_Deleting_DeleteObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes objects in the graph with a given id or path.
 */
@interface TMBFacebook_Deleting_DeleteObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Deleting_DeleteObject_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Deleting_DeleteObject Choreo */


/*! group TMBFacebook.Reading.Statuses Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Statuses Choreo.
 */
@interface TMBFacebook_Reading_Statuses_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Statuses Choreo.
 */
@interface TMBFacebook_Reading_Statuses_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of  statuses for a specified user.
 */
@interface TMBFacebook_Reading_Statuses : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Statuses_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Statuses Choreo */


/*! group TMBFacebook.Deleting.Unlike Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Unlike Choreo.
 */
@interface TMBFacebook_Deleting_Unlike_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setObjectID:(NSString*)ObjectID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Unlike Choreo.
 */
@interface TMBFacebook_Deleting_Unlike_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows a user to "unlike" a Graph API object.
 */
@interface TMBFacebook_Deleting_Unlike : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Deleting_Unlike_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Deleting_Unlike Choreo */


/*! group TMBFacebook.Actions.General.Likes.ReadLikes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadLikes Choreo.
 */
@interface TMBFacebook_Actions_General_Likes_ReadLikes_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadLikes Choreo.
 */
@interface TMBFacebook_Actions_General_Likes_ReadLikes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more like actions.
 */
@interface TMBFacebook_Actions_General_Likes_ReadLikes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Likes_ReadLikes_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Likes_ReadLikes Choreo */


/*! group TMBFacebook.Reading.PhotoAlbums Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PhotoAlbums Choreo.
 */
@interface TMBFacebook_Reading_PhotoAlbums_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PhotoAlbums Choreo.
 */
@interface TMBFacebook_Reading_PhotoAlbums_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of photo albums associated with a specified user.
 */
@interface TMBFacebook_Reading_PhotoAlbums : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_PhotoAlbums_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_PhotoAlbums Choreo */


/*! group TMBFacebook.Reading.Books Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Books Choreo.
 */
@interface TMBFacebook_Reading_Books_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Books Choreo.
 */
@interface TMBFacebook_Reading_Books_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of books that a given user has liked.
 */
@interface TMBFacebook_Reading_Books : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Books_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Books Choreo */


/*! group TMBFacebook.Actions.General.Posts.CreatePost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreatePost Choreo.
 */
@interface TMBFacebook_Actions_General_Posts_CreatePost_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setObject:(NSString*)Object;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePost Choreo.
 */
@interface TMBFacebook_Actions_General_Posts_CreatePost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action representing posting an object.
 */
@interface TMBFacebook_Actions_General_Posts_CreatePost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_General_Posts_CreatePost_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.General.Posts_CreatePost Choreo */


/*! group TMBFacebook.Actions.Books.WantsToRead.UpdateWantsToRead Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateWantsToRead Choreo.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setBook:(NSString*)Book;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setMessage:(NSString*)Message;
	-(void)setPlace:(NSString*)Place;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateWantsToRead Choreo.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing wants_to_read action.
 */
@interface TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Books.WantsToRead_UpdateWantsToRead Choreo */


/*! group TMBFacebook.Actions.Music.Listens.DeleteListen Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteListen Choreo.
 */
@interface TMBFacebook_Actions_Music_Listens_DeleteListen_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteListen Choreo.
 */
@interface TMBFacebook_Actions_Music_Listens_DeleteListen_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given listen action.
 */
@interface TMBFacebook_Actions_Music_Listens_DeleteListen : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Music_Listens_DeleteListen_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Music.Listens_DeleteListen Choreo */


/*! group TMBFacebook.Reading.Permissions Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Permissions Choreo.
 */
@interface TMBFacebook_Reading_Permissions_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Permissions Choreo.
 */
@interface TMBFacebook_Reading_Permissions_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves the set of permissions associated with a given access token.
 */
@interface TMBFacebook_Reading_Permissions : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Permissions_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Permissions Choreo */


/*! group TMBFacebook.Actions.Video.Rates.CreateRating Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateRating Choreo.
 */
@interface TMBFacebook_Actions_Video_Rates_CreateRating_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCreatedTime:(NSString*)CreatedTime;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setEpisode:(NSString*)Episode;
	-(void)setExpiresIn:(NSString*)ExpiresIn;
	-(void)setExplicityShared:(NSString*)ExplicityShared;
	-(void)setMessage:(NSString*)Message;
	-(void)setMovie:(NSString*)Movie;
	-(void)setNoFeedStory:(NSString*)NoFeedStory;
	-(void)setOther:(NSString*)Other;
	-(void)setPlace:(NSString*)Place;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setRatingNormalizedValue:(NSString*)RatingNormalizedValue;
	-(void)setRatingScale:(NSString*)RatingScale;
	-(void)setRatingValue:(NSString*)RatingValue;
	-(void)setReference:(NSString*)Reference;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setReviewText:(NSString*)ReviewText;
	-(void)setReview:(NSString*)Review;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setTVShow:(NSString*)TVShow;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRating Choreo.
 */
@interface TMBFacebook_Actions_Video_Rates_CreateRating_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getActivityURL;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an action that represents a user rating a movie, TV show, episode, or other video content.
 */
@interface TMBFacebook_Actions_Video_Rates_CreateRating : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_Rates_CreateRating_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.Rates_CreateRating Choreo */


/*! group TMBFacebook.Actions.Video.WantsToWatch.DeleteWantsToWatch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWantsToWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWantsToWatch Choreo.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given wants_to_watch action.
 */
@interface TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Video.WantsToWatch_DeleteWantsToWatch Choreo */


/*! group TMBFacebook.Actions.Custom.DeleteAction Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAction Choreo.
 */
@interface TMBFacebook_Actions_Custom_DeleteAction_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAction Choreo.
 */
@interface TMBFacebook_Actions_Custom_DeleteAction_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given custom action.
 */
@interface TMBFacebook_Actions_Custom_DeleteAction : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Custom_DeleteAction_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Custom_DeleteAction Choreo */


/*! group TMBFacebook.Reading.ObjectsWithLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ObjectsWithLocation Choreo.
 */
@interface TMBFacebook_Reading_ObjectsWithLocation_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectsWithLocation Choreo.
 */
@interface TMBFacebook_Reading_ObjectsWithLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a list of objects that have a location associated with them.
 */
@interface TMBFacebook_Reading_ObjectsWithLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_ObjectsWithLocation_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_ObjectsWithLocation Choreo */


/*! group TMBFacebook.Publishing.LeaveComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LeaveComment Choreo.
 */
@interface TMBFacebook_Publishing_LeaveComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMessage:(NSString*)Message;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LeaveComment Choreo.
 */
@interface TMBFacebook_Publishing_LeaveComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Allows a user to leave a comment on a specified Graph API object.
 */
@interface TMBFacebook_Publishing_LeaveComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Publishing_LeaveComment_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Publishing_LeaveComment Choreo */


/*! group TMBFacebook.Actions.Fitness.Bikes.ReadBikes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadBikes Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_ReadBikes_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadBikes Choreo.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_ReadBikes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more bike actions.
 */
@interface TMBFacebook_Actions_Fitness_Bikes_ReadBikes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_Fitness_Bikes_ReadBikes_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.Fitness.Bikes_ReadBikes Choreo */


/*! group TMBFacebook.Reading.Music Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Music Choreo.
 */
@interface TMBFacebook_Reading_Music_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setUntil:(NSString*)Until;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Music Choreo.
 */
@interface TMBFacebook_Reading_Music_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves music associated with a specified user.
 */
@interface TMBFacebook_Reading_Music : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Reading_Music_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Reading_Music Choreo */


/*! group TMBFacebook.Actions.News.Publishes.ReadPublications Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReadPublications Choreo.
 */
@interface TMBFacebook_Actions_News_Publishes_ReadPublications_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActionID:(NSString*)ActionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadPublications Choreo.
 */
@interface TMBFacebook_Actions_News_Publishes_ReadPublications_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getHasNext;
	-(NSString*)getHasPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more news publishing actions.
 */
@interface TMBFacebook_Actions_News_Publishes_ReadPublications : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFacebook_Actions_News_Publishes_ReadPublications_Inputs*)newInputSet;
@end

/*! group TMBFacebook.Actions.News.Publishes_ReadPublications Choreo */
