/*!
 * @header Temboo iOS SDK Tumblr classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBTumblr.Post.EditQuotePost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditQuotePost Choreo.
 */
@interface TMBTumblr_Post_EditQuotePost_Inputs : TMBChoreographyInputSet
	-(void)setQuote:(NSString*)Quote;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setDate:(NSString*)Date;
	-(void)setID:(NSString*)ID;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setSource:(NSString*)Source;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditQuotePost Choreo.
 */
@interface TMBTumblr_Post_EditQuotePost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a specified quote post on a Tumblr blog.
 */
@interface TMBTumblr_Post_EditQuotePost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_EditQuotePost_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_EditQuotePost Choreo */


/*! group TMBTumblr.Blog.RetrieveBlogFollowers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveBlogFollowers Choreo.
 */
@interface TMBTumblr_Blog_RetrieveBlogFollowers_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveBlogFollowers Choreo.
 */
@interface TMBTumblr_Blog_RetrieveBlogFollowers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the count of followers for a specified Tumblr blog.
 */
@interface TMBTumblr_Blog_RetrieveBlogFollowers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Blog_RetrieveBlogFollowers_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Blog_RetrieveBlogFollowers Choreo */


/*! group TMBTumblr.Post.CreateVideoPostWithURL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateVideoPostWithURL Choreo.
 */
@interface TMBTumblr_Post_CreateVideoPostWithURL_Inputs : TMBChoreographyInputSet
	-(void)setEmbed:(NSString*)Embed;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setCaption:(NSString*)Caption;
	-(void)setDate:(NSString*)Date;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateVideoPostWithURL Choreo.
 */
@interface TMBTumblr_Post_CreateVideoPostWithURL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new video post using specified HTML embed code.
 */
@interface TMBTumblr_Post_CreateVideoPostWithURL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_CreateVideoPostWithURL_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_CreateVideoPostWithURL Choreo */


/*! group TMBTumblr.Post.UnlikePost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UnlikePost Choreo.
 */
@interface TMBTumblr_Post_UnlikePost_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setID:(NSString*)ID;
	-(void)setReblogKey:(NSString*)ReblogKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnlikePost Choreo.
 */
@interface TMBTumblr_Post_UnlikePost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows a user to like a specified post.
 */
@interface TMBTumblr_Post_UnlikePost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_UnlikePost_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_UnlikePost Choreo */


/*! group TMBTumblr.Post.EditVideoPostWithURL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditVideoPostWithURL Choreo.
 */
@interface TMBTumblr_Post_EditVideoPostWithURL_Inputs : TMBChoreographyInputSet
	-(void)setEmbed:(NSString*)Embed;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setCaption:(NSString*)Caption;
	-(void)setDate:(NSString*)Date;
	-(void)setID:(NSString*)ID;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditVideoPostWithURL Choreo.
 */
@interface TMBTumblr_Post_EditVideoPostWithURL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a specified video post on a Tumblr blog using specified HTML embed code.
 */
@interface TMBTumblr_Post_EditVideoPostWithURL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_EditVideoPostWithURL_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_EditVideoPostWithURL Choreo */


/*! group TMBTumblr.Post.RetrieveQueuedPosts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveQueuedPosts Choreo.
 */
@interface TMBTumblr_Post_RetrieveQueuedPosts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveQueuedPosts Choreo.
 */
@interface TMBTumblr_Post_RetrieveQueuedPosts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of queued posts for a specified Tumblr blog.
 */
@interface TMBTumblr_Post_RetrieveQueuedPosts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_RetrieveQueuedPosts_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_RetrieveQueuedPosts Choreo */


/*! group TMBTumblr.User.UnfollowUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UnfollowUser Choreo.
 */
@interface TMBTumblr_User_UnfollowUser_Inputs : TMBChoreographyInputSet
	-(void)setURL:(NSString*)URL;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnfollowUser Choreo.
 */
@interface TMBTumblr_User_UnfollowUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the user information associated with a given set of Tumblr Oauth credentials.
 */
@interface TMBTumblr_User_UnfollowUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_User_UnfollowUser_Inputs*)newInputSet;
@end

