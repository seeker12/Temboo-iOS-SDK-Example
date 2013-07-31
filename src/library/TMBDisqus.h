/*!
 * @header Temboo iOS SDK Disqus classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBDisqus.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBDisqus_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setScope:(NSString*)Scope;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBDisqus_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth 2.0 process.
 */
@interface TMBDisqus_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBDisqus.OAuth_InitializeOAuth Choreo */


/*! group TMBDisqus.Posts.VoteOnPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VoteOnPost Choreo.
 */
@interface TMBDisqus_Posts_VoteOnPost_Inputs : TMBChoreographyInputSet
	-(void)setPostID:(NSString*)PostID;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVote:(NSString*)Vote;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VoteOnPost Choreo.
 */
@interface TMBDisqus_Posts_VoteOnPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Register a vote on a post.
 */
@interface TMBDisqus_Posts_VoteOnPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_VoteOnPost_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_VoteOnPost Choreo */


/*! group TMBDisqus.Posts.ListPosts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPosts Choreo.
 */
@interface TMBDisqus_Posts_ListPosts_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCategory:(NSString*)Category;
	-(void)setCursor:(NSString*)Cursor;
	-(void)setForum:(NSString*)Forum;
	-(void)setInclude:(NSString*)Include;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOrder:(NSString*)Order;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setQuery:(NSString*)Query;
	-(void)setRelated:(NSString*)Related;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSinceID:(NSString*)SinceID;
	-(void)setThreadID:(NSString*)ThreadID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPosts Choreo.
 */
@interface TMBDisqus_Posts_ListPosts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of posts ordered by date of creation.
 */
@interface TMBDisqus_Posts_ListPosts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_ListPosts_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_ListPosts Choreo */


/*! group TMBDisqus.Posts.ApprovePosts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ApprovePosts Choreo.
 */
@interface TMBDisqus_Posts_ApprovePosts_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPostID:(NSString*)PostID;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ApprovePosts Choreo.
 */
@interface TMBDisqus_Posts_ApprovePosts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Approves a post.
 */
@interface TMBDisqus_Posts_ApprovePosts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_ApprovePosts_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_ApprovePosts Choreo */


/*! group TMBDisqus.Threads.CloseThread Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CloseThread Choreo.
 */
@interface TMBDisqus_Threads_CloseThread_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setForum:(NSString*)Forum;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThreadID:(NSString*)ThreadID;
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier;
	-(void)setThreadLink:(NSString*)ThreadLink;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CloseThread Choreo.
 */
@interface TMBDisqus_Threads_CloseThread_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Close a thread.
 */
@interface TMBDisqus_Threads_CloseThread : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Threads_CloseThread_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Threads_CloseThread Choreo */


/*! group TMBDisqus.Threads.RemoveThread Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemoveThread Choreo.
 */
@interface TMBDisqus_Threads_RemoveThread_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setForum:(NSString*)Forum;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThreadID:(NSString*)ThreadID;
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier;
	-(void)setThreadLink:(NSString*)ThreadLink;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveThread Choreo.
 */
@interface TMBDisqus_Threads_RemoveThread_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Remove a thread.
 */
@interface TMBDisqus_Threads_RemoveThread : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Threads_RemoveThread_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Threads_RemoveThread Choreo */


/*! group TMBDisqus.Trends.ListThreads Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListThreads Choreo.
 */
@interface TMBDisqus_Trends_ListThreads_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCallback:(NSString*)Callback;
	-(void)setForum:(NSString*)Forum;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setRelated:(NSString*)Related;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListThreads Choreo.
 */
@interface TMBDisqus_Trends_ListThreads_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of trending threads.
 */
@interface TMBDisqus_Trends_ListThreads : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Trends_ListThreads_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Trends_ListThreads Choreo */


/*! group TMBDisqus.Posts.UnhighlightPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UnhighlightPost Choreo.
 */
