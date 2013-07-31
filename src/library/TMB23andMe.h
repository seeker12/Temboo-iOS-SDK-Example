/*!
 * @header Temboo iOS SDK 23andMe classes
 *
 * Execute Choreographies from the Temboo 23andMe bundle.
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

/*! group TMB_23andMe.Genotype Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Genotype Choreo.
 */
@interface TMB_23andMe_Genotype_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setLocations:(NSString*)Locations;
	-(void)setTestMode:(NSString*)TestMode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Genotype Choreo.
 */
@interface TMB_23andMe_Genotype_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * For each of the user's profiles, retrieves the base-pairs for given locations.
 */
@interface TMB_23andMe_Genotype : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_23andMe_Genotype_Inputs*)newInputSet;
@end

/*! group TMB_23andMe_Genotype Choreo */


/*! group TMB_23andMe.User Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the User Choreo.
 */
@interface TMB_23andMe_User_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setTestMode:(NSString*)TestMode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the User Choreo.
 */
@interface TMB_23andMe_User_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the user id, and a list of profiles including their ids and whether or not they are genotyped.
 */
@interface TMB_23andMe_User : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_23andMe_User_Inputs*)newInputSet;
@end

/*! group TMB_23andMe_User Choreo */


/*! group TMB_23andMe.Genomes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Genomes Choreo.
 */
@interface TMB_23andMe_Genomes_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setTestMode:(NSString*)TestMode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Genomes Choreo.
 */
@interface TMB_23andMe_Genomes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the entire profile's genome as a string of base pairs.
 */
@interface TMB_23andMe_Genomes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_23andMe_Genomes_Inputs*)newInputSet;
@end

/*! group TMB_23andMe_Genomes Choreo */


/*! group TMB_23andMe.OAuth.RefreshToken Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RefreshToken Choreo.
 */
@interface TMB_23andMe_OAuth_RefreshToken_Inputs : TMBChoreographyInputSet
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefreshToken Choreo.
 */
@interface TMB_23andMe_OAuth_RefreshToken_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getExpires;
	-(NSString*)getNewRefreshToken;	
@end

/*!
 * Returns the latest access token with a given valid refresh token.
 */
@interface TMB_23andMe_OAuth_RefreshToken : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_23andMe_OAuth_RefreshToken_Inputs*)newInputSet;
@end

/*! group TMB_23andMe.OAuth_RefreshToken Choreo */


/*! group TMB_23andMe.Names Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Names Choreo.
 */
@interface TMB_23andMe_Names_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setTestMode:(NSString*)TestMode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Names Choreo.
 */
@interface TMB_23andMe_Names_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves first and last names for the user and user's profiles.
 */
@interface TMB_23andMe_Names : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_23andMe_Names_Inputs*)newInputSet;
@end

/*! group TMB_23andMe_Names Choreo */


/*! group TMB_23andMe.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMB_23andMe_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
	-(void)setScope:(NSString*)Scope;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMB_23andMe_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMB_23andMe_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_23andMe_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMB_23andMe.OAuth_InitializeOAuth Choreo */


/*! group TMB_23andMe.Haplogroups Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Haplogroups Choreo.
 */
@interface TMB_23andMe_Haplogroups_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setTestMode:(NSString*)TestMode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Haplogroups Choreo.
 */
@interface TMB_23andMe_Haplogroups_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves maternal and paternal haplogroups for a user's profiles.
 */
@interface TMB_23andMe_Haplogroups : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_23andMe_Haplogroups_Inputs*)newInputSet;
@end

/*! group TMB_23andMe_Haplogroups Choreo */


/*! group TMB_23andMe.Ancestry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Ancestry Choreo.
 */
@interface TMB_23andMe_Ancestry_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setTestMode:(NSString*)TestMode;
	-(void)setThreshold:(NSString*)Threshold;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Ancestry Choreo.
 */
@interface TMB_23andMe_Ancestry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the ancestral breakdown for the user's profiles.
 */
@interface TMB_23andMe_Ancestry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_23andMe_Ancestry_Inputs*)newInputSet;
@end

/*! group TMB_23andMe_Ancestry Choreo */


/*! group TMB_23andMe.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMB_23andMe_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
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
@interface TMB_23andMe_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getExpires;
	-(NSString*)getRefreshToken;	
@end

/*!
 * Completes the OAuth process by retrieving a 23andMe access token, refresh token, and expiration time for the access token, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@interface TMB_23andMe_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMB_23andMe_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMB_23andMe.OAuth_FinalizeOAuth Choreo */
