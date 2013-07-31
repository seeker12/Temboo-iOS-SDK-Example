/*!
 * @header Temboo iOS SDK Netflix classes
 *
 * Execute Choreographies from the Temboo Netflix bundle.
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

/*! group TMBNetflix.GetRecommendations Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecommendations Choreo.
 */
@interface TMBNetflix_GetRecommendations_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setSharedSecret:(NSString*)SharedSecret;
	-(void)setStartIndex:(NSString*)StartIndex;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecommendations Choreo.
 */
@interface TMBNetflix_GetRecommendations_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of catalog title recommendations for a subscriber.
 */
@interface TMBNetflix_GetRecommendations : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNetflix_GetRecommendations_Inputs*)newInputSet;
@end

/*! group TMBNetflix_GetRecommendations Choreo */


/*! group TMBNetflix.GetQueues Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetQueues Choreo.
 */
@interface TMBNetflix_GetQueues_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setSharedSecret:(NSString*)SharedSecret;
	-(void)setSort:(NSString*)Sort;
	-(void)setStartIndex:(NSString*)StartIndex;
	-(void)setUpdatedMin:(NSString*)UpdatedMin;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetQueues Choreo.
 */
@interface TMBNetflix_GetQueues_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of a subscriber's queues.
 */
@interface TMBNetflix_GetQueues : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNetflix_GetQueues_Inputs*)newInputSet;
@end

/*! group TMBNetflix_GetQueues Choreo */


/*! group TMBNetflix.SearchTitleCatalog Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchTitleCatalog Choreo.
 */
@interface TMBNetflix_SearchTitleCatalog_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setSharedSecret:(NSString*)SharedSecret;
	-(void)setStartIndex:(NSString*)StartIndex;
	-(void)setTerm:(NSString*)Term;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchTitleCatalog Choreo.
 */
@interface TMBNetflix_SearchTitleCatalog_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for a title in the instant-watch title catalog.
 */
@interface TMBNetflix_SearchTitleCatalog : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNetflix_SearchTitleCatalog_Inputs*)newInputSet;
@end

/*! group TMBNetflix_SearchTitleCatalog Choreo */


/*! group TMBNetflix.GetInstantQueue Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetInstantQueue Choreo.
 */
@interface TMBNetflix_GetInstantQueue_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setSharedSecret:(NSString*)SharedSecret;
	-(void)setSort:(NSString*)Sort;
	-(void)setStartIndex:(NSString*)StartIndex;
	-(void)setUpdatedMin:(NSString*)UpdatedMin;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInstantQueue Choreo.
 */
@interface TMBNetflix_GetInstantQueue_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the contents of a subscriber's instant-watch queue.
 */
@interface TMBNetflix_GetInstantQueue : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNetflix_GetInstantQueue_Inputs*)newInputSet;
@end

/*! group TMBNetflix_GetInstantQueue Choreo */


/*! group TMBNetflix.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBNetflix_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
	-(void)setSharedSecret:(NSString*)SharedSecret;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBNetflix_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;
	-(NSString*)getOAuthTokenSecret;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBNetflix_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNetflix_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBNetflix.OAuth_InitializeOAuth Choreo */


/*! group TMBNetflix.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBNetflix_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setSharedSecret:(NSString*)SharedSecret;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBNetflix_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessTokenSecret;
	-(NSString*)getAccessToken;
	-(NSString*)getUserID;	
@end

/*!
 * Completes the OAuth process by retrieving a Netflix access token, token secret, and user ID for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@interface TMBNetflix_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNetflix_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBNetflix.OAuth_FinalizeOAuth Choreo */


/*! group TMBNetflix.GetDiscQueue Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDiscQueue Choreo.
 */
@interface TMBNetflix_GetDiscQueue_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMaxResults:(NSString*)MaxResults;
	-(void)setSharedSecret:(NSString*)SharedSecret;
	-(void)setSort:(NSString*)Sort;
	-(void)setStartIndex:(NSString*)StartIndex;
	-(void)setUpdatedMin:(NSString*)UpdatedMin;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDiscQueue Choreo.
 */
@interface TMBNetflix_GetDiscQueue_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the contents of a subscriber's disc queue.
 */
@interface TMBNetflix_GetDiscQueue : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNetflix_GetDiscQueue_Inputs*)newInputSet;
@end

/*! group TMBNetflix_GetDiscQueue Choreo */
