/*!
 * @TMBFlickr.m
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

#import "TMBFlickr.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ListPopularTags Choreo.
 */
@implementation TMBFlickr_Tags_ListPopularTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(conditional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret). Required unless UserID is provided.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(conditional, string) The Access Token Secret retrieved during the OAuth process. Required unless UserID is provided.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required unless UserID is provided.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Number of popular tags to return. defaults to 10 when this argument is not present.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, string) The NSID of the user to fetch the tag list for. Required unless providing all OAuth parameters. When OAuth parameters are passed, the authenticated user is assumed.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPopularTags Choreo.
 */
@implementation TMBFlickr_Tags_ListPopularTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the popular tags for a given user (or the currently logged in user).
 */
@implementation TMBFlickr_Tags_ListPopularTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Tags_ListPopularTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Tags/ListPopularTags"] autorelease];
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
		TMBFlickr_Tags_ListPopularTags_ResultSet *results = [[[TMBFlickr_Tags_ListPopularTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPopularTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Tags_ListPopularTags_Inputs*)newInputSet {
		return [[[TMBFlickr_Tags_ListPopularTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemoveComment Choreo.
 */
@implementation TMBFlickr_PhotoComments_RemoveComment_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The unique id of the comment that you want to delete
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveComment Choreo.
 */
@implementation TMBFlickr_PhotoComments_RemoveComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete a specified comment from a photo on Flickr.
 */
@implementation TMBFlickr_PhotoComments_RemoveComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_PhotoComments_RemoveComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/PhotoComments/RemoveComment"] autorelease];
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
		TMBFlickr_PhotoComments_RemoveComment_ResultSet *results = [[[TMBFlickr_PhotoComments_RemoveComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemoveComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_PhotoComments_RemoveComment_Inputs*)newInputSet {
		return [[[TMBFlickr_PhotoComments_RemoveComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindByKeyword Choreo.
 */
@implementation TMBFlickr_Places_FindByKeyword_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) The query string to use for place ID lookups.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByKeyword Choreo.
 */
@implementation TMBFlickr_Places_FindByKeyword_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of place IDs for a query string.
 */
@implementation TMBFlickr_Places_FindByKeyword

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Places_FindByKeyword Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Places/FindByKeyword"] autorelease];
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
		TMBFlickr_Places_FindByKeyword_ResultSet *results = [[[TMBFlickr_Places_FindByKeyword_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindByKeyword Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Places_FindByKeyword_Inputs*)newInputSet {
		return [[[TMBFlickr_Places_FindByKeyword_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListFavorites Choreo.
 */
@implementation TMBFlickr_Favorites_ListFavorites_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Extras input for this Choreo.
	*(optional, string) A comma-delimited list of extra information to fetch for each returned record. See Choreo documentation for accepted values.
	 */
	-(void)setExtras:(NSString*)Extras {
		[super setInput:@"Extras" toValue:Extras];
	}

	/*!
	 * Set the value of the MaxFaveDate input for this Choreo.
	*(optional, date) Maximum date that a photo was favorited on. The date should be in the form of a unix timestamp.
	 */
	-(void)setMaxFaveDate:(NSString*)MaxFaveDate {
		[super setInput:@"MaxFaveDate" toValue:MaxFaveDate];
	}

	/*!
	 * Set the value of the MinFaveDate input for this Choreo.
	*(optional, date) Minimum date that a photo was favorited on. The date should be in the form of a unix timestamp.
	 */
	-(void)setMinFaveDate:(NSString*)MinFaveDate {
		[super setInput:@"MinFaveDate" toValue:MinFaveDate];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to return. Used for paging through many results.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) The number of photos to return per page. Defaults to 100.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The NSID of the user to fetch the favorites list for. If this argument is omitted, the favorites list for the calling user is returned.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListFavorites Choreo.
 */
@implementation TMBFlickr_Favorites_ListFavorites_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of the user's favorite photos.
 */
@implementation TMBFlickr_Favorites_ListFavorites

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Favorites_ListFavorites Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Favorites/ListFavorites"] autorelease];
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
		TMBFlickr_Favorites_ListFavorites_ResultSet *results = [[[TMBFlickr_Favorites_ListFavorites_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListFavorites Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Favorites_ListFavorites_Inputs*)newInputSet {
		return [[[TMBFlickr_Favorites_ListFavorites_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Upload Choreo.
 */
@implementation TMBFlickr_Photos_Upload_Inputs

	/*!
	 * Set the value of the ImageFileContents input for this Choreo.
	*(conditional, string) The base-64 encoded file contents to upload. Required unless using the URL input.
	 */
	-(void)setImageFileContents:(NSString*)ImageFileContents {
		[super setInput:@"ImageFileContents" toValue:ImageFileContents];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ContentType input for this Choreo.
	*(optional, integer) The type of content you are uploading. Set to 1 for Photo, 2 for Screenshot, or 3 for Other. Defaults to 1.
	 */
	-(void)setContentType:(NSString*)ContentType {
		[super setInput:@"ContentType" toValue:ContentType];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A description for the photo.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Hidden input for this Choreo.
	*(optional, integer) Set to 1 to allow photos to appear in global search results, 2 to be hidden from public searches. Defaults to 2.
	 */
	-(void)setHidden:(NSString*)Hidden {
		[super setInput:@"Hidden" toValue:Hidden];
	}

	/*!
	 * Set the value of the IsFamily input for this Choreo.
	*(optional, boolean) Set to 0 for no, 1 for yes. Specifies who can view the photo. Defaults to 0.
	 */
	-(void)setIsFamily:(NSString*)IsFamily {
		[super setInput:@"IsFamily" toValue:IsFamily];
	}

	/*!
	 * Set the value of the IsFriend input for this Choreo.
	*(optional, boolean) Set to 0 for no, 1 for yes. Specifies who can view the photo. Defaults to 0.
	 */
	-(void)setIsFriend:(NSString*)IsFriend {
		[super setInput:@"IsFriend" toValue:IsFriend];
	}

	/*!
	 * Set the value of the IsPublic input for this Choreo.
	*(optional, boolean) Set to 0 for no, 1 for yes. Specifies who can view the photo. Defaults to 0.
	 */
	-(void)setIsPublic:(NSString*)IsPublic {
		[super setInput:@"IsPublic" toValue:IsPublic];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SafetyLevel input for this Choreo.
	*(optional, integer) Set value to 1 for Safe, 2 for Moderate, or 3 for Restricted. Defaults to 1.
	 */
	-(void)setSafetyLevel:(NSString*)SafetyLevel {
		[super setInput:@"SafetyLevel" toValue:SafetyLevel];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A list of tags to apply to the photo. Separate multiple tags with spaces.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) The title of the photo you're uploading.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(conditional, string) A url for a photo to upload to Flickr. Required unless specifying the ImageFileContents.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) A vault file path can be specified as an alternative to using ImageFileContents input. Required if ImageFileContents is not specified.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Upload Choreo.
 */
@implementation TMBFlickr_Photos_Upload_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Uploads a photo to Flickr.
 */
@implementation TMBFlickr_Photos_Upload

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Photos_Upload Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Photos/Upload"] autorelease];
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
		TMBFlickr_Photos_Upload_ResultSet *results = [[[TMBFlickr_Photos_Upload_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Upload Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Photos_Upload_Inputs*)newInputSet {
		return [[[TMBFlickr_Photos_Upload_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPhotosWithoutGeoTags Choreo.
 */
@implementation TMBFlickr_Photos_ListPhotosWithoutGeoTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Extras input for this Choreo.
	*(optional, string) A comma-delimited list of extra information to retrieve for each returned record. See Choreo documentation for accepted values.
	 */
	-(void)setExtras:(NSString*)Extras {
		[super setInput:@"Extras" toValue:Extras];
	}

	/*!
	 * Set the value of the MaxTakenDate input for this Choreo.
	*(optional, date) Photos with an taken date less than or equal to this value will be returned. The date should be in the form of a mysql datetime.
	 */
	-(void)setMaxTakenDate:(NSString*)MaxTakenDate {
		[super setInput:@"MaxTakenDate" toValue:MaxTakenDate];
	}

	/*!
	 * Set the value of the MaxUploadDate input for this Choreo.
	*(optional, date) Photos with an upload date less than or equal to this value will be returned. The date should be in the form of a unix timestamp.
	 */
	-(void)setMaxUploadDate:(NSString*)MaxUploadDate {
		[super setInput:@"MaxUploadDate" toValue:MaxUploadDate];
	}

	/*!
	 * Set the value of the Media input for this Choreo.
	*(optional, string) Filter results by media type. Possible values are all (default), photos or videos.
	 */
	-(void)setMedia:(NSString*)Media {
		[super setInput:@"Media" toValue:Media];
	}

	/*!
	 * Set the value of the MinTakenDate input for this Choreo.
	*(optional, date) Photos with an taken date greater than or equal to this value will be returned. The date should be in the form of a mysql datetime.
	 */
	-(void)setMinTakenDate:(NSString*)MinTakenDate {
		[super setInput:@"MinTakenDate" toValue:MinTakenDate];
	}

	/*!
	 * Set the value of the MinUploadDate input for this Choreo.
	*(optional, date) Photos with an upload date greater than or equal to this value will be returned. The date should be in the form of a unix timestamp.
	 */
	-(void)setMinUploadDate:(NSString*)MinUploadDate {
		[super setInput:@"MinUploadDate" toValue:MinUploadDate];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to return. Used for paging through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) Number of photos to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the PrivacyFilter input for this Choreo.
	*(optional, integer) Valid values are: 1 (public photos), 2 (private photos visible to friends), 3 (private photos visible to family), 4 (private photos visible to friends and family), 5 (completely private photos).
	 */
	-(void)setPrivacyFilter:(NSString*)PrivacyFilter {
		[super setInput:@"PrivacyFilter" toValue:PrivacyFilter];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) 
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) The sort order. Accepted values are: date-posted-asc, date-posted-desc, date-taken-asc, date-taken-desc, interestingness-desc, and interestingness-asc.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhotosWithoutGeoTags Choreo.
 */
@implementation TMBFlickr_Photos_ListPhotosWithoutGeoTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of your photos which haven't been geo-tagged.
 */
@implementation TMBFlickr_Photos_ListPhotosWithoutGeoTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Photos_ListPhotosWithoutGeoTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Photos/ListPhotosWithoutGeoTags"] autorelease];
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
		TMBFlickr_Photos_ListPhotosWithoutGeoTags_ResultSet *results = [[[TMBFlickr_Photos_ListPhotosWithoutGeoTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPhotosWithoutGeoTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Photos_ListPhotosWithoutGeoTags_Inputs*)newInputSet {
		return [[[TMBFlickr_Photos_ListPhotosWithoutGeoTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddTags Choreo.
 */
@implementation TMBFlickr_Photos_AddTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo to add tags to.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(required, string) The tags to add to the photo. Multiple tags can be separated by spaces.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddTags Choreo.
 */
@implementation TMBFlickr_Photos_AddTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Add a tag to a specified photo on Flickr.
 */
@implementation TMBFlickr_Photos_AddTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Photos_AddTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Photos/AddTags"] autorelease];
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
		TMBFlickr_Photos_AddTags_ResultSet *results = [[[TMBFlickr_Photos_AddTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Photos_AddTags_Inputs*)newInputSet {
		return [[[TMBFlickr_Photos_AddTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreatePhotoGallery Choreo.
 */
@implementation TMBFlickr_Galleries_CreatePhotoGallery_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(required, string) A short description for the gallery.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the PrimaryPhotoID input for this Choreo.
	*(optional, integer) The first photo to add to your gallery.
	 */
	-(void)setPrimaryPhotoID:(NSString*)PrimaryPhotoID {
		[super setInput:@"PrimaryPhotoID" toValue:PrimaryPhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(required, string) The name of the gallery.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePhotoGallery Choreo.
 */
@implementation TMBFlickr_Galleries_CreatePhotoGallery_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new photo gallery.
 */
@implementation TMBFlickr_Galleries_CreatePhotoGallery

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Galleries_CreatePhotoGallery Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Galleries/CreatePhotoGallery"] autorelease];
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
		TMBFlickr_Galleries_CreatePhotoGallery_ResultSet *results = [[[TMBFlickr_Galleries_CreatePhotoGallery_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreatePhotoGallery Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Galleries_CreatePhotoGallery_Inputs*)newInputSet {
		return [[[TMBFlickr_Galleries_CreatePhotoGallery_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListGalleries Choreo.
 */
@implementation TMBFlickr_Galleries_ListGalleries_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Enter the number of results pages to be returned.  Default is: 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) Specify the number of galleries that are to be returned per page.  If null, defaults to 100 galleries returned.  Maximum is 500.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) Provide the NSID for the user whose gallery list(s) are to be retreived.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGalleries Choreo.
 */
@implementation TMBFlickr_Galleries_ListGalleries_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get a gallery list for a specfied user.
 */
@implementation TMBFlickr_Galleries_ListGalleries

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Galleries_ListGalleries Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Galleries/ListGalleries"] autorelease];
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
		TMBFlickr_Galleries_ListGalleries_ResultSet *results = [[[TMBFlickr_Galleries_ListGalleries_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListGalleries Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Galleries_ListGalleries_Inputs*)newInputSet {
		return [[[TMBFlickr_Galleries_ListGalleries_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPublicFavorites Choreo.
 */
@implementation TMBFlickr_Favorites_ListPublicFavorites_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Extras input for this Choreo.
	*(optional, string) A comma-delimited list of extra information to fetch for each returned record. See Choreo documentation for accepted values.
	 */
	-(void)setExtras:(NSString*)Extras {
		[super setInput:@"Extras" toValue:Extras];
	}

	/*!
	 * Set the value of the MaxFaveDate input for this Choreo.
	*(optional, date) Maximum date that a photo was favorited on. The date should be in the form of a unix timestamp.
	 */
	-(void)setMaxFaveDate:(NSString*)MaxFaveDate {
		[super setInput:@"MaxFaveDate" toValue:MaxFaveDate];
	}

	/*!
	 * Set the value of the MinFaveDate input for this Choreo.
	*(optional, date) Minimum date that a photo was favorited on. The date should be in the form of a unix timestamp.
	 */
	-(void)setMinFaveDate:(NSString*)MinFaveDate {
		[super setInput:@"MinFaveDate" toValue:MinFaveDate];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to return. Used for paging through many results.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) The number of photos to return per page. Defaults to 100.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The user to fetch the favorites list for.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPublicFavorites Choreo.
 */
@implementation TMBFlickr_Favorites_ListPublicFavorites_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of favorite public photos for the given user.
 */
@implementation TMBFlickr_Favorites_ListPublicFavorites

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Favorites_ListPublicFavorites Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Favorites/ListPublicFavorites"] autorelease];
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
		TMBFlickr_Favorites_ListPublicFavorites_ResultSet *results = [[[TMBFlickr_Favorites_ListPublicFavorites_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPublicFavorites Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Favorites_ListPublicFavorites_Inputs*)newInputSet {
		return [[[TMBFlickr_Favorites_ListPublicFavorites_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindByEmail Choreo.
 */
@implementation TMBFlickr_People_FindByEmail_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the FindEmail input for this Choreo.
	*(required, string) Enter the email of the user being sought.
	 */
	-(void)setFindEmail:(NSString*)FindEmail {
		[super setInput:@"FindEmail" toValue:FindEmail];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByEmail Choreo.
 */
@implementation TMBFlickr_People_FindByEmail_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain a user's NSID by providing their email address.
 */
@implementation TMBFlickr_People_FindByEmail

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_People_FindByEmail Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/People/FindByEmail"] autorelease];
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
		TMBFlickr_People_FindByEmail_ResultSet *results = [[[TMBFlickr_People_FindByEmail_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindByEmail Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_People_FindByEmail_Inputs*)newInputSet {
		return [[[TMBFlickr_People_FindByEmail_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchPhotos Choreo.
 */
@implementation TMBFlickr_Photos_SearchPhotos_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Accuracy input for this Choreo.
	*(optional, integer) The accuracy level of the location information. Current range is 1-16. World level is 1, Country is ~3, Region is ~6, City is ~11, Street is ~16.
	 */
	-(void)setAccuracy:(NSString*)Accuracy {
		[super setInput:@"Accuracy" toValue:Accuracy];
	}

	/*!
	 * Set the value of the BoundingBox input for this Choreo.
	*(optional, string) A comma-delimited list of 4 values defining the Bounding Box of the area that will be searched. These values represent the coordinates of the bottom-left corner and top-right corner of the box.
	 */
	-(void)setBoundingBox:(NSString*)BoundingBox {
		[super setInput:@"BoundingBox" toValue:BoundingBox];
	}

	/*!
	 * Set the value of the ContentType input for this Choreo.
	*(optional, integer) The content type setting. 1 = photos only, 2 = screenshots only, 3 = other, 4 = photos and screenshots, 5 = screenshots and other, 6 = photos and other, 7 = all.
	 */
	-(void)setContentType:(NSString*)ContentType {
		[super setInput:@"ContentType" toValue:ContentType];
	}

	/*!
	 * Set the value of the Extras input for this Choreo.
	*(optional, string) A comma-delimited list of extra information to fetch for each returned record. See documentation for more details on supported fields.
	 */
	-(void)setExtras:(NSString*)Extras {
		[super setInput:@"Extras" toValue:Extras];
	}

	/*!
	 * Set the value of the GeoContext input for this Choreo.
	*(optional, integer) A numeric value representing the photo's location info beyond latitude and longitude. 0 = not defined, 1 = indoors, 2 = outdoors.
	 */
	-(void)setGeoContext:(NSString*)GeoContext {
		[super setInput:@"GeoContext" toValue:GeoContext];
	}

	/*!
	 * Set the value of the GroupID input for this Choreo.
	*(optional, string) The id of a group who's pool to search. If specified, only matching photos posted to the group's pool will be returned.
	 */
	-(void)setGroupID:(NSString*)GroupID {
		[super setInput:@"GroupID" toValue:GroupID];
	}

	/*!
	 * Set the value of the InGallery input for this Choreo.
	*(optional, boolean) Limits the search to only photos that are in a gallery. Default is false.
	 */
	-(void)setInGallery:(NSString*)InGallery {
		[super setInput:@"InGallery" toValue:InGallery];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(conditional, decimal) A valid latitude, in decimal format, for performing geo queries (not required if providing another limiting search parameter).
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(conditional, decimal) A valid longitude, in decimal format, for performing geo queries (not required if providing another limiting search parameter).
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the MaxTakenDate input for this Choreo.
	*(optional, date) The maximum taken date. Photos with an taken date less than or equal to this value will be returned. The date can be in the form of a mysql datetime or unix timestamp.
	 */
	-(void)setMaxTakenDate:(NSString*)MaxTakenDate {
		[super setInput:@"MaxTakenDate" toValue:MaxTakenDate];
	}

	/*!
	 * Set the value of the MaxUploadDate input for this Choreo.
	*(optional, date) The maximum upload date. Photos with an upload date less than or equal to this value will be returned. The date can be in the form of a unix timestamp or mysql datetime.
	 */
	-(void)setMaxUploadDate:(NSString*)MaxUploadDate {
		[super setInput:@"MaxUploadDate" toValue:MaxUploadDate];
	}

	/*!
	 * Set the value of the Media input for this Choreo.
	*(optional, string) Filter results by media type. Valid values are all (default), photos or videos.
	 */
	-(void)setMedia:(NSString*)Media {
		[super setInput:@"Media" toValue:Media];
	}

	/*!
	 * Set the value of the MinTakenDate input for this Choreo.
	*(optional, date) The minimum taken date. Photos with a taken date greater than or equal to this value will be returned. The date can be in the form of a mysql datetime or unix timestamp.
	 */
	-(void)setMinTakenDate:(NSString*)MinTakenDate {
		[super setInput:@"MinTakenDate" toValue:MinTakenDate];
	}

	/*!
	 * Set the value of the MinUploadDate input for this Choreo.
	*(optional, date) The minimum upload date. Photos with an upload date greater than or equal to this value will be returned. The date can be in the form of a unix timestamp or mysql datetime.
	 */
	-(void)setMinUploadDate:(NSString*)MinUploadDate {
		[super setInput:@"MinUploadDate" toValue:MinUploadDate];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) The number of photos to return per page. Defaults to 100.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the PlaceID input for this Choreo.
	*(optional, string) A Flickr place id.
	 */
	-(void)setPlaceID:(NSString*)PlaceID {
		[super setInput:@"PlaceID" toValue:PlaceID];
	}

	/*!
	 * Set the value of the RadiusUnits input for this Choreo.
	*(optional, string) The unit of measure when doing radial geo queries. Valid values are: "mi" (miles) and "km" (kilometers). The default is "km".
	 */
	-(void)setRadiusUnits:(NSString*)RadiusUnits {
		[super setInput:@"RadiusUnits" toValue:RadiusUnits];
	}

	/*!
	 * Set the value of the Radius input for this Choreo.
	*(optional, integer) A valid radius used for geo queries, greater than zero and less than 20 miles (or 32 kilometers). Defaults to 5 (km).
	 */
	-(void)setRadius:(NSString*)Radius {
		[super setInput:@"Radius" toValue:Radius];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Defaults to date-posted-desc unless performing a geo query. Valid values are: date-posted-asc, date-posted-desc, date-taken-asc, date-taken-desc, interestingness-desc, interestingness-asc, relevance.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the TagMode input for this Choreo.
	*(optional, string) Use the mode 'any' to search using an OR combination of tags. Use 'all' for an AND combnation. Defaults to 'any'.
	 */
	-(void)setTagMode:(NSString*)TagMode {
		[super setInput:@"TagMode" toValue:TagMode];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma-delimited list of tags. Photos with one or more of the tags listed will be returned. You can exclude results that match a term by prepending it with a hyphen.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Text input for this Choreo.
	*(conditional, string) A keyword search against photo titles, descriptions, or tags. Prepend search term with a hyphen to exclude. Not required if providing another limiting search parameter.
	 */
	-(void)setText:(NSString*)Text {
		[super setInput:@"Text" toValue:Text];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The ID of the user who's photo to search. If this parameter isn't passed, all public photos will be searched. A value of "me" will search against the authenticated user's photos.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the WOEID input for this Choreo.
	*(optional, string) The unique 'Where on Earth ID' that uniquely represents spatial entities.
	 */
	-(void)setWOEID:(NSString*)WOEID {
		[super setInput:@"WOEID" toValue:WOEID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchPhotos Choreo.
 */
@implementation TMBFlickr_Photos_SearchPhotos_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of photos matching a search criteria.
 */
@implementation TMBFlickr_Photos_SearchPhotos

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Photos_SearchPhotos Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Photos/SearchPhotos"] autorelease];
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
		TMBFlickr_Photos_SearchPhotos_ResultSet *results = [[[TMBFlickr_Photos_SearchPhotos_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchPhotos Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Photos_SearchPhotos_Inputs*)newInputSet {
		return [[[TMBFlickr_Photos_SearchPhotos_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LeaveComment Choreo.
 */
@implementation TMBFlickr_PhotoComments_LeaveComment_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CommentText input for this Choreo.
	*(required, string) The text of the comment you are adding.
	 */
	-(void)setCommentText:(NSString*)CommentText {
		[super setInput:@"CommentText" toValue:CommentText];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo to add a comment to
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LeaveComment Choreo.
 */
@implementation TMBFlickr_PhotoComments_LeaveComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Add a comment to a specified photo on Flickr.
 */
@implementation TMBFlickr_PhotoComments_LeaveComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_PhotoComments_LeaveComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/PhotoComments/LeaveComment"] autorelease];
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
		TMBFlickr_PhotoComments_LeaveComment_ResultSet *results = [[[TMBFlickr_PhotoComments_LeaveComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LeaveComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_PhotoComments_LeaveComment_Inputs*)newInputSet {
		return [[[TMBFlickr_PhotoComments_LeaveComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindByCoordinates Choreo.
 */
@implementation TMBFlickr_Places_FindByCoordinates_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Accuracy input for this Choreo.
	*(optional, integer) Recorded accuracy level of the location information. Valid range is 1-16. The default is 16.
	 */
	-(void)setAccuracy:(NSString*)Accuracy {
		[super setInput:@"Accuracy" toValue:Accuracy];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude whose valid range is -90 to 90. Anything more than 4 decimal places will be truncated.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude whose valid range is -180 to 180. Anything more than 4 decimal places will be truncated.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) 
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByCoordinates Choreo.
 */
@implementation TMBFlickr_Places_FindByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a place ID for a given latitude, longitude and accuracy.
 */
@implementation TMBFlickr_Places_FindByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Places_FindByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Places/FindByCoordinates"] autorelease];
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
		TMBFlickr_Places_FindByCoordinates_ResultSet *results = [[[TMBFlickr_Places_FindByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Places_FindByCoordinates_Inputs*)newInputSet {
		return [[[TMBFlickr_Places_FindByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Delete Choreo.
 */
@implementation TMBFlickr_Photos_Delete_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo that you want to delete.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delete Choreo.
 */
@implementation TMBFlickr_Photos_Delete_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete a photo from Flickr.
 */
@implementation TMBFlickr_Photos_Delete

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Photos_Delete Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Photos/Delete"] autorelease];
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
		TMBFlickr_Photos_Delete_ResultSet *results = [[[TMBFlickr_Photos_Delete_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Delete Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Photos_Delete_Inputs*)newInputSet {
		return [[[TMBFlickr_Photos_Delete_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPhotoTags Choreo.
 */
@implementation TMBFlickr_Tags_ListPhotoTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(optional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret). Required when accessing a protected resource.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(optional, string) The Access Token Secret retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo to return tags for.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhotoTags Choreo.
 */
@implementation TMBFlickr_Tags_ListPhotoTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the tag list for a given photo.
 */
@implementation TMBFlickr_Tags_ListPhotoTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Tags_ListPhotoTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Tags/ListPhotoTags"] autorelease];
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
		TMBFlickr_Tags_ListPhotoTags_ResultSet *results = [[[TMBFlickr_Tags_ListPhotoTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPhotoTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Tags_ListPhotoTags_Inputs*)newInputSet {
		return [[[TMBFlickr_Tags_ListPhotoTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListUserTags Choreo.
 */
@implementation TMBFlickr_Tags_ListUserTags_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(conditional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret). Required unless UserID is provided.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(conditional, string) The Access Token Secret retrieved during the OAuth process. Required unless UserID is provided.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required unless UserID is provided.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, string) The NSID of the user to fetch the tag list for. Required unless providing all OAuth parameters. When OAuth parameters are passed, the authenticated user is assumed.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUserTags Choreo.
 */
@implementation TMBFlickr_Tags_ListUserTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the tag list for a given user (or the currently logged in user).
 */
@implementation TMBFlickr_Tags_ListUserTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Tags_ListUserTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Tags/ListUserTags"] autorelease];
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
		TMBFlickr_Tags_ListUserTags_ResultSet *results = [[[TMBFlickr_Tags_ListUserTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListUserTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Tags_ListUserTags_Inputs*)newInputSet {
		return [[[TMBFlickr_Tags_ListUserTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPublicPhotos Choreo.
 */
@implementation TMBFlickr_Photos_ListPublicPhotos_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Extras input for this Choreo.
	*(optional, string) A comma-separated list returning additional photo information such as: license, description, date_upload, date_taken.  Additional options are listed on this method's API doc page.
	 */
	-(void)setExtras:(NSString*)Extras {
		[super setInput:@"Extras" toValue:Extras];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Specify the page of photos that is to be returned.  If unspecified, the first page is returned.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) Specify how many photos to display per page. Default is set to: 100. The mamimum allowed value is: 500.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SafeSearch input for this Choreo.
	*(optional, integer) Specify a safe search setting by entering: 1 (for safe), 2 (moderate), 3 (restricted).  Default is set to: 1 (safe).
	 */
	-(void)setSafeSearch:(NSString*)SafeSearch {
		[super setInput:@"SafeSearch" toValue:SafeSearch];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) Enter the NSID of the user whose public photos are being retrieved.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPublicPhotos Choreo.
 */
@implementation TMBFlickr_Photos_ListPublicPhotos_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain a list of public photos for a given user.
 */
@implementation TMBFlickr_Photos_ListPublicPhotos

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Photos_ListPublicPhotos Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Photos/ListPublicPhotos"] autorelease];
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
		TMBFlickr_Photos_ListPublicPhotos_ResultSet *results = [[[TMBFlickr_Photos_ListPublicPhotos_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPublicPhotos Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Photos_ListPublicPhotos_Inputs*)newInputSet {
		return [[[TMBFlickr_Photos_ListPublicPhotos_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddToFavorites Choreo.
 */
@implementation TMBFlickr_Favorites_AddToFavorites_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo to add a favorites list.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddToFavorites Choreo.
 */
@implementation TMBFlickr_Favorites_AddToFavorites_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a photo to a user's favorites list.
 */
@implementation TMBFlickr_Favorites_AddToFavorites

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Favorites_AddToFavorites Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Favorites/AddToFavorites"] autorelease];
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
		TMBFlickr_Favorites_AddToFavorites_ResultSet *results = [[[TMBFlickr_Favorites_AddToFavorites_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddToFavorites Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Favorites_AddToFavorites_Inputs*)newInputSet {
		return [[[TMBFlickr_Favorites_AddToFavorites_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPhotos Choreo.
 */
@implementation TMBFlickr_PhotoSets_ListPhotos_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(optional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).  Required when accessing a protected resource.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(optional, string) The Access Token Secret retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Extras input for this Choreo.
	*(optional, string) A comma-delimited list of extra information to fetch for each returned record.
	 */
	-(void)setExtras:(NSString*)Extras {
		[super setInput:@"Extras" toValue:Extras];
	}

	/*!
	 * Set the value of the Media input for this Choreo.
	*(optional, string) Filter results by media type. Possible values are all (default), photos or videos
	 */
	-(void)setMedia:(NSString*)Media {
		[super setInput:@"Media" toValue:Media];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to return. If this argument is omitted, it defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) The number of photos to return per page. Defaults to 500. The maximum allowed value is 500.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the PhotoSetID input for this Choreo.
	*(required, integer) The ID of the photo set.
	 */
	-(void)setPhotoSetID:(NSString*)PhotoSetID {
		[super setInput:@"PhotoSetID" toValue:PhotoSetID];
	}

	/*!
	 * Set the value of the PrivacyFilter input for this Choreo.
	*(optional, integer) Valid values are: 1 (public photos), 2 (private photos visible to friends), 3 (private photos visible to family), 4 (private photos visible to friends and family), 5 (completely private photos).
	 */
	-(void)setPrivacyFilter:(NSString*)PrivacyFilter {
		[super setInput:@"PrivacyFilter" toValue:PrivacyFilter];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhotos Choreo.
 */
@implementation TMBFlickr_PhotoSets_ListPhotos_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the list of photos in a set.
 */
@implementation TMBFlickr_PhotoSets_ListPhotos

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_PhotoSets_ListPhotos Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/PhotoSets/ListPhotos"] autorelease];
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
		TMBFlickr_PhotoSets_ListPhotos_ResultSet *results = [[[TMBFlickr_PhotoSets_ListPhotos_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPhotos Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_PhotoSets_ListPhotos_Inputs*)newInputSet {
		return [[[TMBFlickr_PhotoSets_ListPhotos_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Download Choreo.
 */
@implementation TMBFlickr_Photos_Download_Inputs

	/*!
	 * Set the value of the FarmID input for this Choreo.
	*(conditional, integer) The farm id associated with the photo. Required unless providing the URL.
	 */
	-(void)setFarmID:(NSString*)FarmID {
		[super setInput:@"FarmID" toValue:FarmID];
	}

	/*!
	 * Set the value of the ImageType input for this Choreo.
	*(optional, string) The image type. Valid values are: jpg, png, or gif. Defaults to "jpg".
	 */
	-(void)setImageType:(NSString*)ImageType {
		[super setInput:@"ImageType" toValue:ImageType];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(conditional, integer) The id of the photo you to download.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the Secret input for this Choreo.
	*(conditional, string) The secret associated with the photo. Required unless providing the URL.
	 */
	-(void)setSecret:(NSString*)Secret {
		[super setInput:@"Secret" toValue:Secret];
	}

	/*!
	 * Set the value of the ServerID input for this Choreo.
	*(conditional, integer) The server id associated with the photo. Required unless providing the URL.
	 */
	-(void)setServerID:(NSString*)ServerID {
		[super setInput:@"ServerID" toValue:ServerID];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(conditional, string) The url to download the photo from. Required unless providing the Secret, ServerID, and FarmID parameters.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Download Choreo.
 */
@implementation TMBFlickr_Photos_Download_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The Base64 encoded image content.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a photo from a constructed source URL and returns the file content as Base64 encoded data.
 */
@implementation TMBFlickr_Photos_Download

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Photos_Download Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Photos/Download"] autorelease];
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
		TMBFlickr_Photos_Download_ResultSet *results = [[[TMBFlickr_Photos_Download_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Download Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Photos_Download_Inputs*)newInputSet {
		return [[[TMBFlickr_Photos_Download_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPhotosForLocation Choreo.
 */
@implementation TMBFlickr_Geo_ListPhotosForLocation_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Accuracy input for this Choreo.
	*(optional, integer) Recorded accuracy level of the location information. Current range is 1-16. Defaults to 16 if not specified.
	 */
	-(void)setAccuracy:(NSString*)Accuracy {
		[super setInput:@"Accuracy" toValue:Accuracy];
	}

	/*!
	 * Set the value of the Extras input for this Choreo.
	*(optional, string) A comma-delimited list of extra information to retrieve for each returned record. See Choreo documentation for accepted values.
	 */
	-(void)setExtras:(NSString*)Extras {
		[super setInput:@"Extras" toValue:Extras];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude whose valid range is -90 to 90. Anything more than 6 decimal places will be truncated.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude whose valid range is -180 to 180. Anything more than 6 decimal places will be truncated.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to return. Used for paging through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) Number of photos to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPhotosForLocation Choreo.
 */
@implementation TMBFlickr_Geo_ListPhotosForLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Return a list of the user's photos for a specified location.
 */
@implementation TMBFlickr_Geo_ListPhotosForLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Geo_ListPhotosForLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Geo/ListPhotosForLocation"] autorelease];
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
		TMBFlickr_Geo_ListPhotosForLocation_ResultSet *results = [[[TMBFlickr_Geo_ListPhotosForLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPhotosForLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Geo_ListPhotosForLocation_Inputs*)newInputSet {
		return [[[TMBFlickr_Geo_ListPhotosForLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListRecentPhotos Choreo.
 */
@implementation TMBFlickr_Photos_ListRecentPhotos_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Extras input for this Choreo.
	*(optional, string) A comma-separated list returning additional photo information such as: license, description, date_upload, date_taken.  Additional options are listed on this method's API doc page.
	 */
	-(void)setExtras:(NSString*)Extras {
		[super setInput:@"Extras" toValue:Extras];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Specify the page of photos that is to be returned.  If unspecified, the first page is returned.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) Specify how many photos to display per page. Default is set to: 100. The mamimum allowed value is: 500.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRecentPhotos Choreo.
 */
@implementation TMBFlickr_Photos_ListRecentPhotos_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve public photos that have been recently uploaded to Flickr.
 */
@implementation TMBFlickr_Photos_ListRecentPhotos

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Photos_ListRecentPhotos Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Photos/ListRecentPhotos"] autorelease];
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
		TMBFlickr_Photos_ListRecentPhotos_ResultSet *results = [[[TMBFlickr_Photos_ListRecentPhotos_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListRecentPhotos Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Photos_ListRecentPhotos_Inputs*)newInputSet {
		return [[[TMBFlickr_Photos_ListRecentPhotos_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPhotoLocation Choreo.
 */
@implementation TMBFlickr_Geo_GetPhotoLocation_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo that you want to get the location for.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPhotoLocation Choreo.
 */
@implementation TMBFlickr_Geo_GetPhotoLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves geo data (including latitude and longitude coordinates) for a specified photo.
 */
@implementation TMBFlickr_Geo_GetPhotoLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Geo_GetPhotoLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Geo/GetPhotoLocation"] autorelease];
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
		TMBFlickr_Geo_GetPhotoLocation_ResultSet *results = [[[TMBFlickr_Geo_GetPhotoLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPhotoLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Geo_GetPhotoLocation_Inputs*)newInputSet {
		return [[[TMBFlickr_Geo_GetPhotoLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBFlickr_OAuth_InitializeOAuth_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

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
@implementation TMBFlickr_OAuth_InitializeOAuth_ResultSet

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
@implementation TMBFlickr_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/OAuth/InitializeOAuth"] autorelease];
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
		TMBFlickr_OAuth_InitializeOAuth_ResultSet *results = [[[TMBFlickr_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBFlickr_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListComments Choreo.
 */
@implementation TMBFlickr_PhotoComments_ListComments_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the MaxCommentDate input for this Choreo.
	*(optional, date) The maximum date that a a comment was created. Should be formatted as a unix timestamp.
	 */
	-(void)setMaxCommentDate:(NSString*)MaxCommentDate {
		[super setInput:@"MaxCommentDate" toValue:MaxCommentDate];
	}

	/*!
	 * Set the value of the MinCommentDate input for this Choreo.
	*(optional, date) The minimum date that a a comment was created. Should be formatted as a unix timestamp.
	 */
	-(void)setMinCommentDate:(NSString*)MinCommentDate {
		[super setInput:@"MinCommentDate" toValue:MinCommentDate];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo to retrieve comments for.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListComments Choreo.
 */
@implementation TMBFlickr_PhotoComments_ListComments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves comments for a given photo on Flickr.
 */
@implementation TMBFlickr_PhotoComments_ListComments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_PhotoComments_ListComments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/PhotoComments/ListComments"] autorelease];
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
		TMBFlickr_PhotoComments_ListComments_ResultSet *results = [[[TMBFlickr_PhotoComments_ListComments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListComments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_PhotoComments_ListComments_Inputs*)newInputSet {
		return [[[TMBFlickr_PhotoComments_ListComments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SetPhotoLocation Choreo.
 */
@implementation TMBFlickr_Geo_SetPhotoLocation_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Accuracy input for this Choreo.
	*(optional, integer) Recorded accuracy level of the location information. Current range is 1-16. Defaults to 16 if not specified.
	 */
	-(void)setAccuracy:(NSString*)Accuracy {
		[super setInput:@"Accuracy" toValue:Accuracy];
	}

	/*!
	 * Set the value of the Context input for this Choreo.
	*(optional, string) A numeric value representing the photo's location beyond latitude and longitude. For example, you can indicate that a photo was taken "indoors" or "outdoors". Set to 1 for indoors or 2 for outdoors.
	 */
	-(void)setContext:(NSString*)Context {
		[super setInput:@"Context" toValue:Context];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude whose valid range is -90 to 90. Anything more than 6 decimal places will be truncated.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude whose valid range is -180 to 180. Anything more than 6 decimal places will be truncated.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo to set location data for.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetPhotoLocation Choreo.
 */
@implementation TMBFlickr_Geo_SetPhotoLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sets the geo data (including latitude and longitude) for a specified photo.
 */
@implementation TMBFlickr_Geo_SetPhotoLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Geo_SetPhotoLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Geo/SetPhotoLocation"] autorelease];
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
		TMBFlickr_Geo_SetPhotoLocation_ResultSet *results = [[[TMBFlickr_Geo_SetPhotoLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SetPhotoLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Geo_SetPhotoLocation_Inputs*)newInputSet {
		return [[[TMBFlickr_Geo_SetPhotoLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemoveFromFavorites Choreo.
 */
@implementation TMBFlickr_Favorites_RemoveFromFavorites_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo to remove from the user's favorites.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveFromFavorites Choreo.
 */
@implementation TMBFlickr_Favorites_RemoveFromFavorites_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes a photo from a user's favorites list.
 */
@implementation TMBFlickr_Favorites_RemoveFromFavorites

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Favorites_RemoveFromFavorites Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Favorites/RemoveFromFavorites"] autorelease];
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
		TMBFlickr_Favorites_RemoveFromFavorites_ResultSet *results = [[[TMBFlickr_Favorites_RemoveFromFavorites_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemoveFromFavorites Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Favorites_RemoveFromFavorites_Inputs*)newInputSet {
		return [[[TMBFlickr_Favorites_RemoveFromFavorites_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListSets Choreo.
 */
@implementation TMBFlickr_PhotoSets_ListSets_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(conditional, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret). Required when accessing a protected resource or when UserID is not provided.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(conditional, string) The Access Token Secret retrieved during the OAuth process. Required when accessing a protected resource or when UserID is not provided.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource or when UserID is not provided.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to get. Currently, if this is not provided, all sets are returned, but this behaviour may change in future.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) The number of sets to get per page. If paging is enabled, the maximum number of sets per page is 500.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, string) The NSID of the user to get a photoset list for. When OAuth parameters are passed, the authenticated user is assumed.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSets Choreo.
 */
@implementation TMBFlickr_PhotoSets_ListSets_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the photosets belonging to the specified user.
 */
@implementation TMBFlickr_PhotoSets_ListSets

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_PhotoSets_ListSets Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/PhotoSets/ListSets"] autorelease];
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
		TMBFlickr_PhotoSets_ListSets_ResultSet *results = [[[TMBFlickr_PhotoSets_ListSets_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListSets Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_PhotoSets_ListSets_Inputs*)newInputSet {
		return [[[TMBFlickr_PhotoSets_ListSets_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPeople Choreo.
 */
@implementation TMBFlickr_Photos_ListPeople_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, string) Enter the ID of a photo for which people will be listed.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPeople Choreo.
 */
@implementation TMBFlickr_Photos_ListPeople_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of people in a given photo.
 */
@implementation TMBFlickr_Photos_ListPeople

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Photos_ListPeople Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Photos/ListPeople"] autorelease];
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
		TMBFlickr_Photos_ListPeople_ResultSet *results = [[[TMBFlickr_Photos_ListPeople_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPeople Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Photos_ListPeople_Inputs*)newInputSet {
		return [[[TMBFlickr_Photos_ListPeople_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBFlickr_OAuth_FinalizeOAuth_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

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
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuth Token Secret retrieved during the OAuth process. This is returned by the InitializeOAuth Choreo.
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
@implementation TMBFlickr_OAuth_FinalizeOAuth_ResultSet

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
	 * Retrieve the value of the "UserID" output from an execution of this Choreo.
	 * @return - NSString* (string) The Flickr NSID (user ID) associated with the access token that is being retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getUserID {
		return [super getOutputByName:@"UserID"];
	}

	/*!
	 * Retrieve the value of the "Username" output from an execution of this Choreo.
	 * @return - NSString* (string) The Username associated with the access token that is being retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getUsername {
		return [super getOutputByName:@"Username"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Flickr access token, token secret, user ID and username for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@implementation TMBFlickr_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/OAuth/FinalizeOAuth"] autorelease];
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
		TMBFlickr_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBFlickr_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBFlickr_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetContextForFavorite Choreo.
 */
@implementation TMBFlickr_Favorites_GetContextForFavorite_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the PhotoID input for this Choreo.
	*(required, integer) The id of the photo to fetch the context for.
	 */
	-(void)setPhotoID:(NSString*)PhotoID {
		[super setInput:@"PhotoID" toValue:PhotoID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The user who counts the photo as a favorite.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetContextForFavorite Choreo.
 */
@implementation TMBFlickr_Favorites_GetContextForFavorite_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns next and previous favorites for a photo in a user's favorites.
 */
@implementation TMBFlickr_Favorites_GetContextForFavorite

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Favorites_GetContextForFavorite Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Favorites/GetContextForFavorite"] autorelease];
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
		TMBFlickr_Favorites_GetContextForFavorite_ResultSet *results = [[[TMBFlickr_Favorites_GetContextForFavorite_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetContextForFavorite Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Favorites_GetContextForFavorite_Inputs*)newInputSet {
		return [[[TMBFlickr_Favorites_GetContextForFavorite_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindByURL Choreo.
 */
@implementation TMBFlickr_Places_FindByURL_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) Enter a flickr.com/places URL in the following form: /country/region/city. For example: /USA/NewYork/Rochester.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByURL Choreo.
 */
@implementation TMBFlickr_Places_FindByURL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain geo-location information for a place using its flickr.com/places URL.
 */
@implementation TMBFlickr_Places_FindByURL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Places_FindByURL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Places/FindByURL"] autorelease];
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
		TMBFlickr_Places_FindByURL_ResultSet *results = [[[TMBFlickr_Places_FindByURL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindByURL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Places_FindByURL_Inputs*)newInputSet {
		return [[[TMBFlickr_Places_FindByURL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListGeoTaggedPhotos Choreo.
 */
@implementation TMBFlickr_Photos_ListGeoTaggedPhotos_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Flickr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API Secret provided by Flickr (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Extras input for this Choreo.
	*(optional, string) A comma-delimited list of extra information to retrieve for each returned record. See Choreo documentation for accepted values.
	 */
	-(void)setExtras:(NSString*)Extras {
		[super setInput:@"Extras" toValue:Extras];
	}

	/*!
	 * Set the value of the MaxTakenDate input for this Choreo.
	*(optional, date) Photos with an taken date less than or equal to this value will be returned. The date should be in the form of a mysql datetime.
	 */
	-(void)setMaxTakenDate:(NSString*)MaxTakenDate {
		[super setInput:@"MaxTakenDate" toValue:MaxTakenDate];
	}

	/*!
	 * Set the value of the MaxUploadDate input for this Choreo.
	*(optional, date) Photos with an upload date less than or equal to this value will be returned. The date should be in the form of a unix timestamp.
	 */
	-(void)setMaxUploadDate:(NSString*)MaxUploadDate {
		[super setInput:@"MaxUploadDate" toValue:MaxUploadDate];
	}

	/*!
	 * Set the value of the Media input for this Choreo.
	*(optional, string) Filter results by media type. Possible values are all (default), photos or videos.
	 */
	-(void)setMedia:(NSString*)Media {
		[super setInput:@"Media" toValue:Media];
	}

	/*!
	 * Set the value of the MinTakenDate input for this Choreo.
	*(optional, date) Photos with an taken date greater than or equal to this value will be returned. The date should be in the form of a mysql datetime.
	 */
	-(void)setMinTakenDate:(NSString*)MinTakenDate {
		[super setInput:@"MinTakenDate" toValue:MinTakenDate];
	}

	/*!
	 * Set the value of the MinUploadDate input for this Choreo.
	*(optional, date) Photos with an upload date greater than or equal to this value will be returned. The date should be in the form of a unix timestamp.
	 */
	-(void)setMinUploadDate:(NSString*)MinUploadDate {
		[super setInput:@"MinUploadDate" toValue:MinUploadDate];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to return. Used for paging through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) Number of photos to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the PrivacyFilter input for this Choreo.
	*(optional, integer) Valid values are: 1 (public photos), 2 (private photos visible to friends), 3 (private photos visible to family), 4 (private photos visible to friends and family), 5 (completely private photos).
	 */
	-(void)setPrivacyFilter:(NSString*)PrivacyFilter {
		[super setInput:@"PrivacyFilter" toValue:PrivacyFilter];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml and json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) The sort order. Accepted values are: date-posted-asc, date-posted-desc, date-taken-asc, date-taken-desc, interestingness-desc, and interestingness-asc.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGeoTaggedPhotos Choreo.
 */
@implementation TMBFlickr_Photos_ListGeoTaggedPhotos_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Flickr.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of your geo-tagged photos.
 */
@implementation TMBFlickr_Photos_ListGeoTaggedPhotos

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFlickr_Photos_ListGeoTaggedPhotos Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Flickr/Photos/ListGeoTaggedPhotos"] autorelease];
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
		TMBFlickr_Photos_ListGeoTaggedPhotos_ResultSet *results = [[[TMBFlickr_Photos_ListGeoTaggedPhotos_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListGeoTaggedPhotos Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFlickr_Photos_ListGeoTaggedPhotos_Inputs*)newInputSet {
		return [[[TMBFlickr_Photos_ListGeoTaggedPhotos_Inputs alloc] init] autorelease];
	}
@end
	