/*!
 * @header Temboo iOS SDK RunKeeper classes
 *
 * Execute Choreographies from the Temboo RunKeeper bundle.
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

/*! group TMBRunKeeper.Profile.RetrieveProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveProfile Choreo.
 */
@interface TMBRunKeeper_Profile_RetrieveProfile_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveProfile Choreo.
 */
@interface TMBRunKeeper_Profile_RetrieveProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a user's profile information including the user’s identity, geographical location, and fitness goals.
 */
@interface TMBRunKeeper_Profile_RetrieveProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Profile_RetrieveProfile_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Profile_RetrieveProfile Choreo */


/*! group TMBRunKeeper.DiabetesMeasurements.RetrieveEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntry Choreo.
 */
@interface TMBRunKeeper_DiabetesMeasurements_RetrieveEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntry Choreo.
 */
@interface TMBRunKeeper_DiabetesMeasurements_RetrieveEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a diabetes measurement entry from a user’s feed.
 */
@interface TMBRunKeeper_DiabetesMeasurements_RetrieveEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_DiabetesMeasurements_RetrieveEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.DiabetesMeasurements_RetrieveEntry Choreo */


/*! group TMBRunKeeper.Sleep.RetrieveEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntry Choreo.
 */
@interface TMBRunKeeper_Sleep_RetrieveEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntry Choreo.
 */
@interface TMBRunKeeper_Sleep_RetrieveEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a sleep entry from a user’s feed.
 */
@interface TMBRunKeeper_Sleep_RetrieveEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Sleep_RetrieveEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Sleep_RetrieveEntry Choreo */


/*! group TMBRunKeeper.GeneralMeasurements.DeleteEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@interface TMBRunKeeper_GeneralMeasurements_DeleteEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@interface TMBRunKeeper_GeneralMeasurements_DeleteEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes an individual body measurement entry from a user’s feed.
 */
@interface TMBRunKeeper_GeneralMeasurements_DeleteEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_GeneralMeasurements_DeleteEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.GeneralMeasurements_DeleteEntry Choreo */


/*! group TMBRunKeeper.Settings.UpdateSettings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateSettings Choreo.
 */
@interface TMBRunKeeper_Settings_UpdateSettings_Inputs : TMBChoreographyInputSet
	-(void)setSettings:(NSString*)Settings;
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateSettings Choreo.
 */
@interface TMBRunKeeper_Settings_UpdateSettings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a user’s settings.
 */
@interface TMBRunKeeper_Settings_UpdateSettings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Settings_UpdateSettings_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Settings_UpdateSettings Choreo */


/*! group TMBRunKeeper.FitnessActivities.DeleteActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteActivity Choreo.
 */
@interface TMBRunKeeper_FitnessActivities_DeleteActivity_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteActivity Choreo.
 */
@interface TMBRunKeeper_FitnessActivities_DeleteActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes an individual activity from a user’s feed.
 */
@interface TMBRunKeeper_FitnessActivities_DeleteActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_FitnessActivities_DeleteActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.FitnessActivities_DeleteActivity Choreo */


/*! group TMBRunKeeper.Weight.DeleteEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@interface TMBRunKeeper_Weight_DeleteEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@interface TMBRunKeeper_Weight_DeleteEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes an individual weight entry from a user’s feed.
 */
@interface TMBRunKeeper_Weight_DeleteEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Weight_DeleteEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Weight_DeleteEntry Choreo */


/*! group TMBRunKeeper.BackgroundActivities.RecordActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RecordActivity Choreo.
 */
@interface TMBRunKeeper_BackgroundActivities_RecordActivity_Inputs : TMBChoreographyInputSet
	-(void)setActivity:(NSString*)Activity;
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RecordActivity Choreo.
 */
@interface TMBRunKeeper_BackgroundActivities_RecordActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getURI;	
@end

/*!
 * Records a newly-completed background activity, or begins recording an activity still in progress.
 */