/*! group TMBTumblr.User_UnfollowUser Choreo */


/*! group TMBTumblr.Post.EditChatPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditChatPost Choreo.
 */
@interface TMBTumblr_Post_EditChatPost_Inputs : TMBChoreographyInputSet
	-(void)setConversation:(NSString*)Conversation;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setDate:(NSString*)Date;
	-(void)setID:(NSString*)ID;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTitle:(NSString*)Title;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditChatPost Choreo.
 */
@interface TMBTumblr_Post_EditChatPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a specified chat post on a Tumblr blog.
 */
@interface TMBTumblr_Post_EditChatPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_EditChatPost_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_EditChatPost Choreo */


/*! group TMBTumblr.User.RetrieveUserDashboard Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUserDashboard Choreo.
 */
@interface TMBTumblr_User_RetrieveUserDashboard_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLimit:(NSString*)Limit;
	-(void)setNotesInfo:(NSString*)NotesInfo;
	-(void)setOffset:(NSString*)Offset;
	-(void)setReblogInfo:(NSString*)ReblogInfo;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSinceId:(NSString*)SinceId;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUserDashboard Choreo.
 */
@interface TMBTumblr_User_RetrieveUserDashboard_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the dashboard of the user that corresponds to the OAuth credentials provided.
 */
@interface TMBTumblr_User_RetrieveUserDashboard : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_User_RetrieveUserDashboard_Inputs*)newInputSet;
@end

/*! group TMBTumblr.User_RetrieveUserDashboard Choreo */


/*! group TMBTumblr.Post.RetrievePublishedPosts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrievePublishedPosts Choreo.
 */
@interface TMBTumblr_Post_RetrievePublishedPosts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setFormat:(NSString*)Format;
	-(void)setID:(NSString*)ID;
	-(void)setLimit:(NSString*)Limit;
	-(void)setNotesInfo:(NSString*)NotesInfo;
	-(void)setOffset:(NSString*)Offset;
	-(void)setReblogInfo:(NSString*)ReblogInfo;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTag:(NSString*)Tag;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrievePublishedPosts Choreo.
 */
@interface TMBTumblr_Post_RetrievePublishedPosts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves published posts using various search and filter parameters.
 */
@interface TMBTumblr_Post_RetrievePublishedPosts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_RetrievePublishedPosts_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_RetrievePublishedPosts Choreo */


/*! group TMBTumblr.Post.EditAudioPostWithURL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditAudioPostWithURL Choreo.
 */
@interface TMBTumblr_Post_EditAudioPostWithURL_Inputs : TMBChoreographyInputSet
	-(void)setExternalURL:(NSString*)ExternalURL;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setCaption:(NSString*)Caption;
	-(void)setDate:(NSString*)Date;
	-(void)setID:(NSString*)ID;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditAudioPostWithURL Choreo.
 */
@interface TMBTumblr_Post_EditAudioPostWithURL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a specified audio post on a Tumblr blog using a specified external URL.
 */
@interface TMBTumblr_Post_EditAudioPostWithURL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_EditAudioPostWithURL_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_EditAudioPostWithURL Choreo */


/*! group TMBTumblr.Post.RetrieveDraftPosts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveDraftPosts Choreo.
 */
@interface TMBTumblr_Post_RetrieveDraftPosts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveDraftPosts Choreo.
 */
@interface TMBTumblr_Post_RetrieveDraftPosts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of queued posts for a specified Tumblr blog.
 */
@interface TMBTumblr_Post_RetrieveDraftPosts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_RetrieveDraftPosts_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_RetrieveDraftPosts Choreo */


/*! group TMBTumblr.Post.EditTextPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditTextPost Choreo.
 */
@interface TMBTumblr_Post_EditTextPost_Inputs : TMBChoreographyInputSet
	-(void)setBody:(NSString*)Body;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setDate:(NSString*)Date;
	-(void)setID:(NSString*)ID;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTitle:(NSString*)Title;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditTextPost Choreo.
 */
@interface TMBTumblr_Post_EditTextPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a specified text post on a Tumblr blog.
 */