@interface TMBDisqus_Posts_UnhighlightPost_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPostID:(NSString*)PostID;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnhighlightPost Choreo.
 */
@interface TMBDisqus_Posts_UnhighlightPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Unhighlight a previously highlighted post.
 */
@interface TMBDisqus_Posts_UnhighlightPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_UnhighlightPost_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_UnhighlightPost Choreo */


/*! group TMBDisqus.Posts.HighlightPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the HighlightPost Choreo.
 */
@interface TMBDisqus_Posts_HighlightPost_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPostID:(NSString*)PostID;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HighlightPost Choreo.
 */
@interface TMBDisqus_Posts_HighlightPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Highlight a post.
 */
@interface TMBDisqus_Posts_HighlightPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_HighlightPost_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_HighlightPost Choreo */


/*! group TMBDisqus.Users.ListActiveForums Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListActiveForums Choreo.
 */
@interface TMBDisqus_Users_ListActiveForums_Inputs : TMBChoreographyInputSet
	-(void)setCursor:(NSString*)Cursor;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOrder:(NSString*)Order;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSinceID:(NSString*)SinceID;
	-(void)setUserID:(NSString*)UserID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListActiveForums Choreo.
 */
@interface TMBDisqus_Users_ListActiveForums_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of forums a user has been active on.
 */
@interface TMBDisqus_Users_ListActiveForums : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Users_ListActiveForums_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Users_ListActiveForums Choreo */


/*! group TMBDisqus.Users.CheckUsername Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CheckUsername Choreo.
 */
@interface TMBDisqus_Users_CheckUsername_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCallback:(NSString*)Callback;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUsername:(NSString*)Username;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CheckUsername Choreo.
 */
@interface TMBDisqus_Users_CheckUsername_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Check whether the provided username is available.  An error is returned if the entered username is either taken, or invalid.
 */
@interface TMBDisqus_Users_CheckUsername : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Users_CheckUsername_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Users_CheckUsername Choreo */


/*! group TMBDisqus.Threads.ThreadDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ThreadDetails Choreo.
 */
@interface TMBDisqus_Threads_ThreadDetails_Inputs : TMBChoreographyInputSet
	-(void)setForum:(NSString*)Forum;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setRelated:(NSString*)Related;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThreadID:(NSString*)ThreadID;
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier;
	-(void)setThreadLink:(NSString*)ThreadLink;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ThreadDetails Choreo.
 */
@interface TMBDisqus_Threads_ThreadDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain thread details.
 */
@interface TMBDisqus_Threads_ThreadDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Threads_ThreadDetails_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Threads_ThreadDetails Choreo */


/*! group TMBDisqus.Threads.OpenThread Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the OpenThread Choreo.
 */
@interface TMBDisqus_Threads_OpenThread_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setForum:(NSString*)Forum;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThreadID:(NSString*)ThreadID;
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier;
	-(void)setThreadLink:(NSString*)ThreadLink;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the OpenThread Choreo.
 */
@interface TMBDisqus_Threads_OpenThread_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Open a thread.
 */
@interface TMBDisqus_Threads_OpenThread : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Threads_OpenThread_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Threads_OpenThread Choreo */


/*! group TMBDisqus.Threads.ListPosts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPosts Choreo.
 */
@interface TMBDisqus_Threads_ListPosts_Inputs : TMBChoreographyInputSet
	-(void)setCursor:(NSString*)Cursor;
	-(void)setForum:(NSString*)Forum;
	-(void)setInclude:(NSString*)Include;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOrder:(NSString*)Order;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setQuery:(NSString*)Query;
	-(void)setRelated:(NSString*)Related;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSince:(NSString*)Since;
	-(void)setThreadID:(NSString*)ThreadID;
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier;
	-(void)setThreadLink:(NSString*)ThreadLink;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPosts Choreo.
 */
@interface TMBDisqus_Threads_ListPosts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of posts within a thread.
 */
