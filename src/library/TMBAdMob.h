/*!
 * @header Temboo iOS SDK AdMob classes
 *
 * Execute Choreographies from the Temboo AdMob bundle.
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

/*! group TMBAdMob.AdGroupStats Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AdGroupStats Choreo.
 */
@interface TMBAdMob_AdGroupStats_Inputs : TMBChoreographyInputSet
	-(void)setAdGroupID:(NSString*)AdGroupID;
	-(void)setClientKey:(NSString*)ClientKey;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setObjectDimension:(NSString*)ObjectDimension;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setTimeDimension:(NSString*)TimeDimension;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdGroupStats Choreo.
 */
@interface TMBAdMob_AdGroupStats_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Search for Ad Group statistics by entering their IDs.
 */
@interface TMBAdMob_AdGroupStats : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAdMob_AdGroupStats_Inputs*)newInputSet;
@end

/*! group TMBAdMob_AdGroupStats Choreo */


/*! group TMBAdMob.CampaignStats Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CampaignStats Choreo.
 */
@interface TMBAdMob_CampaignStats_Inputs : TMBChoreographyInputSet
	-(void)setCampaignID:(NSString*)CampaignID;
	-(void)setClientKey:(NSString*)ClientKey;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setObjectDimension:(NSString*)ObjectDimension;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setTimeDimension:(NSString*)TimeDimension;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CampaignStats Choreo.
 */
@interface TMBAdMob_CampaignStats_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Retrieve campaign stats by ID.
 */
@interface TMBAdMob_CampaignStats : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAdMob_CampaignStats_Inputs*)newInputSet;
@end

/*! group TMBAdMob_CampaignStats Choreo */


/*! group TMBAdMob.SiteSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SiteSearch Choreo.
 */
@interface TMBAdMob_SiteSearch_Inputs : TMBChoreographyInputSet
	-(void)setClientKey:(NSString*)ClientKey;
	-(void)setEmail:(NSString*)Email;
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SiteSearch Choreo.
 */
@interface TMBAdMob_SiteSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Search for sites by specifying their ID.
 */
@interface TMBAdMob_SiteSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAdMob_SiteSearch_Inputs*)newInputSet;
@end

/*! group TMBAdMob_SiteSearch Choreo */


/*! group TMBAdMob.SiteStats Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SiteStats Choreo.
 */
@interface TMBAdMob_SiteStats_Inputs : TMBChoreographyInputSet
	-(void)setClientKey:(NSString*)ClientKey;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setObjectDimension:(NSString*)ObjectDimension;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSiteID:(NSString*)SiteID;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setTimeDimension:(NSString*)TimeDimension;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SiteStats Choreo.
 */
@interface TMBAdMob_SiteStats_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Retrieve site statistics.
 */
@interface TMBAdMob_SiteStats : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAdMob_SiteStats_Inputs*)newInputSet;
@end

/*! group TMBAdMob_SiteStats Choreo */


/*! group TMBAdMob.AdStats Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AdStats Choreo.
 */
@interface TMBAdMob_AdStats_Inputs : TMBChoreographyInputSet
	-(void)setAdID:(NSString*)AdID;
	-(void)setClientKey:(NSString*)ClientKey;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setObjectDimension:(NSString*)ObjectDimension;
	-(void)setOrderBy:(NSString*)OrderBy;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setTimeDimension:(NSString*)TimeDimension;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdStats Choreo.
 */
@interface TMBAdMob_AdStats_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Retrieve ad statistics by specifying IDs.
 */
@interface TMBAdMob_AdStats : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAdMob_AdStats_Inputs*)newInputSet;
@end

/*! group TMBAdMob_AdStats Choreo */


/*! group TMBAdMob.CampaignSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CampaignSearch Choreo.
 */
@interface TMBAdMob_CampaignSearch_Inputs : TMBChoreographyInputSet
	-(void)setCampaignID:(NSString*)CampaignID;
	-(void)setClientKey:(NSString*)ClientKey;
	-(void)setEmail:(NSString*)Email;
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CampaignSearch Choreo.
 */
@interface TMBAdMob_CampaignSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Search for ad campaigns using IDs.
 */
@interface TMBAdMob_CampaignSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAdMob_CampaignSearch_Inputs*)newInputSet;
@end

/*! group TMBAdMob_CampaignSearch Choreo */


/*! group TMBAdMob.Logout Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Logout Choreo.
 */
@interface TMBAdMob_Logout_Inputs : TMBChoreographyInputSet
	-(void)setClientKey:(NSString*)ClientKey;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Logout Choreo.
 */
@interface TMBAdMob_Logout_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Logout from AdMob service.
 */
@interface TMBAdMob_Logout : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAdMob_Logout_Inputs*)newInputSet;
@end

/*! group TMBAdMob_Logout Choreo */


/*! group TMBAdMob.AdSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AdSearch Choreo.
 */
@interface TMBAdMob_AdSearch_Inputs : TMBChoreographyInputSet
	-(void)setAdGroupID:(NSString*)AdGroupID;
	-(void)setAdID:(NSString*)AdID;
	-(void)setClientKey:(NSString*)ClientKey;
	-(void)setEmail:(NSString*)Email;
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdSearch Choreo.
 */
@interface TMBAdMob_AdSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Search for ads using IDs.
 */
@interface TMBAdMob_AdSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAdMob_AdSearch_Inputs*)newInputSet;
@end

/*! group TMBAdMob_AdSearch Choreo */


/*! group TMBAdMob.AdGroupSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AdGroupSearch Choreo.
 */
@interface TMBAdMob_AdGroupSearch_Inputs : TMBChoreographyInputSet
	-(void)setAdGroupID:(NSString*)AdGroupID;
	-(void)setCampaignID:(NSString*)CampaignID;
	-(void)setClientKey:(NSString*)ClientKey;
	-(void)setEmail:(NSString*)Email;
	-(void)setIncludeDeleted:(NSString*)IncludeDeleted;
	-(void)setPassword:(NSString*)Password;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdGroupSearch Choreo.
 */
@interface TMBAdMob_AdGroupSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Search for Ad Groups using IDs.
 */
@interface TMBAdMob_AdGroupSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAdMob_AdGroupSearch_Inputs*)newInputSet;
@end

/*! group TMBAdMob_AdGroupSearch Choreo */


/*! group TMBAdMob.Login Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Login Choreo.
 */
@interface TMBAdMob_Login_Inputs : TMBChoreographyInputSet
	-(void)setClientKey:(NSString*)ClientKey;
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Login Choreo.
 */
@interface TMBAdMob_Login_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Log into AdMob service and obtain an authorization token.
 */
@interface TMBAdMob_Login : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBAdMob_Login_Inputs*)newInputSet;
@end

/*! group TMBAdMob_Login Choreo */
