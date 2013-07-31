/*!
 * @header Temboo iOS SDK Flickr classes
 *
 * Execute Choreographies from the Temboo Flickr bundle.
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

/*! group TMBFlickr.Tags.ListPopularTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPopularTags Choreo.
 */
@interface TMBFlickr_Tags_ListPopularTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCount:(NSString*)Count;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPopularTags Choreo.
 */
@interface TMBFlickr_Tags_ListPopularTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the popular tags for a given user (or the currently logged in user).
 */
@interface TMBFlickr_Tags_ListPopularTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Tags_ListPopularTags_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Tags_ListPopularTags Choreo */


/*! group TMBFlickr.PhotoComments.RemoveComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemoveComment Choreo.
 */
@interface TMBFlickr_PhotoComments_RemoveComment_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveComment Choreo.
 */
@interface TMBFlickr_PhotoComments_RemoveComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete a specified comment from a photo on Flickr.
 */
@interface TMBFlickr_PhotoComments_RemoveComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_PhotoComments_RemoveComment_Inputs*)newInputSet;
@end

/*! group TMBFlickr.PhotoComments_RemoveComment Choreo */


/*! group TMBFlickr.Places.FindByKeyword Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindByKeyword Choreo.
 */
@interface TMBFlickr_Places_FindByKeyword_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByKeyword Choreo.
 */
@interface TMBFlickr_Places_FindByKeyword_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of place IDs for a query string.
 */
@interface TMBFlickr_Places_FindByKeyword : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Places_FindByKeyword_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Places_FindByKeyword Choreo */


/*! group TMBFlickr.Favorites.ListFavorites Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListFavorites Choreo.
 */
@interface TMBFlickr_Favorites_ListFavorites_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setExtras:(NSString*)Extras;
	-(void)setMaxFaveDate:(NSString*)MaxFaveDate;
	-(void)setMinFaveDate:(NSString*)MinFaveDate;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListFavorites Choreo.
 */
@interface TMBFlickr_Favorites_ListFavorites_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of the user's favorite photos.
 */
@interface TMBFlickr_Favorites_ListFavorites : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Favorites_ListFavorites_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Favorites_ListFavorites Choreo */


/*! group TMBFlickr.Photos.Upload Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Upload Choreo.
 */
@interface TMBFlickr_Photos_Upload_Inputs : TMBChoreographyInputSet
	-(void)setImageFileContents:(NSString*)ImageFileContents;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setContentType:(NSString*)ContentType;
	-(void)setDescription:(NSString*)Description;
	-(void)setHidden:(NSString*)Hidden;
	-(void)setIsFamily:(NSString*)IsFamily;
	-(void)setIsFriend:(NSString*)IsFriend;
	-(void)setIsPublic:(NSString*)IsPublic;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSafetyLevel:(NSString*)SafetyLevel;
	-(void)setTags:(NSString*)Tags;
	-(void)setTitle:(NSString*)Title;
	-(void)setURL:(NSString*)URL;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Upload Choreo.
 */
@interface TMBFlickr_Photos_Upload_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Uploads a photo to Flickr.
 */
@interface TMBFlickr_Photos_Upload : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Photos_Upload_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Photos_Upload Choreo */


/*! group TMBFlickr.Photos.ListPhotosWithoutGeoTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPhotosWithoutGeoTags Choreo.
 */
@interface TMBFlickr_Photos_ListPhotosWithoutGeoTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setExtras:(NSString*)Extras;
	-(void)setMaxTakenDate:(NSString*)MaxTakenDate;
	-(void)setMaxUploadDate:(NSString*)MaxUploadDate;
	-(void)setMedia:(NSString*)Media;
	-(void)setMinTakenDate:(NSString*)MinTakenDate;
	-(void)setMinUploadDate:(NSString*)MinUploadDate;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setPrivacyFilter:(NSString*)PrivacyFilter;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSort:(NSString*)Sort;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhotosWithoutGeoTags Choreo.
 */
@interface TMBFlickr_Photos_ListPhotosWithoutGeoTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of your photos which haven't been geo-tagged.
 */