@interface TMBDisqus_Threads_ListPosts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Threads_ListPosts_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Threads_ListPosts Choreo */


/*! group TMBDisqus.Threads.ListThreadReactions Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListThreadReactions Choreo.
 */
@interface TMBDisqus_Threads_ListThreadReactions_Inputs : TMBChoreographyInputSet
	-(void)setCursor:(NSString*)Cursor;
	-(void)setForum:(NSString*)Forum;
	-(void)setLimit:(NSString*)Limit;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThreadID:(NSString*)ThreadID;
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier;
	-(void)setThreadLink:(NSString*)ThreadLink;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListThreadReactions Choreo.
 */
@interface TMBDisqus_Threads_ListThreadReactions_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of reactions for a given thread.
 */
@interface TMBDisqus_Threads_ListThreadReactions : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Threads_ListThreadReactions_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Threads_ListThreadReactions Choreo */


/*! group TMBDisqus.Threads.SubscribeToThread Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SubscribeToThread Choreo.
 */
@interface TMBDisqus_Threads_SubscribeToThread_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setForum:(NSString*)Forum;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThreadID:(NSString*)ThreadID;
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier;
	-(void)setThreadLink:(NSString*)ThreadLink;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SubscribeToThread Choreo.
 */
@interface TMBDisqus_Threads_SubscribeToThread_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Subscribe to a thread.
 */
@interface TMBDisqus_Threads_SubscribeToThread : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Threads_SubscribeToThread_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Threads_SubscribeToThread Choreo */


/*! group TMBDisqus.Users.ListPosts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPosts Choreo.
 */
@interface TMBDisqus_Users_ListPosts_Inputs : TMBChoreographyInputSet
	-(void)setCursor:(NSString*)Cursor;
	-(void)setIncluded:(NSString*)Included;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOrder:(NSString*)Order;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setRelated:(NSString*)Related;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSinceID:(NSString*)SinceID;
	-(void)setUserID:(NSString*)UserID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPosts Choreo.
 */
@interface TMBDisqus_Users_ListPosts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * List posts made by a user.
 */
@interface TMBDisqus_Users_ListPosts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Users_ListPosts_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Users_ListPosts Choreo */


/*! group TMBDisqus.Threads.ListThreads Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListThreads Choreo.
 */
@interface TMBDisqus_Threads_ListThreads_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAuthorID:(NSString*)AuthorID;
	-(void)setAuthorUsername:(NSString*)AuthorUsername;
	-(void)setCategory:(NSString*)Category;
	-(void)setCursor:(NSString*)Cursor;
	-(void)setForum:(NSString*)Forum;
	-(void)setInclude:(NSString*)Include;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOrder:(NSString*)Order;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setRelated:(NSString*)Related;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSinceID:(NSString*)SinceID;
	-(void)setThreadID:(NSString*)ThreadID;
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier;
	-(void)setThreadLink:(NSString*)ThreadLink;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListThreads Choreo.
 */
@interface TMBDisqus_Threads_ListThreads_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of threads ordered by date of creation.
 */
@interface TMBDisqus_Threads_ListThreads : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Threads_ListThreads_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Threads_ListThreads Choreo */


/*! group TMBDisqus.OAuth.RefreshToken Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RefreshToken Choreo.
 */
@interface TMBDisqus_OAuth_RefreshToken_Inputs : TMBChoreographyInputSet
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setRefreshToken:(NSString*)RefreshToken;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefreshToken Choreo.
 */
@interface TMBDisqus_OAuth_RefreshToken_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getExpires;
	-(NSString*)getNewRefreshToken;	
@end

/*!
 * Generates a new access token with a given valid refresh token.
 */
@interface TMBDisqus_OAuth_RefreshToken : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_OAuth_RefreshToken_Inputs*)newInputSet;
@end

/*! group TMBDisqus.OAuth_RefreshToken Choreo */


