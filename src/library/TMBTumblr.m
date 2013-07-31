/*!
 * @TMBTumblr.m
 *
 * Execute Choreographies from the Temboo Tumblr bundle.
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

#import "TMBTumblr.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the EditQuotePost Choreo.
 */
@implementation TMBTumblr_Post_EditQuotePost_Inputs

	/*!
	 * Set the value of the Quote input for this Choreo.
	*(required, string) The full text of the quote. HTML entities must be escpaed.
	 */
	-(void)setQuote:(NSString*)Quote {
		[super setInput:@"Quote" toValue:Quote];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the post you want to edit.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, any) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the Source input for this Choreo.
	*(optional, string) The cited source of the quote. HTML is allowed.
	 */
	-(void)setSource:(NSString*)Source {
		[super setInput:@"Source" toValue:Source];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditQuotePost Choreo.
 */
@implementation TMBTumblr_Post_EditQuotePost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a specified quote post on a Tumblr blog.
 */
@implementation TMBTumblr_Post_EditQuotePost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_EditQuotePost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/EditQuotePost"] autorelease];
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
		TMBTumblr_Post_EditQuotePost_ResultSet *results = [[[TMBTumblr_Post_EditQuotePost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditQuotePost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_EditQuotePost_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_EditQuotePost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveBlogFollowers Choreo.
 */
@implementation TMBTumblr_Blog_RetrieveBlogFollowers_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com)
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to return: 1 - 20. Defaults to 20.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The result to start at. Defaults to 0.
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
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveBlogFollowers Choreo.
 */
@implementation TMBTumblr_Blog_RetrieveBlogFollowers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat. 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the count of followers for a specified Tumblr blog.
 */
@implementation TMBTumblr_Blog_RetrieveBlogFollowers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Blog_RetrieveBlogFollowers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Blog/RetrieveBlogFollowers"] autorelease];
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
		TMBTumblr_Blog_RetrieveBlogFollowers_ResultSet *results = [[[TMBTumblr_Blog_RetrieveBlogFollowers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveBlogFollowers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Blog_RetrieveBlogFollowers_Inputs*)newInputSet {
		return [[[TMBTumblr_Blog_RetrieveBlogFollowers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateVideoPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_CreateVideoPostWithURL_Inputs

	/*!
	 * Set the value of the Embed input for this Choreo.
	*(required, string) The HTML embed code for the video (not hosted by Tumblr).
	 */
	-(void)setEmbed:(NSString*)Embed {
		[super setInput:@"Embed" toValue:Embed];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Caption input for this Choreo.
	*(optional, string) The user-supplied caption. HTML is allowed.
	 */
	-(void)setCaption:(NSString*)Caption {
		[super setInput:@"Caption" toValue:Caption];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateVideoPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_CreateVideoPostWithURL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new video post using specified HTML embed code.
 */
@implementation TMBTumblr_Post_CreateVideoPostWithURL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_CreateVideoPostWithURL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/CreateVideoPostWithURL"] autorelease];
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
		TMBTumblr_Post_CreateVideoPostWithURL_ResultSet *results = [[[TMBTumblr_Post_CreateVideoPostWithURL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateVideoPostWithURL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_CreateVideoPostWithURL_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_CreateVideoPostWithURL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UnlikePost Choreo.
 */
@implementation TMBTumblr_Post_UnlikePost_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the post you want to unlike.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the ReblogKey input for this Choreo.
	*(required, string) The reblog key for the post id. This can be retrieved with the RetrievePublishedPosts Choreo.
	 */
	-(void)setReblogKey:(NSString*)ReblogKey {
		[super setInput:@"ReblogKey" toValue:ReblogKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnlikePost Choreo.
 */
@implementation TMBTumblr_Post_UnlikePost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows a user to like a specified post.
 */
@implementation TMBTumblr_Post_UnlikePost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_UnlikePost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/UnlikePost"] autorelease];
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
		TMBTumblr_Post_UnlikePost_ResultSet *results = [[[TMBTumblr_Post_UnlikePost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UnlikePost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_UnlikePost_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_UnlikePost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EditVideoPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_EditVideoPostWithURL_Inputs

	/*!
	 * Set the value of the Embed input for this Choreo.
	*(required, string) The HTML embed code for the video (not hosted by Tumblr).
	 */
	-(void)setEmbed:(NSString*)Embed {
		[super setInput:@"Embed" toValue:Embed];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Caption input for this Choreo.
	*(optional, string) The user-supplied caption. HTML is allowed.
	 */
	-(void)setCaption:(NSString*)Caption {
		[super setInput:@"Caption" toValue:Caption];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the post you want to edit.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditVideoPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_EditVideoPostWithURL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a specified video post on a Tumblr blog using specified HTML embed code.
 */
@implementation TMBTumblr_Post_EditVideoPostWithURL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_EditVideoPostWithURL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/EditVideoPostWithURL"] autorelease];
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
		TMBTumblr_Post_EditVideoPostWithURL_ResultSet *results = [[[TMBTumblr_Post_EditVideoPostWithURL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditVideoPostWithURL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_EditVideoPostWithURL_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_EditVideoPostWithURL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveQueuedPosts Choreo.
 */
@implementation TMBTumblr_Post_RetrieveQueuedPosts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveQueuedPosts Choreo.
 */
@implementation TMBTumblr_Post_RetrieveQueuedPosts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of queued posts for a specified Tumblr blog.
 */
@implementation TMBTumblr_Post_RetrieveQueuedPosts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_RetrieveQueuedPosts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/RetrieveQueuedPosts"] autorelease];
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
		TMBTumblr_Post_RetrieveQueuedPosts_ResultSet *results = [[[TMBTumblr_Post_RetrieveQueuedPosts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveQueuedPosts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_RetrieveQueuedPosts_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_RetrieveQueuedPosts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UnfollowUser Choreo.
 */
@implementation TMBTumblr_User_UnfollowUser_Inputs

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The URL of the user / blog to follow, without http:. Ex: username.tumblr.com
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnfollowUser Choreo.
 */
@implementation TMBTumblr_User_UnfollowUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the user information associated with a given set of Tumblr Oauth credentials.
 */
@implementation TMBTumblr_User_UnfollowUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_User_UnfollowUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/User/UnfollowUser"] autorelease];
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
		TMBTumblr_User_UnfollowUser_ResultSet *results = [[[TMBTumblr_User_UnfollowUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UnfollowUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_User_UnfollowUser_Inputs*)newInputSet {
		return [[[TMBTumblr_User_UnfollowUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EditChatPost Choreo.
 */
@implementation TMBTumblr_Post_EditChatPost_Inputs

	/*!
	 * Set the value of the Conversation input for this Choreo.
	*(required, multiline) The text of the conversation/chat, with dialogue labels (ex: Speaker: Dialogue.)(no HTML). Use separate lines for new lines as well as for a new speaker (include dialogue labels).
	 */
	-(void)setConversation:(NSString*)Conversation {
		[super setInput:@"Conversation" toValue:Conversation];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the post you want to edit.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) The title of the chat.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditChatPost Choreo.
 */
@implementation TMBTumblr_Post_EditChatPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a specified chat post on a Tumblr blog.
 */
@implementation TMBTumblr_Post_EditChatPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_EditChatPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/EditChatPost"] autorelease];
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
		TMBTumblr_Post_EditChatPost_ResultSet *results = [[[TMBTumblr_Post_EditChatPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditChatPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_EditChatPost_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_EditChatPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUserDashboard Choreo.
 */
@implementation TMBTumblr_User_RetrieveUserDashboard_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to return: 1 - 20. Defaults to 20.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the NotesInfo input for this Choreo.
	*(optional, boolean) Indicates whether to return notes information. Specify 1(true) or 0 (false). Defaults to 0.
	 */
	-(void)setNotesInfo:(NSString*)NotesInfo {
		[super setInput:@"NotesInfo" toValue:NotesInfo];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The result to start at. Defaults to 0.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ReblogInfo input for this Choreo.
	*(optional, boolean) Indicates whether to return reblog information. Specify 1(true) or 0 (false). Defaults to 0.
	 */
	-(void)setReblogInfo:(NSString*)ReblogInfo {
		[super setInput:@"ReblogInfo" toValue:ReblogInfo];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the SinceId input for this Choreo.
	*(optional, integer) Return posts that have appeared after this ID. Used to page through results.
	 */
	-(void)setSinceId:(NSString*)SinceId {
		[super setInput:@"SinceId" toValue:SinceId];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of post to return. Specify one of the following:  text, photo, quote, link, chat, audio, video, answer.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUserDashboard Choreo.
 */
@implementation TMBTumblr_User_RetrieveUserDashboard_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the dashboard of the user that corresponds to the OAuth credentials provided.
 */
@implementation TMBTumblr_User_RetrieveUserDashboard

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_User_RetrieveUserDashboard Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/User/RetrieveUserDashboard"] autorelease];
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
		TMBTumblr_User_RetrieveUserDashboard_ResultSet *results = [[[TMBTumblr_User_RetrieveUserDashboard_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveUserDashboard Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_User_RetrieveUserDashboard_Inputs*)newInputSet {
		return [[[TMBTumblr_User_RetrieveUserDashboard_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrievePublishedPosts Choreo.
 */
@implementation TMBTumblr_Post_RetrievePublishedPosts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Format input for this Choreo.
	*(optional, string) Specifies the post format to return. Valid values are: text (Plain text, no HTML), raw (As entered by user). HTML is returned when left null.
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(optional, integer) The specified post ID in order to return a single post.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of posts to return: 1- 20. Defaults to 20.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the NotesInfo input for this Choreo.
	*(optional, boolean) Indicates whether to return notes information (specify true or false). Defaults to 0 (false).
	 */
	-(void)setNotesInfo:(NSString*)NotesInfo {
		[super setInput:@"NotesInfo" toValue:NotesInfo];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The post number to start at. Defaults to 0.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ReblogInfo input for this Choreo.
	*(optional, boolean) Indicates whether to return reblog information (specify 1 or 0). Defaults to 0 (false).
	 */
	-(void)setReblogInfo:(NSString*)ReblogInfo {
		[super setInput:@"ReblogInfo" toValue:ReblogInfo];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(optional, string) Limits the response to posts with the specified tag.
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of post to return. Specify one of the following:  text, quote, link, answer, video, audio, photo. When null, all types are returned.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrievePublishedPosts Choreo.
 */
@implementation TMBTumblr_Post_RetrievePublishedPosts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves published posts using various search and filter parameters.
 */
@implementation TMBTumblr_Post_RetrievePublishedPosts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_RetrievePublishedPosts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/RetrievePublishedPosts"] autorelease];
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
		TMBTumblr_Post_RetrievePublishedPosts_ResultSet *results = [[[TMBTumblr_Post_RetrievePublishedPosts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrievePublishedPosts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_RetrievePublishedPosts_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_RetrievePublishedPosts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EditAudioPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_EditAudioPostWithURL_Inputs

	/*!
	 * Set the value of the ExternalURL input for this Choreo.
	*(required, string) The URL of the site that hosts the audio file (not Tumblr).
	 */
	-(void)setExternalURL:(NSString*)ExternalURL {
		[super setInput:@"ExternalURL" toValue:ExternalURL];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Caption input for this Choreo.
	*(optional, string) The user-supplied caption. HTML is allowed.
	 */
	-(void)setCaption:(NSString*)Caption {
		[super setInput:@"Caption" toValue:Caption];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the post you want to edit.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditAudioPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_EditAudioPostWithURL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a specified audio post on a Tumblr blog using a specified external URL.
 */
@implementation TMBTumblr_Post_EditAudioPostWithURL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_EditAudioPostWithURL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/EditAudioPostWithURL"] autorelease];
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
		TMBTumblr_Post_EditAudioPostWithURL_ResultSet *results = [[[TMBTumblr_Post_EditAudioPostWithURL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditAudioPostWithURL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_EditAudioPostWithURL_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_EditAudioPostWithURL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveDraftPosts Choreo.
 */
@implementation TMBTumblr_Post_RetrieveDraftPosts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveDraftPosts Choreo.
 */
@implementation TMBTumblr_Post_RetrieveDraftPosts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of queued posts for a specified Tumblr blog.
 */
@implementation TMBTumblr_Post_RetrieveDraftPosts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_RetrieveDraftPosts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/RetrieveDraftPosts"] autorelease];
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
		TMBTumblr_Post_RetrieveDraftPosts_ResultSet *results = [[[TMBTumblr_Post_RetrieveDraftPosts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveDraftPosts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_RetrieveDraftPosts_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_RetrieveDraftPosts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EditTextPost Choreo.
 */
@implementation TMBTumblr_Post_EditTextPost_Inputs

	/*!
	 * Set the value of the Body input for this Choreo.
	*(required, string) The full post body, HTML allowed.
	 */
	-(void)setBody:(NSString*)Body {
		[super setInput:@"Body" toValue:Body];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the post you want to edit.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) The optional title of the post. HTML entities must be escaped.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditTextPost Choreo.
 */
@implementation TMBTumblr_Post_EditTextPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a specified text post on a Tumblr blog.
 */
@implementation TMBTumblr_Post_EditTextPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_EditTextPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/EditTextPost"] autorelease];
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
		TMBTumblr_Post_EditTextPost_ResultSet *results = [[[TMBTumblr_Post_EditTextPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditTextPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_EditTextPost_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_EditTextPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreatePhotoPostWithImageFile Choreo.
 */
@implementation TMBTumblr_Post_CreatePhotoPostWithImageFile_Inputs

	/*!
	 * Set the value of the Data input for this Choreo.
	*(conditional, string) The Base64-encoded contents of the image you want to post. Required UNLESS uploading a file from a URL using the DataFromURL input variable.
	 */
	-(void)setData:(NSString*)Data {
		[super setInput:@"Data" toValue:Data];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Caption input for this Choreo.
	*(optional, string) The user-supplied caption. HTML is allowed.
	 */
	-(void)setCaption:(NSString*)Caption {
		[super setInput:@"Caption" toValue:Caption];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(optional, string) The "click-through URL" for the photo.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) A path to an image in the vault that you want to post. Required unless specifying the image contents in the Data input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePhotoPostWithImageFile Choreo.
 */
@implementation TMBTumblr_Post_CreatePhotoPostWithImageFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new photo post using an image file that you specify.
 */
@implementation TMBTumblr_Post_CreatePhotoPostWithImageFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_CreatePhotoPostWithImageFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/CreatePhotoPostWithImageFile"] autorelease];
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
		TMBTumblr_Post_CreatePhotoPostWithImageFile_ResultSet *results = [[[TMBTumblr_Post_CreatePhotoPostWithImageFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreatePhotoPostWithImageFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_CreatePhotoPostWithImageFile_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_CreatePhotoPostWithImageFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeletePost Choreo.
 */
@implementation TMBTumblr_Post_DeletePost_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the post you want to delete.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePost Choreo.
 */
@implementation TMBTumblr_Post_DeletePost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified post from a Tumblr blog.
 */
@implementation TMBTumblr_Post_DeletePost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_DeletePost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/DeletePost"] autorelease];
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
		TMBTumblr_Post_DeletePost_ResultSet *results = [[[TMBTumblr_Post_DeletePost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeletePost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_DeletePost_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_DeletePost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBTumblr_OAuth_InitializeOAuth_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBTumblr_OAuth_InitializeOAuth_ResultSet

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
@implementation TMBTumblr_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/OAuth/InitializeOAuth"] autorelease];
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
		TMBTumblr_OAuth_InitializeOAuth_ResultSet *results = [[[TMBTumblr_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBTumblr_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateAudioPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_CreateAudioPostWithURL_Inputs

	/*!
	 * Set the value of the ExternalURL input for this Choreo.
	*(required, string) The URL of the site that hosts the audio file (not Tumblr).
	 */
	-(void)setExternalURL:(NSString*)ExternalURL {
		[super setInput:@"ExternalURL" toValue:ExternalURL];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Caption input for this Choreo.
	*(optional, string) The user-supplied caption. HTML is allowed.
	 */
	-(void)setCaption:(NSString*)Caption {
		[super setInput:@"Caption" toValue:Caption];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAudioPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_CreateAudioPostWithURL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new audio post using a specified external URL.
 */
@implementation TMBTumblr_Post_CreateAudioPostWithURL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_CreateAudioPostWithURL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/CreateAudioPostWithURL"] autorelease];
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
		TMBTumblr_Post_CreateAudioPostWithURL_ResultSet *results = [[[TMBTumblr_Post_CreateAudioPostWithURL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAudioPostWithURL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_CreateAudioPostWithURL_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_CreateAudioPostWithURL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveFollowedBlogsForUser Choreo.
 */
@implementation TMBTumblr_User_RetrieveFollowedBlogsForUser_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to return: 1 - 20. Defaults to 20.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The result to start at. Defaults to 0.
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
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveFollowedBlogsForUser Choreo.
 */
@implementation TMBTumblr_User_RetrieveFollowedBlogsForUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve the blogs followed by the user whose OAuth credentials are provided.
 */
@implementation TMBTumblr_User_RetrieveFollowedBlogsForUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_User_RetrieveFollowedBlogsForUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/User/RetrieveFollowedBlogsForUser"] autorelease];
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
		TMBTumblr_User_RetrieveFollowedBlogsForUser_ResultSet *results = [[[TMBTumblr_User_RetrieveFollowedBlogsForUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveFollowedBlogsForUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_User_RetrieveFollowedBlogsForUser_Inputs*)newInputSet {
		return [[[TMBTumblr_User_RetrieveFollowedBlogsForUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveSubmissionPosts Choreo.
 */
@implementation TMBTumblr_Post_RetrieveSubmissionPosts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveSubmissionPosts Choreo.
 */
@implementation TMBTumblr_Post_RetrieveSubmissionPosts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of submission posts for a specified Tumblr blog.
 */
@implementation TMBTumblr_Post_RetrieveSubmissionPosts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_RetrieveSubmissionPosts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/RetrieveSubmissionPosts"] autorelease];
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
		TMBTumblr_Post_RetrieveSubmissionPosts_ResultSet *results = [[[TMBTumblr_Post_RetrieveSubmissionPosts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveSubmissionPosts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_RetrieveSubmissionPosts_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_RetrieveSubmissionPosts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateLinkPost Choreo.
 */
@implementation TMBTumblr_Post_CreateLinkPost_Inputs

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The link you want to post.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A user-supplied description. HTML is allowed.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) The title of the page the link points to. HTML entities should be escaped.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateLinkPost Choreo.
 */
@implementation TMBTumblr_Post_CreateLinkPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new link post for a specified Tumblr blog.
 */
@implementation TMBTumblr_Post_CreateLinkPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_CreateLinkPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/CreateLinkPost"] autorelease];
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
		TMBTumblr_Post_CreateLinkPost_ResultSet *results = [[[TMBTumblr_Post_CreateLinkPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateLinkPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_CreateLinkPost_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_CreateLinkPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUserLikes Choreo.
 */
@implementation TMBTumblr_User_RetrieveUserLikes_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to return: 1 - 20. Defaults to 20.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The result to start at. Defaults to 0.
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
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUserLikes Choreo.
 */
@implementation TMBTumblr_User_RetrieveUserLikes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the liked posts for the user that corresponds to the OAuth credentials provided.
 */
@implementation TMBTumblr_User_RetrieveUserLikes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_User_RetrieveUserLikes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/User/RetrieveUserLikes"] autorelease];
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
		TMBTumblr_User_RetrieveUserLikes_ResultSet *results = [[[TMBTumblr_User_RetrieveUserLikes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveUserLikes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_User_RetrieveUserLikes_Inputs*)newInputSet {
		return [[[TMBTumblr_User_RetrieveUserLikes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveBlogInfo Choreo.
 */
@implementation TMBTumblr_Blog_RetrieveBlogInfo_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
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
 * Results object with appropriate getters for retrieving outputs from the RetrieveBlogInfo Choreo.
 */
@implementation TMBTumblr_Blog_RetrieveBlogInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns general information about the blog, such as the title, number of posts, and other high-level data.
 */
@implementation TMBTumblr_Blog_RetrieveBlogInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Blog_RetrieveBlogInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Blog/RetrieveBlogInfo"] autorelease];
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
		TMBTumblr_Blog_RetrieveBlogInfo_ResultSet *results = [[[TMBTumblr_Blog_RetrieveBlogInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveBlogInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Blog_RetrieveBlogInfo_Inputs*)newInputSet {
		return [[[TMBTumblr_Blog_RetrieveBlogInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBTumblr_OAuth_FinalizeOAuth_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	*(required, string) The oauth_token_secret retrieved during the OAuth process. This is returned by the InitializeOAuth Choreo.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
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
@implementation TMBTumblr_OAuth_FinalizeOAuth_ResultSet

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
	
@end

/*!
 * Completes the OAuth process by retrieving a Tumblr access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@implementation TMBTumblr_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/OAuth/FinalizeOAuth"] autorelease];
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
		TMBTumblr_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBTumblr_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBTumblr_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EditPhotoPostWithImageFile Choreo.
 */
@implementation TMBTumblr_Post_EditPhotoPostWithImageFile_Inputs

	/*!
	 * Set the value of the Data input for this Choreo.
	*(conditional, string) The Base64-encoded contents of the image you want to post.
	 */
	-(void)setData:(NSString*)Data {
		[super setInput:@"Data" toValue:Data];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Caption input for this Choreo.
	*(optional, string) The user-supplied caption. HTML is allowed.
	 */
	-(void)setCaption:(NSString*)Caption {
		[super setInput:@"Caption" toValue:Caption];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the post you want to edit.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(optional, string) The "click-through URL" for the photo.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) A path to an image in the vault that you want to post. Required unless specifying the image contents in the Data input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditPhotoPostWithImageFile Choreo.
 */
@implementation TMBTumblr_Post_EditPhotoPostWithImageFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a specified photo post on a Tumblr blog using a provided image file.
 */
@implementation TMBTumblr_Post_EditPhotoPostWithImageFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_EditPhotoPostWithImageFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/EditPhotoPostWithImageFile"] autorelease];
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
		TMBTumblr_Post_EditPhotoPostWithImageFile_ResultSet *results = [[[TMBTumblr_Post_EditPhotoPostWithImageFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditPhotoPostWithImageFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_EditPhotoPostWithImageFile_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_EditPhotoPostWithImageFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreatePhotoPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_CreatePhotoPostWithURL_Inputs

	/*!
	 * Set the value of the Source input for this Choreo.
	*(required, string) The photo source URL.
	 */
	-(void)setSource:(NSString*)Source {
		[super setInput:@"Source" toValue:Source];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Caption input for this Choreo.
	*(optional, string) The user-supplied caption. HTML is allowed.
	 */
	-(void)setCaption:(NSString*)Caption {
		[super setInput:@"Caption" toValue:Caption];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(optional, string) The "click-through URL" for the photo.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePhotoPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_CreatePhotoPostWithURL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new photo post using a specified source image URL.
 */
@implementation TMBTumblr_Post_CreatePhotoPostWithURL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_CreatePhotoPostWithURL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/CreatePhotoPostWithURL"] autorelease];
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
		TMBTumblr_Post_CreatePhotoPostWithURL_ResultSet *results = [[[TMBTumblr_Post_CreatePhotoPostWithURL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreatePhotoPostWithURL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_CreatePhotoPostWithURL_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_CreatePhotoPostWithURL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateChatPost Choreo.
 */
@implementation TMBTumblr_Post_CreateChatPost_Inputs

	/*!
	 * Set the value of the Conversation input for this Choreo.
	*(required, multiline) The text of the conversation/chat, with dialogue labels (ex: Speaker: Dialogue.)(no HTML). Use separate lines for new lines as well as for a new speaker (include dialogue labels).
	 */
	-(void)setConversation:(NSString*)Conversation {
		[super setInput:@"Conversation" toValue:Conversation];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) The title of the chat.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateChatPost Choreo.
 */
@implementation TMBTumblr_Post_CreateChatPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new chat post for a specified Tumblr blog.
 */
@implementation TMBTumblr_Post_CreateChatPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_CreateChatPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/CreateChatPost"] autorelease];
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
		TMBTumblr_Post_CreateChatPost_ResultSet *results = [[[TMBTumblr_Post_CreateChatPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateChatPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_CreateChatPost_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_CreateChatPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateQuotePost Choreo.
 */
@implementation TMBTumblr_Post_CreateQuotePost_Inputs

	/*!
	 * Set the value of the Quote input for this Choreo.
	*(required, string) The full text of the quote.
	 */
	-(void)setQuote:(NSString*)Quote {
		[super setInput:@"Quote" toValue:Quote];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the Source input for this Choreo.
	*(optional, string) The cited source of the quote. HTML is allowed.
	 */
	-(void)setSource:(NSString*)Source {
		[super setInput:@"Source" toValue:Source];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateQuotePost Choreo.
 */
@implementation TMBTumblr_Post_CreateQuotePost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new text post for a specified Tumblr blog.
 */
@implementation TMBTumblr_Post_CreateQuotePost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_CreateQuotePost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/CreateQuotePost"] autorelease];
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
		TMBTumblr_Post_CreateQuotePost_ResultSet *results = [[[TMBTumblr_Post_CreateQuotePost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateQuotePost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_CreateQuotePost_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_CreateQuotePost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FollowUser Choreo.
 */
@implementation TMBTumblr_User_FollowUser_Inputs

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The URL of the user / blog to follow, without http:. Ex: username.tumblr.com
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FollowUser Choreo.
 */
@implementation TMBTumblr_User_FollowUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the user information associated with a given set of Tumblr Oauth credentials.
 */
@implementation TMBTumblr_User_FollowUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_User_FollowUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/User/FollowUser"] autorelease];
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
		TMBTumblr_User_FollowUser_ResultSet *results = [[[TMBTumblr_User_FollowUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FollowUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_User_FollowUser_Inputs*)newInputSet {
		return [[[TMBTumblr_User_FollowUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUserInformation Choreo.
 */
@implementation TMBTumblr_User_GetUserInformation_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserInformation Choreo.
 */
@implementation TMBTumblr_User_GetUserInformation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the user information associated with a given set of Tumblr Oauth credentials.
 */
@implementation TMBTumblr_User_GetUserInformation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_User_GetUserInformation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/User/GetUserInformation"] autorelease];
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
		TMBTumblr_User_GetUserInformation_ResultSet *results = [[[TMBTumblr_User_GetUserInformation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUserInformation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_User_GetUserInformation_Inputs*)newInputSet {
		return [[[TMBTumblr_User_GetUserInformation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateTextPost Choreo.
 */
@implementation TMBTumblr_Post_CreateTextPost_Inputs

	/*!
	 * Set the value of the Body input for this Choreo.
	*(required, string) The full post body, HTML allowed.
	 */
	-(void)setBody:(NSString*)Body {
		[super setInput:@"Body" toValue:Body];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) The optional title of the post. HTML entities must be escaped.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTextPost Choreo.
 */
@implementation TMBTumblr_Post_CreateTextPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The format that the response should be in. Can be set to xml or json. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new quote post for a specified Tumblr blog.
 */
@implementation TMBTumblr_Post_CreateTextPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_CreateTextPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/CreateTextPost"] autorelease];
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
		TMBTumblr_Post_CreateTextPost_ResultSet *results = [[[TMBTumblr_Post_CreateTextPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateTextPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_CreateTextPost_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_CreateTextPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EditPhotoPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_EditPhotoPostWithURL_Inputs

	/*!
	 * Set the value of the Source input for this Choreo.
	*(required, string) The photo source URL.
	 */
	-(void)setSource:(NSString*)Source {
		[super setInput:@"Source" toValue:Source];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Caption input for this Choreo.
	*(optional, string) The user-supplied caption. HTML is allowed.
	 */
	-(void)setCaption:(NSString*)Caption {
		[super setInput:@"Caption" toValue:Caption];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the post you want to edit.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Link input for this Choreo.
	*(optional, string) The "click-through URL" for the photo.
	 */
	-(void)setLink:(NSString*)Link {
		[super setInput:@"Link" toValue:Link];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditPhotoPostWithURL Choreo.
 */
@implementation TMBTumblr_Post_EditPhotoPostWithURL_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a specified audio post on a Tumblr blog using a specified source image URL.
 */
@implementation TMBTumblr_Post_EditPhotoPostWithURL

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_EditPhotoPostWithURL Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/EditPhotoPostWithURL"] autorelease];
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
		TMBTumblr_Post_EditPhotoPostWithURL_ResultSet *results = [[[TMBTumblr_Post_EditPhotoPostWithURL_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditPhotoPostWithURL Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_EditPhotoPostWithURL_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_EditPhotoPostWithURL_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LikePost Choreo.
 */
@implementation TMBTumblr_Post_LikePost_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the post you want to like.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the ReblogKey input for this Choreo.
	*(required, string) The reblog key for the post id. This can be retrieved with the RetrievePublishedPosts Choreo.
	 */
	-(void)setReblogKey:(NSString*)ReblogKey {
		[super setInput:@"ReblogKey" toValue:ReblogKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LikePost Choreo.
 */
@implementation TMBTumblr_Post_LikePost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows a user to like a specified post.
 */
@implementation TMBTumblr_Post_LikePost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_LikePost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/LikePost"] autorelease];
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
		TMBTumblr_Post_LikePost_ResultSet *results = [[[TMBTumblr_Post_LikePost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LikePost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_LikePost_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_LikePost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EditLinkPost Choreo.
 */
@implementation TMBTumblr_Post_EditLinkPost_Inputs

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The link you want to post.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Tumblr (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
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
	 * Set the value of the BaseHostname input for this Choreo.
	*(required, string) The standard or custom blog hostname (i.e. temboo.tumblr.com).
	 */
	-(void)setBaseHostname:(NSString*)BaseHostname {
		[super setInput:@"BaseHostname" toValue:BaseHostname];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, date) The GMT date and time of the post. Can be an epoch timestamp in milliseconds or formatted like: Dec 8th, 2011 4:03pm. Defaults to NOW().
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A user-supplied description. HTML is allowed.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the post you want to edit.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Markdown input for this Choreo.
	*(optional, boolean) Indicates whether the post uses markdown syntax. Defaults to false. Set to 1 to indicate true.
	 */
	-(void)setMarkdown:(NSString*)Markdown {
		[super setInput:@"Markdown" toValue:Markdown];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, multiline) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Tumblr (AKA the OAuth Consumer Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}

	/*!
	 * Set the value of the Slug input for this Choreo.
	*(optional, string) Adds a short text summary to the end of the post URL.
	 */
	-(void)setSlug:(NSString*)Slug {
		[super setInput:@"Slug" toValue:Slug];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state of the post. Specify one of the following:  published, draft, queue. Defaults to published.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Tags input for this Choreo.
	*(optional, string) Comma-separated tags for this post.
	 */
	-(void)setTags:(NSString*)Tags {
		[super setInput:@"Tags" toValue:Tags];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) The title of the page the link points to. HTML entities should be escaped.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Tweet input for this Choreo.
	*(optional, string) Manages the autotweet (if enabled) for this post. Defaults to off for no tweet. Enter text to override the default tweet.
	 */
	-(void)setTweet:(NSString*)Tweet {
		[super setInput:@"Tweet" toValue:Tweet];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditLinkPost Choreo.
 */
@implementation TMBTumblr_Post_EditLinkPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Tumblr. Default is JSON, can be set to XML by entering 'xml' in ResponseFormat.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a specified link post on a Tumblr blog.
 */
@implementation TMBTumblr_Post_EditLinkPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBTumblr_Post_EditLinkPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Tumblr/Post/EditLinkPost"] autorelease];
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
		TMBTumblr_Post_EditLinkPost_ResultSet *results = [[[TMBTumblr_Post_EditLinkPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EditLinkPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBTumblr_Post_EditLinkPost_Inputs*)newInputSet {
		return [[[TMBTumblr_Post_EditLinkPost_Inputs alloc] init] autorelease];
	}
@end
	