@interface TMBFlickr_Photos_ListPhotosWithoutGeoTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Photos_ListPhotosWithoutGeoTags_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Photos_ListPhotosWithoutGeoTags Choreo */


/*! group TMBFlickr.Photos.AddTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddTags Choreo.
 */
@interface TMBFlickr_Photos_AddTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTags:(NSString*)Tags;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddTags Choreo.
 */
@interface TMBFlickr_Photos_AddTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Add a tag to a specified photo on Flickr.
 */
@interface TMBFlickr_Photos_AddTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Photos_AddTags_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Photos_AddTags Choreo */


/*! group TMBFlickr.Galleries.CreatePhotoGallery Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreatePhotoGallery Choreo.
 */
@interface TMBFlickr_Galleries_CreatePhotoGallery_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setDescription:(NSString*)Description;
	-(void)setPrimaryPhotoID:(NSString*)PrimaryPhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTitle:(NSString*)Title;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePhotoGallery Choreo.
 */
@interface TMBFlickr_Galleries_CreatePhotoGallery_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new photo gallery.
 */
@interface TMBFlickr_Galleries_CreatePhotoGallery : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Galleries_CreatePhotoGallery_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Galleries_CreatePhotoGallery Choreo */


/*! group TMBFlickr.Galleries.ListGalleries Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListGalleries Choreo.
 */
@interface TMBFlickr_Galleries_ListGalleries_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGalleries Choreo.
 */
@interface TMBFlickr_Galleries_ListGalleries_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get a gallery list for a specfied user.
 */
@interface TMBFlickr_Galleries_ListGalleries : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Galleries_ListGalleries_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Galleries_ListGalleries Choreo */


/*! group TMBFlickr.Favorites.ListPublicFavorites Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPublicFavorites Choreo.
 */
@interface TMBFlickr_Favorites_ListPublicFavorites_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setExtras:(NSString*)Extras;
	-(void)setMaxFaveDate:(NSString*)MaxFaveDate;
	-(void)setMinFaveDate:(NSString*)MinFaveDate;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPublicFavorites Choreo.
 */
@interface TMBFlickr_Favorites_ListPublicFavorites_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of favorite public photos for the given user.
 */
@interface TMBFlickr_Favorites_ListPublicFavorites : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Favorites_ListPublicFavorites_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Favorites_ListPublicFavorites Choreo */


/*! group TMBFlickr.People.FindByEmail Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindByEmail Choreo.
 */
@interface TMBFlickr_People_FindByEmail_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setFindEmail:(NSString*)FindEmail;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByEmail Choreo.
 */
@interface TMBFlickr_People_FindByEmail_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain a user's NSID by providing their email address.
 */
@interface TMBFlickr_People_FindByEmail : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_People_FindByEmail_Inputs*)newInputSet;
@end

/*! group TMBFlickr.People_FindByEmail Choreo */


/*! group TMBFlickr.Photos.SearchPhotos Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchPhotos Choreo.
 */
@interface TMBFlickr_Photos_SearchPhotos_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccuracy:(NSString*)Accuracy;
	-(void)setBoundingBox:(NSString*)BoundingBox;
	-(void)setContentType:(NSString*)ContentType;
	-(void)setExtras:(NSString*)Extras;
	-(void)setGeoContext:(NSString*)GeoContext;
	-(void)setGroupID:(NSString*)GroupID;
	-(void)setInGallery:(NSString*)InGallery;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setMaxTakenDate:(NSString*)MaxTakenDate;
	-(void)setMaxUploadDate:(NSString*)MaxUploadDate;
	-(void)setMedia:(NSString*)Media;
	-(void)setMinTakenDate:(NSString*)MinTakenDate;
	-(void)setMinUploadDate:(NSString*)MinUploadDate;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setPlaceID:(NSString*)PlaceID;
	-(void)setRadiusUnits:(NSString*)RadiusUnits;
	-(void)setRadius:(NSString*)Radius;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSort:(NSString*)Sort;
	-(void)setTagMode:(NSString*)TagMode;
	-(void)setTags:(NSString*)Tags;
	-(void)setText:(NSString*)Text;
	-(void)setUserID:(NSString*)UserID;
	-(void)setWOEID:(NSString*)WOEID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchPhotos Choreo.
 */
