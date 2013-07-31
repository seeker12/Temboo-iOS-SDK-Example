/*!
 * @header Temboo iOS SDK Bitly classes
 *
 * Execute Choreographies from the Temboo Bitly bundle.
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

/*! group TMBBitly.Links.ExpandURL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ExpandURL Choreo.
 */
@interface TMBBitly_Links_ExpandURL_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShortURL:(NSString*)ShortURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ExpandURL Choreo.
 */
@interface TMBBitly_Links_ExpandURL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the target (long) URL given a shortened bitly URL.
 */
@interface TMBBitly_Links_ExpandURL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_Links_ExpandURL_Inputs*)newInputSet;
@end

/*! group TMBBitly.Links_ExpandURL Choreo */


/*! group TMBBitly.UserInfo.GetLinkHistory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLinkHistory Choreo.
 */
@interface TMBBitly_UserInfo_GetLinkHistory_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setArchived:(NSString*)Archived;
	-(void)setCreatedAfter:(NSString*)CreatedAfter;
	-(void)setCreatedBefore:(NSString*)CreatedBefore;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLink:(NSString*)Link;
	-(void)setModifiedAfter:(NSString*)ModifiedAfter;
	-(void)setOffset:(NSString*)Offset;
	-(void)setPrivate:(NSString*)Private;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLinkHistory Choreo.
 */
@interface TMBBitly_UserInfo_GetLinkHistory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns entries from a user's link history in reverse chronological order.
 */
@interface TMBBitly_UserInfo_GetLinkHistory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_UserInfo_GetLinkHistory_Inputs*)newInputSet;
@end

/*! group TMBBitly.UserInfo_GetLinkHistory Choreo */


/*! group TMBBitly.LinkMetrics.GetClicksForLink Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetClicksForLink Choreo.
 */
@interface TMBBitly_LinkMetrics_GetClicksForLink_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLink:(NSString*)Link;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRollup:(NSString*)Rollup;
	-(void)setTimestamp:(NSString*)Timestamp;
	-(void)setTimezone:(NSString*)Timezone;
	-(void)setUnitName:(NSString*)UnitName;
	-(void)setUnitValue:(NSString*)UnitValue;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetClicksForLink Choreo.
 */
@interface TMBBitly_LinkMetrics_GetClicksForLink_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the number of clicks on a single bitly link.
 */
@interface TMBBitly_LinkMetrics_GetClicksForLink : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_LinkMetrics_GetClicksForLink_Inputs*)newInputSet;
@end

/*! group TMBBitly.LinkMetrics_GetClicksForLink Choreo */


/*! group TMBBitly.Links.ShortenURL Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShortenURL Choreo.
 */
@interface TMBBitly_Links_ShortenURL_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLongURL:(NSString*)LongURL;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShortenURL Choreo.
 */
@interface TMBBitly_Links_ShortenURL_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a shortened URL for a long URL that you provide.
 */
@interface TMBBitly_Links_ShortenURL : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_Links_ShortenURL_Inputs*)newInputSet;
@end

/*! group TMBBitly.Links_ShortenURL Choreo */


/*! group TMBBitly.Links.GetLinkInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLinkInfo Choreo.
 */
@interface TMBBitly_Links_GetLinkInfo_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShortURL:(NSString*)ShortURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLinkInfo Choreo.
 */
@interface TMBBitly_Links_GetLinkInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the page title for a given bitly link.
 */
@interface TMBBitly_Links_GetLinkInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_Links_GetLinkInfo_Inputs*)newInputSet;
@end

/*! group TMBBitly.Links_GetLinkInfo Choreo */


/*! group TMBBitly.LinkMetrics.GetEncodersCount Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetEncodersCount Choreo.
 */
@interface TMBBitly_LinkMetrics_GetEncodersCount_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLink:(NSString*)Link;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetEncodersCount Choreo.
 */
@interface TMBBitly_LinkMetrics_GetEncodersCount_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the count of users who have shortened a specified bitly link.
 */
@interface TMBBitly_LinkMetrics_GetEncodersCount : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_LinkMetrics_GetEncodersCount_Inputs*)newInputSet;
@end

/*! group TMBBitly.LinkMetrics_GetEncodersCount Choreo */


