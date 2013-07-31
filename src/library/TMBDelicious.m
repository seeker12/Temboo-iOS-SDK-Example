/*!
 * @TMBDelicious.m
 *
 * Execute Choreographies from the Temboo Delicious bundle.
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

#import "TMBDelicious.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBookmark Choreo.
 */
@implementation TMBDelicious_DeleteBookmark_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password that corresponds to the specified Delicious account username.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The URL for the posted link to delete.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A valid Delicious account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBookmark Choreo.
 */
@implementation TMBDelicious_DeleteBookmark_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Delicious.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a bookmarked link from a Delicious account.
 */
@implementation TMBDelicious_DeleteBookmark

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDelicious_DeleteBookmark Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Delicious/DeleteBookmark"] autorelease];
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
		TMBDelicious_DeleteBookmark_ResultSet *results = [[[TMBDelicious_DeleteBookmark_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBookmark Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDelicious_DeleteBookmark_Inputs*)newInputSet {
		return [[[TMBDelicious_DeleteBookmark_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SuggestTags Choreo.
 */
@implementation TMBDelicious_SuggestTags_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password that corresponds to the specified Delicious account username.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The URL for which to provide tagging suggestions.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A valid Delicious account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SuggestTags Choreo.
 */
@implementation TMBDelicious_SuggestTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Delicious.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of suggested tags for a specifed URL.
 */
@implementation TMBDelicious_SuggestTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDelicious_SuggestTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Delicious/SuggestTags"] autorelease];
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
		TMBDelicious_SuggestTags_ResultSet *results = [[[TMBDelicious_SuggestTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SuggestTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDelicious_SuggestTags_Inputs*)newInputSet {
		return [[[TMBDelicious_SuggestTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTags Choreo.
 */
@implementation TMBDelicious_GetTags_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password that corresponds to the specified Delicious account username.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A valid Delicious account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTags Choreo.
 */
@implementation TMBDelicious_GetTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Delicious.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all tags and the number of bookmarks that use them.
 */
@implementation TMBDelicious_GetTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDelicious_GetTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Delicious/GetTags"] autorelease];
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
		TMBDelicious_GetTags_ResultSet *results = [[[TMBDelicious_GetTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDelicious_GetTags_Inputs*)newInputSet {
		return [[[TMBDelicious_GetTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTag Choreo.
 */
@implementation TMBDelicious_DeleteTag_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password that corresponds to the specified Delicious account username.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(required, string) The tag to delete.
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A valid Delicious account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTag Choreo.
 */
@implementation TMBDelicious_DeleteTag_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Delicious.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified tag.
 */
@implementation TMBDelicious_DeleteTag

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDelicious_DeleteTag Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Delicious/DeleteTag"] autorelease];
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
		TMBDelicious_DeleteTag_ResultSet *results = [[[TMBDelicious_DeleteTag_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteTag Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDelicious_DeleteTag_Inputs*)newInputSet {
		return [[[TMBDelicious_DeleteTag_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllBookmarks Choreo.
 */
@implementation TMBDelicious_GetAllBookmarks_Inputs

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The number of bookmarks to return. Defaults to 15.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the FromDate input for this Choreo.
	*(optional, date) Return only bookmarks posted on this date and later. Enter in YYYY-MM-DDThh:mm:ssZ format.
	 */
	-(void)setFromDate:(NSString*)FromDate {
		[super setInput:@"FromDate" toValue:FromDate];
	}

	/*!
	 * Set the value of the Meta input for this Choreo.
	*(optional, string) Specify "1" to include a change-detection signature for each item returned. Defaults to "0", or no meta attributes retained.
	 */
	-(void)setMeta:(NSString*)Meta {
		[super setInput:@"Meta" toValue:Meta];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password that corresponds to the specified Delicious account username.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(optional, string) Return only bookmrks tagged with this keyword.
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}

	/*!
	 * Set the value of the ToDate input for this Choreo.
	*(optional, date) Return only bookmarks posted on this date and earlier. Enter in YYYY-MM-DDThh:mm:ssZ format.
	 */
	-(void)setToDate:(NSString*)ToDate {
		[super setInput:@"ToDate" toValue:ToDate];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A valid Delicious account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllBookmarks Choreo.
 */
@implementation TMBDelicious_GetAllBookmarks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Delicious.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns all links posted to a Delicious account.
 */
@implementation TMBDelicious_GetAllBookmarks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDelicious_GetAllBookmarks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Delicious/GetAllBookmarks"] autorelease];
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
		TMBDelicious_GetAllBookmarks_ResultSet *results = [[[TMBDelicious_GetAllBookmarks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllBookmarks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDelicious_GetAllBookmarks_Inputs*)newInputSet {
		return [[[TMBDelicious_GetAllBookmarks_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetChangeSignatures Choreo.
 */
@implementation TMBDelicious_GetChangeSignatures_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password that corresponds to the specified Delicious account username.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A valid Delicious account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetChangeSignatures Choreo.
 */
@implementation TMBDelicious_GetChangeSignatures_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Delicious.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all bookmarks' change detection signatures.
 */
@implementation TMBDelicious_GetChangeSignatures

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDelicious_GetChangeSignatures Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Delicious/GetChangeSignatures"] autorelease];
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
		TMBDelicious_GetChangeSignatures_ResultSet *results = [[[TMBDelicious_GetChangeSignatures_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetChangeSignatures Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDelicious_GetChangeSignatures_Inputs*)newInputSet {
		return [[[TMBDelicious_GetChangeSignatures_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddBookmark Choreo.
 */
@implementation TMBDelicious_AddBookmark_Inputs

	/*!
	 * Set the value of the Description input for this Choreo.
	*(required, string) A description for the link to post.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Notes input for this Choreo.
	*(optional, string) Descriptive notes for the posted link.
	 */
	-(void)setNotes:(NSString*)Notes {
		[super setInput:@"Notes" toValue:Notes];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password that corresponds to the specified Delicious account username.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Replace input for this Choreo.
	*(optional, integer) Specify "1" to replace the post if the URL has already been posted. Set to "0" (don't replace) by default.
	 */
	-(void)setReplace:(NSString*)Replace {
		[super setInput:@"Replace" toValue:Replace];
	}

	/*!
	 * Set the value of the Shared input for this Choreo.
	*(optional, integer) Specify "1" to make the posted link private. Set to "0" (shared) by default.
	 */
	-(void)setShared:(NSString*)Shared {
		[super setInput:@"Shared" toValue:Shared];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Add keyword tags to the posted link. Separate multiple tags with commas.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The URL for the link to post.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A valid Delicious account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddBookmark Choreo.
 */
@implementation TMBDelicious_AddBookmark_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Delicious.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a link bookmark to a Delicious account.
 */
@implementation TMBDelicious_AddBookmark

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDelicious_AddBookmark Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Delicious/AddBookmark"] autorelease];
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
		TMBDelicious_AddBookmark_ResultSet *results = [[[TMBDelicious_AddBookmark_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddBookmark Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDelicious_AddBookmark_Inputs*)newInputSet {
		return [[[TMBDelicious_AddBookmark_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentBookmarks Choreo.
 */
@implementation TMBDelicious_GetRecentBookmarks_Inputs

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) Specify the number of bookmarks to retrieve, up the maximum of 100. The default is 15.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password that corresponds to the specified Delicious account username.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Return only items tagged with the specified keyword.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A valid Delicious account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentBookmarks Choreo.
 */
@implementation TMBDelicious_GetRecentBookmarks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Delicious.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of the most recently posted bookmarks.
 */
@implementation TMBDelicious_GetRecentBookmarks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDelicious_GetRecentBookmarks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Delicious/GetRecentBookmarks"] autorelease];
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
		TMBDelicious_GetRecentBookmarks_ResultSet *results = [[[TMBDelicious_GetRecentBookmarks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecentBookmarks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDelicious_GetRecentBookmarks_Inputs*)newInputSet {
		return [[[TMBDelicious_GetRecentBookmarks_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RenameTag Choreo.
 */
@implementation TMBDelicious_RenameTag_Inputs

	/*!
	 * Set the value of the NewTag input for this Choreo.
	*(required, string) The new tag name.
	 */
	-(void)setNewTag:(NSString*)NewTag {
		[super setInput:@"NewTag" toValue:NewTag];
	}

	/*!
	 * Set the value of the OldTag input for this Choreo.
	*(required, string) The existing tag to rename.
	 */
	-(void)setOldTag:(NSString*)OldTag {
		[super setInput:@"OldTag" toValue:OldTag];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password that corresponds to the specified Delicious account username.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A valid Delicious account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RenameTag Choreo.
 */
@implementation TMBDelicious_RenameTag_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Delicious.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Renames a specified tag.
 */
@implementation TMBDelicious_RenameTag

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDelicious_RenameTag Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Delicious/RenameTag"] autorelease];
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
		TMBDelicious_RenameTag_ResultSet *results = [[[TMBDelicious_RenameTag_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RenameTag Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDelicious_RenameTag_Inputs*)newInputSet {
		return [[[TMBDelicious_RenameTag_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBookmarkDates Choreo.
 */
@implementation TMBDelicious_GetBookmarkDates_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password that corresponds to the specified Delicious account username.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Return only items tagged with the specified keyword.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A valid Delicious account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBookmarkDates Choreo.
 */
@implementation TMBDelicious_GetBookmarkDates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Delicious.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of dates, with the number of bookmarks posted for each date.
 */
@implementation TMBDelicious_GetBookmarkDates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDelicious_GetBookmarkDates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Delicious/GetBookmarkDates"] autorelease];
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
		TMBDelicious_GetBookmarkDates_ResultSet *results = [[[TMBDelicious_GetBookmarkDates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBookmarkDates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDelicious_GetBookmarkDates_Inputs*)newInputSet {
		return [[[TMBDelicious_GetBookmarkDates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBookmark Choreo.
 */
@implementation TMBDelicious_GetBookmark_Inputs

	/*!
	 * Set the value of the ChangeSignature input for this Choreo.
	*(optional, string) Return only bookmarks with the URL MD5 signatures you enter, regardless of posting date. Separate multiple signatures with spaces.
	 */
	-(void)setChangeSignature:(NSString*)ChangeSignature {
		[super setInput:@"ChangeSignature" toValue:ChangeSignature];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) Return only bookmarks posted on a date specified here. Enter in YYYY-MM-DDThh:mm:ssZ format. Defaults to the most recent date.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Meta input for this Choreo.
	*(optional, string) Specify "1" to include a change-detection signature for each item returned. Defaults to "0", or no meta attributes retained.
	 */
	-(void)setMeta:(NSString*)Meta {
		[super setInput:@"Meta" toValue:Meta];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password that corresponds to the specified Delicious account username.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(optional, string) Return only items tagged with the specified keyword. Separate multiple tags with spaces.
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(optional, string) Return only items with the specified URL, regardless of posting date.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) A valid Delicious account username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBookmark Choreo.
 */
@implementation TMBDelicious_GetBookmark_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from Delicious.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more bookmarked links posted on a single day.
 */
@implementation TMBDelicious_GetBookmark

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDelicious_GetBookmark Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Delicious/GetBookmark"] autorelease];
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
		TMBDelicious_GetBookmark_ResultSet *results = [[[TMBDelicious_GetBookmark_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBookmark Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDelicious_GetBookmark_Inputs*)newInputSet {
		return [[[TMBDelicious_GetBookmark_Inputs alloc] init] autorelease];
	}
@end
	