@interface TMBRunKeeper_BackgroundActivities_RecordActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_BackgroundActivities_RecordActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.BackgroundActivities_RecordActivity Choreo */


/*! group TMBRunKeeper.Sleep.UpdateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@interface TMBRunKeeper_Sleep_UpdateEntry_Inputs : TMBChoreographyInputSet
	-(void)setEntry:(NSString*)Entry;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@interface TMBRunKeeper_Sleep_UpdateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a sleep entry in a user’s feed.
 */
@interface TMBRunKeeper_Sleep_UpdateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Sleep_UpdateEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Sleep_UpdateEntry Choreo */


/*! group TMBRunKeeper.BackgroundActivities.UpdateActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateActivity Choreo.
 */
@interface TMBRunKeeper_BackgroundActivities_UpdateActivity_Inputs : TMBChoreographyInputSet
	-(void)setActivity:(NSString*)Activity;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateActivity Choreo.
 */
@interface TMBRunKeeper_BackgroundActivities_UpdateActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a background activity in a user's feed.
 */
@interface TMBRunKeeper_BackgroundActivities_UpdateActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_BackgroundActivities_UpdateActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.BackgroundActivities_UpdateActivity Choreo */


/*! group TMBRunKeeper.GeneralMeasurements.RetrieveEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntry Choreo.
 */
@interface TMBRunKeeper_GeneralMeasurements_RetrieveEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntry Choreo.
 */
@interface TMBRunKeeper_GeneralMeasurements_RetrieveEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a body measurement entry from a user’s feed.
 */
@interface TMBRunKeeper_GeneralMeasurements_RetrieveEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_GeneralMeasurements_RetrieveEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.GeneralMeasurements_RetrieveEntry Choreo */


/*! group TMBRunKeeper.StrengthTrainingActivities.DeleteActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteActivity Choreo.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_DeleteActivity_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteActivity Choreo.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_DeleteActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes an individual strength training activity from a user’s feed.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_DeleteActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_StrengthTrainingActivities_DeleteActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.StrengthTrainingActivities_DeleteActivity Choreo */


/*! group TMBRunKeeper.StrengthTrainingActivities.RecordActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RecordActivity Choreo.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_RecordActivity_Inputs : TMBChoreographyInputSet
	-(void)setActivity:(NSString*)Activity;
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RecordActivity Choreo.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_RecordActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getURI;	
@end

/*!
 * Records a newly-completed strength training activity, or begins recording an activity still in progress.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_RecordActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_StrengthTrainingActivities_RecordActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.StrengthTrainingActivities_RecordActivity Choreo */


/*! group TMBRunKeeper.Weight.CreateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@interface TMBRunKeeper_Weight_CreateEntry_Inputs : TMBChoreographyInputSet
	-(void)setEntry:(NSString*)Entry;
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@interface TMBRunKeeper_Weight_CreateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getURI;	
@end

/*!
 * Adds a weight entry to a user's feed.
 */
@interface TMBRunKeeper_Weight_CreateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Weight_CreateEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Weight_CreateEntry Choreo */


/*! group TMBRunKeeper.DiabetesMeasurements.DeleteEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@interface TMBRunKeeper_DiabetesMeasurements_DeleteEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@interface TMBRunKeeper_DiabetesMeasurements_DeleteEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes an individual diabetes measurement entry from a user’s feed.
 */
@interface TMBRunKeeper_DiabetesMeasurements_DeleteEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_DiabetesMeasurements_DeleteEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.DiabetesMeasurements_DeleteEntry Choreo */


/*! group TMBRunKeeper.Users.RetrieveUserInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUserInfo Choreo.
 */
@interface TMBRunKeeper_Users_RetrieveUserInfo_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUserInfo Choreo.
 */
@interface TMBRunKeeper_Users_RetrieveUserInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the available resources for a specific user and the URIs for accessing them. 
 */
@interface TMBRunKeeper_Users_RetrieveUserInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Users_RetrieveUserInfo_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Users_RetrieveUserInfo Choreo */