@interface TMBTumblr_Post_EditTextPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_EditTextPost_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_EditTextPost Choreo */


/*! group TMBTumblr.Post.CreatePhotoPostWithImageFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreatePhotoPostWithImageFile Choreo.
 */
@interface TMBTumblr_Post_CreatePhotoPostWithImageFile_Inputs : TMBChoreographyInputSet
	-(void)setData:(NSString*)Data;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setCaption:(NSString*)Caption;
	-(void)setDate:(NSString*)Date;
	-(void)setLink:(NSString*)Link;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTweet:(NSString*)Tweet;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePhotoPostWithImageFile Choreo.
 */
@interface TMBTumblr_Post_CreatePhotoPostWithImageFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new photo post using an image file that you specify.
 */
@interface TMBTumblr_Post_CreatePhotoPostWithImageFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_CreatePhotoPostWithImageFile_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_CreatePhotoPostWithImageFile Choreo */


/*! group TMBTumblr.Post.DeletePost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeletePost Choreo.
 */
@interface TMBTumblr_Post_DeletePost_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setID:(NSString*)ID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeletePost Choreo.
 */
@interface TMBTumblr_Post_DeletePost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified post from a Tumblr blog.
 */
@interface TMBTumblr_Post_DeletePost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_DeletePost_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_DeletePost Choreo */


/*! group TMBTumblr.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBTumblr_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBTumblr_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;
	-(NSString*)getOAuthTokenSecret;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBTumblr_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBTumblr.OAuth_InitializeOAuth Choreo */


/*! group TMBTumblr.Post.CreateAudioPostWithURL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAudioPostWithURL Choreo.
 */
@interface TMBTumblr_Post_CreateAudioPostWithURL_Inputs : TMBChoreographyInputSet
	-(void)setExternalURL:(NSString*)ExternalURL;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setCaption:(NSString*)Caption;
	-(void)setDate:(NSString*)Date;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAudioPostWithURL Choreo.
 */
@interface TMBTumblr_Post_CreateAudioPostWithURL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new audio post using a specified external URL.
 */
@interface TMBTumblr_Post_CreateAudioPostWithURL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_CreateAudioPostWithURL_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_CreateAudioPostWithURL Choreo */


/*! group TMBTumblr.User.RetrieveFollowedBlogsForUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveFollowedBlogsForUser Choreo.
 */
@interface TMBTumblr_User_RetrieveFollowedBlogsForUser_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveFollowedBlogsForUser Choreo.
 */
@interface TMBTumblr_User_RetrieveFollowedBlogsForUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve the blogs followed by the user whose OAuth credentials are provided.
 */
@interface TMBTumblr_User_RetrieveFollowedBlogsForUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_User_RetrieveFollowedBlogsForUser_Inputs*)newInputSet;
@end

/*! group TMBTumblr.User_RetrieveFollowedBlogsForUser Choreo */


/*! group TMBTumblr.Post.RetrieveSubmissionPosts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveSubmissionPosts Choreo.
 */
@interface TMBTumblr_Post_RetrieveSubmissionPosts_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveSubmissionPosts Choreo.
 */
@interface TMBTumblr_Post_RetrieveSubmissionPosts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of submission posts for a specified Tumblr blog.
 */
@interface TMBTumblr_Post_RetrieveSubmissionPosts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_RetrieveSubmissionPosts_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_RetrieveSubmissionPosts Choreo */


/*! group TMBTumblr.Post.CreateLinkPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateLinkPost Choreo.
 */
@interface TMBTumblr_Post_CreateLinkPost_Inputs : TMBChoreographyInputSet
	-(void)setURL:(NSString*)URL;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setDate:(NSString*)Date;
	-(void)setDescription:(NSString*)Description;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTitle:(NSString*)Title;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateLinkPost Choreo.
 */
@interface TMBTumblr_Post_CreateLinkPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new link post for a specified Tumblr blog.
 */
@interface TMBTumblr_Post_CreateLinkPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_CreateLinkPost_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_CreateLinkPost Choreo */