@interface TMBFlickr_Photos_SearchPhotos_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of photos matching a search criteria.
 */
@interface TMBFlickr_Photos_SearchPhotos : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Photos_SearchPhotos_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Photos_SearchPhotos Choreo */


/*! group TMBFlickr.PhotoComments.LeaveComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LeaveComment Choreo.
 */
@interface TMBFlickr_PhotoComments_LeaveComment_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCommentText:(NSString*)CommentText;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LeaveComment Choreo.
 */
@interface TMBFlickr_PhotoComments_LeaveComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Add a comment to a specified photo on Flickr.
 */
@interface TMBFlickr_PhotoComments_LeaveComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_PhotoComments_LeaveComment_Inputs*)newInputSet;
@end

/*! group TMBFlickr.PhotoComments_LeaveComment Choreo */


/*! group TMBFlickr.Places.FindByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindByCoordinates Choreo.
 */
@interface TMBFlickr_Places_FindByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccuracy:(NSString*)Accuracy;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByCoordinates Choreo.
 */
@interface TMBFlickr_Places_FindByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a place ID for a given latitude, longitude and accuracy.
 */
@interface TMBFlickr_Places_FindByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Places_FindByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Places_FindByCoordinates Choreo */


/*! group TMBFlickr.Photos.Delete Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@interface TMBFlickr_Photos_Delete_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@interface TMBFlickr_Photos_Delete_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete a photo from Flickr.
 */
@interface TMBFlickr_Photos_Delete : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Photos_Delete_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Photos_Delete Choreo */


/*! group TMBFlickr.Tags.ListPhotoTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPhotoTags Choreo.
 */
@interface TMBFlickr_Tags_ListPhotoTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhotoTags Choreo.
 */
@interface TMBFlickr_Tags_ListPhotoTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the tag list for a given photo.
 */
@interface TMBFlickr_Tags_ListPhotoTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Tags_ListPhotoTags_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Tags_ListPhotoTags Choreo */


/*! group TMBFlickr.Tags.ListUserTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListUserTags Choreo.
 */
@interface TMBFlickr_Tags_ListUserTags_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUserTags Choreo.
 */
@interface TMBFlickr_Tags_ListUserTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the tag list for a given user (or the currently logged in user).
 */
@interface TMBFlickr_Tags_ListUserTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Tags_ListUserTags_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Tags_ListUserTags Choreo */


/*! group TMBFlickr.Photos.ListPublicPhotos Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPublicPhotos Choreo.
 */
@interface TMBFlickr_Photos_ListPublicPhotos_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setExtras:(NSString*)Extras;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSafeSearch:(NSString*)SafeSearch;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPublicPhotos Choreo.
 */
@interface TMBFlickr_Photos_ListPublicPhotos_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain a list of public photos for a given user.
 */
@interface TMBFlickr_Photos_ListPublicPhotos : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Photos_ListPublicPhotos_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Photos_ListPublicPhotos Choreo */


/*! group TMBFlickr.Favorites.AddToFavorites Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddToFavorites Choreo.
 */
@interface TMBFlickr_Favorites_AddToFavorites_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddToFavorites Choreo.
 */
@interface TMBFlickr_Favorites_AddToFavorites_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a photo to a user's favorites list.
 */
@interface TMBFlickr_Favorites_AddToFavorites : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Favorites_AddToFavorites_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Favorites_AddToFavorites Choreo */


/*! group TMBFlickr.PhotoSets.ListPhotos Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPhotos Choreo.
 */
@interface TMBFlickr_PhotoSets_ListPhotos_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setExtras:(NSString*)Extras;
	-(void)setMedia:(NSString*)Media;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setPhotoSetID:(NSString*)PhotoSetID;
	-(void)setPrivacyFilter:(NSString*)PrivacyFilter;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhotos Choreo.
 */