/*! group TMBRunKeeper.FitnessActivities.RecordActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RecordActivity Choreo.
 */
@interface TMBRunKeeper_FitnessActivities_RecordActivity_Inputs : TMBChoreographyInputSet
	-(void)setActivity:(NSString*)Activity;
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RecordActivity Choreo.
 */
@interface TMBRunKeeper_FitnessActivities_RecordActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getURI;	
@end

/*!
 * Records a newly-completed activity, or begins recording an activity still in progress.
 */
@interface TMBRunKeeper_FitnessActivities_RecordActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_FitnessActivities_RecordActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.FitnessActivities_RecordActivity Choreo */


/*! group TMBRunKeeper.FitnessActivities.RetrieveActivites Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivites Choreo.
 */
@interface TMBRunKeeper_FitnessActivities_RetrieveActivites_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivites Choreo.
 */
@interface TMBRunKeeper_FitnessActivities_RetrieveActivites_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNext;
	-(NSString*)getPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a feed of a user's fitness activities.
 */
@interface TMBRunKeeper_FitnessActivities_RetrieveActivites : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_FitnessActivities_RetrieveActivites_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.FitnessActivities_RetrieveActivites Choreo */


/*! group TMBRunKeeper.BackgroundActivities.RetrieveActivities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivities Choreo.
 */
@interface TMBRunKeeper_BackgroundActivities_RetrieveActivities_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivities Choreo.
 */
@interface TMBRunKeeper_BackgroundActivities_RetrieveActivities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNext;
	-(NSString*)getPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the feed for a user's background activities.
 */
@interface TMBRunKeeper_BackgroundActivities_RetrieveActivities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_BackgroundActivities_RetrieveActivities_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.BackgroundActivities_RetrieveActivities Choreo */


/*! group TMBRunKeeper.Nutrition.CreateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@interface TMBRunKeeper_Nutrition_CreateEntry_Inputs : TMBChoreographyInputSet
	-(void)setEntry:(NSString*)Entry;
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@interface TMBRunKeeper_Nutrition_CreateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getURI;	
@end

/*!
 * Adds a nutrition entry to a user's feed.
 */
@interface TMBRunKeeper_Nutrition_CreateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Nutrition_CreateEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Nutrition_CreateEntry Choreo */


/*! group TMBRunKeeper.Nutrition.DeleteEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@interface TMBRunKeeper_Nutrition_DeleteEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@interface TMBRunKeeper_Nutrition_DeleteEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes an individual nutrition entry from a user’s feed.
 */
@interface TMBRunKeeper_Nutrition_DeleteEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Nutrition_DeleteEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Nutrition_DeleteEntry Choreo */


/*! group TMBRunKeeper.StrengthTrainingActivities.RetrieveActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivity Choreo.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivity Choreo.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a page from a user’s strength training activity history.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.StrengthTrainingActivities_RetrieveActivity Choreo */


/*! group TMBRunKeeper.GeneralMeasurements.RetrieveEntries Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntries Choreo.
 */
@interface TMBRunKeeper_GeneralMeasurements_RetrieveEntries_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntries Choreo.
 */
@interface TMBRunKeeper_GeneralMeasurements_RetrieveEntries_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNext;
	-(NSString*)getPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the feed for a user's general body measurements.
 */
@interface TMBRunKeeper_GeneralMeasurements_RetrieveEntries : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_GeneralMeasurements_RetrieveEntries_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.GeneralMeasurements_RetrieveEntries Choreo */


/*! group TMBRunKeeper.GeneralMeasurements.UpdateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@interface TMBRunKeeper_GeneralMeasurements_UpdateEntry_Inputs : TMBChoreographyInputSet
	-(void)setEntry:(NSString*)Entry;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@interface TMBRunKeeper_GeneralMeasurements_UpdateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a body measurement entry in a user’s feed.
 */
@interface TMBRunKeeper_GeneralMeasurements_UpdateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_GeneralMeasurements_UpdateEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.GeneralMeasurements_UpdateEntry Choreo */