/*! group TMBTumblr.User.RetrieveUserLikes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUserLikes Choreo.
 */
@interface TMBTumblr_User_RetrieveUserLikes_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUserLikes Choreo.
 */
@interface TMBTumblr_User_RetrieveUserLikes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the liked posts for the user that corresponds to the OAuth credentials provided.
 */
@interface TMBTumblr_User_RetrieveUserLikes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_User_RetrieveUserLikes_Inputs*)newInputSet;
@end

/*! group TMBTumblr.User_RetrieveUserLikes Choreo */


/*! group TMBTumblr.Blog.RetrieveBlogInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveBlogInfo Choreo.
 */
@interface TMBTumblr_Blog_RetrieveBlogInfo_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveBlogInfo Choreo.
 */
@interface TMBTumblr_Blog_RetrieveBlogInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns general information about the blog, such as the title, number of posts, and other high-level data.
 */
@interface TMBTumblr_Blog_RetrieveBlogInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Blog_RetrieveBlogInfo_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Blog_RetrieveBlogInfo Choreo */


/*! group TMBTumblr.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBTumblr_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBTumblr_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessTokenSecret;
	-(NSString*)getAccessToken;	
@end

/*!
 * Completes the OAuth process by retrieving a Tumblr access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@interface TMBTumblr_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBTumblr.OAuth_FinalizeOAuth Choreo */


/*! group TMBTumblr.Post.EditPhotoPostWithImageFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditPhotoPostWithImageFile Choreo.
 */
@interface TMBTumblr_Post_EditPhotoPostWithImageFile_Inputs : TMBChoreographyInputSet
	-(void)setData:(NSString*)Data;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setCaption:(NSString*)Caption;
	-(void)setDate:(NSString*)Date;
	-(void)setID:(NSString*)ID;
	-(void)setLink:(NSString*)Link;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTweet:(NSString*)Tweet;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditPhotoPostWithImageFile Choreo.
 */
@interface TMBTumblr_Post_EditPhotoPostWithImageFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a specified photo post on a Tumblr blog using a provided image file.
 */
@interface TMBTumblr_Post_EditPhotoPostWithImageFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_EditPhotoPostWithImageFile_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_EditPhotoPostWithImageFile Choreo */


/*! group TMBTumblr.Post.CreatePhotoPostWithURL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreatePhotoPostWithURL Choreo.
 */
@interface TMBTumblr_Post_CreatePhotoPostWithURL_Inputs : TMBChoreographyInputSet
	-(void)setSource:(NSString*)Source;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setCaption:(NSString*)Caption;
	-(void)setDate:(NSString*)Date;
	-(void)setLink:(NSString*)Link;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreatePhotoPostWithURL Choreo.
 */
@interface TMBTumblr_Post_CreatePhotoPostWithURL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new photo post using a specified source image URL.
 */
@interface TMBTumblr_Post_CreatePhotoPostWithURL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_CreatePhotoPostWithURL_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_CreatePhotoPostWithURL Choreo */


/*! group TMBTumblr.Post.CreateChatPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateChatPost Choreo.
 */
@interface TMBTumblr_Post_CreateChatPost_Inputs : TMBChoreographyInputSet
	-(void)setConversation:(NSString*)Conversation;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setDate:(NSString*)Date;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTitle:(NSString*)Title;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateChatPost Choreo.
 */
@interface TMBTumblr_Post_CreateChatPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new chat post for a specified Tumblr blog.
 */
@interface TMBTumblr_Post_CreateChatPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_CreateChatPost_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_CreateChatPost Choreo */


/*! group TMBTumblr.Post.CreateQuotePost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateQuotePost Choreo.
 */
@interface TMBTumblr_Post_CreateQuotePost_Inputs : TMBChoreographyInputSet
	-(void)setQuote:(NSString*)Quote;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setDate:(NSString*)Date;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setSource:(NSString*)Source;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateQuotePost Choreo.
 */
@interface TMBTumblr_Post_CreateQuotePost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new text post for a specified Tumblr blog.
 */