@interface TMBFlickr_PhotoSets_ListPhotos_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the list of photos in a set.
 */
@interface TMBFlickr_PhotoSets_ListPhotos : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_PhotoSets_ListPhotos_Inputs*)newInputSet;
@end

/*! group TMBFlickr.PhotoSets_ListPhotos Choreo */


/*! group TMBFlickr.Photos.Download Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Download Choreo.
 */
@interface TMBFlickr_Photos_Download_Inputs : TMBChoreographyInputSet
	-(void)setFarmID:(NSString*)FarmID;
	-(void)setImageType:(NSString*)ImageType;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setSecret:(NSString*)Secret;
	-(void)setServerID:(NSString*)ServerID;
	-(void)setURL:(NSString*)URL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Download Choreo.
 */
@interface TMBFlickr_Photos_Download_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a photo from a constructed source URL and returns the file content as Base64 encoded data.
 */
@interface TMBFlickr_Photos_Download : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Photos_Download_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Photos_Download Choreo */


/*! group TMBFlickr.Geo.ListPhotosForLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPhotosForLocation Choreo.
 */
@interface TMBFlickr_Geo_ListPhotosForLocation_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAccuracy:(NSString*)Accuracy;
	-(void)setExtras:(NSString*)Extras;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhotosForLocation Choreo.
 */
@interface TMBFlickr_Geo_ListPhotosForLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Return a list of the user's photos for a specified location.
 */
@interface TMBFlickr_Geo_ListPhotosForLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Geo_ListPhotosForLocation_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Geo_ListPhotosForLocation Choreo */


/*! group TMBFlickr.Photos.ListRecentPhotos Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListRecentPhotos Choreo.
 */
@interface TMBFlickr_Photos_ListRecentPhotos_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setExtras:(NSString*)Extras;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRecentPhotos Choreo.
 */
@interface TMBFlickr_Photos_ListRecentPhotos_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve public photos that have been recently uploaded to Flickr.
 */
@interface TMBFlickr_Photos_ListRecentPhotos : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Photos_ListRecentPhotos_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Photos_ListRecentPhotos Choreo */


/*! group TMBFlickr.Geo.GetPhotoLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPhotoLocation Choreo.
 */
@interface TMBFlickr_Geo_GetPhotoLocation_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPhotoLocation Choreo.
 */
@interface TMBFlickr_Geo_GetPhotoLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves geo data (including latitude and longitude coordinates) for a specified photo.
 */
@interface TMBFlickr_Geo_GetPhotoLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Geo_GetPhotoLocation_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Geo_GetPhotoLocation Choreo */


/*! group TMBFlickr.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBFlickr_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBFlickr_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;
	-(NSString*)getOAuthTokenSecret;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBFlickr_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBFlickr.OAuth_InitializeOAuth Choreo */


/*! group TMBFlickr.PhotoComments.ListComments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListComments Choreo.
 */
@interface TMBFlickr_PhotoComments_ListComments_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMaxCommentDate:(NSString*)MaxCommentDate;
	-(void)setMinCommentDate:(NSString*)MinCommentDate;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListComments Choreo.
 */
@interface TMBFlickr_PhotoComments_ListComments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves comments for a given photo on Flickr.
 */
@interface TMBFlickr_PhotoComments_ListComments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_PhotoComments_ListComments_Inputs*)newInputSet;
@end

/*! group TMBFlickr.PhotoComments_ListComments Choreo */


/*! group TMBFlickr.Geo.SetPhotoLocation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SetPhotoLocation Choreo.
 */
@interface TMBFlickr_Geo_SetPhotoLocation_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAccuracy:(NSString*)Accuracy;
	-(void)setContext:(NSString*)Context;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetPhotoLocation Choreo.
 */
@interface TMBFlickr_Geo_SetPhotoLocation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sets the geo data (including latitude and longitude) for a specified photo.
 */
@interface TMBFlickr_Geo_SetPhotoLocation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Geo_SetPhotoLocation_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Geo_SetPhotoLocation Choreo */


