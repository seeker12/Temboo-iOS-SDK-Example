/*!
 * @TMBDisqus.m
 *
 * Execute Choreographies from the Temboo Disqus bundle.
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

#import "TMBDisqus.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBDisqus_OAuth_InitializeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) (Deprecated) This input variable is no longer necessary and will be removed soon.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppKeyName input for this Choreo.
	*(optional, string) (Deprecated) This input variable is no longer necessary and will be removed soon.
	 */
	-(void)setAppKeyName:(NSString*)AppKeyName {
		[super setInput:@"AppKeyName" toValue:AppKeyName];
	}

	/*!
	 * Set the value of the AppKeyValue input for this Choreo.
	*(optional, string) (Deprecated) This input variable is no longer necessary and will be removed soon.
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
	 * Set the value of the PublicKey input for this Choreo.
	*(conditional, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) Available permissions to request on behalf of the user are read, write and admin, multiple values separated by a comma (ex: "read,write"). Default (blank) is same as "read,write".
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBDisqus_OAuth_InitializeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AuthorizationURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The authorization URL that the user needs to go to in order to grant access to your application.
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
 * Generates an authorization URL that an application can use to complete the first step in the OAuth 2.0 process.
 */
@implementation TMBDisqus_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/OAuth/InitializeOAuth"] autorelease];
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
		TMBDisqus_OAuth_InitializeOAuth_ResultSet *results = [[[TMBDisqus_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBDisqus_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VoteOnPost Choreo.
 */
@implementation TMBDisqus_Posts_VoteOnPost_Inputs

	/*!
	 * Set the value of the PostID input for this Choreo.
	*(required, integer) The post ID for which a vote is being registered.
	 */
	-(void)setPostID:(NSString*)PostID {
		[super setInput:@"PostID" toValue:PostID];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Vote input for this Choreo.
	*(required, integer) A numeric value for your vote. Valid choices are: -1, 0, or 1.
	 */
	-(void)setVote:(NSString*)Vote {
		[super setInput:@"Vote" toValue:Vote];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VoteOnPost Choreo.
 */
@implementation TMBDisqus_Posts_VoteOnPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Register a vote on a post.
 */
@implementation TMBDisqus_Posts_VoteOnPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_VoteOnPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/VoteOnPost"] autorelease];
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
		TMBDisqus_Posts_VoteOnPost_ResultSet *results = [[[TMBDisqus_Posts_VoteOnPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VoteOnPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_VoteOnPost_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_VoteOnPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPosts Choreo.
 */
@implementation TMBDisqus_Posts_ListPosts_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Category input for this Choreo.
	*(optional, integer) Specify a category ID for which posts wil be retrieved.
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, string) Default is set to null.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, string) A Disqus forum name to display all posts contained in that specified forum.  If null, posts from all forums moderated by the authenticating user will be retrieved.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the Include input for this Choreo.
	*(optional, string) A post status parameter to filter results by. Valid parameters include: unapproved, approved, spam, deleted, flagged, highlighted.  Default is set to: approved.
	 */
	-(void)setInclude:(NSString*)Include {
		[super setInput:@"Include" toValue:Include];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of records to return. Defaults to 25.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) The sort order of the results. Valid values are: asc or desc. Default is set to: asc.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A search string to retrieve posts mathching the query.  Default is set to null.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Related input for this Choreo.
	*(optional, string) Specify a related thread or forum that are to be included in the response.  Valid entries include: thread, or forum.
	 */
	-(void)setRelated:(NSString*)Related {
		[super setInput:@"Related" toValue:Related];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SinceID input for this Choreo.
	*(optional, integer) A Unix timestamp (or ISO datetime standard) to obtain results from. Default is set to null.
	 */
	-(void)setSinceID:(NSString*)SinceID {
		[super setInput:@"SinceID" toValue:SinceID];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(optional, string) The Thread ID to narrow post search results.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPosts Choreo.
 */
@implementation TMBDisqus_Posts_ListPosts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of posts ordered by date of creation.
 */
@implementation TMBDisqus_Posts_ListPosts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_ListPosts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/ListPosts"] autorelease];
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
		TMBDisqus_Posts_ListPosts_ResultSet *results = [[[TMBDisqus_Posts_ListPosts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPosts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_ListPosts_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_ListPosts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ApprovePosts Choreo.
 */
@implementation TMBDisqus_Posts_ApprovePosts_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PostID input for this Choreo.
	*(required, integer) The post ID which is to be approved. Note that you must be a forum moderator to approve posts.
	 */
	-(void)setPostID:(NSString*)PostID {
		[super setInput:@"PostID" toValue:PostID];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ApprovePosts Choreo.
 */
@implementation TMBDisqus_Posts_ApprovePosts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Approves a post.
 */
@implementation TMBDisqus_Posts_ApprovePosts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_ApprovePosts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/ApprovePosts"] autorelease];
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
		TMBDisqus_Posts_ApprovePosts_ResultSet *results = [[[TMBDisqus_Posts_ApprovePosts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ApprovePosts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_ApprovePosts_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_ApprovePosts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CloseThread Choreo.
 */
@implementation TMBDisqus_Threads_CloseThread_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, integer) A forum ID. Required if setting either ThreadByIdentification, or ThreadByLink.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(conditional, integer) The ID of a thread that is to be closed. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadByIdentification cannot be set.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}

	/*!
	 * Set the value of the ThreadIdentifier input for this Choreo.
	*(conditional, string) The identifier to retrieve associated thread details.  Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
	 */
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier {
		[super setInput:@"ThreadIdentifier" toValue:ThreadIdentifier];
	}

	/*!
	 * Set the value of the ThreadLink input for this Choreo.
	*(conditional, string) The link pointing to the thread that is to be closed. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
	 */
	-(void)setThreadLink:(NSString*)ThreadLink {
		[super setInput:@"ThreadLink" toValue:ThreadLink];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CloseThread Choreo.
 */
@implementation TMBDisqus_Threads_CloseThread_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Close a thread.
 */
@implementation TMBDisqus_Threads_CloseThread

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Threads_CloseThread Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Threads/CloseThread"] autorelease];
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
		TMBDisqus_Threads_CloseThread_ResultSet *results = [[[TMBDisqus_Threads_CloseThread_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CloseThread Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Threads_CloseThread_Inputs*)newInputSet {
		return [[[TMBDisqus_Threads_CloseThread_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemoveThread Choreo.
 */
@implementation TMBDisqus_Threads_RemoveThread_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, integer) The forum ID of a thread that is to be removed.  Required if setting either ThreadByIdentification, or ThreadByLink.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(conditional, integer) The ID of a thread that is to be removed. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}

	/*!
	 * Set the value of the ThreadIdentifier input for this Choreo.
	*(optional, string) The identifier for the thread that is to be removed.  Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
	 */
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier {
		[super setInput:@"ThreadIdentifier" toValue:ThreadIdentifier];
	}

	/*!
	 * Set the value of the ThreadLink input for this Choreo.
	*(optional, string) A link pointing to the thread that is to be removed. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
	 */
	-(void)setThreadLink:(NSString*)ThreadLink {
		[super setInput:@"ThreadLink" toValue:ThreadLink];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveThread Choreo.
 */
@implementation TMBDisqus_Threads_RemoveThread_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Remove a thread.
 */
@implementation TMBDisqus_Threads_RemoveThread

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Threads_RemoveThread Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Threads/RemoveThread"] autorelease];
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
		TMBDisqus_Threads_RemoveThread_ResultSet *results = [[[TMBDisqus_Threads_RemoveThread_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemoveThread Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Threads_RemoveThread_Inputs*)newInputSet {
		return [[[TMBDisqus_Threads_RemoveThread_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListThreads Choreo.
 */
@implementation TMBDisqus_Trends_ListThreads_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) The name of a callback function to wrap the respone in. Used when setting ResponseFormat to "jsonp".
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, string) Allows you to look up a forum by ID (aka the short name).
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of records to return. Defaults to 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the Related input for this Choreo.
	*(optional, string) Indicates the relations to include with your response. Valid values are: forum, author, category.
	 */
	-(void)setRelated:(NSString*)Related {
		[super setInput:@"Related" toValue:Related];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListThreads Choreo.
 */
@implementation TMBDisqus_Trends_ListThreads_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of trending threads.
 */
@implementation TMBDisqus_Trends_ListThreads

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Trends_ListThreads Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Trends/ListThreads"] autorelease];
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
		TMBDisqus_Trends_ListThreads_ResultSet *results = [[[TMBDisqus_Trends_ListThreads_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListThreads Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Trends_ListThreads_Inputs*)newInputSet {
		return [[[TMBDisqus_Trends_ListThreads_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UnhighlightPost Choreo.
 */
@implementation TMBDisqus_Posts_UnhighlightPost_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PostID input for this Choreo.
	*(required, integer) The post ID which is to be unhighlighted.
	 */
	-(void)setPostID:(NSString*)PostID {
		[super setInput:@"PostID" toValue:PostID];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnhighlightPost Choreo.
 */
@implementation TMBDisqus_Posts_UnhighlightPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Unhighlight a previously highlighted post.
 */
@implementation TMBDisqus_Posts_UnhighlightPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_UnhighlightPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/UnhighlightPost"] autorelease];
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
		TMBDisqus_Posts_UnhighlightPost_ResultSet *results = [[[TMBDisqus_Posts_UnhighlightPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UnhighlightPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_UnhighlightPost_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_UnhighlightPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the HighlightPost Choreo.
 */
@implementation TMBDisqus_Posts_HighlightPost_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PostID input for this Choreo.
	*(required, integer) The post ID which is to be highlighted.
	 */
	-(void)setPostID:(NSString*)PostID {
		[super setInput:@"PostID" toValue:PostID];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HighlightPost Choreo.
 */
@implementation TMBDisqus_Posts_HighlightPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Highlight a post.
 */
@implementation TMBDisqus_Posts_HighlightPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_HighlightPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/HighlightPost"] autorelease];
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
		TMBDisqus_Posts_HighlightPost_ResultSet *results = [[[TMBDisqus_Posts_HighlightPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the HighlightPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_HighlightPost_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_HighlightPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListActiveForums Choreo.
 */
@implementation TMBDisqus_Users_ListActiveForums_Inputs

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, string) Default is set to null.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of records to return. Defaults to 25.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) The sort order for the results. Valid values are: asc or desc. Default is set to: asc.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SinceID input for this Choreo.
	*(optional, integer) A Unix timestamp (or ISO datetime standard) to obtain results from. Default is set to null.
	 */
	-(void)setSinceID:(NSString*)SinceID {
		[super setInput:@"SinceID" toValue:SinceID];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, string) the Disqus User ID, for which active forum information will be retrieved.  If UserID is set, then Username must be null.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) A Disqus username.  If Username is being set, then UserID must be null.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListActiveForums Choreo.
 */
@implementation TMBDisqus_Users_ListActiveForums_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of forums a user has been active on.
 */
@implementation TMBDisqus_Users_ListActiveForums

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Users_ListActiveForums Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Users/ListActiveForums"] autorelease];
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
		TMBDisqus_Users_ListActiveForums_ResultSet *results = [[[TMBDisqus_Users_ListActiveForums_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListActiveForums Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Users_ListActiveForums_Inputs*)newInputSet {
		return [[[TMBDisqus_Users_ListActiveForums_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CheckUsername Choreo.
 */
@implementation TMBDisqus_Users_CheckUsername_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) The name of a callback function to wrap the respone in. Used when setting ResponseFormat to "jsonp".
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Enter a Disqus username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CheckUsername Choreo.
 */
@implementation TMBDisqus_Users_CheckUsername_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Check whether the provided username is available.  An error is returned if the entered username is either taken, or invalid.
 */
@implementation TMBDisqus_Users_CheckUsername

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Users_CheckUsername Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Users/CheckUsername"] autorelease];
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
		TMBDisqus_Users_CheckUsername_ResultSet *results = [[[TMBDisqus_Users_CheckUsername_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CheckUsername Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Users_CheckUsername_Inputs*)newInputSet {
		return [[[TMBDisqus_Users_CheckUsername_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ThreadDetails Choreo.
 */
@implementation TMBDisqus_Threads_ThreadDetails_Inputs

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, integer) A forum ID.  Required if setting either ThreadByIdentification, or ThreadByLink.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the Related input for this Choreo.
	*(optional, string) Specify a related thread or forum that are to be included in the response.  Valid entries include: author, category, or forum.
	 */
	-(void)setRelated:(NSString*)Related {
		[super setInput:@"Related" toValue:Related];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(conditional, integer) The ID of a thread that is to be retrieved. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}

	/*!
	 * Set the value of the ThreadIdentifier input for this Choreo.
	*(conditional, string) The identifier to retrieve associated thread details. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
	 */
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier {
		[super setInput:@"ThreadIdentifier" toValue:ThreadIdentifier];
	}

	/*!
	 * Set the value of the ThreadLink input for this Choreo.
	*(conditional, string) A link pointing to the thread that is to be retrieved. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
	 */
	-(void)setThreadLink:(NSString*)ThreadLink {
		[super setInput:@"ThreadLink" toValue:ThreadLink];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ThreadDetails Choreo.
 */
@implementation TMBDisqus_Threads_ThreadDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain thread details.
 */
@implementation TMBDisqus_Threads_ThreadDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Threads_ThreadDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Threads/ThreadDetails"] autorelease];
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
		TMBDisqus_Threads_ThreadDetails_ResultSet *results = [[[TMBDisqus_Threads_ThreadDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ThreadDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Threads_ThreadDetails_Inputs*)newInputSet {
		return [[[TMBDisqus_Threads_ThreadDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the OpenThread Choreo.
 */
@implementation TMBDisqus_Threads_OpenThread_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, integer) The forum ID of the thread that is to be opened.  Required if setting either ThreadByIdentification, or ThreadByLink.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(conditional, integer) The ID of a thread. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}

	/*!
	 * Set the value of the ThreadIdentifier input for this Choreo.
	*(conditional, string) The identifier of the thread that is to be opened. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
	 */
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier {
		[super setInput:@"ThreadIdentifier" toValue:ThreadIdentifier];
	}

	/*!
	 * Set the value of the ThreadLink input for this Choreo.
	*(conditional, string) A link pointing to the thread that is to be opened. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
	 */
	-(void)setThreadLink:(NSString*)ThreadLink {
		[super setInput:@"ThreadLink" toValue:ThreadLink];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the OpenThread Choreo.
 */
@implementation TMBDisqus_Threads_OpenThread_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Open a thread.
 */
@implementation TMBDisqus_Threads_OpenThread

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Threads_OpenThread Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Threads/OpenThread"] autorelease];
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
		TMBDisqus_Threads_OpenThread_ResultSet *results = [[[TMBDisqus_Threads_OpenThread_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the OpenThread Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Threads_OpenThread_Inputs*)newInputSet {
		return [[[TMBDisqus_Threads_OpenThread_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPosts Choreo.
 */
@implementation TMBDisqus_Threads_ListPosts_Inputs

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, string) Default is set to null.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, integer) A Disqus forum ID (AKA a short name). If null, threads from all forums moderated by the authenticating user will be retrieved.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the Include input for this Choreo.
	*(optional, string) Specify a post status parameter to filter results by. Valid parameters include: unapproved, approved, spam, deleted, flagged.  Default is set to: approved.
	 */
	-(void)setInclude:(NSString*)Include {
		[super setInput:@"Include" toValue:Include];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of records to return. Maximum value is 100.  Defaults to 25.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) The sort order of the results. Valid values are: asc or desc. Default is set to: asc.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A search string to limit results.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Related input for this Choreo.
	*(optional, string) Specify a related thread or forum that are to be included in the response.  Valid entries include: forum.
	 */
	-(void)setRelated:(NSString*)Related {
		[super setInput:@"Related" toValue:Related];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, integer) A Unix timestamp (or ISO datetime standard) to obtain results from. Default is set to null.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(conditional, string) A Thread ID to narrow post search results. Required unless specifying ThreadIdentifier or ThreadLink.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}

	/*!
	 * Set the value of the ThreadIdentifier input for this Choreo.
	*(optional, string) An identifier to retrieve associated thread details. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
	 */
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier {
		[super setInput:@"ThreadIdentifier" toValue:ThreadIdentifier];
	}

	/*!
	 * Set the value of the ThreadLink input for this Choreo.
	*(optional, string) A link pointing to the thread that is to be retrieved. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
	 */
	-(void)setThreadLink:(NSString*)ThreadLink {
		[super setInput:@"ThreadLink" toValue:ThreadLink];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPosts Choreo.
 */
@implementation TMBDisqus_Threads_ListPosts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of posts within a thread.
 */
@implementation TMBDisqus_Threads_ListPosts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Threads_ListPosts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Threads/ListPosts"] autorelease];
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
		TMBDisqus_Threads_ListPosts_ResultSet *results = [[[TMBDisqus_Threads_ListPosts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPosts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Threads_ListPosts_Inputs*)newInputSet {
		return [[[TMBDisqus_Threads_ListPosts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListThreadReactions Choreo.
 */
@implementation TMBDisqus_Threads_ListThreadReactions_Inputs

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, string) Default is set to null.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, integer) A Disqus forum ID (AKA a short name). If null, threads from all forums moderated by the authenticating user will be retrieved.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of records to return. Maximum value is 100.  Defaults to 25.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(conditional, string) The ID of the Thread to list reactions for. Required unless specifying ThreadIdentifier or ThreadLink.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}

	/*!
	 * Set the value of the ThreadIdentifier input for this Choreo.
	*(conditional, string) An identifier for which thread reactions will be retrieved.  Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
	 */
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier {
		[super setInput:@"ThreadIdentifier" toValue:ThreadIdentifier];
	}

	/*!
	 * Set the value of the ThreadLink input for this Choreo.
	*(conditional, string) A link pointing to the thread that is to be retrieved. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
	 */
	-(void)setThreadLink:(NSString*)ThreadLink {
		[super setInput:@"ThreadLink" toValue:ThreadLink];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListThreadReactions Choreo.
 */
@implementation TMBDisqus_Threads_ListThreadReactions_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of reactions for a given thread.
 */
@implementation TMBDisqus_Threads_ListThreadReactions

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Threads_ListThreadReactions Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Threads/ListThreadReactions"] autorelease];
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
		TMBDisqus_Threads_ListThreadReactions_ResultSet *results = [[[TMBDisqus_Threads_ListThreadReactions_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListThreadReactions Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Threads_ListThreadReactions_Inputs*)newInputSet {
		return [[[TMBDisqus_Threads_ListThreadReactions_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SubscribeToThread Choreo.
 */
@implementation TMBDisqus_Threads_SubscribeToThread_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) An email address to use when subscribing to the thread.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, integer) The forum ID of a thread that is to be subscribed to. Required if setting either ThreadByIdentification, or ThreadByLink.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(conditional, integer) Enter an ID of a thread that is to be subscribed to. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}

	/*!
	 * Set the value of the ThreadIdentifier input for this Choreo.
	*(conditional, string) The identifier for the thread that is to be subscribed to.  Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
	 */
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier {
		[super setInput:@"ThreadIdentifier" toValue:ThreadIdentifier];
	}

	/*!
	 * Set the value of the ThreadLink input for this Choreo.
	*(conditional, string) A link pointing to the thread that is to be subscribed to. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
	 */
	-(void)setThreadLink:(NSString*)ThreadLink {
		[super setInput:@"ThreadLink" toValue:ThreadLink];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SubscribeToThread Choreo.
 */
@implementation TMBDisqus_Threads_SubscribeToThread_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Subscribe to a thread.
 */
@implementation TMBDisqus_Threads_SubscribeToThread

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Threads_SubscribeToThread Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Threads/SubscribeToThread"] autorelease];
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
		TMBDisqus_Threads_SubscribeToThread_ResultSet *results = [[[TMBDisqus_Threads_SubscribeToThread_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SubscribeToThread Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Threads_SubscribeToThread_Inputs*)newInputSet {
		return [[[TMBDisqus_Threads_SubscribeToThread_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPosts Choreo.
 */
@implementation TMBDisqus_Users_ListPosts_Inputs

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, string) Default is set to null.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the Included input for this Choreo.
	*(optional, string) Specify the type of posts that are to be retrieved. Valid values are: unapproved, approved, spam, deleted, flagged, highlighted.  Default is: approved.
	 */
	-(void)setIncluded:(NSString*)Included {
		[super setInput:@"Included" toValue:Included];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of records to return. Defaults to 25.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) The sort order for the results. valid values are: asc or desc. Default is set to: asc.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the Related input for this Choreo.
	*(optional, string) Indicates the relations to include with your response. Valid values are: forum, author, category.
	 */
	-(void)setRelated:(NSString*)Related {
		[super setInput:@"Related" toValue:Related];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SinceID input for this Choreo.
	*(optional, integer) Default is set to null.
	 */
	-(void)setSinceID:(NSString*)SinceID {
		[super setInput:@"SinceID" toValue:SinceID];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The Disqus User ID, for which active forum information will be retrieved.  If UserID is set, then Username must be null.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(optional, string) A Disqus username. If Username is being set, then UserID must be null.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPosts Choreo.
 */
@implementation TMBDisqus_Users_ListPosts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * List posts made by a user.
 */
@implementation TMBDisqus_Users_ListPosts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Users_ListPosts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Users/ListPosts"] autorelease];
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
		TMBDisqus_Users_ListPosts_ResultSet *results = [[[TMBDisqus_Users_ListPosts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPosts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Users_ListPosts_Inputs*)newInputSet {
		return [[[TMBDisqus_Users_ListPosts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListThreads Choreo.
 */
@implementation TMBDisqus_Threads_ListThreads_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the AuthorID input for this Choreo.
	*(optional, integer) A Disqus User ID, for which threads will be retrieved. If AuthorID is set, then AuthorUsername must be null.
	 */
	-(void)setAuthorID:(NSString*)AuthorID {
		[super setInput:@"AuthorID" toValue:AuthorID];
	}

	/*!
	 * Set the value of the AuthorUsername input for this Choreo.
	*(optional, string) A Disqus username for which threads will be retrieved.  If AuthorUsername is being set, then AuthorID must be null.
	 */
	-(void)setAuthorUsername:(NSString*)AuthorUsername {
		[super setInput:@"AuthorUsername" toValue:AuthorUsername];
	}

	/*!
	 * Set the value of the Category input for this Choreo.
	*(optional, integer) Specify a category ID for which threads wil be retrieved.
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, string) Default is set to null.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, string) A Disqus forum name to display all threads contained in that specified forum.  If null, threads from all forums moderated by the authenticating user will be retrieved.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the Include input for this Choreo.
	*(optional, string) Specify a post status parameter to filter results by. Valid parameters include: open, closed, killed.  Default is set to: open, closed.
	 */
	-(void)setInclude:(NSString*)Include {
		[super setInput:@"Include" toValue:Include];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of records to return. Maximum value is 100.  Defaults to 25.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) The sort order for the results. Valid values are: asc or desc. Default is set to: asc.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the Related input for this Choreo.
	*(optional, string) Specify a related thread or forum that are to be included in the response.  Valid entries include: author, or category.
	 */
	-(void)setRelated:(NSString*)Related {
		[super setInput:@"Related" toValue:Related];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SinceID input for this Choreo.
	*(optional, integer) A Unix timestamp (or ISO datetime standard) to obtain results from. Default is set to null.
	 */
	-(void)setSinceID:(NSString*)SinceID {
		[super setInput:@"SinceID" toValue:SinceID];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(optional, string) A Thread ID to narrow search results.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}

	/*!
	 * Set the value of the ThreadIdentifier input for this Choreo.
	*(optional, string) An identifier to retrieve associated threads. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
	 */
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier {
		[super setInput:@"ThreadIdentifier" toValue:ThreadIdentifier];
	}

	/*!
	 * Set the value of the ThreadLink input for this Choreo.
	*(optional, string) A link pointing to the thread that is to be retrieved. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
	 */
	-(void)setThreadLink:(NSString*)ThreadLink {
		[super setInput:@"ThreadLink" toValue:ThreadLink];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListThreads Choreo.
 */
@implementation TMBDisqus_Threads_ListThreads_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of threads ordered by date of creation.
 */
@implementation TMBDisqus_Threads_ListThreads

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Threads_ListThreads Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Threads/ListThreads"] autorelease];
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
		TMBDisqus_Threads_ListThreads_ResultSet *results = [[[TMBDisqus_Threads_ListThreads_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListThreads Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Threads_ListThreads_Inputs*)newInputSet {
		return [[[TMBDisqus_Threads_ListThreads_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RefreshToken Choreo.
 */
@implementation TMBDisqus_OAuth_RefreshToken_Inputs

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(required, string) A valid refresh token used to generate a new access token.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Disqus (AKA the API Secret).
	 */
	-(void)setSecretKey:(NSString*)SecretKey {
		[super setInput:@"SecretKey" toValue:SecretKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefreshToken Choreo.
 */
@implementation TMBDisqus_OAuth_RefreshToken_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The Access Token for the user that has granted access to your application.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "Expires" output from an execution of this Choreo.
	 * @return - NSString* (integer) The expiration time in seconds of the Access Token.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getExpires {
		return [super getOutputByName:@"Expires"];
	}

	/*!
	 * Retrieve the value of the "NewRefreshToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The new refresh token which can be used the next time your app needs to get a new access token.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewRefreshToken {
		return [super getOutputByName:@"NewRefreshToken"];
	}
	
@end

/*!
 * Generates a new access token with a given valid refresh token.
 */
@implementation TMBDisqus_OAuth_RefreshToken

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_OAuth_RefreshToken Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/OAuth/RefreshToken"] autorelease];
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
		TMBDisqus_OAuth_RefreshToken_ResultSet *results = [[[TMBDisqus_OAuth_RefreshToken_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RefreshToken Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_OAuth_RefreshToken_Inputs*)newInputSet {
		return [[[TMBDisqus_OAuth_RefreshToken_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FollowUser Choreo.
 */
@implementation TMBDisqus_Users_FollowUser_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Callback input for this Choreo.
	*(optional, string) The name of a callback function to wrap the respone in. Used when setting ResponseFormat to "jsonp".
	 */
	-(void)setCallback:(NSString*)Callback {
		[super setInput:@"Callback" toValue:Callback];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, string) The User ID that is to be followed. If UserID is set, then Username must be null.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) The Disqus username that is to be followed.  If Username is being set, then UserID must be null.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FollowUser Choreo.
 */
@implementation TMBDisqus_Users_FollowUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Follows the specified user.
 */
@implementation TMBDisqus_Users_FollowUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Users_FollowUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Users/FollowUser"] autorelease];
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
		TMBDisqus_Users_FollowUser_ResultSet *results = [[[TMBDisqus_Users_FollowUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FollowUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Users_FollowUser_Inputs*)newInputSet {
		return [[[TMBDisqus_Users_FollowUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UnsubscribeFromThread Choreo.
 */
@implementation TMBDisqus_Threads_UnsubscribeFromThread_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email address that will be unsubsribed from the thread.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, integer) The forum ID of a thread that is to be unsubscribed from. Required if setting either ThreadByIdentification, or ThreadByLink.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(conditional, integer) The ID of a thread that is to be unsubscribed from. Required unless specifying the ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}

	/*!
	 * Set the value of the ThreadIdentifier input for this Choreo.
	*(optional, string) The identifier for the thread that is to be unsubscribed from.  Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
	 */
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier {
		[super setInput:@"ThreadIdentifier" toValue:ThreadIdentifier];
	}

	/*!
	 * Set the value of the ThreadLink input for this Choreo.
	*(optional, string) A link pointing to the thread that is to be unsubscribed from. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
	 */
	-(void)setThreadLink:(NSString*)ThreadLink {
		[super setInput:@"ThreadLink" toValue:ThreadLink];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnsubscribeFromThread Choreo.
 */
@implementation TMBDisqus_Threads_UnsubscribeFromThread_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Unsubscribe from a thread.
 */
@implementation TMBDisqus_Threads_UnsubscribeFromThread

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Threads_UnsubscribeFromThread Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Threads/UnsubscribeFromThread"] autorelease];
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
		TMBDisqus_Threads_UnsubscribeFromThread_ResultSet *results = [[[TMBDisqus_Threads_UnsubscribeFromThread_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UnsubscribeFromThread Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Threads_UnsubscribeFromThread_Inputs*)newInputSet {
		return [[[TMBDisqus_Threads_UnsubscribeFromThread_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RestoreThread Choreo.
 */
@implementation TMBDisqus_Threads_RestoreThread_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, integer) The forum ID of a thread that is to be restored.  Required if setting either ThreadByIdentification, or ThreadByLink.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(conditional, integer) The ID of a thread that is to be restored. Required unless specifying ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}

	/*!
	 * Set the value of the ThreadIdentifier input for this Choreo.
	*(optional, string) The identifier for the thread that is to be restored.  Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
	 */
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier {
		[super setInput:@"ThreadIdentifier" toValue:ThreadIdentifier];
	}

	/*!
	 * Set the value of the ThreadLink input for this Choreo.
	*(optional, string) A link pointing to the thread that is to be restored. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
	 */
	-(void)setThreadLink:(NSString*)ThreadLink {
		[super setInput:@"ThreadLink" toValue:ThreadLink];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RestoreThread Choreo.
 */
@implementation TMBDisqus_Threads_RestoreThread_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Restore a thread.
 */
@implementation TMBDisqus_Threads_RestoreThread

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Threads_RestoreThread Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Threads/RestoreThread"] autorelease];
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
		TMBDisqus_Threads_RestoreThread_ResultSet *results = [[[TMBDisqus_Threads_RestoreThread_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RestoreThread Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Threads_RestoreThread_Inputs*)newInputSet {
		return [[[TMBDisqus_Threads_RestoreThread_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MarkAsSpam Choreo.
 */
@implementation TMBDisqus_Posts_MarkAsSpam_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PostID input for this Choreo.
	*(required, integer) The post ID which is to be marked as spam.
	 */
	-(void)setPostID:(NSString*)PostID {
		[super setInput:@"PostID" toValue:PostID];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MarkAsSpam Choreo.
 */
@implementation TMBDisqus_Posts_MarkAsSpam_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Mark a post as spam.
 */
@implementation TMBDisqus_Posts_MarkAsSpam

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_MarkAsSpam Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/MarkAsSpam"] autorelease];
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
		TMBDisqus_Posts_MarkAsSpam_ResultSet *results = [[[TMBDisqus_Posts_MarkAsSpam_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MarkAsSpam Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_MarkAsSpam_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_MarkAsSpam_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the VoteOnThread Choreo.
 */
@implementation TMBDisqus_Threads_VoteOnThread_Inputs

	/*!
	 * Set the value of the Forum input for this Choreo.
	*(optional, integer) The forum ID of a thread that is being voted on. Required if setting either ThreadByIdentification, or ThreadByLink.
	 */
	-(void)setForum:(NSString*)Forum {
		[super setInput:@"Forum" toValue:Forum];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ThreadID input for this Choreo.
	*(optional, integer) The ID of a thread that is being voted on. Required unless specifying the ThreadIdentifier or ThreadLink. If using this parameter, ThreadIdentifier cannot be set.
	 */
	-(void)setThreadID:(NSString*)ThreadID {
		[super setInput:@"ThreadID" toValue:ThreadID];
	}

	/*!
	 * Set the value of the ThreadIdentifier input for this Choreo.
	*(optional, string) The identifier for the thread that is being voted on. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadLink cannot be used.
	 */
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier {
		[super setInput:@"ThreadIdentifier" toValue:ThreadIdentifier];
	}

	/*!
	 * Set the value of the ThreadLink input for this Choreo.
	*(optional, string) A link pointing to the thread that is being voted on. Note that a Forum must also be provided when using this parameter. If set, ThreadID and ThreadIdentifier cannot be set.
	 */
	-(void)setThreadLink:(NSString*)ThreadLink {
		[super setInput:@"ThreadLink" toValue:ThreadLink];
	}

	/*!
	 * Set the value of the Vote input for this Choreo.
	*(required, integer) A numberic value for your vote. Valid choices are: -1, 0, or 1.
	 */
	-(void)setVote:(NSString*)Vote {
		[super setInput:@"Vote" toValue:Vote];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VoteOnThread Choreo.
 */
@implementation TMBDisqus_Threads_VoteOnThread_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Vote on a thread.
 */
@implementation TMBDisqus_Threads_VoteOnThread

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Threads_VoteOnThread Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Threads/VoteOnThread"] autorelease];
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
		TMBDisqus_Threads_VoteOnThread_ResultSet *results = [[[TMBDisqus_Threads_VoteOnThread_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the VoteOnThread Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Threads_VoteOnThread_Inputs*)newInputSet {
		return [[[TMBDisqus_Threads_VoteOnThread_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateAuthenticatedPost Choreo.
 */
@implementation TMBDisqus_Posts_CreateAuthenticatedPost_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) The date of the post, either in Unix timestamp format, or ISO datetime standard. You must be a moderator to do this.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the IPAddress input for this Choreo.
	*(optional, string) The author's IP address. You must be a moderator to do this.
	 */
	-(void)setIPAddress:(NSString*)IPAddress {
		[super setInput:@"IPAddress" toValue:IPAddress];
	}

	/*!
	 * Set the value of the ParentPost input for this Choreo.
	*(conditional, string) The ID of a parent post to which the new post will be responding to. Either ParentPost, or Thread must be set, or both.
	 */
	-(void)setParentPost:(NSString*)ParentPost {
		[super setInput:@"ParentPost" toValue:ParentPost];
	}

	/*!
	 * Set the value of the PostContent input for this Choreo.
	*(required, string) The text of this post.
	 */
	-(void)setPostContent:(NSString*)PostContent {
		[super setInput:@"PostContent" toValue:PostContent];
	}

	/*!
	 * Set the value of the PostState input for this Choreo.
	*(optional, string) Specify the state of the post (comment). Available options include: unapproved, approved, spam, killed. You must be a moderator to do this. If set, pre-approval validation will be skipped.
	 */
	-(void)setPostState:(NSString*)PostState {
		[super setInput:@"PostState" toValue:PostState];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Thread input for this Choreo.
	*(conditional, string) The thread ID to attach the new post to. Either ParentPost, or Thread must be set, or both.
	 */
	-(void)setThread:(NSString*)Thread {
		[super setInput:@"Thread" toValue:Thread];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAuthenticatedPost Choreo.
 */
@implementation TMBDisqus_Posts_CreateAuthenticatedPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Create a new post for the authenticated user.
 */
@implementation TMBDisqus_Posts_CreateAuthenticatedPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_CreateAuthenticatedPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/CreateAuthenticatedPost"] autorelease];
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
		TMBDisqus_Posts_CreateAuthenticatedPost_ResultSet *results = [[[TMBDisqus_Posts_CreateAuthenticatedPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAuthenticatedPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_CreateAuthenticatedPost_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_CreateAuthenticatedPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PostDetails Choreo.
 */
@implementation TMBDisqus_Posts_PostDetails_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PostID input for this Choreo.
	*(required, integer) The post ID for which information will be returned.
	 */
	-(void)setPostID:(NSString*)PostID {
		[super setInput:@"PostID" toValue:PostID];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the Related input for this Choreo.
	*(optional, string) Specify a related thread or forum that are to be included in the response.  Valid entries include: thread, or forum.
	 */
	-(void)setRelated:(NSString*)Related {
		[super setInput:@"Related" toValue:Related];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PostDetails Choreo.
 */
@implementation TMBDisqus_Posts_PostDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain information about a post.
 */
@implementation TMBDisqus_Posts_PostDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_PostDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/PostDetails"] autorelease];
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
		TMBDisqus_Posts_PostDetails_ResultSet *results = [[[TMBDisqus_Posts_PostDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PostDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_PostDetails_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_PostDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UnfollowUser Choreo.
 */
@implementation TMBDisqus_Users_UnfollowUser_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, string) The User ID that is to be unfollowed. If UserID is set, then Username must be null.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) A Disqus username.  If Username is being set, then UserID must be null.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnfollowUser Choreo.
 */
@implementation TMBDisqus_Users_UnfollowUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * List posts made by a user.
 */
@implementation TMBDisqus_Users_UnfollowUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Users_UnfollowUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Users/UnfollowUser"] autorelease];
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
		TMBDisqus_Users_UnfollowUser_ResultSet *results = [[[TMBDisqus_Users_UnfollowUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UnfollowUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Users_UnfollowUser_Inputs*)newInputSet {
		return [[[TMBDisqus_Users_UnfollowUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBDisqus_OAuth_FinalizeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) (Deprecated) This input variable is no longer necessary and will be removed soon.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppKeyName input for this Choreo.
	*(optional, string) (Deprecated) This input variable is no longer necessary and will be removed soon.
	 */
	-(void)setAppKeyName:(NSString*)AppKeyName {
		[super setInput:@"AppKeyName" toValue:AppKeyName];
	}

	/*!
	 * Set the value of the AppKeyValue input for this Choreo.
	*(optional, string) (Deprecated) This input variable is no longer necessary and will be removed soon.
	 */
	-(void)setAppKeyValue:(NSString*)AppKeyValue {
		[super setInput:@"AppKeyValue" toValue:AppKeyValue];
	}

	/*!
	 * Set the value of the CallbackID input for this Choreo.
	*(required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the authorization code after the user authorizes.
	 */
	-(void)setCallbackID:(NSString*)CallbackID {
		[super setInput:@"CallbackID" toValue:CallbackID];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the SecretKey input for this Choreo.
	*(required, string) The Secret Key provided by Disqus (AKA the API Secret).
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
@implementation TMBDisqus_OAuth_FinalizeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The Access Token for the user that has granted access to your application.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "Expires" output from an execution of this Choreo.
	 * @return - NSString* (integer) The expiration time in seconds of the access token retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getExpires {
		return [super getOutputByName:@"Expires"];
	}

	/*!
	 * Retrieve the value of the "RefreshToken" output from an execution of this Choreo.
	 * @return - NSString* (string) A valid refresh token used to generate a new access token.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRefreshToken {
		return [super getOutputByName:@"RefreshToken"];
	}

	/*!
	 * Retrieve the value of the "UserID" output from an execution of this Choreo.
	 * @return - NSString* (string) The Disqus User ID associated with the access token.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getUserID {
		return [super getOutputByName:@"UserID"];
	}

	/*!
	 * Retrieve the value of the "Username" output from an execution of this Choreo.
	 * @return - NSString* (string) The Disqus Username associated with the access token.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getUsername {
		return [super getOutputByName:@"Username"];
	}
	
@end

/*!
 * Completes the OAuth 2 process by retrieving a Disqus access token, refresh token, expiration time for the access token, username and user ID, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@implementation TMBDisqus_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/OAuth/FinalizeOAuth"] autorelease];
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
		TMBDisqus_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBDisqus_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBDisqus_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateAnonymousPost Choreo.
 */
@implementation TMBDisqus_Posts_CreateAnonymousPost_Inputs

	/*!
	 * Set the value of the AuthorEmail input for this Choreo.
	*(required, string) The email address of the post author.
	 */
	-(void)setAuthorEmail:(NSString*)AuthorEmail {
		[super setInput:@"AuthorEmail" toValue:AuthorEmail];
	}

	/*!
	 * Set the value of the AuthorName input for this Choreo.
	*(optional, string) The name of the post author.
	 */
	-(void)setAuthorName:(NSString*)AuthorName {
		[super setInput:@"AuthorName" toValue:AuthorName];
	}

	/*!
	 * Set the value of the AuthorURL input for this Choreo.
	*(optional, string) The URL of the author's Disqus profile.
	 */
	-(void)setAuthorURL:(NSString*)AuthorURL {
		[super setInput:@"AuthorURL" toValue:AuthorURL];
	}

	/*!
	 * Set the value of the ParentPost input for this Choreo.
	*(conditional, string) The ID of a parent post to which the new post will be responding to. Either ParentPost, or Thread must be set, or both.
	 */
	-(void)setParentPost:(NSString*)ParentPost {
		[super setInput:@"ParentPost" toValue:ParentPost];
	}

	/*!
	 * Set the value of the PostContent input for this Choreo.
	*(required, string) The text of this post.
	 */
	-(void)setPostContent:(NSString*)PostContent {
		[super setInput:@"PostContent" toValue:PostContent];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Thread input for this Choreo.
	*(conditional, string) The thread ID to attach the new post to. Either ParentPost, or Thread must be set, or both.
	 */
	-(void)setThread:(NSString*)Thread {
		[super setInput:@"Thread" toValue:Thread];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAnonymousPost Choreo.
 */
@implementation TMBDisqus_Posts_CreateAnonymousPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an anonymous post.
 */
@implementation TMBDisqus_Posts_CreateAnonymousPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_CreateAnonymousPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/CreateAnonymousPost"] autorelease];
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
		TMBDisqus_Posts_CreateAnonymousPost_ResultSet *results = [[[TMBDisqus_Posts_CreateAnonymousPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAnonymousPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_CreateAnonymousPost_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_CreateAnonymousPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListForums Choreo.
 */
@implementation TMBDisqus_Users_ListForums_Inputs

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, string) Default is set to null.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of records to return. Defaults to 25.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) The sort order for the results. Valid vaues are: asc or desc. Default is set to: asc.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default), jsonp, or rss.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SinceID input for this Choreo.
	*(optional, integer) A Unix timestamp (or ISO datetime standard) to obtain results from. Default is set to null.
	 */
	-(void)setSinceID:(NSString*)SinceID {
		[super setInput:@"SinceID" toValue:SinceID];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, string) The Disqus User ID, for which active forum information will be retrieved.  If UserID is set, then Username must be null.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) A Disqus username.  If Username is being set, then UserID must be null.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListForums Choreo.
 */
@implementation TMBDisqus_Users_ListForums_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of forums owned by the specified user.
 */
@implementation TMBDisqus_Users_ListForums

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Users_ListForums Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Users/ListForums"] autorelease];
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
		TMBDisqus_Users_ListForums_ResultSet *results = [[[TMBDisqus_Users_ListForums_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListForums Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Users_ListForums_Inputs*)newInputSet {
		return [[[TMBDisqus_Users_ListForums_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemovePost Choreo.
 */
@implementation TMBDisqus_Posts_RemovePost_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PostID input for this Choreo.
	*(required, integer) The post ID which is to be removed.
	 */
	-(void)setPostID:(NSString*)PostID {
		[super setInput:@"PostID" toValue:PostID];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemovePost Choreo.
 */
@implementation TMBDisqus_Posts_RemovePost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Remove a post.
 */
@implementation TMBDisqus_Posts_RemovePost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_RemovePost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/RemovePost"] autorelease];
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
		TMBDisqus_Posts_RemovePost_ResultSet *results = [[[TMBDisqus_Posts_RemovePost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemovePost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_RemovePost_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_RemovePost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ReportPost Choreo.
 */
@implementation TMBDisqus_Posts_ReportPost_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PostID input for this Choreo.
	*(required, integer) The post ID which is to be reported (flagged).
	 */
	-(void)setPostID:(NSString*)PostID {
		[super setInput:@"PostID" toValue:PostID];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReportPost Choreo.
 */
@implementation TMBDisqus_Posts_ReportPost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Report (flag) a post.
 */
@implementation TMBDisqus_Posts_ReportPost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_ReportPost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/ReportPost"] autorelease];
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
		TMBDisqus_Posts_ReportPost_ResultSet *results = [[[TMBDisqus_Posts_ReportPost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ReportPost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_ReportPost_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_ReportPost_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RestorePost Choreo.
 */
@implementation TMBDisqus_Posts_RestorePost_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) A valid OAuth 2.0 access token.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PostID input for this Choreo.
	*(required, integer) The post ID which is to be restored (undeleted).
	 */
	-(void)setPostID:(NSString*)PostID {
		[super setInput:@"PostID" toValue:PostID];
	}

	/*!
	 * Set the value of the PublicKey input for this Choreo.
	*(required, string) The Public Key provided by Disqus (AKA the API Key).
	 */
	-(void)setPublicKey:(NSString*)PublicKey {
		[super setInput:@"PublicKey" toValue:PublicKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and jsonp.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RestorePost Choreo.
 */
@implementation TMBDisqus_Posts_RestorePost_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Disqus.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Restore a deleted post.
 */
@implementation TMBDisqus_Posts_RestorePost

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDisqus_Posts_RestorePost Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Disqus/Posts/RestorePost"] autorelease];
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
		TMBDisqus_Posts_RestorePost_ResultSet *results = [[[TMBDisqus_Posts_RestorePost_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RestorePost Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDisqus_Posts_RestorePost_Inputs*)newInputSet {
		return [[[TMBDisqus_Posts_RestorePost_Inputs alloc] init] autorelease];
	}
@end
	