/*! group TMBRunKeeper.Settings.RetrieveSettings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveSettings Choreo.
 */
@interface TMBRunKeeper_Settings_RetrieveSettings_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveSettings Choreo.
 */
@interface TMBRunKeeper_Settings_RetrieveSettings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a user’s settings including a user's sharing and display preferences.
 */
@interface TMBRunKeeper_Settings_RetrieveSettings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Settings_RetrieveSettings_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Settings_RetrieveSettings Choreo */


/*! group TMBRunKeeper.Nutrition.RetrieveEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntry Choreo.
 */
@interface TMBRunKeeper_Nutrition_RetrieveEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntry Choreo.
 */
@interface TMBRunKeeper_Nutrition_RetrieveEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a nutrition entry from a user’s feed.
 */
@interface TMBRunKeeper_Nutrition_RetrieveEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Nutrition_RetrieveEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Nutrition_RetrieveEntry Choreo */


/*! group TMBRunKeeper.Profile.UpdateProfile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateProfile Choreo.
 */
@interface TMBRunKeeper_Profile_UpdateProfile_Inputs : TMBChoreographyInputSet
	-(void)setProfile:(NSString*)Profile;
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateProfile Choreo.
 */
@interface TMBRunKeeper_Profile_UpdateProfile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Update's a user's profile.
 */
@interface TMBRunKeeper_Profile_UpdateProfile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Profile_UpdateProfile_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Profile_UpdateProfile Choreo */


/*! group TMBRunKeeper.Sleep.DeleteEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@interface TMBRunKeeper_Sleep_DeleteEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@interface TMBRunKeeper_Sleep_DeleteEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes an individual sleep entry from a user’s feed.
 */
@interface TMBRunKeeper_Sleep_DeleteEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Sleep_DeleteEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Sleep_DeleteEntry Choreo */


/*! group TMBRunKeeper.Nutrition.UpdateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@interface TMBRunKeeper_Nutrition_UpdateEntry_Inputs : TMBChoreographyInputSet
	-(void)setEntry:(NSString*)Entry;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@interface TMBRunKeeper_Nutrition_UpdateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a nutrition entry in a user’s feed.
 */
@interface TMBRunKeeper_Nutrition_UpdateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Nutrition_UpdateEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Nutrition_UpdateEntry Choreo */


/*! group TMBRunKeeper.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBRunKeeper_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
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
@interface TMBRunKeeper_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBRunKeeper_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.OAuth_InitializeOAuth Choreo */


/*! group TMBRunKeeper.Nutrition.RetrieveEntries Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntries Choreo.
 */
@interface TMBRunKeeper_Nutrition_RetrieveEntries_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntries Choreo.
 */
@interface TMBRunKeeper_Nutrition_RetrieveEntries_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNext;
	-(NSString*)getPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the feed for a user's nutrition entries.
 */
@interface TMBRunKeeper_Nutrition_RetrieveEntries : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Nutrition_RetrieveEntries_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Nutrition_RetrieveEntries Choreo */


/*! group TMBRunKeeper.StrengthTrainingActivities.UpdateActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateActivity Choreo.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_UpdateActivity_Inputs : TMBChoreographyInputSet
	-(void)setActivity:(NSString*)Activity;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateActivity Choreo.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_UpdateActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a past strength training activity.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_UpdateActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_StrengthTrainingActivities_UpdateActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.StrengthTrainingActivities_UpdateActivity Choreo */


/*! group TMBRunKeeper.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBRunKeeper_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
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
@interface TMBRunKeeper_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;	
@end

/*!
 * Completes the OAuth process by retrieving a RunKeeper access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@interface TMBRunKeeper_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.OAuth_FinalizeOAuth Choreo */


/*! group TMBRunKeeper.DiabetesMeasurements.RetrieveEntries Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntries Choreo.
 */
@interface TMBRunKeeper_DiabetesMeasurements_RetrieveEntries_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntries Choreo.
 */