/*! group TMBFlickr.Favorites.RemoveFromFavorites Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemoveFromFavorites Choreo.
 */
@interface TMBFlickr_Favorites_RemoveFromFavorites_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveFromFavorites Choreo.
 */
@interface TMBFlickr_Favorites_RemoveFromFavorites_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes a photo from a user's favorites list.
 */
@interface TMBFlickr_Favorites_RemoveFromFavorites : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Favorites_RemoveFromFavorites_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Favorites_RemoveFromFavorites Choreo */


/*! group TMBFlickr.PhotoSets.ListSets Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListSets Choreo.
 */
@interface TMBFlickr_PhotoSets_ListSets_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSets Choreo.
 */
@interface TMBFlickr_PhotoSets_ListSets_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the photosets belonging to the specified user.
 */
@interface TMBFlickr_PhotoSets_ListSets : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_PhotoSets_ListSets_Inputs*)newInputSet;
@end

/*! group TMBFlickr.PhotoSets_ListSets Choreo */


/*! group TMBFlickr.Photos.ListPeople Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPeople Choreo.
 */
@interface TMBFlickr_Photos_ListPeople_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPeople Choreo.
 */
@interface TMBFlickr_Photos_ListPeople_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of people in a given photo.
 */
@interface TMBFlickr_Photos_ListPeople : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Photos_ListPeople_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Photos_ListPeople Choreo */


/*! group TMBFlickr.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBFlickr_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBFlickr_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessTokenSecret;
	-(NSString*)getAccessToken;
	-(NSString*)getUserID;
	-(NSString*)getUsername;	
@end

/*!
 * Completes the OAuth process by retrieving a Flickr access token, token secret, user ID and username for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@interface TMBFlickr_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBFlickr.OAuth_FinalizeOAuth Choreo */


/*! group TMBFlickr.Favorites.GetContextForFavorite Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetContextForFavorite Choreo.
 */
@interface TMBFlickr_Favorites_GetContextForFavorite_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPhotoID:(NSString*)PhotoID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetContextForFavorite Choreo.
 */
@interface TMBFlickr_Favorites_GetContextForFavorite_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns next and previous favorites for a photo in a user's favorites.
 */
@interface TMBFlickr_Favorites_GetContextForFavorite : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Favorites_GetContextForFavorite_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Favorites_GetContextForFavorite Choreo */


/*! group TMBFlickr.Places.FindByURL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindByURL Choreo.
 */
@interface TMBFlickr_Places_FindByURL_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setURL:(NSString*)URL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByURL Choreo.
 */
@interface TMBFlickr_Places_FindByURL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain geo-location information for a place using its flickr.com/places URL.
 */
@interface TMBFlickr_Places_FindByURL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Places_FindByURL_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Places_FindByURL Choreo */


/*! group TMBFlickr.Photos.ListGeoTaggedPhotos Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListGeoTaggedPhotos Choreo.
 */
@interface TMBFlickr_Photos_ListGeoTaggedPhotos_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setExtras:(NSString*)Extras;
	-(void)setMaxTakenDate:(NSString*)MaxTakenDate;
	-(void)setMaxUploadDate:(NSString*)MaxUploadDate;
	-(void)setMedia:(NSString*)Media;
	-(void)setMinTakenDate:(NSString*)MinTakenDate;
	-(void)setMinUploadDate:(NSString*)MinUploadDate;
	-(void)setPage:(NSString*)Page;
	-(void)setPerPage:(NSString*)PerPage;
	-(void)setPrivacyFilter:(NSString*)PrivacyFilter;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSort:(NSString*)Sort;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGeoTaggedPhotos Choreo.
 */
@interface TMBFlickr_Photos_ListGeoTaggedPhotos_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of your geo-tagged photos.
 */
@interface TMBFlickr_Photos_ListGeoTaggedPhotos : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFlickr_Photos_ListGeoTaggedPhotos_Inputs*)newInputSet;
@end

/*! group TMBFlickr.Photos_ListGeoTaggedPhotos Choreo */