/*! group TMBDisqus.Users.FollowUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FollowUser Choreo.
 */
@interface TMBDisqus_Users_FollowUser_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCallback:(NSString*)Callback;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
	-(void)setUsername:(NSString*)Username;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FollowUser Choreo.
 */
@interface TMBDisqus_Users_FollowUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Follows the specified user.
 */
@interface TMBDisqus_Users_FollowUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Users_FollowUser_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Users_FollowUser Choreo */


/*! group TMBDisqus.Threads.UnsubscribeFromThread Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UnsubscribeFromThread Choreo.
 */
@interface TMBDisqus_Threads_UnsubscribeFromThread_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setForum:(NSString*)Forum;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThreadID:(NSString*)ThreadID;
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier;
	-(void)setThreadLink:(NSString*)ThreadLink;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnsubscribeFromThread Choreo.
 */
@interface TMBDisqus_Threads_UnsubscribeFromThread_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Unsubscribe from a thread.
 */
@interface TMBDisqus_Threads_UnsubscribeFromThread : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Threads_UnsubscribeFromThread_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Threads_UnsubscribeFromThread Choreo */


/*! group TMBDisqus.Threads.RestoreThread Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RestoreThread Choreo.
 */
@interface TMBDisqus_Threads_RestoreThread_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setForum:(NSString*)Forum;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThreadID:(NSString*)ThreadID;
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier;
	-(void)setThreadLink:(NSString*)ThreadLink;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RestoreThread Choreo.
 */
@interface TMBDisqus_Threads_RestoreThread_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Restore a thread.
 */
@interface TMBDisqus_Threads_RestoreThread : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Threads_RestoreThread_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Threads_RestoreThread Choreo */


/*! group TMBDisqus.Posts.MarkAsSpam Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MarkAsSpam Choreo.
 */
@interface TMBDisqus_Posts_MarkAsSpam_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPostID:(NSString*)PostID;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MarkAsSpam Choreo.
 */
@interface TMBDisqus_Posts_MarkAsSpam_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Mark a post as spam.
 */
@interface TMBDisqus_Posts_MarkAsSpam : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_MarkAsSpam_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_MarkAsSpam Choreo */


/*! group TMBDisqus.Threads.VoteOnThread Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the VoteOnThread Choreo.
 */
@interface TMBDisqus_Threads_VoteOnThread_Inputs : TMBChoreographyInputSet
	-(void)setForum:(NSString*)Forum;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThreadID:(NSString*)ThreadID;
	-(void)setThreadIdentifier:(NSString*)ThreadIdentifier;
	-(void)setThreadLink:(NSString*)ThreadLink;
	-(void)setVote:(NSString*)Vote;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the VoteOnThread Choreo.
 */
@interface TMBDisqus_Threads_VoteOnThread_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Vote on a thread.
 */
@interface TMBDisqus_Threads_VoteOnThread : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Threads_VoteOnThread_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Threads_VoteOnThread Choreo */


/*! group TMBDisqus.Posts.CreateAuthenticatedPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAuthenticatedPost Choreo.
 */
@interface TMBDisqus_Posts_CreateAuthenticatedPost_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setDate:(NSString*)Date;
	-(void)setIPAddress:(NSString*)IPAddress;
	-(void)setParentPost:(NSString*)ParentPost;
	-(void)setPostContent:(NSString*)PostContent;
	-(void)setPostState:(NSString*)PostState;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThread:(NSString*)Thread;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAuthenticatedPost Choreo.
 */
@interface TMBDisqus_Posts_CreateAuthenticatedPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Create a new post for the authenticated user.
 */
@interface TMBDisqus_Posts_CreateAuthenticatedPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_CreateAuthenticatedPost_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_CreateAuthenticatedPost Choreo */


/*! group TMBDisqus.Posts.PostDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PostDetails Choreo.
 */
@interface TMBDisqus_Posts_PostDetails_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPostID:(NSString*)PostID;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setRelated:(NSString*)Related;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PostDetails Choreo.
 */