@interface TMBTumblr_Post_CreateQuotePost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_CreateQuotePost_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_CreateQuotePost Choreo */


/*! group TMBTumblr.User.FollowUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FollowUser Choreo.
 */
@interface TMBTumblr_User_FollowUser_Inputs : TMBChoreographyInputSet
	-(void)setURL:(NSString*)URL;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FollowUser Choreo.
 */
@interface TMBTumblr_User_FollowUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the user information associated with a given set of Tumblr Oauth credentials.
 */
@interface TMBTumblr_User_FollowUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_User_FollowUser_Inputs*)newInputSet;
@end

/*! group TMBTumblr.User_FollowUser Choreo */


/*! group TMBTumblr.User.GetUserInformation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUserInformation Choreo.
 */
@interface TMBTumblr_User_GetUserInformation_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserInformation Choreo.
 */
@interface TMBTumblr_User_GetUserInformation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the user information associated with a given set of Tumblr Oauth credentials.
 */
@interface TMBTumblr_User_GetUserInformation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_User_GetUserInformation_Inputs*)newInputSet;
@end

/*! group TMBTumblr.User_GetUserInformation Choreo */


/*! group TMBTumblr.Post.CreateTextPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateTextPost Choreo.
 */
@interface TMBTumblr_Post_CreateTextPost_Inputs : TMBChoreographyInputSet
	-(void)setBody:(NSString*)Body;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setDate:(NSString*)Date;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTitle:(NSString*)Title;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTextPost Choreo.
 */
@interface TMBTumblr_Post_CreateTextPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new quote post for a specified Tumblr blog.
 */
@interface TMBTumblr_Post_CreateTextPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_CreateTextPost_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_CreateTextPost Choreo */


/*! group TMBTumblr.Post.EditPhotoPostWithURL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditPhotoPostWithURL Choreo.
 */
@interface TMBTumblr_Post_EditPhotoPostWithURL_Inputs : TMBChoreographyInputSet
	-(void)setSource:(NSString*)Source;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setCaption:(NSString*)Caption;
	-(void)setDate:(NSString*)Date;
	-(void)setID:(NSString*)ID;
	-(void)setLink:(NSString*)Link;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditPhotoPostWithURL Choreo.
 */
@interface TMBTumblr_Post_EditPhotoPostWithURL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a specified audio post on a Tumblr blog using a specified source image URL.
 */
@interface TMBTumblr_Post_EditPhotoPostWithURL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_EditPhotoPostWithURL_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_EditPhotoPostWithURL Choreo */


/*! group TMBTumblr.Post.LikePost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LikePost Choreo.
 */
@interface TMBTumblr_Post_LikePost_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setID:(NSString*)ID;
	-(void)setReblogKey:(NSString*)ReblogKey;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LikePost Choreo.
 */
@interface TMBTumblr_Post_LikePost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows a user to like a specified post.
 */
@interface TMBTumblr_Post_LikePost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_LikePost_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_LikePost Choreo */


/*! group TMBTumblr.Post.EditLinkPost Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EditLinkPost Choreo.
 */
@interface TMBTumblr_Post_EditLinkPost_Inputs : TMBChoreographyInputSet
	-(void)setURL:(NSString*)URL;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBaseHostname:(NSString*)BaseHostname;
	-(void)setDate:(NSString*)Date;
	-(void)setDescription:(NSString*)Description;
	-(void)setID:(NSString*)ID;
	-(void)setMarkdown:(NSString*)Markdown;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSecretKey:(NSString*)SecretKey;
	-(void)setSlug:(NSString*)Slug;
	-(void)setState:(NSString*)State;
	-(void)setTags:(NSString*)Tags;
	-(void)setTitle:(NSString*)Title;
	-(void)setTweet:(NSString*)Tweet;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EditLinkPost Choreo.
 */
@interface TMBTumblr_Post_EditLinkPost_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a specified link post on a Tumblr blog.
 */
@interface TMBTumblr_Post_EditLinkPost : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBTumblr_Post_EditLinkPost_Inputs*)newInputSet;
@end

/*! group TMBTumblr.Post_EditLinkPost Choreo */
