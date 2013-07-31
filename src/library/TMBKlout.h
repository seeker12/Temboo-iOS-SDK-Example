/*!
 * @header Temboo iOS SDK Klout classes
 *
 * Execute Choreographies from the Temboo Klout bundle.
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

/*! group TMBKlout.Identity.ByKloutID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByKloutID Choreo.
 */
@interface TMBKlout_Identity_ByKloutID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setKloutID:(NSString*)KloutID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByKloutID Choreo.
 */
@interface TMBKlout_Identity_ByKloutID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Performs a lookup for a user's identity using a Klout ID.
 */
@interface TMBKlout_Identity_ByKloutID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKlout_Identity_ByKloutID_Inputs*)newInputSet;
@end

/*! group TMBKlout.Identity_ByKloutID Choreo */


/*! group TMBKlout.Identity.ByTwitterID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByTwitterID Choreo.
 */
@interface TMBKlout_Identity_ByTwitterID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setTwitterID:(NSString*)TwitterID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByTwitterID Choreo.
 */
@interface TMBKlout_Identity_ByTwitterID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Performs a lookup for a user's identity using a Twitter ID.
 */
@interface TMBKlout_Identity_ByTwitterID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKlout_Identity_ByTwitterID_Inputs*)newInputSet;
@end

/*! group TMBKlout.Identity_ByTwitterID Choreo */


/*! group TMBKlout.Identity.ByTwitterScreenName Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByTwitterScreenName Choreo.
 */
@interface TMBKlout_Identity_ByTwitterScreenName_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setScreenName:(NSString*)ScreenName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByTwitterScreenName Choreo.
 */
@interface TMBKlout_Identity_ByTwitterScreenName_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Performs a lookup for a user's identity using a Twitter screen name.
 */
@interface TMBKlout_Identity_ByTwitterScreenName : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKlout_Identity_ByTwitterScreenName_Inputs*)newInputSet;
@end

/*! group TMBKlout.Identity_ByTwitterScreenName Choreo */


/*! group TMBKlout.User.Score Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Score Choreo.
 */
@interface TMBKlout_User_Score_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setKloutID:(NSString*)KloutID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Score Choreo.
 */
@interface TMBKlout_User_Score_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a user's Klout Score and deltas.
 */
@interface TMBKlout_User_Score : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKlout_User_Score_Inputs*)newInputSet;
@end

/*! group TMBKlout.User_Score Choreo */


/*! group TMBKlout.User.Influence Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Influence Choreo.
 */
@interface TMBKlout_User_Influence_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setKloutID:(NSString*)KloutID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Influence Choreo.
 */
@interface TMBKlout_User_Influence_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a user's influencers and influencees.
 */
@interface TMBKlout_User_Influence : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKlout_User_Influence_Inputs*)newInputSet;
@end

/*! group TMBKlout.User_Influence Choreo */


/*! group TMBKlout.User.Topics Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Topics Choreo.
 */
@interface TMBKlout_User_Topics_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setKloutID:(NSString*)KloutID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Topics Choreo.
 */
@interface TMBKlout_User_Topics_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a user's topics. 
 */
@interface TMBKlout_User_Topics : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKlout_User_Topics_Inputs*)newInputSet;
@end

/*! group TMBKlout.User_Topics Choreo */


/*! group TMBKlout.Identity.ByGooglePlusID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByGooglePlusID Choreo.
 */
@interface TMBKlout_Identity_ByGooglePlusID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setGooglePlusID:(NSString*)GooglePlusID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByGooglePlusID Choreo.
 */
@interface TMBKlout_Identity_ByGooglePlusID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Performs a lookup for a user's identity using a Google+ ID.
 */
@interface TMBKlout_Identity_ByGooglePlusID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKlout_Identity_ByGooglePlusID_Inputs*)newInputSet;
@end

/*! group TMBKlout.Identity_ByGooglePlusID Choreo */


/*! group TMBKlout.User.ShowUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowUser Choreo.
 */
@interface TMBKlout_User_ShowUser_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setKloutID:(NSString*)KloutID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowUser Choreo.
 */
@interface TMBKlout_User_ShowUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a specified Klout user.
 */
@interface TMBKlout_User_ShowUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKlout_User_ShowUser_Inputs*)newInputSet;
@end

/*! group TMBKlout.User_ShowUser Choreo */