/*! group TMBBitly.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBBitly_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBBitly_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getLogin;	
@end

/*!
 * Completes the OAuth process by retrieving a Bitly access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@interface TMBBitly_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBBitly.OAuth_FinalizeOAuth Choreo */


/*! group TMBBitly.LinkMetrics.GetCountryMetricsForLink Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCountryMetricsForLink Choreo.
 */
@interface TMBBitly_LinkMetrics_GetCountryMetricsForLink_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLink:(NSString*)Link;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRollup:(NSString*)Rollup;
	-(void)setTimestamp:(NSString*)Timestamp;
	-(void)setTimezone:(NSString*)Timezone;
	-(void)setUnitName:(NSString*)UnitName;
	-(void)setUnitValue:(NSString*)UnitValue;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCountryMetricsForLink Choreo.
 */
@interface TMBBitly_LinkMetrics_GetCountryMetricsForLink_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns metrics about the countries referring click traffic to a single bitly link.
 */
@interface TMBBitly_LinkMetrics_GetCountryMetricsForLink : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_LinkMetrics_GetCountryMetricsForLink_Inputs*)newInputSet;
@end

/*! group TMBBitly.LinkMetrics_GetCountryMetricsForLink Choreo */


/*! group TMBBitly.LinkMetrics.GetReferringDomains Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReferringDomains Choreo.
 */
@interface TMBBitly_LinkMetrics_GetReferringDomains_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLink:(NSString*)Link;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRollup:(NSString*)Rollup;
	-(void)setTimestamp:(NSString*)Timestamp;
	-(void)setTimezone:(NSString*)Timezone;
	-(void)setUnitName:(NSString*)UnitName;
	-(void)setUnitValue:(NSString*)UnitValue;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReferringDomains Choreo.
 */
@interface TMBBitly_LinkMetrics_GetReferringDomains_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns metrics about the domains referring click traffic to a single bitly link.
 */
@interface TMBBitly_LinkMetrics_GetReferringDomains : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_LinkMetrics_GetReferringDomains_Inputs*)newInputSet;
@end

/*! group TMBBitly.LinkMetrics_GetReferringDomains Choreo */


/*! group TMBBitly.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBBitly_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBBitly_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBBitly_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBBitly.OAuth_InitializeOAuth Choreo */


/*! group TMBBitly.Links.LinkLookup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LinkLookup Choreo.
 */
@interface TMBBitly_Links_LinkLookup_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setURL:(NSString*)URL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LinkLookup Choreo.
 */
@interface TMBBitly_Links_LinkLookup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Used to lookup a bitly link with a given long URL.
 */
@interface TMBBitly_Links_LinkLookup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_Links_LinkLookup_Inputs*)newInputSet;
@end

/*! group TMBBitly.Links_LinkLookup Choreo */


/*! group TMBBitly.LinkMetrics.GetReferrers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReferrers Choreo.
 */
@interface TMBBitly_LinkMetrics_GetReferrers_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLink:(NSString*)Link;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRollup:(NSString*)Rollup;
	-(void)setTimestamp:(NSString*)Timestamp;
	-(void)setTimezone:(NSString*)Timezone;
	-(void)setUnitName:(NSString*)UnitName;
	-(void)setUnitValue:(NSString*)UnitValue;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReferrers Choreo.
 */
@interface TMBBitly_LinkMetrics_GetReferrers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns metrics about the pages referring click traffic to a single bitly link.
 */
@interface TMBBitly_LinkMetrics_GetReferrers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_LinkMetrics_GetReferrers_Inputs*)newInputSet;
@end

/*! group TMBBitly.LinkMetrics_GetReferrers Choreo */


/*! group TMBBitly.UserInfo.GetUserInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUserInfo Choreo.
 */
@interface TMBBitly_UserInfo_GetUserInfo_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFullName:(NSString*)FullName;
	-(void)setLogin:(NSString*)Login;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserInfo Choreo.
 */
@interface TMBBitly_UserInfo_GetUserInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about a specified user.
 */
@interface TMBBitly_UserInfo_GetUserInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBitly_UserInfo_GetUserInfo_Inputs*)newInputSet;
@end

/*! group TMBBitly.UserInfo_GetUserInfo Choreo */
