/*!
 * @TMBFacebook.m
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

#import "TMBFacebook.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFollow Choreo.
 */
@implementation TMBFacebook_Actions_General_Follows_DeleteFollow_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFollow Choreo.
 */
@implementation TMBFacebook_Actions_General_Follows_DeleteFollow_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given follow action.
 */
@implementation TMBFacebook_Actions_General_Follows_DeleteFollow

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Follows_DeleteFollow Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Follows/DeleteFollow"] autorelease];
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
		TMBFacebook_Actions_General_Follows_DeleteFollow_ResultSet *results = [[[TMBFacebook_Actions_General_Follows_DeleteFollow_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFollow Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Follows_DeleteFollow_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Follows_DeleteFollow_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UploadPhoto Choreo.
 */
@implementation TMBFacebook_Publishing_UploadPhoto_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the AlbumID input for this Choreo.
	*(required, string) The id of the album to upload the photo to.
	 */
	-(void)setAlbumID:(NSString*)AlbumID {
		[super setInput:@"AlbumID" toValue:AlbumID];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message to attach to the photo.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Photo input for this Choreo.
	*(conditional, any) The image contents formatted as a Base64 encoded string.
	 */
	-(void)setPhoto:(NSString*)Photo {
		[super setInput:@"Photo" toValue:Photo];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) A location associated with a Photo.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Source input for this Choreo.
	*(optional, string) A link to the source image of the photo.
	 */
	-(void)setSource:(NSString*)Source {
		[super setInput:@"Source" toValue:Source];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*A path to image in the vault. This can be used as an alternative to the Photo input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadPhoto Choreo.
 */
@implementation TMBFacebook_Publishing_UploadPhoto_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Uploads a photo to a given album.
 */
@implementation TMBFacebook_Publishing_UploadPhoto

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Publishing_UploadPhoto Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Publishing/UploadPhoto"] autorelease];
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
		TMBFacebook_Publishing_UploadPhoto_ResultSet *results = [[[TMBFacebook_Publishing_UploadPhoto_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UploadPhoto Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Publishing_UploadPhoto_Inputs*)newInputSet {
		return [[[TMBFacebook_Publishing_UploadPhoto_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Notes Choreo.
 */
@implementation TMBFacebook_Reading_Notes_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve notes for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Notes Choreo.
 */
@implementation TMBFacebook_Reading_Notes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves notes associated with a specified user.
 */
@implementation TMBFacebook_Reading_Notes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Notes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Notes"] autorelease];
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
		TMBFacebook_Reading_Notes_ResultSet *results = [[[TMBFacebook_Reading_Notes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Notes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Notes_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Notes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ProfileFeed Choreo.
 */
@implementation TMBFacebook_Reading_ProfileFeed_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve a feed for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ProfileFeed Choreo.
 */
@implementation TMBFacebook_Reading_ProfileFeed_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves the feed from a specified user's Wall.
 */
@implementation TMBFacebook_Reading_ProfileFeed

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_ProfileFeed Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/ProfileFeed"] autorelease];
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
		TMBFacebook_Reading_ProfileFeed_ResultSet *results = [[[TMBFacebook_Reading_ProfileFeed_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ProfileFeed Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_ProfileFeed_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_ProfileFeed_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Comments Choreo.
 */
@implementation TMBFacebook_Reading_Comments_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Filter input for this Choreo.
	*(optional, string) Filters comments. Use "toplevel" to return comments on a post, but not replies to comments. Use "stream" to return comments and replies.
	 */
	-(void)setFilter:(NSString*)Filter {
		[super setInput:@"Filter" toValue:Filter];
	}

	/*!
	 * Set the value of the Limt input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimt:(NSString*)Limt {
		[super setInput:@"Limt" toValue:Limt];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The id of a graph api object to get comments for.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Comments Choreo.
 */
@implementation TMBFacebook_Reading_Comments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves comments for a specified Graph API object.
 */
@implementation TMBFacebook_Reading_Comments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Comments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Comments"] autorelease];
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
		TMBFacebook_Reading_Comments_ResultSet *results = [[[TMBFacebook_Reading_Comments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Comments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Comments_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Comments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateQuote Choreo.
 */
@implementation TMBFacebook_Actions_Books_Quotes_UpdateQuote_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Body input for this Choreo.
	*(required, string) The text of the quote.
	 */
	-(void)setBody:(NSString*)Body {
		[super setInput:@"Body" toValue:Body];
	}

	/*!
	 * Set the value of the Book input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the book.
	 */
	-(void)setBook:(NSString*)Book {
		[super setInput:@"Book" toValue:Book];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateQuote Choreo.
 */
@implementation TMBFacebook_Actions_Books_Quotes_UpdateQuote_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing quote action.
 */
@implementation TMBFacebook_Actions_Books_Quotes_UpdateQuote

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Quotes_UpdateQuote Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Quotes/UpdateQuote"] autorelease];
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
		TMBFacebook_Actions_Books_Quotes_UpdateQuote_ResultSet *results = [[[TMBFacebook_Actions_Books_Quotes_UpdateQuote_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateQuote Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Quotes_UpdateQuote_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Quotes_UpdateQuote_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_Watches_ReadWatch_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all video watch actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_Watches_ReadWatch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more video watch actions.
 */
@implementation TMBFacebook_Actions_Video_Watches_ReadWatch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_Watches_ReadWatch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/Watches/ReadWatch"] autorelease];
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
		TMBFacebook_Actions_Video_Watches_ReadWatch_ResultSet *results = [[[TMBFacebook_Actions_Video_Watches_ReadWatch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadWatch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_Watches_ReadWatch_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_Watches_ReadWatch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VideoTags Choreo.
 */
@implementation TMBFacebook_Reading_VideoTags_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve video tags for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VideoTags Choreo.
 */
@implementation TMBFacebook_Reading_VideoTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of video tags associated with a specified user.
 */
@implementation TMBFacebook_Reading_VideoTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_VideoTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/VideoTags"] autorelease];
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
		TMBFacebook_Reading_VideoTags_ResultSet *results = [[[TMBFacebook_Reading_VideoTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VideoTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_VideoTags_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_VideoTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateQuote Choreo.
 */
@implementation TMBFacebook_Actions_Books_Quotes_CreateQuote_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Body input for this Choreo.
	*(required, string) The text of the quote.
	 */
	-(void)setBody:(NSString*)Body {
		[super setInput:@"Body" toValue:Body];
	}

	/*!
	 * Set the value of the Book input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object representing the book.
	 */
	-(void)setBook:(NSString*)Book {
		[super setInput:@"Book" toValue:Book];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateQuote Choreo.
 */
@implementation TMBFacebook_Actions_Books_Quotes_CreateQuote_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user quoting from a book.
 */
@implementation TMBFacebook_Actions_Books_Quotes_CreateQuote

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Quotes_CreateQuote Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Quotes/CreateQuote"] autorelease];
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
		TMBFacebook_Actions_Books_Quotes_CreateQuote_ResultSet *results = [[[TMBFacebook_Actions_Books_Quotes_CreateQuote_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateQuote Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Quotes_CreateQuote_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Quotes_CreateQuote_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@implementation TMBFacebook_Searching_Search_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The access token retrieved from the final step of the OAuth process. This is required for certain object types such as "user".
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Center input for this Choreo.
	*(conditional, string) The coordinates for a place (such as 37.76,122.427). Used only when specifying an object type of "place".
	 */
	-(void)setCenter:(NSString*)Center {
		[super setInput:@"Center" toValue:Center];
	}

	/*!
	 * Set the value of the Distance input for this Choreo.
	*(optional, integer) The distance search parameter used only when specifying an object type of "place". Defaults to 1000.
	 */
	-(void)setDistance:(NSString*)Distance {
		[super setInput:@"Distance" toValue:Distance];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ObjectType input for this Choreo.
	*(required, string) The type of object to search for such as: post, user, page, event, group, place, location, or checkin.
	 */
	-(void)setObjectType:(NSString*)ObjectType {
		[super setInput:@"ObjectType" toValue:ObjectType];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(conditional, string) The Facebook query term to send in the request.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@implementation TMBFacebook_Searching_Search_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search public objects across the social graph.
 */
@implementation TMBFacebook_Searching_Search

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Searching_Search Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Searching/Search"] autorelease];
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
		TMBFacebook_Searching_Search_ResultSet *results = [[[TMBFacebook_Searching_Search_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Search Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Searching_Search_Inputs*)newInputSet {
		return [[[TMBFacebook_Searching_Search_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateRating Choreo.
 */
@implementation TMBFacebook_Actions_Video_Rates_UpdateRating_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the Episode input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing an episode.
	 */
	-(void)setEpisode:(NSString*)Episode {
		[super setInput:@"Episode" toValue:Episode];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Movie input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing a movie.
	 */
	-(void)setMovie:(NSString*)Movie {
		[super setInput:@"Movie" toValue:Movie];
	}

	/*!
	 * Set the value of the Other input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing any general video content.
	 */
	-(void)setOther:(NSString*)Other {
		[super setInput:@"Other" toValue:Other];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the RatingNormalizedValue input for this Choreo.
	*(optional, decimal) The rating expressed as a decimal value between 0 and 1.0.
	 */
	-(void)setRatingNormalizedValue:(NSString*)RatingNormalizedValue {
		[super setInput:@"RatingNormalizedValue" toValue:RatingNormalizedValue];
	}

	/*!
	 * Set the value of the RatingScale input for this Choreo.
	*(optional, integer) The highest possible value in the rating scale.
	 */
	-(void)setRatingScale:(NSString*)RatingScale {
		[super setInput:@"RatingScale" toValue:RatingScale];
	}

	/*!
	 * Set the value of the RatingValue input for this Choreo.
	*(optional, decimal) The value of the book rating.
	 */
	-(void)setRatingValue:(NSString*)RatingValue {
		[super setInput:@"RatingValue" toValue:RatingValue];
	}

	/*!
	 * Set the value of the ReviewText input for this Choreo.
	*(optional, string) The text content of the book review.
	 */
	-(void)setReviewText:(NSString*)ReviewText {
		[super setInput:@"ReviewText" toValue:ReviewText];
	}

	/*!
	 * Set the value of the Review input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing a book review.
	 */
	-(void)setReview:(NSString*)Review {
		[super setInput:@"Review" toValue:Review];
	}

	/*!
	 * Set the value of the TVShow input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing a TV show.
	 */
	-(void)setTVShow:(NSString*)TVShow {
		[super setInput:@"TVShow" toValue:TVShow];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateRating Choreo.
 */
@implementation TMBFacebook_Actions_Video_Rates_UpdateRating_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing video rating action.
 */
@implementation TMBFacebook_Actions_Video_Rates_UpdateRating

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_Rates_UpdateRating Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/Rates/UpdateRating"] autorelease];
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
		TMBFacebook_Actions_Video_Rates_UpdateRating_ResultSet *results = [[[TMBFacebook_Actions_Video_Rates_UpdateRating_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateRating Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_Rates_UpdateRating_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_Rates_UpdateRating_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Inbox Choreo.
 */
@implementation TMBFacebook_Reading_Inbox_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve messages for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Inbox Choreo.
 */
@implementation TMBFacebook_Reading_Inbox_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}




	
@end

/*!
 * Retrieves a list of messages in a specified user's inbox.
 */
@implementation TMBFacebook_Reading_Inbox

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Inbox Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Inbox"] autorelease];
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
		TMBFacebook_Reading_Inbox_ResultSet *results = [[[TMBFacebook_Reading_Inbox_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Inbox Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Inbox_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Inbox_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreatePublication Choreo.
 */
@implementation TMBFacebook_Actions_News_Publishes_CreatePublication_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Article input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object representing the article.
	 */
	-(void)setArticle:(NSString*)Article {
		[super setInput:@"Article" toValue:Article];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePublication Choreo.
 */
@implementation TMBFacebook_Actions_News_Publishes_CreatePublication_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user publishing a news article.
 */
@implementation TMBFacebook_Actions_News_Publishes_CreatePublication

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_News_Publishes_CreatePublication Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/News/Publishes/CreatePublication"] autorelease];
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
		TMBFacebook_Actions_News_Publishes_CreatePublication_ResultSet *results = [[[TMBFacebook_Actions_News_Publishes_CreatePublication_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreatePublication Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_News_Publishes_CreatePublication_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_News_Publishes_CreatePublication_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeletePlaylist Choreo.
 */
@implementation TMBFacebook_Actions_Music_Playlists_DeletePlaylist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePlaylist Choreo.
 */
@implementation TMBFacebook_Actions_Music_Playlists_DeletePlaylist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given playlist action.
 */
@implementation TMBFacebook_Actions_Music_Playlists_DeletePlaylist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Music_Playlists_DeletePlaylist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Music/Playlists/DeletePlaylist"] autorelease];
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
		TMBFacebook_Actions_Music_Playlists_DeletePlaylist_ResultSet *results = [[[TMBFacebook_Actions_Music_Playlists_DeletePlaylist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeletePlaylist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Music_Playlists_DeletePlaylist_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Music_Playlists_DeletePlaylist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteReading Choreo.
 */
@implementation TMBFacebook_Actions_Books_Reads_DeleteReading_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteReading Choreo.
 */
@implementation TMBFacebook_Actions_Books_Reads_DeleteReading_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given book reading action.
 */
@implementation TMBFacebook_Actions_Books_Reads_DeleteReading

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Reads_DeleteReading Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Reads/DeleteReading"] autorelease];
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
		TMBFacebook_Actions_Books_Reads_DeleteReading_ResultSet *results = [[[TMBFacebook_Actions_Books_Reads_DeleteReading_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteReading Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Reads_DeleteReading_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Reads_DeleteReading_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PublishNote Choreo.
 */
@implementation TMBFacebook_Publishing_PublishNote_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(required, string) The contents of the note.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile that the note will be published to. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(required, string) A subject line for the note being created.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PublishNote Choreo.
 */
@implementation TMBFacebook_Publishing_PublishNote_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Publishes a note on a given profile.
 */
@implementation TMBFacebook_Publishing_PublishNote

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Publishing_PublishNote Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Publishing/PublishNote"] autorelease];
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
		TMBFacebook_Publishing_PublishNote_ResultSet *results = [[[TMBFacebook_Publishing_PublishNote_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PublishNote Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Publishing_PublishNote_Inputs*)newInputSet {
		return [[[TMBFacebook_Publishing_PublishNote_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateFollow Choreo.
 */
@implementation TMBFacebook_Actions_General_Follows_UpdateFollow_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Profile input for this Choreo.
	*(optional, string) An action representing someone following a Facebook user
	 */
	-(void)setProfile:(NSString*)Profile {
		[super setInput:@"Profile" toValue:Profile];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateFollow Choreo.
 */
@implementation TMBFacebook_Actions_General_Follows_UpdateFollow_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Update an existing follow action.
 */
@implementation TMBFacebook_Actions_General_Follows_UpdateFollow

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Follows_UpdateFollow Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Follows/UpdateFollow"] autorelease];
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
		TMBFacebook_Actions_General_Follows_UpdateFollow_ResultSet *results = [[[TMBFacebook_Actions_General_Follows_UpdateFollow_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateFollow Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Follows_UpdateFollow_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Follows_UpdateFollow_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateReading Choreo.
 */
@implementation TMBFacebook_Actions_News_Reads_CreateReading_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Article input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object representing the article.
	 */
	-(void)setArticle:(NSString*)Article {
		[super setInput:@"Article" toValue:Article];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateReading Choreo.
 */
@implementation TMBFacebook_Actions_News_Reads_CreateReading_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user reading a news article.
 */
@implementation TMBFacebook_Actions_News_Reads_CreateReading

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_News_Reads_CreateReading Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/News/Reads/CreateReading"] autorelease];
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
		TMBFacebook_Actions_News_Reads_CreateReading_ResultSet *results = [[[TMBFacebook_Actions_News_Reads_CreateReading_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateReading Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_News_Reads_CreateReading_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_News_Reads_CreateReading_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Accounts Choreo.
 */
@implementation TMBFacebook_Reading_Accounts_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve books for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Accounts Choreo.
 */
@implementation TMBFacebook_Reading_Accounts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of the Facebook apps and pages owned by the specified user.
 */
@implementation TMBFacebook_Reading_Accounts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Accounts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Accounts"] autorelease];
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
		TMBFacebook_Reading_Accounts_ResultSet *results = [[[TMBFacebook_Reading_Accounts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Accounts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Accounts_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Accounts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePublication Choreo.
 */
@implementation TMBFacebook_Actions_News_Publishes_UpdatePublication_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Article input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the article.
	 */
	-(void)setArticle:(NSString*)Article {
		[super setInput:@"Article" toValue:Article];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePublication Choreo.
 */
@implementation TMBFacebook_Actions_News_Publishes_UpdatePublication_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing news publishing action.
 */
@implementation TMBFacebook_Actions_News_Publishes_UpdatePublication

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_News_Publishes_UpdatePublication Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/News/Publishes/UpdatePublication"] autorelease];
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
		TMBFacebook_Actions_News_Publishes_UpdatePublication_ResultSet *results = [[[TMBFacebook_Actions_News_Publishes_UpdatePublication_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdatePublication Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_News_Publishes_UpdatePublication_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_News_Publishes_UpdatePublication_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Like Choreo.
 */
@implementation TMBFacebook_Publishing_Like_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The id of a graph api object to like.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Like Choreo.
 */
@implementation TMBFacebook_Publishing_Like_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows a user to "like" a Graph API object.
 */
@implementation TMBFacebook_Publishing_Like

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Publishing_Like Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Publishing/Like"] autorelease];
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
		TMBFacebook_Publishing_Like_ResultSet *results = [[[TMBFacebook_Publishing_Like_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Like Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Publishing_Like_Inputs*)newInputSet {
		return [[[TMBFacebook_Publishing_Like_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Likes Choreo.
 */
@implementation TMBFacebook_Reading_Likes_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve likes for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Likes Choreo.
 */
@implementation TMBFacebook_Reading_Likes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves the Likes for a specified user.
 */
@implementation TMBFacebook_Reading_Likes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Likes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Likes"] autorelease];
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
		TMBFacebook_Reading_Likes_ResultSet *results = [[[TMBFacebook_Reading_Likes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Likes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Likes_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Likes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadReadings Choreo.
 */
@implementation TMBFacebook_Actions_News_Reads_ReadReadings_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all reading actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadReadings Choreo.
 */
@implementation TMBFacebook_Actions_News_Reads_ReadReadings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more news reading actions.
 */
@implementation TMBFacebook_Actions_News_Reads_ReadReadings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_News_Reads_ReadReadings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/News/Reads/ReadReadings"] autorelease];
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
		TMBFacebook_Actions_News_Reads_ReadReadings_ResultSet *results = [[[TMBFacebook_Actions_News_Reads_ReadReadings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadReadings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_News_Reads_ReadReadings_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_News_Reads_ReadReadings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Events Choreo.
 */
@implementation TMBFacebook_Reading_Events_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve events for. Defaults to "me" indicating authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Events Choreo.
 */
@implementation TMBFacebook_Reading_Events_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of events associated with a specified user.
 */
@implementation TMBFacebook_Reading_Events

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Events Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Events"] autorelease];
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
		TMBFacebook_Reading_Events_ResultSet *results = [[[TMBFacebook_Reading_Events_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Events Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Events_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Events_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBFacebook_OAuth_FinalizeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(required, string) The App ID provided by Facebook (AKA the Client ID).
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
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
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Facebook (AKA the Client Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the CallbackID input for this Choreo.
	*(required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the authorization code after the user authorizes.
	 */
	-(void)setCallbackID:(NSString*)CallbackID {
		[super setInput:@"CallbackID" toValue:CallbackID];
	}

	/*!
	 * Set the value of the LongLivedToken input for this Choreo.
	*(optional, boolean) Set to 1 to automatically exchange the short-lived access token for a long-lived access token. Defaults to 0 (false).
	 */
	-(void)setLongLivedToken:(NSString*)LongLivedToken {
		[super setInput:@"LongLivedToken" toValue:LongLivedToken];
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
@implementation TMBFacebook_OAuth_FinalizeOAuth_ResultSet

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
	 * Retrieve the value of the "ErrorMessage" output from an execution of this Choreo.
	 * @return - NSString* (string) If an error occurs during the redirect process, this output variable will contain the error message generated by Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getErrorMessage {
		return [super getOutputByName:@"ErrorMessage"];
	}

	/*!
	 * Retrieve the value of the "Expires" output from an execution of this Choreo.
	 * @return - NSString* (integer) The expiration time of the access_token retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getExpires {
		return [super getOutputByName:@"Expires"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Facebook access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@implementation TMBFacebook_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/OAuth/FinalizeOAuth"] autorelease];
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
		TMBFacebook_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBFacebook_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBFacebook_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeletePost Choreo.
 */
@implementation TMBFacebook_Actions_General_Posts_DeletePost_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePost Choreo.
 */
@implementation TMBFacebook_Actions_General_Posts_DeletePost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given post action.
 */
@implementation TMBFacebook_Actions_General_Posts_DeletePost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Posts_DeletePost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Posts/DeletePost"] autorelease];
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
		TMBFacebook_Actions_General_Posts_DeletePost_ResultSet *results = [[[TMBFacebook_Actions_General_Posts_DeletePost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeletePost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Posts_DeletePost_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Posts_DeletePost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_Watches_UpdateWatch_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the Episode input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing an episode of a show.
	 */
	-(void)setEpisode:(NSString*)Episode {
		[super setInput:@"Episode" toValue:Episode];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Movie input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing a movie.
	 */
	-(void)setMovie:(NSString*)Movie {
		[super setInput:@"Movie" toValue:Movie];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the TVShow input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing a TV show.
	 */
	-(void)setTVShow:(NSString*)TVShow {
		[super setInput:@"TVShow" toValue:TVShow];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Video input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing any general video content.
	 */
	-(void)setVideo:(NSString*)Video {
		[super setInput:@"Video" toValue:Video];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_Watches_UpdateWatch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing watch action.
 */
@implementation TMBFacebook_Actions_Video_Watches_UpdateWatch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_Watches_UpdateWatch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/Watches/UpdateWatch"] autorelease];
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
		TMBFacebook_Actions_Video_Watches_UpdateWatch_ResultSet *results = [[[TMBFacebook_Actions_Video_Watches_UpdateWatch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateWatch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_Watches_UpdateWatch_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_Watches_UpdateWatch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteReading Choreo.
 */
@implementation TMBFacebook_Actions_News_Reads_DeleteReading_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteReading Choreo.
 */
@implementation TMBFacebook_Actions_News_Reads_DeleteReading_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given news reading action.
 */
@implementation TMBFacebook_Actions_News_Reads_DeleteReading

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_News_Reads_DeleteReading Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/News/Reads/DeleteReading"] autorelease];
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
		TMBFacebook_Actions_News_Reads_DeleteReading_ResultSet *results = [[[TMBFacebook_Actions_News_Reads_DeleteReading_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteReading Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_News_Reads_DeleteReading_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_News_Reads_DeleteReading_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Groups Choreo.
 */
@implementation TMBFacebook_Reading_Groups_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve groups for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Groups Choreo.
 */
@implementation TMBFacebook_Reading_Groups_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of groups associated with a specified user.
 */
@implementation TMBFacebook_Reading_Groups

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Groups Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Groups"] autorelease];
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
		TMBFacebook_Reading_Groups_ResultSet *results = [[[TMBFacebook_Reading_Groups_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Groups Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Groups_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Groups_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Batch Choreo.
 */
@implementation TMBFacebook_BatchRequests_Batch_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Batch input for this Choreo.
	*(required, json) A JSON object which describes each individual operation you'd like to perform. See documentation for syntax examples.
	 */
	-(void)setBatch:(NSString*)Batch {
		[super setInput:@"Batch" toValue:Batch];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Batch Choreo.
 */
@implementation TMBFacebook_BatchRequests_Batch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains the Base64 encoded value of the image retrieved from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to perform multiple graph operations in one request.
 */
@implementation TMBFacebook_BatchRequests_Batch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_BatchRequests_Batch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/BatchRequests/Batch"] autorelease];
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
		TMBFacebook_BatchRequests_Batch_ResultSet *results = [[[TMBFacebook_BatchRequests_Batch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Batch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_BatchRequests_Batch_Inputs*)newInputSet {
		return [[[TMBFacebook_BatchRequests_Batch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateWantsToRead Choreo.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Book input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object representing the book.
	 */
	-(void)setBook:(NSString*)Book {
		[super setInput:@"Book" toValue:Book];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateWantsToRead Choreo.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user wanting to read a book.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/WantsToRead/CreateWantsToRead"] autorelease];
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
		TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead_ResultSet *results = [[[TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateWantsToRead Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_WantsToRead_CreateWantsToRead_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAction Choreo.
 */
@implementation TMBFacebook_Actions_Custom_UpdateAction_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the PropertyName input for this Choreo.
	*(optional, string) The name of a property that you've defined for this Open Graph story. This will be an object type (e.g. album, song, book). Multiple property names can be separated by commas.
	 */
	-(void)setPropertyName:(NSString*)PropertyName {
		[super setInput:@"PropertyName" toValue:PropertyName];
	}

	/*!
	 * Set the value of the PropertyValue input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the object specified as the PropertyName. Multiple property values can be separated by commas.
	 */
	-(void)setPropertyValue:(NSString*)PropertyValue {
		[super setInput:@"PropertyValue" toValue:PropertyValue];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAction Choreo.
 */
@implementation TMBFacebook_Actions_Custom_UpdateAction_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing custom action.
 */
@implementation TMBFacebook_Actions_Custom_UpdateAction

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Custom_UpdateAction Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Custom/UpdateAction"] autorelease];
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
		TMBFacebook_Actions_Custom_UpdateAction_ResultSet *results = [[[TMBFacebook_Actions_Custom_UpdateAction_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateAction Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Custom_UpdateAction_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Custom_UpdateAction_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadWantsToWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all video wants_to_watch actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadWantsToWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more video wants_to_watch actions.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/WantsToWatch/ReadWantsToWatch"] autorelease];
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
		TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch_ResultSet *results = [[[TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadWantsToWatch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_WantsToWatch_ReadWantsToWatch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateFollow Choreo.
 */
@implementation TMBFacebook_Actions_General_Follows_CreateFollow_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The Facebook Page ID of the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Profile input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object representing the profile to follow.
	 */
	-(void)setProfile:(NSString*)Profile {
		[super setInput:@"Profile" toValue:Profile];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFollow Choreo.
 */
@implementation TMBFacebook_Actions_General_Follows_CreateFollow_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents someone following a Facebook user.
 */
@implementation TMBFacebook_Actions_General_Follows_CreateFollow

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Follows_CreateFollow Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Follows/CreateFollow"] autorelease];
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
		TMBFacebook_Actions_General_Follows_CreateFollow_ResultSet *results = [[[TMBFacebook_Actions_General_Follows_CreateFollow_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateFollow Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Follows_CreateFollow_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Follows_CreateFollow_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateWantsToWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the AiringEndTime input for this Choreo.
	*(optional, date) The time that the airing ends.
	 */
	-(void)setAiringEndTime:(NSString*)AiringEndTime {
		[super setInput:@"AiringEndTime" toValue:AiringEndTime];
	}

	/*!
	 * Set the value of the AiringID input for this Choreo.
	*(optional, string) The id of the video airing.
	 */
	-(void)setAiringID:(NSString*)AiringID {
		[super setInput:@"AiringID" toValue:AiringID];
	}

	/*!
	 * Set the value of the AiringStartTime input for this Choreo.
	*(optional, date) The time that the airing begins.
	 */
	-(void)setAiringStartTime:(NSString*)AiringStartTime {
		[super setInput:@"AiringStartTime" toValue:AiringStartTime];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the Episode input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing an episode of a show.
	 */
	-(void)setEpisode:(NSString*)Episode {
		[super setInput:@"Episode" toValue:Episode];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Movie input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing a movie.
	 */
	-(void)setMovie:(NSString*)Movie {
		[super setInput:@"Movie" toValue:Movie];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Other input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing any general video content.
	 */
	-(void)setOther:(NSString*)Other {
		[super setInput:@"Other" toValue:Other];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the TVShow input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing a TV show.
	 */
	-(void)setTVShow:(NSString*)TVShow {
		[super setInput:@"TVShow" toValue:TVShow];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateWantsToWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user wanting to watch video content.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/WantsToWatch/CreateWantsToWatch"] autorelease];
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
		TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch_ResultSet *results = [[[TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateWantsToWatch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_WantsToWatch_CreateWantsToWatch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteStatus Choreo.
 */
@implementation TMBFacebook_Deleting_DeleteStatus_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the StatusID input for this Choreo.
	*(required, string) The ID for the status message you want to delete.
	 */
	-(void)setStatusID:(NSString*)StatusID {
		[super setInput:@"StatusID" toValue:StatusID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteStatus Choreo.
 */
@implementation TMBFacebook_Deleting_DeleteStatus_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified status message from the authenticated user's feed.
 */
@implementation TMBFacebook_Deleting_DeleteStatus

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Deleting_DeleteStatus Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Deleting/DeleteStatus"] autorelease];
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
		TMBFacebook_Deleting_DeleteStatus_ResultSet *results = [[[TMBFacebook_Deleting_DeleteStatus_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteStatus Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Deleting_DeleteStatus_Inputs*)newInputSet {
		return [[[TMBFacebook_Deleting_DeleteStatus_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateRun Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_CreateRun_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Course input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object representing the course.
	 */
	-(void)setCourse:(NSString*)Course {
		[super setInput:@"Course" toValue:Course];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRun Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_CreateRun_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user running a course.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_CreateRun

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Runs_CreateRun Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Runs/CreateRun"] autorelease];
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
		TMBFacebook_Actions_Fitness_Runs_CreateRun_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Runs_CreateRun_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateRun Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Runs_CreateRun_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Runs_CreateRun_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteLike Choreo.
 */
@implementation TMBFacebook_Actions_General_Likes_DeleteLike_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteLike Choreo.
 */
@implementation TMBFacebook_Actions_General_Likes_DeleteLike_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given like action.
 */
@implementation TMBFacebook_Actions_General_Likes_DeleteLike

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Likes_DeleteLike Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Likes/DeleteLike"] autorelease];
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
		TMBFacebook_Actions_General_Likes_DeleteLike_ResultSet *results = [[[TMBFacebook_Actions_General_Likes_DeleteLike_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteLike Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Likes_DeleteLike_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Likes_DeleteLike_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateReading Choreo.
 */
@implementation TMBFacebook_Actions_Books_Reads_UpdateReading_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Book input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the book.
	 */
	-(void)setBook:(NSString*)Book {
		[super setInput:@"Book" toValue:Book];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProgressPercentComplete input for this Choreo.
	*(optional, decimal) The percentage progress towards finishing the specified book.
	 */
	-(void)setProgressPercentComplete:(NSString*)ProgressPercentComplete {
		[super setInput:@"ProgressPercentComplete" toValue:ProgressPercentComplete];
	}

	/*!
	 * Set the value of the ProgressTimestamp input for this Choreo.
	*(optional, date) A timestamp representing the time of change in progress towards finishing the specified book (e.g. 1372194363).
	 */
	-(void)setProgressTimestamp:(NSString*)ProgressTimestamp {
		[super setInput:@"ProgressTimestamp" toValue:ProgressTimestamp];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateReading Choreo.
 */
@implementation TMBFacebook_Actions_Books_Reads_UpdateReading_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing book reading action.
 */
@implementation TMBFacebook_Actions_Books_Reads_UpdateReading

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Reads_UpdateReading Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Reads/UpdateReading"] autorelease];
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
		TMBFacebook_Actions_Books_Reads_UpdateReading_ResultSet *results = [[[TMBFacebook_Actions_Books_Reads_UpdateReading_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateReading Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Reads_UpdateReading_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Reads_UpdateReading_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadActions Choreo.
 */
@implementation TMBFacebook_Actions_Custom_ReadActions_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(conditional, string) The id of an action to retrieve. If an id is not provided, a list of all custom actions will be returned. Required unless you provide the AppNamespace and ActionType to return all custom actions.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the ActionType input for this Choreo.
	*(conditional, string) The type of action that a user is performing in your app (e.g. runs, walks, bikes). Required unless you provide the ActionID.
	 */
	-(void)setActionType:(NSString*)ActionType {
		[super setInput:@"ActionType" toValue:ActionType];
	}

	/*!
	 * Set the value of the AppNamespace input for this Choreo.
	*(conditional, string) The namespace that you chose for you app. This can be found in the Settings section of your App page. Required unless you provide the ActionID.
	 */
	-(void)setAppNamespace:(NSString*)AppNamespace {
		[super setInput:@"AppNamespace" toValue:AppNamespace];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadActions Choreo.
 */
@implementation TMBFacebook_Actions_Custom_ReadActions_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more custom actions.
 */
@implementation TMBFacebook_Actions_Custom_ReadActions

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Custom_ReadActions Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Custom/ReadActions"] autorelease];
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
		TMBFacebook_Actions_Custom_ReadActions_ResultSet *results = [[[TMBFacebook_Actions_Custom_ReadActions_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadActions Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Custom_ReadActions_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Custom_ReadActions_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreatePlaylist Choreo.
 */
@implementation TMBFacebook_Actions_Music_Playlists_CreatePlaylist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Playlist input for this Choreo.
	*(required, string) An object representing the playlist
	 */
	-(void)setPlaylist:(NSString*)Playlist {
		[super setInput:@"Playlist" toValue:Playlist];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePlaylist Choreo.
 */
@implementation TMBFacebook_Actions_Music_Playlists_CreatePlaylist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action representing someone creating a playlist.
 */
@implementation TMBFacebook_Actions_Music_Playlists_CreatePlaylist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Music_Playlists_CreatePlaylist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Music/Playlists/CreatePlaylist"] autorelease];
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
		TMBFacebook_Actions_Music_Playlists_CreatePlaylist_ResultSet *results = [[[TMBFacebook_Actions_Music_Playlists_CreatePlaylist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreatePlaylist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Music_Playlists_CreatePlaylist_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Music_Playlists_CreatePlaylist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Checkins Choreo.
 */
@implementation TMBFacebook_Reading_Checkins_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve checkins for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Checkins Choreo.
 */
@implementation TMBFacebook_Reading_Checkins_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of checkins associated with a specified user.
 */
@implementation TMBFacebook_Reading_Checkins

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Checkins Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Checkins"] autorelease];
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
		TMBFacebook_Reading_Checkins_ResultSet *results = [[[TMBFacebook_Reading_Checkins_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Checkins Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Checkins_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Checkins_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadQuotes Choreo.
 */
@implementation TMBFacebook_Actions_Books_Quotes_ReadQuotes_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all quote actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadQuotes Choreo.
 */
@implementation TMBFacebook_Actions_Books_Quotes_ReadQuotes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more quote actions.
 */
@implementation TMBFacebook_Actions_Books_Quotes_ReadQuotes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Quotes_ReadQuotes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Quotes/ReadQuotes"] autorelease];
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
		TMBFacebook_Actions_Books_Quotes_ReadQuotes_ResultSet *results = [[[TMBFacebook_Actions_Books_Quotes_ReadQuotes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadQuotes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Quotes_ReadQuotes_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Quotes_ReadQuotes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SetStatus Choreo.
 */
@implementation TMBFacebook_Publishing_SetStatus_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(required, string) The status message to set.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile that is being updated. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetStatus Choreo.
 */
@implementation TMBFacebook_Publishing_SetStatus_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Updates a user's Facebook status.
 */
@implementation TMBFacebook_Publishing_SetStatus

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Publishing_SetStatus Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Publishing/SetStatus"] autorelease];
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
		TMBFacebook_Publishing_SetStatus_ResultSet *results = [[[TMBFacebook_Publishing_SetStatus_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SetStatus Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Publishing_SetStatus_Inputs*)newInputSet {
		return [[[TMBFacebook_Publishing_SetStatus_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRun Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_DeleteRun_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRun Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_DeleteRun_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given run action.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_DeleteRun

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Runs_DeleteRun Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Runs/DeleteRun"] autorelease];
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
		TMBFacebook_Actions_Fitness_Runs_DeleteRun_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Runs_DeleteRun_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRun Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Runs_DeleteRun_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Runs_DeleteRun_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateWantsToWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the AiringEndTime input for this Choreo.
	*(optional, date) The time that the airing ends.
	 */
	-(void)setAiringEndTime:(NSString*)AiringEndTime {
		[super setInput:@"AiringEndTime" toValue:AiringEndTime];
	}

	/*!
	 * Set the value of the AiringID input for this Choreo.
	*(optional, string) The id of the video airing.
	 */
	-(void)setAiringID:(NSString*)AiringID {
		[super setInput:@"AiringID" toValue:AiringID];
	}

	/*!
	 * Set the value of the AiringStartTime input for this Choreo.
	*(optional, date) The time that the airing begins.
	 */
	-(void)setAiringStartTime:(NSString*)AiringStartTime {
		[super setInput:@"AiringStartTime" toValue:AiringStartTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the Episode input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing an episode of a show.
	 */
	-(void)setEpisode:(NSString*)Episode {
		[super setInput:@"Episode" toValue:Episode];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Movie input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing a movie.
	 */
	-(void)setMovie:(NSString*)Movie {
		[super setInput:@"Movie" toValue:Movie];
	}

	/*!
	 * Set the value of the Other input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing any general video content.
	 */
	-(void)setOther:(NSString*)Other {
		[super setInput:@"Other" toValue:Other];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the TVShow input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing a TV show.
	 */
	-(void)setTVShow:(NSString*)TVShow {
		[super setInput:@"TVShow" toValue:TVShow];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateWantsToWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing wants_to_watch action.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/WantsToWatch/UpdateWantsToWatch"] autorelease];
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
		TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch_ResultSet *results = [[[TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateWantsToWatch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_WantsToWatch_UpdateWantsToWatch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadWantsToReads Choreo.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all wants_to_read actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadWantsToReads Choreo.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more wants_to_read actions.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/WantsToRead/ReadWantsToReads"] autorelease];
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
		TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads_ResultSet *results = [[[TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadWantsToReads Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_WantsToRead_ReadWantsToReads_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the NewsFeed Choreo.
 */
@implementation TMBFacebook_Reading_NewsFeed_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve a feed for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NewsFeed Choreo.
 */
@implementation TMBFacebook_Reading_NewsFeed_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves the current news feed associated with a specified user.
 */
@implementation TMBFacebook_Reading_NewsFeed

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_NewsFeed Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/NewsFeed"] autorelease];
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
		TMBFacebook_Reading_NewsFeed_ResultSet *results = [[[TMBFacebook_Reading_NewsFeed_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the NewsFeed Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_NewsFeed_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_NewsFeed_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MultiQuery Choreo.
 */
@implementation TMBFacebook_Searching_MultiQuery_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Queries input for this Choreo.
	*(required, json) A JSON dictionary containing multiple queries to execute. See documentation for formatting examples.
	 */
	-(void)setQueries:(NSString*)Queries {
		[super setInput:@"Queries" toValue:Queries];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MultiQuery Choreo.
 */
@implementation TMBFacebook_Searching_MultiQuery_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to submit multiple FQL statements and retrieve all the results you need in one request.
 */
@implementation TMBFacebook_Searching_MultiQuery

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Searching_MultiQuery Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Searching/MultiQuery"] autorelease];
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
		TMBFacebook_Searching_MultiQuery_ResultSet *results = [[[TMBFacebook_Searching_MultiQuery_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MultiQuery Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Searching_MultiQuery_Inputs*)newInputSet {
		return [[[TMBFacebook_Searching_MultiQuery_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteQuote Choreo.
 */
@implementation TMBFacebook_Actions_Books_Quotes_DeleteQuote_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteQuote Choreo.
 */
@implementation TMBFacebook_Actions_Books_Quotes_DeleteQuote_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given quote action.
 */
@implementation TMBFacebook_Actions_Books_Quotes_DeleteQuote

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Quotes_DeleteQuote Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Quotes/DeleteQuote"] autorelease];
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
		TMBFacebook_Actions_Books_Quotes_DeleteQuote_ResultSet *results = [[[TMBFacebook_Actions_Books_Quotes_DeleteQuote_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteQuote Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Quotes_DeleteQuote_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Quotes_DeleteQuote_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBFacebook_OAuth_InitializeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(required, string) The App ID provided by Facebook (AKA the Client ID).
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
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

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) A comma-separated list of permissions to request access for (i.e. user_birthday,read_stream). For more information see documentation.
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBFacebook_OAuth_InitializeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AuthorizationURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The authorization URL to send your user to in order for them to grant access to your application.
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
@implementation TMBFacebook_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/OAuth/InitializeOAuth"] autorelease];
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
		TMBFacebook_OAuth_InitializeOAuth_ResultSet *results = [[[TMBFacebook_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBFacebook_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadFollows Choreo.
 */
@implementation TMBFacebook_Actions_General_Follows_ReadFollows_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all follow actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadFollows Choreo.
 */
@implementation TMBFacebook_Actions_General_Follows_ReadFollows_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more follow actions.
 */
@implementation TMBFacebook_Actions_General_Follows_ReadFollows

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Follows_ReadFollows Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Follows/ReadFollows"] autorelease];
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
		TMBFacebook_Actions_General_Follows_ReadFollows_ResultSet *results = [[[TMBFacebook_Actions_General_Follows_ReadFollows_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadFollows Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Follows_ReadFollows_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Follows_ReadFollows_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Friends Choreo.
 */
@implementation TMBFacebook_Reading_Friends_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final OAuth step.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve a friends list for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Friends Choreo.
 */
@implementation TMBFacebook_Reading_Friends_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of names and profile IDs for Facebook friends associated with a specified user.
 */
@implementation TMBFacebook_Reading_Friends

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Friends Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Friends"] autorelease];
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
		TMBFacebook_Reading_Friends_ResultSet *results = [[[TMBFacebook_Reading_Friends_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Friends Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Friends_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Friends_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetObject Choreo.
 */
@implementation TMBFacebook_Reading_GetObject_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The id of a graph api object to retrieve.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetObject Choreo.
 */
@implementation TMBFacebook_Reading_GetObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves retrieves the details for a Graph API object that you specify.
 */
@implementation TMBFacebook_Reading_GetObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_GetObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/GetObject"] autorelease];
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
		TMBFacebook_Reading_GetObject_ResultSet *results = [[[TMBFacebook_Reading_GetObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_GetObject_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_GetObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateReading Choreo.
 */
@implementation TMBFacebook_Actions_News_Reads_UpdateReading_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Article input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the article.
	 */
	-(void)setArticle:(NSString*)Article {
		[super setInput:@"Article" toValue:Article];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateReading Choreo.
 */
@implementation TMBFacebook_Actions_News_Reads_UpdateReading_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing news reading action.
 */
@implementation TMBFacebook_Actions_News_Reads_UpdateReading

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_News_Reads_UpdateReading Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/News/Reads/UpdateReading"] autorelease];
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
		TMBFacebook_Actions_News_Reads_UpdateReading_ResultSet *results = [[[TMBFacebook_Actions_News_Reads_UpdateReading_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateReading Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_News_Reads_UpdateReading_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_News_Reads_UpdateReading_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateAction Choreo.
 */
@implementation TMBFacebook_Actions_Custom_CreateAction_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionType input for this Choreo.
	*(required, string) The type of action that a user is performing in your app (e.g. runs, walks, bikes).
	 */
	-(void)setActionType:(NSString*)ActionType {
		[super setInput:@"ActionType" toValue:ActionType];
	}

	/*!
	 * Set the value of the AppNamespace input for this Choreo.
	*(required, string) The namespace that you chose for you app. This can be found in the Settings section of your App page.
	 */
	-(void)setAppNamespace:(NSString*)AppNamespace {
		[super setInput:@"AppNamespace" toValue:AppNamespace];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the PropertyName input for this Choreo.
	*(required, string) The name of a property that you've defined for this Open Graph story. This will be an object type (e.g. album, song, book). Multiple property names can be separated by commas.
	 */
	-(void)setPropertyName:(NSString*)PropertyName {
		[super setInput:@"PropertyName" toValue:PropertyName];
	}

	/*!
	 * Set the value of the PropertyValue input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object representing the object specified as the PropertyName. Multiple property values can be separated by commas.
	 */
	-(void)setPropertyValue:(NSString*)PropertyValue {
		[super setInput:@"PropertyValue" toValue:PropertyValue];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAction Choreo.
 */
@implementation TMBFacebook_Actions_Custom_CreateAction_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an Open Graph action that represents a user performing the specified action while using your app.
 */
@implementation TMBFacebook_Actions_Custom_CreateAction

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Custom_CreateAction Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Custom/CreateAction"] autorelease];
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
		TMBFacebook_Actions_Custom_CreateAction_ResultSet *results = [[[TMBFacebook_Actions_Custom_CreateAction_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAction Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Custom_CreateAction_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Custom_CreateAction_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateEvent Choreo.
 */
@implementation TMBFacebook_Publishing_CreateEvent_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The end time of the event formatted as a ISO-8601 string (i.e 2012-07-04 or 2012-07-04T19:00:00-0700).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the event.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile that the event will be created for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(required, date) The start time of the event formatted as a ISO-8601 string (i.e 2012-07-04 or 2012-07-04T19:00:00-0700).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEvent Choreo.
 */
@implementation TMBFacebook_Publishing_CreateEvent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates an event.
 */
@implementation TMBFacebook_Publishing_CreateEvent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Publishing_CreateEvent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Publishing/CreateEvent"] autorelease];
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
		TMBFacebook_Publishing_CreateEvent_ResultSet *results = [[[TMBFacebook_Publishing_CreateEvent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateEvent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Publishing_CreateEvent_Inputs*)newInputSet {
		return [[[TMBFacebook_Publishing_CreateEvent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRating Choreo.
 */
@implementation TMBFacebook_Actions_Books_Rates_DeleteRating_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRating Choreo.
 */
@implementation TMBFacebook_Actions_Books_Rates_DeleteRating_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given book rating action.
 */
@implementation TMBFacebook_Actions_Books_Rates_DeleteRating

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Rates_DeleteRating Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Rates/DeleteRating"] autorelease];
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
		TMBFacebook_Actions_Books_Rates_DeleteRating_ResultSet *results = [[[TMBFacebook_Actions_Books_Rates_DeleteRating_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRating Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Rates_DeleteRating_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Rates_DeleteRating_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateRating Choreo.
 */
@implementation TMBFacebook_Actions_Books_Rates_CreateRating_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Book input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object representing the book.
	 */
	-(void)setBook:(NSString*)Book {
		[super setInput:@"Book" toValue:Book];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the RatingNormalizedValue input for this Choreo.
	*(required, decimal) The rating expressed as a decimal value between 0 and 1.0.
	 */
	-(void)setRatingNormalizedValue:(NSString*)RatingNormalizedValue {
		[super setInput:@"RatingNormalizedValue" toValue:RatingNormalizedValue];
	}

	/*!
	 * Set the value of the RatingScale input for this Choreo.
	*(required, integer) The highest possible value in the rating scale.
	 */
	-(void)setRatingScale:(NSString*)RatingScale {
		[super setInput:@"RatingScale" toValue:RatingScale];
	}

	/*!
	 * Set the value of the RatingValue input for this Choreo.
	*(required, decimal) The value of the book rating.
	 */
	-(void)setRatingValue:(NSString*)RatingValue {
		[super setInput:@"RatingValue" toValue:RatingValue];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ReviewText input for this Choreo.
	*(conditional, string) The text content of the book review.
	 */
	-(void)setReviewText:(NSString*)ReviewText {
		[super setInput:@"ReviewText" toValue:ReviewText];
	}

	/*!
	 * Set the value of the Review input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing a book review.
	 */
	-(void)setReview:(NSString*)Review {
		[super setInput:@"Review" toValue:Review];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRating Choreo.
 */
@implementation TMBFacebook_Actions_Books_Rates_CreateRating_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user giving a book a rating.
 */
@implementation TMBFacebook_Actions_Books_Rates_CreateRating

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Rates_CreateRating Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Rates/CreateRating"] autorelease];
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
		TMBFacebook_Actions_Books_Rates_CreateRating_ResultSet *results = [[[TMBFacebook_Actions_Books_Rates_CreateRating_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateRating Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Rates_CreateRating_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Rates_CreateRating_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateCheckin Choreo.
 */
@implementation TMBFacebook_Publishing_CreateCheckin_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(optional, decimal) Deprecated (retained for backward compatibility only).
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(optional, decimal) Deprecated (retained for backward compatibility only).
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message to include with the Checkin.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the PlaceID input for this Choreo.
	*(conditional, string) The ID of the place associated with your Checkin.
	 */
	-(void)setPlaceID:(NSString*)PlaceID {
		[super setInput:@"PlaceID" toValue:PlaceID];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to create a checkin for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCheckin Choreo.
 */
@implementation TMBFacebook_Publishing_CreateCheckin_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a checkin at a location represented by a Page.
 */
@implementation TMBFacebook_Publishing_CreateCheckin

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Publishing_CreateCheckin Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Publishing/CreateCheckin"] autorelease];
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
		TMBFacebook_Publishing_CreateCheckin_ResultSet *results = [[[TMBFacebook_Publishing_CreateCheckin_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateCheckin Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Publishing_CreateCheckin_Inputs*)newInputSet {
		return [[[TMBFacebook_Publishing_CreateCheckin_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadReadings Choreo.
 */
@implementation TMBFacebook_Actions_Books_Reads_ReadReadings_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all reading actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadReadings Choreo.
 */
@implementation TMBFacebook_Actions_Books_Reads_ReadReadings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more book reading actions.
 */
@implementation TMBFacebook_Actions_Books_Reads_ReadReadings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Reads_ReadReadings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Reads/ReadReadings"] autorelease];
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
		TMBFacebook_Actions_Books_Reads_ReadReadings_ResultSet *results = [[[TMBFacebook_Actions_Books_Reads_ReadReadings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadReadings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Reads_ReadReadings_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Reads_ReadReadings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadWalks Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_ReadWalks_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all walk actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadWalks Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_ReadWalks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more walk actions.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_ReadWalks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Walks_ReadWalks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Walks/ReadWalks"] autorelease];
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
		TMBFacebook_Actions_Fitness_Walks_ReadWalks_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Walks_ReadWalks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadWalks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Walks_ReadWalks_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Walks_ReadWalks_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateRun Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_UpdateRun_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Course input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the course.
	 */
	-(void)setCourse:(NSString*)Course {
		[super setInput:@"Course" toValue:Course];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateRun Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_UpdateRun_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing run action.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_UpdateRun

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Runs_UpdateRun Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Runs/UpdateRun"] autorelease];
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
		TMBFacebook_Actions_Fitness_Runs_UpdateRun_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Runs_UpdateRun_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateRun Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Runs_UpdateRun_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Runs_UpdateRun_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateWalk Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_UpdateWalk_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Course input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the course.
	 */
	-(void)setCourse:(NSString*)Course {
		[super setInput:@"Course" toValue:Course];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateWalk Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_UpdateWalk_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing walk action.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_UpdateWalk

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Walks_UpdateWalk Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Walks/UpdateWalk"] autorelease];
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
		TMBFacebook_Actions_Fitness_Walks_UpdateWalk_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Walks_UpdateWalk_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateWalk Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Walks_UpdateWalk_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Walks_UpdateWalk_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadPlaylist Choreo.
 */
@implementation TMBFacebook_Actions_Music_Playlists_ReadPlaylist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all playlist actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadPlaylist Choreo.
 */
@implementation TMBFacebook_Actions_Music_Playlists_ReadPlaylist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more playlist actions.
 */
@implementation TMBFacebook_Actions_Music_Playlists_ReadPlaylist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Music_Playlists_ReadPlaylist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Music/Playlists/ReadPlaylist"] autorelease];
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
		TMBFacebook_Actions_Music_Playlists_ReadPlaylist_ResultSet *results = [[[TMBFacebook_Actions_Music_Playlists_ReadPlaylist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadPlaylist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Music_Playlists_ReadPlaylist_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Music_Playlists_ReadPlaylist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FriendRequests Choreo.
 */
@implementation TMBFacebook_Reading_FriendRequests_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limt input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimt:(NSString*)Limt {
		[super setInput:@"Limt" toValue:Limt];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve friend requests for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FriendRequests Choreo.
 */
@implementation TMBFacebook_Reading_FriendRequests_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}




	
@end

/*!
 * Retrieves a list of friend requests for a specified user.
 */
@implementation TMBFacebook_Reading_FriendRequests

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_FriendRequests Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/FriendRequests"] autorelease];
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
		TMBFacebook_Reading_FriendRequests_ResultSet *results = [[[TMBFacebook_Reading_FriendRequests_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FriendRequests Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_FriendRequests_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_FriendRequests_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeletePublication Choreo.
 */
@implementation TMBFacebook_Actions_News_Publishes_DeletePublication_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePublication Choreo.
 */
@implementation TMBFacebook_Actions_News_Publishes_DeletePublication_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given news publishing action.
 */
@implementation TMBFacebook_Actions_News_Publishes_DeletePublication

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_News_Publishes_DeletePublication Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/News/Publishes/DeletePublication"] autorelease];
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
		TMBFacebook_Actions_News_Publishes_DeletePublication_ResultSet *results = [[[TMBFacebook_Actions_News_Publishes_DeletePublication_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeletePublication Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_News_Publishes_DeletePublication_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_News_Publishes_DeletePublication_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateLike Choreo.
 */
@implementation TMBFacebook_Actions_General_Likes_UpdateLike_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Object input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object  that was liked.
	 */
	-(void)setObject:(NSString*)Object {
		[super setInput:@"Object" toValue:Object];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateLike Choreo.
 */
@implementation TMBFacebook_Actions_General_Likes_UpdateLike_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user liking an object.
 */
@implementation TMBFacebook_Actions_General_Likes_UpdateLike

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Likes_UpdateLike Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Likes/UpdateLike"] autorelease];
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
		TMBFacebook_Actions_General_Likes_UpdateLike_ResultSet *results = [[[TMBFacebook_Actions_General_Likes_UpdateLike_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateLike Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Likes_UpdateLike_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Likes_UpdateLike_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PublishLink Choreo.
 */
@implementation TMBFacebook_Publishing_PublishLink_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Caption input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setCaption:(NSString*)Caption {
		[super setInput:@"Caption" toValue:Caption];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(required, string) The link to publish.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message about the link.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Picture input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setPicture:(NSString*)Picture {
		[super setInput:@"Picture" toValue:Picture];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile that the link will be published to. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PublishLink Choreo.
 */
@implementation TMBFacebook_Publishing_PublishLink_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Publishes a link on a given profile.
 */
@implementation TMBFacebook_Publishing_PublishLink

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Publishing_PublishLink Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Publishing/PublishLink"] autorelease];
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
		TMBFacebook_Publishing_PublishLink_ResultSet *results = [[[TMBFacebook_Publishing_PublishLink_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PublishLink Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Publishing_PublishLink_Inputs*)newInputSet {
		return [[[TMBFacebook_Publishing_PublishLink_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Post Choreo.
 */
@implementation TMBFacebook_Publishing_Post_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Caption input for this Choreo.
	*(optional, string) Caption of the post.   (can only be used if link is specified)
	 */
	-(void)setCaption:(NSString*)Caption {
		[super setInput:@"Caption" toValue:Caption];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) Description of the post.   (can only be used if link is specified)
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(conditional, string) Link to Post.  Supply either a message or a link
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(required, string) The message to Post.  Supply either a message or a link.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(optional, string) Name of the post.  (can only be used if link is specified)
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Picture input for this Choreo.
	*(optional, string) Post thumbnail image (can only be used if link is specified)
	 */
	-(void)setPicture:(NSString*)Picture {
		[super setInput:@"Picture" toValue:Picture];
	}

	/*!
	 * Set the value of the PlaceID input for this Choreo.
	*(optional, string) Facebook Page ID of the location associated with this Post.
	 */
	-(void)setPlaceID:(NSString*)PlaceID {
		[super setInput:@"PlaceID" toValue:PlaceID];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile that is being updated. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated list of Facebook IDs of people tagged in this Post. NOTE: You cannot specify this field without also specifying a place.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Post Choreo.
 */
@implementation TMBFacebook_Publishing_Post_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Adds an entry to a user's profile feed.
 */
@implementation TMBFacebook_Publishing_Post

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Publishing_Post Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Publishing/Post"] autorelease];
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
		TMBFacebook_Publishing_Post_ResultSet *results = [[[TMBFacebook_Publishing_Post_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Post Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Publishing_Post_Inputs*)newInputSet {
		return [[[TMBFacebook_Publishing_Post_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWalk Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_DeleteWalk_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWalk Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_DeleteWalk_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given walk action.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_DeleteWalk

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Walks_DeleteWalk Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Walks/DeleteWalk"] autorelease];
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
		TMBFacebook_Actions_Fitness_Walks_DeleteWalk_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Walks_DeleteWalk_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteWalk Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Walks_DeleteWalk_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Walks_DeleteWalk_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_Watches_DeleteWatch_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_Watches_DeleteWatch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given watch action.
 */
@implementation TMBFacebook_Actions_Video_Watches_DeleteWatch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_Watches_DeleteWatch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/Watches/DeleteWatch"] autorelease];
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
		TMBFacebook_Actions_Video_Watches_DeleteWatch_ResultSet *results = [[[TMBFacebook_Actions_Video_Watches_DeleteWatch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteWatch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_Watches_DeleteWatch_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_Watches_DeleteWatch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateBike Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_CreateBike_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Course input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object representing the course.
	 */
	-(void)setCourse:(NSString*)Course {
		[super setInput:@"Course" toValue:Course];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateBike Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_CreateBike_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user cycling a course.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_CreateBike

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Bikes_CreateBike Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Bikes/CreateBike"] autorelease];
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
		TMBFacebook_Actions_Fitness_Bikes_CreateBike_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Bikes_CreateBike_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateBike Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Bikes_CreateBike_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Bikes_CreateBike_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadListens Choreo.
 */
@implementation TMBFacebook_Actions_Music_Listens_ReadListens_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all listen actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadListens Choreo.
 */
@implementation TMBFacebook_Actions_Music_Listens_ReadListens_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more listen actions.
 */
@implementation TMBFacebook_Actions_Music_Listens_ReadListens

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Music_Listens_ReadListens Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Music/Listens/ReadListens"] autorelease];
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
		TMBFacebook_Actions_Music_Listens_ReadListens_ResultSet *results = [[[TMBFacebook_Actions_Music_Listens_ReadListens_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadListens Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Music_Listens_ReadListens_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Music_Listens_ReadListens_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateLike Choreo.
 */
@implementation TMBFacebook_Actions_General_Likes_CreateLike_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milleseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Object input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object to be liked.
	 */
	-(void)setObject:(NSString*)Object {
		[super setInput:@"Object" toValue:Object];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The Facebook Page ID of the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve fitness actions for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateLike Choreo.
 */
@implementation TMBFacebook_Actions_General_Likes_CreateLike_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action representing someone liking an object.
 */
@implementation TMBFacebook_Actions_General_Likes_CreateLike

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Likes_CreateLike Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Likes/CreateLike"] autorelease];
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
		TMBFacebook_Actions_General_Likes_CreateLike_ResultSet *results = [[[TMBFacebook_Actions_General_Likes_CreateLike_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateLike Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Likes_CreateLike_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Likes_CreateLike_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Movies Choreo.
 */
@implementation TMBFacebook_Reading_Movies_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve movies for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Movies Choreo.
 */
@implementation TMBFacebook_Reading_Movies_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves movies associated with a specified user.
 */
@implementation TMBFacebook_Reading_Movies

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Movies Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Movies"] autorelease];
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
		TMBFacebook_Reading_Movies_ResultSet *results = [[[TMBFacebook_Reading_Movies_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Movies Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Movies_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Movies_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadRuns Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_ReadRuns_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all run actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadRuns Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_ReadRuns_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more run actions.
 */
@implementation TMBFacebook_Actions_Fitness_Runs_ReadRuns

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Runs_ReadRuns Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Runs/ReadRuns"] autorelease];
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
		TMBFacebook_Actions_Fitness_Runs_ReadRuns_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Runs_ReadRuns_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadRuns Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Runs_ReadRuns_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Runs_ReadRuns_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PhotoTags Choreo.
 */
@implementation TMBFacebook_Reading_PhotoTags_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve photo tags for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PhotoTags Choreo.
 */
@implementation TMBFacebook_Reading_PhotoTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of photos associated with a specified user.
 */
@implementation TMBFacebook_Reading_PhotoTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_PhotoTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/PhotoTags"] autorelease];
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
		TMBFacebook_Reading_PhotoTags_ResultSet *results = [[[TMBFacebook_Reading_PhotoTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PhotoTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_PhotoTags_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_PhotoTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateWalk Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_CreateWalk_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Course input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object representing the course.
	 */
	-(void)setCourse:(NSString*)Course {
		[super setInput:@"Course" toValue:Course];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateWalk Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_CreateWalk_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user walking a course.
 */
@implementation TMBFacebook_Actions_Fitness_Walks_CreateWalk

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Walks_CreateWalk Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Walks/CreateWalk"] autorelease];
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
		TMBFacebook_Actions_Fitness_Walks_CreateWalk_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Walks_CreateWalk_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateWalk Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Walks_CreateWalk_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Walks_CreateWalk_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateListen Choreo.
 */
@implementation TMBFacebook_Actions_Music_Listens_CreateListen_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Album input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing  representing an album.
	 */
	-(void)setAlbum:(NSString*)Album {
		[super setInput:@"Album" toValue:Album];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Musician input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing representing a musician.
	 */
	-(void)setMusician:(NSString*)Musician {
		[super setInput:@"Musician" toValue:Musician];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Paused input for this Choreo.
	*(optional, boolean) Whether the audio is paused or not
	 */
	-(void)setPaused:(NSString*)Paused {
		[super setInput:@"Paused" toValue:Paused];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Playlist input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing representing a playlist.
	 */
	-(void)setPlaylist:(NSString*)Playlist {
		[super setInput:@"Playlist" toValue:Playlist];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the RadioStation input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing  representing a radio station
	 */
	-(void)setRadioStation:(NSString*)RadioStation {
		[super setInput:@"RadioStation" toValue:RadioStation];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Song input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing  representing a song.
	 */
	-(void)setSong:(NSString*)Song {
		[super setInput:@"Song" toValue:Song];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the ViaUser input for this Choreo.
	*(optional, integer) The ID of anyone whom the user discovered this audio from
	 */
	-(void)setViaUser:(NSString*)ViaUser {
		[super setInput:@"ViaUser" toValue:ViaUser];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateListen Choreo.
 */
@implementation TMBFacebook_Actions_Music_Listens_CreateListen_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user listening to music.
 */
@implementation TMBFacebook_Actions_Music_Listens_CreateListen

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Music_Listens_CreateListen Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Music/Listens/CreateListen"] autorelease];
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
		TMBFacebook_Actions_Music_Listens_CreateListen_ResultSet *results = [[[TMBFacebook_Actions_Music_Listens_CreateListen_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateListen Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Music_Listens_CreateListen_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Music_Listens_CreateListen_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Picture Choreo.
 */
@implementation TMBFacebook_Reading_Picture_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(required, string) The id of the profile to retrieve a profile picture for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ReturnSSLResources input for this Choreo.
	*(optional, boolean) Set to 1 to return the picture over a secure connection. Defaults to 0.
	 */
	-(void)setReturnSSLResources:(NSString*)ReturnSSLResources {
		[super setInput:@"ReturnSSLResources" toValue:ReturnSSLResources];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The size of the image to retrieve. Valid values: square (50x50), small (50 pixels wide, variable height), normal (100 pixels wide, variable height), and large (about 200 pixels wide, variable height)
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Picture Choreo.
 */
@implementation TMBFacebook_Reading_Picture_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) Contains the Base64 encoded value of the image retrieved from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the current profile photo for any object in the Facebook graph, and returns the image as a Base64 encoded string.
 */
@implementation TMBFacebook_Reading_Picture

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Picture Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Picture"] autorelease];
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
		TMBFacebook_Reading_Picture_ResultSet *results = [[[TMBFacebook_Reading_Picture_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Picture Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Picture_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Picture_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadPosts Choreo.
 */
@implementation TMBFacebook_Actions_General_Posts_ReadPosts_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all post actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadPosts Choreo.
 */
@implementation TMBFacebook_Actions_General_Posts_ReadPosts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more post actions.
 */
@implementation TMBFacebook_Actions_General_Posts_ReadPosts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Posts_ReadPosts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Posts/ReadPosts"] autorelease];
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
		TMBFacebook_Actions_General_Posts_ReadPosts_ResultSet *results = [[[TMBFacebook_Actions_General_Posts_ReadPosts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadPosts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Posts_ReadPosts_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Posts_ReadPosts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_Watches_CreateWatch_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the Episode input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing an episode of a show.
	 */
	-(void)setEpisode:(NSString*)Episode {
		[super setInput:@"Episode" toValue:Episode];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Movie input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing a movie.
	 */
	-(void)setMovie:(NSString*)Movie {
		[super setInput:@"Movie" toValue:Movie];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the TVShow input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing a TV show.
	 */
	-(void)setTVShow:(NSString*)TVShow {
		[super setInput:@"TVShow" toValue:TVShow];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Video input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing any general video content.
	 */
	-(void)setVideo:(NSString*)Video {
		[super setInput:@"Video" toValue:Video];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_Watches_CreateWatch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user watching video content.
 */
@implementation TMBFacebook_Actions_Video_Watches_CreateWatch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_Watches_CreateWatch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/Watches/CreateWatch"] autorelease];
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
		TMBFacebook_Actions_Video_Watches_CreateWatch_ResultSet *results = [[[TMBFacebook_Actions_Video_Watches_CreateWatch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateWatch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_Watches_CreateWatch_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_Watches_CreateWatch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWantsToRead Choreo.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWantsToRead Choreo.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given wants_to_read action.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/WantsToRead/DeleteWantsToRead"] autorelease];
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
		TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead_ResultSet *results = [[[TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteWantsToRead Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_WantsToRead_DeleteWantsToRead_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VideoUploads Choreo.
 */
@implementation TMBFacebook_Reading_VideoUploads_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve a list of video uploads for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VideoUploads Choreo.
 */
@implementation TMBFacebook_Reading_VideoUploads_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of uploaded videos associated with a specified user.
 */
@implementation TMBFacebook_Reading_VideoUploads

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_VideoUploads Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/VideoUploads"] autorelease];
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
		TMBFacebook_Reading_VideoUploads_ResultSet *results = [[[TMBFacebook_Reading_VideoUploads_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VideoUploads Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_VideoUploads_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_VideoUploads_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the User Choreo.
 */
@implementation TMBFacebook_Reading_User_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the User Choreo.
 */
@implementation TMBFacebook_Reading_User_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves information about the specified user.
 */
@implementation TMBFacebook_Reading_User

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_User Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/User"] autorelease];
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
		TMBFacebook_Reading_User_ResultSet *results = [[[TMBFacebook_Reading_User_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the User Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_User_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_User_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RSVPEvent Choreo.
 */
@implementation TMBFacebook_Publishing_RSVPEvent_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EventID input for this Choreo.
	*(required, string) The id for the event  to rsvp for.
	 */
	-(void)setEventID:(NSString*)EventID {
		[super setInput:@"EventID" toValue:EventID];
	}

	/*!
	 * Set the value of the RSVP input for this Choreo.
	*(required, string) The RSVP for the event. Valid values are: attending, maybe, or declined.
	 */
	-(void)setRSVP:(NSString*)RSVP {
		[super setInput:@"RSVP" toValue:RSVP];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RSVPEvent Choreo.
 */
@implementation TMBFacebook_Publishing_RSVPEvent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * RSVP to an event as "attending", "maybe", or "declined".
 */
@implementation TMBFacebook_Publishing_RSVPEvent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Publishing_RSVPEvent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Publishing/RSVPEvent"] autorelease];
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
		TMBFacebook_Publishing_RSVPEvent_ResultSet *results = [[[TMBFacebook_Publishing_RSVPEvent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RSVPEvent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Publishing_RSVPEvent_Inputs*)newInputSet {
		return [[[TMBFacebook_Publishing_RSVPEvent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FQL Choreo.
 */
@implementation TMBFacebook_Searching_FQL_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Conditions input for this Choreo.
	*(required, string) The conditions to use in the WHERE clause of the FQL statement.
	 */
	-(void)setConditions:(NSString*)Conditions {
		[super setInput:@"Conditions" toValue:Conditions];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(required, string) The fields to return in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Table input for this Choreo.
	*(required, string) The table to select records from.
	 */
	-(void)setTable:(NSString*)Table {
		[super setInput:@"Table" toValue:Table];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FQL Choreo.
 */
@implementation TMBFacebook_Searching_FQL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to use a SQL-style syntax to query data in the Graph API.
 */
@implementation TMBFacebook_Searching_FQL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Searching_FQL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Searching/FQL"] autorelease];
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
		TMBFacebook_Searching_FQL_ResultSet *results = [[[TMBFacebook_Searching_FQL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FQL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Searching_FQL_Inputs*)newInputSet {
		return [[[TMBFacebook_Searching_FQL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteComment Choreo.
 */
@implementation TMBFacebook_Deleting_DeleteComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The id of the comment to delete
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteComment Choreo.
 */
@implementation TMBFacebook_Deleting_DeleteComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified comment.
 */
@implementation TMBFacebook_Deleting_DeleteComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Deleting_DeleteComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Deleting/DeleteComment"] autorelease];
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
		TMBFacebook_Deleting_DeleteComment_ResultSet *results = [[[TMBFacebook_Deleting_DeleteComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Deleting_DeleteComment_Inputs*)newInputSet {
		return [[[TMBFacebook_Deleting_DeleteComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateListen Choreo.
 */
@implementation TMBFacebook_Actions_Music_Listens_UpdateListen_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Album input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing  representing an album.
	 */
	-(void)setAlbum:(NSString*)Album {
		[super setInput:@"Album" toValue:Album];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Musician input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing representing a musician.
	 */
	-(void)setMusician:(NSString*)Musician {
		[super setInput:@"Musician" toValue:Musician];
	}

	/*!
	 * Set the value of the Paused input for this Choreo.
	*(optional, boolean) Whether the audio is paused or not
	 */
	-(void)setPaused:(NSString*)Paused {
		[super setInput:@"Paused" toValue:Paused];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Playlist input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing representing a playlist.
	 */
	-(void)setPlaylist:(NSString*)Playlist {
		[super setInput:@"Playlist" toValue:Playlist];
	}

	/*!
	 * Set the value of the RadioStation input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing  representing a radio station.
	 */
	-(void)setRadioStation:(NSString*)RadioStation {
		[super setInput:@"RadioStation" toValue:RadioStation];
	}

	/*!
	 * Set the value of the Song input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing  representing a song.
	 */
	-(void)setSong:(NSString*)Song {
		[super setInput:@"Song" toValue:Song];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the ViaUser input for this Choreo.
	*(optional, integer) The ID of anyone whom the user discovered this audio from
	 */
	-(void)setViaUser:(NSString*)ViaUser {
		[super setInput:@"ViaUser" toValue:ViaUser];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateListen Choreo.
 */
@implementation TMBFacebook_Actions_Music_Listens_UpdateListen_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates and existing listen action.
 */
@implementation TMBFacebook_Actions_Music_Listens_UpdateListen

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Music_Listens_UpdateListen Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Music/Listens/UpdateListen"] autorelease];
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
		TMBFacebook_Actions_Music_Listens_UpdateListen_ResultSet *results = [[[TMBFacebook_Actions_Music_Listens_UpdateListen_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateListen Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Music_Listens_UpdateListen_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Music_Listens_UpdateListen_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadRatings Choreo.
 */
@implementation TMBFacebook_Actions_Video_Rates_ReadRatings_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all video rate actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadRatings Choreo.
 */
@implementation TMBFacebook_Actions_Video_Rates_ReadRatings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more video rating actions.
 */
@implementation TMBFacebook_Actions_Video_Rates_ReadRatings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_Rates_ReadRatings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/Rates/ReadRatings"] autorelease];
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
		TMBFacebook_Actions_Video_Rates_ReadRatings_ResultSet *results = [[[TMBFacebook_Actions_Video_Rates_ReadRatings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadRatings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_Rates_ReadRatings_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_Rates_ReadRatings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Outbox Choreo.
 */
@implementation TMBFacebook_Reading_Outbox_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve outgoing messages for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Outbox Choreo.
 */
@implementation TMBFacebook_Reading_Outbox_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of messages in a specified user's outbox.
 */
@implementation TMBFacebook_Reading_Outbox

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Outbox Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Outbox"] autorelease];
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
		TMBFacebook_Reading_Outbox_ResultSet *results = [[[TMBFacebook_Reading_Outbox_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Outbox Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Outbox_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Outbox_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadRatings Choreo.
 */
@implementation TMBFacebook_Actions_Books_Rates_ReadRatings_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all rate actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadRatings Choreo.
 */
@implementation TMBFacebook_Actions_Books_Rates_ReadRatings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more book rating actions.
 */
@implementation TMBFacebook_Actions_Books_Rates_ReadRatings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Rates_ReadRatings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Rates/ReadRatings"] autorelease];
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
		TMBFacebook_Actions_Books_Rates_ReadRatings_ResultSet *results = [[[TMBFacebook_Actions_Books_Rates_ReadRatings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadRatings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Rates_ReadRatings_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Rates_ReadRatings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateRating Choreo.
 */
@implementation TMBFacebook_Actions_Books_Rates_UpdateRating_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Book input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the book.
	 */
	-(void)setBook:(NSString*)Book {
		[super setInput:@"Book" toValue:Book];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the RatingNormalizedValue input for this Choreo.
	*(optional, decimal) The rating expressed as a decimal value between 0 and 1.0.
	 */
	-(void)setRatingNormalizedValue:(NSString*)RatingNormalizedValue {
		[super setInput:@"RatingNormalizedValue" toValue:RatingNormalizedValue];
	}

	/*!
	 * Set the value of the RatingScale input for this Choreo.
	*(optional, integer) The highest possible value in the rating scale.
	 */
	-(void)setRatingScale:(NSString*)RatingScale {
		[super setInput:@"RatingScale" toValue:RatingScale];
	}

	/*!
	 * Set the value of the RatingValue input for this Choreo.
	*(optional, decimal) The value of the book rating.
	 */
	-(void)setRatingValue:(NSString*)RatingValue {
		[super setInput:@"RatingValue" toValue:RatingValue];
	}

	/*!
	 * Set the value of the ReviewText input for this Choreo.
	*(optional, string) The text content of the book review.
	 */
	-(void)setReviewText:(NSString*)ReviewText {
		[super setInput:@"ReviewText" toValue:ReviewText];
	}

	/*!
	 * Set the value of the Review input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing a book review.
	 */
	-(void)setReview:(NSString*)Review {
		[super setInput:@"Review" toValue:Review];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateRating Choreo.
 */
@implementation TMBFacebook_Actions_Books_Rates_UpdateRating_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing book rating action.
 */
@implementation TMBFacebook_Actions_Books_Rates_UpdateRating

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Rates_UpdateRating Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Rates/UpdateRating"] autorelease];
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
		TMBFacebook_Actions_Books_Rates_UpdateRating_ResultSet *results = [[[TMBFacebook_Actions_Books_Rates_UpdateRating_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateRating Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Rates_UpdateRating_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Rates_UpdateRating_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePost Choreo.
 */
@implementation TMBFacebook_Actions_General_Posts_UpdatePost_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Object input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object that was posted.
	 */
	-(void)setObject:(NSString*)Object {
		[super setInput:@"Object" toValue:Object];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePost Choreo.
 */
@implementation TMBFacebook_Actions_General_Posts_UpdatePost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a given post action.
 */
@implementation TMBFacebook_Actions_General_Posts_UpdatePost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Posts_UpdatePost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Posts/UpdatePost"] autorelease];
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
		TMBFacebook_Actions_General_Posts_UpdatePost_ResultSet *results = [[[TMBFacebook_Actions_General_Posts_UpdatePost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdatePost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Posts_UpdatePost_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Posts_UpdatePost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateAlbum Choreo.
 */
@implementation TMBFacebook_Publishing_CreateAlbum_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message to attach to the album.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the album.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id for the profile that the album will be published to. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAlbum Choreo.
 */
@implementation TMBFacebook_Publishing_CreateAlbum_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates an album.
 */
@implementation TMBFacebook_Publishing_CreateAlbum

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Publishing_CreateAlbum Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Publishing/CreateAlbum"] autorelease];
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
		TMBFacebook_Publishing_CreateAlbum_ResultSet *results = [[[TMBFacebook_Publishing_CreateAlbum_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAlbum Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Publishing_CreateAlbum_Inputs*)newInputSet {
		return [[[TMBFacebook_Publishing_CreateAlbum_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateReading Choreo.
 */
@implementation TMBFacebook_Actions_Books_Reads_CreateReading_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Book input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object representing the book.
	 */
	-(void)setBook:(NSString*)Book {
		[super setInput:@"Book" toValue:Book];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ProgressPercentComplete input for this Choreo.
	*(required, decimal) The percentage progress towards finishing the specified book.
	 */
	-(void)setProgressPercentComplete:(NSString*)ProgressPercentComplete {
		[super setInput:@"ProgressPercentComplete" toValue:ProgressPercentComplete];
	}

	/*!
	 * Set the value of the ProgressTimestamp input for this Choreo.
	*(required, date) A timestamp representing the time of change in progress towards finishing the specified book (e.g. 1372194363).
	 */
	-(void)setProgressTimestamp:(NSString*)ProgressTimestamp {
		[super setInput:@"ProgressTimestamp" toValue:ProgressTimestamp];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateReading Choreo.
 */
@implementation TMBFacebook_Actions_Books_Reads_CreateReading_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user reading a book.
 */
@implementation TMBFacebook_Actions_Books_Reads_CreateReading

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_Reads_CreateReading Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/Reads/CreateReading"] autorelease];
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
		TMBFacebook_Actions_Books_Reads_CreateReading_ResultSet *results = [[[TMBFacebook_Actions_Books_Reads_CreateReading_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateReading Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_Reads_CreateReading_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_Reads_CreateReading_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateBike Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_UpdateBike_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Course input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the course.
	 */
	-(void)setCourse:(NSString*)Course {
		[super setInput:@"Course" toValue:Course];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateBike Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_UpdateBike_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing bike action.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_UpdateBike

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Bikes_UpdateBike Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Bikes/UpdateBike"] autorelease];
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
		TMBFacebook_Actions_Fitness_Bikes_UpdateBike_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Bikes_UpdateBike_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateBike Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Bikes_UpdateBike_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Bikes_UpdateBike_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRating Choreo.
 */
@implementation TMBFacebook_Actions_Video_Rates_DeleteRating_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRating Choreo.
 */
@implementation TMBFacebook_Actions_Video_Rates_DeleteRating_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given video rating action.
 */
@implementation TMBFacebook_Actions_Video_Rates_DeleteRating

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_Rates_DeleteRating Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/Rates/DeleteRating"] autorelease];
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
		TMBFacebook_Actions_Video_Rates_DeleteRating_ResultSet *results = [[[TMBFacebook_Actions_Video_Rates_DeleteRating_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRating Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_Rates_DeleteRating_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_Rates_DeleteRating_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBike Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_DeleteBike_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBike Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_DeleteBike_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given bike action.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_DeleteBike

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Bikes_DeleteBike Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Bikes/DeleteBike"] autorelease];
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
		TMBFacebook_Actions_Fitness_Bikes_DeleteBike_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Bikes_DeleteBike_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBike Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Bikes_DeleteBike_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Bikes_DeleteBike_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdatePlaylist Choreo.
 */
@implementation TMBFacebook_Actions_Music_Playlists_UpdatePlaylist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this fitness action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the PlayList input for this Choreo.
	*(optional, string) An object representing a playlist
	 */
	-(void)setPlayList:(NSString*)PlayList {
		[super setInput:@"PlayList" toValue:PlayList];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdatePlaylist Choreo.
 */
@implementation TMBFacebook_Actions_Music_Playlists_UpdatePlaylist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing playlist action.
 */
@implementation TMBFacebook_Actions_Music_Playlists_UpdatePlaylist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Music_Playlists_UpdatePlaylist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Music/Playlists/UpdatePlaylist"] autorelease];
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
		TMBFacebook_Actions_Music_Playlists_UpdatePlaylist_ResultSet *results = [[[TMBFacebook_Actions_Music_Playlists_UpdatePlaylist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdatePlaylist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Music_Playlists_UpdatePlaylist_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Music_Playlists_UpdatePlaylist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteObject Choreo.
 */
@implementation TMBFacebook_Deleting_DeleteObject_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The id or path to an object to delete.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteObject Choreo.
 */
@implementation TMBFacebook_Deleting_DeleteObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes objects in the graph with a given id or path.
 */
@implementation TMBFacebook_Deleting_DeleteObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Deleting_DeleteObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Deleting/DeleteObject"] autorelease];
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
		TMBFacebook_Deleting_DeleteObject_ResultSet *results = [[[TMBFacebook_Deleting_DeleteObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Deleting_DeleteObject_Inputs*)newInputSet {
		return [[[TMBFacebook_Deleting_DeleteObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Statuses Choreo.
 */
@implementation TMBFacebook_Reading_Statuses_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final OAuth step.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve a list of statuses for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Statuses Choreo.
 */
@implementation TMBFacebook_Reading_Statuses_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of  statuses for a specified user.
 */
@implementation TMBFacebook_Reading_Statuses

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Statuses Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Statuses"] autorelease];
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
		TMBFacebook_Reading_Statuses_ResultSet *results = [[[TMBFacebook_Reading_Statuses_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Statuses Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Statuses_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Statuses_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Unlike Choreo.
 */
@implementation TMBFacebook_Deleting_Unlike_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The id of a graph api object to unlike.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Unlike Choreo.
 */
@implementation TMBFacebook_Deleting_Unlike_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows a user to "unlike" a Graph API object.
 */
@implementation TMBFacebook_Deleting_Unlike

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Deleting_Unlike Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Deleting/Unlike"] autorelease];
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
		TMBFacebook_Deleting_Unlike_ResultSet *results = [[[TMBFacebook_Deleting_Unlike_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Unlike Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Deleting_Unlike_Inputs*)newInputSet {
		return [[[TMBFacebook_Deleting_Unlike_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadLikes Choreo.
 */
@implementation TMBFacebook_Actions_General_Likes_ReadLikes_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all like actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadLikes Choreo.
 */
@implementation TMBFacebook_Actions_General_Likes_ReadLikes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more like actions.
 */
@implementation TMBFacebook_Actions_General_Likes_ReadLikes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Likes_ReadLikes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Likes/ReadLikes"] autorelease];
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
		TMBFacebook_Actions_General_Likes_ReadLikes_ResultSet *results = [[[TMBFacebook_Actions_General_Likes_ReadLikes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadLikes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Likes_ReadLikes_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Likes_ReadLikes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PhotoAlbums Choreo.
 */
@implementation TMBFacebook_Reading_PhotoAlbums_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve photo albums for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PhotoAlbums Choreo.
 */
@implementation TMBFacebook_Reading_PhotoAlbums_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of photo albums associated with a specified user.
 */
@implementation TMBFacebook_Reading_PhotoAlbums

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_PhotoAlbums Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/PhotoAlbums"] autorelease];
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
		TMBFacebook_Reading_PhotoAlbums_ResultSet *results = [[[TMBFacebook_Reading_PhotoAlbums_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PhotoAlbums Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_PhotoAlbums_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_PhotoAlbums_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Books Choreo.
 */
@implementation TMBFacebook_Reading_Books_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve books for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Books Choreo.
 */
@implementation TMBFacebook_Reading_Books_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of books that a given user has liked.
 */
@implementation TMBFacebook_Reading_Books

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Books Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Books"] autorelease];
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
		TMBFacebook_Reading_Books_ResultSet *results = [[[TMBFacebook_Reading_Books_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Books Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Books_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Books_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreatePost Choreo.
 */
@implementation TMBFacebook_Actions_General_Posts_CreatePost_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Object input for this Choreo.
	*(required, string) The URL or ID for an Open Graph object you are posting about.
	 */
	-(void)setObject:(NSString*)Object {
		[super setInput:@"Object" toValue:Object];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The Facebook Page ID of the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePost Choreo.
 */
@implementation TMBFacebook_Actions_General_Posts_CreatePost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action representing posting an object.
 */
@implementation TMBFacebook_Actions_General_Posts_CreatePost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_General_Posts_CreatePost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/General/Posts/CreatePost"] autorelease];
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
		TMBFacebook_Actions_General_Posts_CreatePost_ResultSet *results = [[[TMBFacebook_Actions_General_Posts_CreatePost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreatePost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_General_Posts_CreatePost_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_General_Posts_CreatePost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateWantsToRead Choreo.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of the action to update.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Book input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the book.
	 */
	-(void)setBook:(NSString*)Book {
		[super setInput:@"Book" toValue:Book];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateWantsToRead Choreo.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing wants_to_read action.
 */
@implementation TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Books/WantsToRead/UpdateWantsToRead"] autorelease];
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
		TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead_ResultSet *results = [[[TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateWantsToRead Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Books_WantsToRead_UpdateWantsToRead_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteListen Choreo.
 */
@implementation TMBFacebook_Actions_Music_Listens_DeleteListen_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteListen Choreo.
 */
@implementation TMBFacebook_Actions_Music_Listens_DeleteListen_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given listen action.
 */
@implementation TMBFacebook_Actions_Music_Listens_DeleteListen

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Music_Listens_DeleteListen Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Music/Listens/DeleteListen"] autorelease];
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
		TMBFacebook_Actions_Music_Listens_DeleteListen_ResultSet *results = [[[TMBFacebook_Actions_Music_Listens_DeleteListen_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteListen Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Music_Listens_DeleteListen_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Music_Listens_DeleteListen_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Permissions Choreo.
 */
@implementation TMBFacebook_Reading_Permissions_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to access. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Permissions Choreo.
 */
@implementation TMBFacebook_Reading_Permissions_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves the set of permissions associated with a given access token.
 */
@implementation TMBFacebook_Reading_Permissions

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Permissions Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Permissions"] autorelease];
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
		TMBFacebook_Reading_Permissions_ResultSet *results = [[[TMBFacebook_Reading_Permissions_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Permissions Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Permissions_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Permissions_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateRating Choreo.
 */
@implementation TMBFacebook_Actions_Video_Rates_CreateRating_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CreatedTime input for this Choreo.
	*(optional, date) The time that the action was created (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setCreatedTime:(NSString*)CreatedTime {
		[super setInput:@"CreatedTime" toValue:CreatedTime];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, date) The time that the user ended the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the Episode input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing an episode.
	 */
	-(void)setEpisode:(NSString*)Episode {
		[super setInput:@"Episode" toValue:Episode];
	}

	/*!
	 * Set the value of the ExpiresIn input for this Choreo.
	*(optional, integer) The amount of time (in milliseconds) from the publish_time that the action will expire.
	 */
	-(void)setExpiresIn:(NSString*)ExpiresIn {
		[super setInput:@"ExpiresIn" toValue:ExpiresIn];
	}

	/*!
	 * Set the value of the ExplicityShared input for this Choreo.
	*(optional, boolean) Indicates that the user is explicitly sharing this action. Requires the explicitly_shared capability to be enabled.
	 */
	-(void)setExplicityShared:(NSString*)ExplicityShared {
		[super setInput:@"ExplicityShared" toValue:ExplicityShared];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(optional, string) A message attached to this action. Setting this parameter requires enabling of message capabilities.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Movie input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing a movie.
	 */
	-(void)setMovie:(NSString*)Movie {
		[super setInput:@"Movie" toValue:Movie];
	}

	/*!
	 * Set the value of the NoFeedStory input for this Choreo.
	*(optional, boolean) Whether or not this action should be posted to the users feed.
	 */
	-(void)setNoFeedStory:(NSString*)NoFeedStory {
		[super setInput:@"NoFeedStory" toValue:NoFeedStory];
	}

	/*!
	 * Set the value of the Other input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing any general video content.
	 */
	-(void)setOther:(NSString*)Other {
		[super setInput:@"Other" toValue:Other];
	}

	/*!
	 * Set the value of the Place input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing the location associated with this action.
	 */
	-(void)setPlace:(NSString*)Place {
		[super setInput:@"Place" toValue:Place];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the RatingNormalizedValue input for this Choreo.
	*(required, decimal) The rating expressed as a decimal value between 0 and 1.0.
	 */
	-(void)setRatingNormalizedValue:(NSString*)RatingNormalizedValue {
		[super setInput:@"RatingNormalizedValue" toValue:RatingNormalizedValue];
	}

	/*!
	 * Set the value of the RatingScale input for this Choreo.
	*(required, integer) The highest possible value in the rating scale.
	 */
	-(void)setRatingScale:(NSString*)RatingScale {
		[super setInput:@"RatingScale" toValue:RatingScale];
	}

	/*!
	 * Set the value of the RatingValue input for this Choreo.
	*(required, decimal) The value of the book rating.
	 */
	-(void)setRatingValue:(NSString*)RatingValue {
		[super setInput:@"RatingValue" toValue:RatingValue];
	}

	/*!
	 * Set the value of the Reference input for this Choreo.
	*(optional, string) A string identifier up to 50 characters used for tracking and insights.
	 */
	-(void)setReference:(NSString*)Reference {
		[super setInput:@"Reference" toValue:Reference];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ReviewText input for this Choreo.
	*(conditional, string) The text content of the video review.
	 */
	-(void)setReviewText:(NSString*)ReviewText {
		[super setInput:@"ReviewText" toValue:ReviewText];
	}

	/*!
	 * Set the value of the Review input for this Choreo.
	*(optional, string) The URL or ID for an Open Graph object representing a video review.
	 */
	-(void)setReview:(NSString*)Review {
		[super setInput:@"Review" toValue:Review];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, date) The time that the user started the action (e.g. 2013-06-24T18:53:35+0000).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the TVShow input for this Choreo.
	*(conditional, string) The URL or ID for an Open Graph object representing a TV show.
	 */
	-(void)setTVShow:(NSString*)TVShow {
		[super setInput:@"TVShow" toValue:TVShow];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) A comma separated list of other profile IDs that also performed this action.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRating Choreo.
 */
@implementation TMBFacebook_Actions_Video_Rates_CreateRating_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "ActivityURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The URL for the newly created action.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getActivityURL {
		return [super getOutputByName:@"ActivityURL"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an action that represents a user rating a movie, TV show, episode, or other video content.
 */
@implementation TMBFacebook_Actions_Video_Rates_CreateRating

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_Rates_CreateRating Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/Rates/CreateRating"] autorelease];
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
		TMBFacebook_Actions_Video_Rates_CreateRating_ResultSet *results = [[[TMBFacebook_Actions_Video_Rates_CreateRating_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateRating Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_Rates_CreateRating_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_Rates_CreateRating_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWantsToWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWantsToWatch Choreo.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given wants_to_watch action.
 */
@implementation TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Video/WantsToWatch/DeleteWantsToWatch"] autorelease];
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
		TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch_ResultSet *results = [[[TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteWantsToWatch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Video_WantsToWatch_DeleteWantsToWatch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteAction Choreo.
 */
@implementation TMBFacebook_Actions_Custom_DeleteAction_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(required, string) The id of an action to delete.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteAction Choreo.
 */
@implementation TMBFacebook_Actions_Custom_DeleteAction_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) The response from Facebook. Returns "true" on success.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given custom action.
 */
@implementation TMBFacebook_Actions_Custom_DeleteAction

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Custom_DeleteAction Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Custom/DeleteAction"] autorelease];
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
		TMBFacebook_Actions_Custom_DeleteAction_ResultSet *results = [[[TMBFacebook_Actions_Custom_DeleteAction_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteAction Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Custom_DeleteAction_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Custom_DeleteAction_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ObjectsWithLocation Choreo.
 */
@implementation TMBFacebook_Reading_ObjectsWithLocation_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retrieve results for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectsWithLocation Choreo.
 */
@implementation TMBFacebook_Reading_ObjectsWithLocation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a list of objects that have a location associated with them.
 */
@implementation TMBFacebook_Reading_ObjectsWithLocation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_ObjectsWithLocation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/ObjectsWithLocation"] autorelease];
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
		TMBFacebook_Reading_ObjectsWithLocation_ResultSet *results = [[[TMBFacebook_Reading_ObjectsWithLocation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ObjectsWithLocation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_ObjectsWithLocation_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_ObjectsWithLocation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LeaveComment Choreo.
 */
@implementation TMBFacebook_Publishing_LeaveComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(required, string) The comment text.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The id of a graph api object to comment on.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LeaveComment Choreo.
 */
@implementation TMBFacebook_Publishing_LeaveComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Allows a user to leave a comment on a specified Graph API object.
 */
@implementation TMBFacebook_Publishing_LeaveComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Publishing_LeaveComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Publishing/LeaveComment"] autorelease];
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
		TMBFacebook_Publishing_LeaveComment_ResultSet *results = [[[TMBFacebook_Publishing_LeaveComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LeaveComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Publishing_LeaveComment_Inputs*)newInputSet {
		return [[[TMBFacebook_Publishing_LeaveComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadBikes Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_ReadBikes_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all bike actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadBikes Choreo.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_ReadBikes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more bike actions.
 */
@implementation TMBFacebook_Actions_Fitness_Bikes_ReadBikes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_Fitness_Bikes_ReadBikes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/Fitness/Bikes/ReadBikes"] autorelease];
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
		TMBFacebook_Actions_Fitness_Bikes_ReadBikes_ResultSet *results = [[[TMBFacebook_Actions_Fitness_Bikes_ReadBikes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadBikes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_Fitness_Bikes_ReadBikes_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_Fitness_Bikes_ReadBikes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Music Choreo.
 */
@implementation TMBFacebook_Reading_Music_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the profile to retireve music for. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Until input for this Choreo.
	*(optional, date) Used for time-based pagination. Values can be a unix timestamp or any date accepted by strtotime.
	 */
	-(void)setUntil:(NSString*)Until {
		[super setInput:@"Until" toValue:Until];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Music Choreo.
 */
@implementation TMBFacebook_Reading_Music_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves music associated with a specified user.
 */
@implementation TMBFacebook_Reading_Music

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Reading_Music Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Reading/Music"] autorelease];
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
		TMBFacebook_Reading_Music_ResultSet *results = [[[TMBFacebook_Reading_Music_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Music Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Reading_Music_Inputs*)newInputSet {
		return [[[TMBFacebook_Reading_Music_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReadPublications Choreo.
 */
@implementation TMBFacebook_Actions_News_Publishes_ReadPublications_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved from the final step of the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActionID input for this Choreo.
	*(optional, string) The id of an action to retrieve. If an id is not provided, a list of all publishing actions will be returned.
	 */
	-(void)setActionID:(NSString*)ActionID {
		[super setInput:@"ActionID" toValue:ActionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma separated list of fields to return (i.e. id,name).
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the response.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ProfileID input for this Choreo.
	*(optional, string) The id of the user's profile. Defaults to "me" indicating the authenticated user.
	 */
	-(void)setProfileID:(NSString*)ProfileID {
		[super setInput:@"ProfileID" toValue:ProfileID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReadPublications Choreo.
 */
@implementation TMBFacebook_Actions_News_Publishes_ReadPublications_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "HasNext" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a next page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasNext {
		return [super getOutputByName:@"HasNext"];
	}

	/*!
	 * Retrieve the value of the "HasPrevious" output from an execution of this Choreo.
	 * @return - NSString* (boolean) A boolean flag indicating that a previous page exists.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getHasPrevious {
		return [super getOutputByName:@"HasPrevious"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Facebook. Corresponds to the ResponseFormat input. Defaults to JSON.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more news publishing actions.
 */
@implementation TMBFacebook_Actions_News_Publishes_ReadPublications

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFacebook_Actions_News_Publishes_ReadPublications Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Facebook/Actions/News/Publishes/ReadPublications"] autorelease];
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
		TMBFacebook_Actions_News_Publishes_ReadPublications_ResultSet *results = [[[TMBFacebook_Actions_News_Publishes_ReadPublications_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReadPublications Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFacebook_Actions_News_Publishes_ReadPublications_Inputs*)newInputSet {
		return [[[TMBFacebook_Actions_News_Publishes_ReadPublications_Inputs alloc] init] autorelease];
	}
@end
	