@interface TMBRunKeeper_DiabetesMeasurements_RetrieveEntries_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNext;
	-(NSString*)getPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the feed for a user's diabetes measurements.
 */
@interface TMBRunKeeper_DiabetesMeasurements_RetrieveEntries : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_DiabetesMeasurements_RetrieveEntries_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.DiabetesMeasurements_RetrieveEntries Choreo */


/*! group TMBRunKeeper.DiabetesMeasurements.UpdateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@interface TMBRunKeeper_DiabetesMeasurements_UpdateEntry_Inputs : TMBChoreographyInputSet
	-(void)setEntry:(NSString*)Entry;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@interface TMBRunKeeper_DiabetesMeasurements_UpdateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a diabetes measurement entry in a user’s feed.
 */
@interface TMBRunKeeper_DiabetesMeasurements_UpdateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_DiabetesMeasurements_UpdateEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.DiabetesMeasurements_UpdateEntry Choreo */


/*! group TMBRunKeeper.Weight.RetrieveEntries Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntries Choreo.
 */
@interface TMBRunKeeper_Weight_RetrieveEntries_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntries Choreo.
 */
@interface TMBRunKeeper_Weight_RetrieveEntries_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNext;
	-(NSString*)getPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the feed for a user's weight entries.
 */
@interface TMBRunKeeper_Weight_RetrieveEntries : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Weight_RetrieveEntries_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Weight_RetrieveEntries Choreo */


/*! group TMBRunKeeper.FitnessActivities.UpdateActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateActivity Choreo.
 */
@interface TMBRunKeeper_FitnessActivities_UpdateActivity_Inputs : TMBChoreographyInputSet
	-(void)setActivity:(NSString*)Activity;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateActivity Choreo.
 */
@interface TMBRunKeeper_FitnessActivities_UpdateActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a past activity.
 */
@interface TMBRunKeeper_FitnessActivities_UpdateActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_FitnessActivities_UpdateActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.FitnessActivities_UpdateActivity Choreo */


/*! group TMBRunKeeper.StrengthTrainingActivities.RetrieveActivities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivities Choreo.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivities Choreo.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNext;
	-(NSString*)getPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the feed for a user's strength training activities.
 */
@interface TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.StrengthTrainingActivities_RetrieveActivities Choreo */


/*! group TMBRunKeeper.Weight.RetrieveEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntry Choreo.
 */
@interface TMBRunKeeper_Weight_RetrieveEntry_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntry Choreo.
 */
@interface TMBRunKeeper_Weight_RetrieveEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a weight entry from a user’s feed.
 */
@interface TMBRunKeeper_Weight_RetrieveEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Weight_RetrieveEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Weight_RetrieveEntry Choreo */


/*! group TMBRunKeeper.Sleep.CreateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@interface TMBRunKeeper_Sleep_CreateEntry_Inputs : TMBChoreographyInputSet
	-(void)setEntry:(NSString*)Entry;
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@interface TMBRunKeeper_Sleep_CreateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getURI;	
@end

/*!
 * Adds a new sleep activity to a user's feed.
 */
@interface TMBRunKeeper_Sleep_CreateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Sleep_CreateEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Sleep_CreateEntry Choreo */


/*! group TMBRunKeeper.Weight.UpdateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@interface TMBRunKeeper_Weight_UpdateEntry_Inputs : TMBChoreographyInputSet
	-(void)setEntry:(NSString*)Entry;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setEntryID:(NSString*)EntryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@interface TMBRunKeeper_Weight_UpdateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a weight entry in a user’s feed.
 */
@interface TMBRunKeeper_Weight_UpdateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Weight_UpdateEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Weight_UpdateEntry Choreo */


/*! group TMBRunKeeper.DiabetesMeasurements.CreateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@interface TMBRunKeeper_DiabetesMeasurements_CreateEntry_Inputs : TMBChoreographyInputSet
	-(void)setEntry:(NSString*)Entry;
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@interface TMBRunKeeper_DiabetesMeasurements_CreateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getURI;	
@end

/*!
 * Adds a diabetes measurement entry to a user's feed.
 */