@interface TMBDisqus_Posts_PostDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Obtain information about a post.
 */
@interface TMBDisqus_Posts_PostDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_PostDetails_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_PostDetails Choreo */


/*! group TMBDisqus.Users.UnfollowUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UnfollowUser Choreo.
 */
@interface TMBDisqus_Users_UnfollowUser_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnfollowUser Choreo.
 */
@interface TMBDisqus_Users_UnfollowUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * List posts made by a user.
 */
@interface TMBDisqus_Users_UnfollowUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Users_UnfollowUser_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Users_UnfollowUser Choreo */


/*! group TMBDisqus.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBDisqus_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBDisqus_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getExpires;
	-(NSString*)getRefreshToken;
	-(NSString*)getUserID;
	-(NSString*)getUsername;	
@end

/*!
 * Completes the OAuth 2 process by retrieving a Disqus access token, refresh token, expiration time for the access token, username and user ID, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@interface TMBDisqus_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBDisqus.OAuth_FinalizeOAuth Choreo */


/*! group TMBDisqus.Posts.CreateAnonymousPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAnonymousPost Choreo.
 */
@interface TMBDisqus_Posts_CreateAnonymousPost_Inputs : TMBChoreographyInputSet
	-(void)setAuthorEmail:(NSString*)AuthorEmail;
	-(void)setAuthorName:(NSString*)AuthorName;
	-(void)setAuthorURL:(NSString*)AuthorURL;
	-(void)setParentPost:(NSString*)ParentPost;
	-(void)setPostContent:(NSString*)PostContent;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThread:(NSString*)Thread;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAnonymousPost Choreo.
 */
@interface TMBDisqus_Posts_CreateAnonymousPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an anonymous post.
 */
@interface TMBDisqus_Posts_CreateAnonymousPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_CreateAnonymousPost_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_CreateAnonymousPost Choreo */


/*! group TMBDisqus.Users.ListForums Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListForums Choreo.
 */
@interface TMBDisqus_Users_ListForums_Inputs : TMBChoreographyInputSet
	-(void)setCursor:(NSString*)Cursor;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOrder:(NSString*)Order;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSinceID:(NSString*)SinceID;
	-(void)setUserID:(NSString*)UserID;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListForums Choreo.
 */
@interface TMBDisqus_Users_ListForums_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve a list of forums owned by the specified user.
 */
@interface TMBDisqus_Users_ListForums : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Users_ListForums_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Users_ListForums Choreo */


/*! group TMBDisqus.Posts.RemovePost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemovePost Choreo.
 */
@interface TMBDisqus_Posts_RemovePost_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPostID:(NSString*)PostID;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemovePost Choreo.
 */
@interface TMBDisqus_Posts_RemovePost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Remove a post.
 */
@interface TMBDisqus_Posts_RemovePost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_RemovePost_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_RemovePost Choreo */


/*! group TMBDisqus.Posts.ReportPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ReportPost Choreo.
 */
@interface TMBDisqus_Posts_ReportPost_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPostID:(NSString*)PostID;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ReportPost Choreo.
 */
@interface TMBDisqus_Posts_ReportPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Report (flag) a post.
 */
@interface TMBDisqus_Posts_ReportPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_ReportPost_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_ReportPost Choreo */


/*! group TMBDisqus.Posts.RestorePost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RestorePost Choreo.
 */
@interface TMBDisqus_Posts_RestorePost_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPostID:(NSString*)PostID;
	-(void)setPublicKey:(NSString*)PublicKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RestorePost Choreo.
 */
@interface TMBDisqus_Posts_RestorePost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Restore a deleted post.
 */
@interface TMBDisqus_Posts_RestorePost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDisqus_Posts_RestorePost_Inputs*)newInputSet;
@end

/*! group TMBDisqus.Posts_RestorePost Choreo */