@interface TMBRunKeeper_DiabetesMeasurements_CreateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_DiabetesMeasurements_CreateEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.DiabetesMeasurements_CreateEntry Choreo */


/*! group TMBRunKeeper.GeneralMeasurements.CreateEntry Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@interface TMBRunKeeper_GeneralMeasurements_CreateEntry_Inputs : TMBChoreographyInputSet
	-(void)setEntry:(NSString*)Entry;
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@interface TMBRunKeeper_GeneralMeasurements_CreateEntry_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getURI;	
@end

/*!
 * Adds a body measurement entry to a user's feed.
 */
@interface TMBRunKeeper_GeneralMeasurements_CreateEntry : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_GeneralMeasurements_CreateEntry_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.GeneralMeasurements_CreateEntry Choreo */


/*! group TMBRunKeeper.BackgroundActivities.DeleteActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteActivity Choreo.
 */
@interface TMBRunKeeper_BackgroundActivities_DeleteActivity_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteActivity Choreo.
 */
@interface TMBRunKeeper_BackgroundActivities_DeleteActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Removes an individual background activity from a user’s feed.
 */
@interface TMBRunKeeper_BackgroundActivities_DeleteActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_BackgroundActivities_DeleteActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.BackgroundActivities_DeleteActivity Choreo */


/*! group TMBRunKeeper.Friends.RetrieveFriends Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveFriends Choreo.
 */
@interface TMBRunKeeper_Friends_RetrieveFriends_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveFriends Choreo.
 */
@interface TMBRunKeeper_Friends_RetrieveFriends_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNext;
	-(NSString*)getPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the friends in a user's network.
 */
@interface TMBRunKeeper_Friends_RetrieveFriends : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Friends_RetrieveFriends_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Friends_RetrieveFriends Choreo */


/*! group TMBRunKeeper.BackgroundActivities.RetrieveActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivity Choreo.
 */
@interface TMBRunKeeper_BackgroundActivities_RetrieveActivity_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivity Choreo.
 */
@interface TMBRunKeeper_BackgroundActivities_RetrieveActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a page from a user’s background activity feed.
 */
@interface TMBRunKeeper_BackgroundActivities_RetrieveActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_BackgroundActivities_RetrieveActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.BackgroundActivities_RetrieveActivity Choreo */


/*! group TMBRunKeeper.PersonalRecords.RetrieveRecords Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveRecords Choreo.
 */
@interface TMBRunKeeper_PersonalRecords_RetrieveRecords_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveRecords Choreo.
 */
@interface TMBRunKeeper_PersonalRecords_RetrieveRecords_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the feed for a user's personal records.
 */
@interface TMBRunKeeper_PersonalRecords_RetrieveRecords : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_PersonalRecords_RetrieveRecords_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.PersonalRecords_RetrieveRecords Choreo */


/*! group TMBRunKeeper.FitnessActivities.RetrieveActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivity Choreo.
 */
@interface TMBRunKeeper_FitnessActivities_RetrieveActivity_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivity Choreo.
 */
@interface TMBRunKeeper_FitnessActivities_RetrieveActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a page of a user’s activity history or information for a past activity.
 */
@interface TMBRunKeeper_FitnessActivities_RetrieveActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_FitnessActivities_RetrieveActivity_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.FitnessActivities_RetrieveActivity Choreo */


/*! group TMBRunKeeper.Sleep.RetrieveEntries Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntries Choreo.
 */
@interface TMBRunKeeper_Sleep_RetrieveEntries_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntries Choreo.
 */
@interface TMBRunKeeper_Sleep_RetrieveEntries_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getNext;
	-(NSString*)getPrevious;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the feed for a user's sleep entries.
 */
@interface TMBRunKeeper_Sleep_RetrieveEntries : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRunKeeper_Sleep_RetrieveEntries_Inputs*)newInputSet;
@end

/*! group TMBRunKeeper.Sleep_RetrieveEntries Choreo */
