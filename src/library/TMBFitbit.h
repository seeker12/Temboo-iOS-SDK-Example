/*!
 * @header Temboo iOS SDK Fitbit classes
 *
 * Execute Choreographies from the Temboo Fitbit bundle.
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

/*! group TMBFitbit.Social.GetBadges Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBadges Choreo.
 */
@interface TMBFitbit_Social_GetBadges_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBadges Choreo.
 */
@interface TMBFitbit_Social_GetBadges_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a user's badges.
 */
@interface TMBFitbit_Social_GetBadges : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Social_GetBadges_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Social_GetBadges Choreo */


/*! group TMBFitbit.Activities.GetActivities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetActivities Choreo.
 */
@interface TMBFitbit_Activities_GetActivities_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetActivities Choreo.
 */
@interface TMBFitbit_Activities_GetActivities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a summary and list of a user's activities and activity log entries for a specified date.
 */
@interface TMBFitbit_Activities_GetActivities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Activities_GetActivities_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Activities_GetActivities Choreo */


/*! group TMBFitbit.Foods.DeleteFavoriteFood Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFavoriteFood Choreo.
 */
@interface TMBFitbit_Foods_DeleteFavoriteFood_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setFoodID:(NSString*)FoodID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFavoriteFood Choreo.
 */
@interface TMBFitbit_Foods_DeleteFavoriteFood_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified food from a user's favorite foods list.
 */
@interface TMBFitbit_Foods_DeleteFavoriteFood : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_DeleteFavoriteFood_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_DeleteFavoriteFood Choreo */


/*! group TMBFitbit.Foods.LogWater Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LogWater Choreo.
 */
@interface TMBFitbit_Foods_LogWater_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAmount:(NSString*)Amount;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUnit:(NSString*)Unit;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogWater Choreo.
 */
@interface TMBFitbit_Foods_LogWater_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Log a new water entry for a particular date.
 */
@interface TMBFitbit_Foods_LogWater : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_LogWater_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_LogWater Choreo */


/*! group TMBFitbit.Heart.GetHeartRate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetHeartRate Choreo.
 */
@interface TMBFitbit_Heart_GetHeartRate_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetHeartRate Choreo.
 */
@interface TMBFitbit_Heart_GetHeartRate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets average values and a list of user's heart rate log entries for a given day.
 */
@interface TMBFitbit_Heart_GetHeartRate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Heart_GetHeartRate_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Heart_GetHeartRate Choreo */


/*! group TMBFitbit.Social.GetFriendsLeaderboard Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFriendsLeaderboard Choreo.
 */
@interface TMBFitbit_Social_GetFriendsLeaderboard_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFriendsLeaderboard Choreo.
 */
@interface TMBFitbit_Social_GetFriendsLeaderboard_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a user's friends leaderboard.
 */
@interface TMBFitbit_Social_GetFriendsLeaderboard : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Social_GetFriendsLeaderboard_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Social_GetFriendsLeaderboard Choreo */


/*! group TMBFitbit.Statistics.GetTimeSeriesByPeriod Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTimeSeriesByPeriod Choreo.
 */
@interface TMBFitbit_Statistics_GetTimeSeriesByPeriod_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setPeriod:(NSString*)Period;
	-(void)setResourcePath:(NSString*)ResourcePath;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTimeSeriesByPeriod Choreo.
 */
@interface TMBFitbit_Statistics_GetTimeSeriesByPeriod_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets time series data for a given resource based on a date range period you specify.
 */
@interface TMBFitbit_Statistics_GetTimeSeriesByPeriod : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Statistics_GetTimeSeriesByPeriod_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Statistics_GetTimeSeriesByPeriod Choreo */


/*! group TMBFitbit.Statistics.GetActivityStats Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetActivityStats Choreo.
 */
@interface TMBFitbit_Statistics_GetActivityStats_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetActivityStats Choreo.
 */
@interface TMBFitbit_Statistics_GetActivityStats_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets user's activity statistics.
 */
@interface TMBFitbit_Statistics_GetActivityStats : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Statistics_GetActivityStats_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Statistics_GetActivityStats Choreo */


/*! group TMBFitbit.Foods.DeleteFoodLog Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFoodLog Choreo.
 */
@interface TMBFitbit_Foods_DeleteFoodLog_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setFoodLogID:(NSString*)FoodLogID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFoodLog Choreo.
 */
@interface TMBFitbit_Foods_DeleteFoodLog_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified food log entry.
 */
@interface TMBFitbit_Foods_DeleteFoodLog : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_DeleteFoodLog_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_DeleteFoodLog Choreo */


/*! group TMBFitbit.Heart.DeleteHeartRateLog Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteHeartRateLog Choreo.
 */
@interface TMBFitbit_Heart_DeleteHeartRateLog_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setHeartRateLogID:(NSString*)HeartRateLogID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteHeartRateLog Choreo.
 */
@interface TMBFitbit_Heart_DeleteHeartRateLog_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes user's heart rate log entry with the given id.
 */
@interface TMBFitbit_Heart_DeleteHeartRateLog : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Heart_DeleteHeartRateLog_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Heart_DeleteHeartRateLog Choreo */


/*! group TMBFitbit.BloodPressure.DeleteBloodPressureLog Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBloodPressureLog Choreo.
 */
@interface TMBFitbit_BloodPressure_DeleteBloodPressureLog_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBloodPressureLogID:(NSString*)BloodPressureLogID;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBloodPressureLog Choreo.
 */
@interface TMBFitbit_BloodPressure_DeleteBloodPressureLog_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes user's blood pressure log entry with the given id.
 */
@interface TMBFitbit_BloodPressure_DeleteBloodPressureLog : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_BloodPressure_DeleteBloodPressureLog_Inputs*)newInputSet;
@end

/*! group TMBFitbit.BloodPressure_DeleteBloodPressureLog Choreo */


/*! group TMBFitbit.Foods.GetMeals Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMeals Choreo.
 */
@interface TMBFitbit_Foods_GetMeals_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMeals Choreo.
 */
@interface TMBFitbit_Foods_GetMeals_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get a list of meals that a user has created in his or her food log.
 */
@interface TMBFitbit_Foods_GetMeals : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_GetMeals_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_GetMeals Choreo */


/*! group TMBFitbit.Body.LogBodyFat Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LogBodyFat Choreo.
 */
@interface TMBFitbit_Body_LogBodyFat_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBodyFat:(NSString*)BodyFat;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTime:(NSString*)Time;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogBodyFat Choreo.
 */
@interface TMBFitbit_Body_LogBodyFat_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates log entry for a user's body fat.
 */
@interface TMBFitbit_Body_LogBodyFat : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_LogBodyFat_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_LogBodyFat Choreo */


/*! group TMBFitbit.Foods.LogFood Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LogFood Choreo.
 */
@interface TMBFitbit_Foods_LogFood_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAmount:(NSString*)Amount;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setFavorite:(NSString*)Favorite;
	-(void)setFoodID:(NSString*)FoodID;
	-(void)setMealType:(NSString*)MealType;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUnitID:(NSString*)UnitID;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogFood Choreo.
 */
@interface TMBFitbit_Foods_LogFood_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Log a new food entry for a particular date.
 */
@interface TMBFitbit_Foods_LogFood : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_LogFood_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_LogFood Choreo */


/*! group TMBFitbit.Glucose.GetGlucose Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetGlucose Choreo.
 */
@interface TMBFitbit_Glucose_GetGlucose_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetGlucose Choreo.
 */
@interface TMBFitbit_Glucose_GetGlucose_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a list of user's blood glucose and HbA1C measurements for a given day.
 */
@interface TMBFitbit_Glucose_GetGlucose : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Glucose_GetGlucose_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Glucose_GetGlucose Choreo */


/*! group TMBFitbit.Devices.GetDevices Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDevices Choreo.
 */
@interface TMBFitbit_Devices_GetDevices_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDevices Choreo.
 */
@interface TMBFitbit_Devices_GetDevices_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the list of Fitbit devices for a user.
 */
@interface TMBFitbit_Devices_GetDevices : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Devices_GetDevices_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Devices_GetDevices Choreo */


/*! group TMBFitbit.Activities.AddFavoriteActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddFavoriteActivity Choreo.
 */
@interface TMBFitbit_Activities_AddFavoriteActivity_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddFavoriteActivity Choreo.
 */
@interface TMBFitbit_Activities_AddFavoriteActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a specified activity to a user's favorite activities list.
 */
@interface TMBFitbit_Activities_AddFavoriteActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Activities_AddFavoriteActivity_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Activities_AddFavoriteActivity Choreo */


/*! group TMBFitbit.Body.LogBodyMeasurements Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LogBodyMeasurements Choreo.
 */
@interface TMBFitbit_Body_LogBodyMeasurements_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBicep:(NSString*)Bicep;
	-(void)setCalf:(NSString*)Calf;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setForearm:(NSString*)Forearm;
	-(void)setHips:(NSString*)Hips;
	-(void)setNeck:(NSString*)Neck;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setThigh:(NSString*)Thigh;
	-(void)setUserID:(NSString*)UserID;
	-(void)setWaist:(NSString*)Waist;
	-(void)setWeight:(NSString*)Weight;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogBodyMeasurements Choreo.
 */
@interface TMBFitbit_Body_LogBodyMeasurements_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new log entry for a user's body measurements.
 */
@interface TMBFitbit_Body_LogBodyMeasurements : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_LogBodyMeasurements_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_LogBodyMeasurements Choreo */


/*! group TMBFitbit.Devices.GetAlarms Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAlarms Choreo.
 */
@interface TMBFitbit_Devices_GetAlarms_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDeviceID:(NSString*)DeviceID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAlarms Choreo.
 */
@interface TMBFitbit_Devices_GetAlarms_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the list of Fitbit device alarms for a specific device.
 */
@interface TMBFitbit_Devices_GetAlarms : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Devices_GetAlarms_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Devices_GetAlarms Choreo */


/*! group TMBFitbit.BloodPressure.LogBloodPressure Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LogBloodPressure Choreo.
 */
@interface TMBFitbit_BloodPressure_LogBloodPressure_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setDiastolic:(NSString*)Diastolic;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSystolic:(NSString*)Systolic;
	-(void)setTime:(NSString*)Time;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogBloodPressure Choreo.
 */
@interface TMBFitbit_BloodPressure_LogBloodPressure_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates log entry for a blood pressure measurement.
 */
@interface TMBFitbit_BloodPressure_LogBloodPressure : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_BloodPressure_LogBloodPressure_Inputs*)newInputSet;
@end

/*! group TMBFitbit.BloodPressure_LogBloodPressure Choreo */


/*! group TMBFitbit.Body.UpdateBodyWeightGoal Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateBodyWeightGoal Choreo.
 */
@interface TMBFitbit_Body_UpdateBodyWeightGoal_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setStartWeight:(NSString*)StartWeight;
	-(void)setUserID:(NSString*)UserID;
	-(void)setWeight:(NSString*)Weight;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateBodyWeightGoal Choreo.
 */
@interface TMBFitbit_Body_UpdateBodyWeightGoal_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates or updates a user's weight goal.
 */
@interface TMBFitbit_Body_UpdateBodyWeightGoal : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_UpdateBodyWeightGoal_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_UpdateBodyWeightGoal Choreo */


/*! group TMBFitbit.Sleep.GetSleep Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSleep Choreo.
 */
@interface TMBFitbit_Sleep_GetSleep_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSleep Choreo.
 */
@interface TMBFitbit_Sleep_GetSleep_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a summary and list of a user's sleep log entries for a specified date.
 */
@interface TMBFitbit_Sleep_GetSleep : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Sleep_GetSleep_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Sleep_GetSleep Choreo */


/*! group TMBFitbit.Activities.DeleteFavoriteActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFavoriteActivity Choreo.
 */
@interface TMBFitbit_Activities_DeleteFavoriteActivity_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFavoriteActivity Choreo.
 */
@interface TMBFitbit_Activities_DeleteFavoriteActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified activity from a user's favorite activities list.
 */
@interface TMBFitbit_Activities_DeleteFavoriteActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Activities_DeleteFavoriteActivity_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Activities_DeleteFavoriteActivity Choreo */


/*! group TMBFitbit.Foods.SearchFoods Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchFoods Choreo.
 */
@interface TMBFitbit_Foods_SearchFoods_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchFoods Choreo.
 */
@interface TMBFitbit_Foods_SearchFoods_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Search public foods in the Fibit database and private user created foods by keyword search.
 */
@interface TMBFitbit_Foods_SearchFoods : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_SearchFoods_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_SearchFoods Choreo */


/*! group TMBFitbit.Profile.UpdateUserInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUserInfo Choreo.
 */
@interface TMBFitbit_Profile_UpdateUserInfo_Inputs : TMBChoreographyInputSet
	-(void)setAboutMe:(NSString*)AboutMe;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBirthday:(NSString*)Birthday;
	-(void)setCity:(NSString*)City;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCountry:(NSString*)Country;
	-(void)setFoodLocale:(NSString*)FoodLocale;
	-(void)setFullName:(NSString*)FullName;
	-(void)setGender:(NSString*)Gender;
	-(void)setGlucoseUnit:(NSString*)GlucoseUnit;
	-(void)setHeightUnit:(NSString*)HeightUnit;
	-(void)setHeight:(NSString*)Height;
	-(void)setLocale:(NSString*)Locale;
	-(void)setNickname:(NSString*)Nickname;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
	-(void)setStrideLengthRunning:(NSString*)StrideLengthRunning;
	-(void)setStrideLengthWalking:(NSString*)StrideLengthWalking;
	-(void)setTimezone:(NSString*)Timezone;
	-(void)setUserID:(NSString*)UserID;
	-(void)setWaterUnit:(NSString*)WaterUnit;
	-(void)setWeightUnit:(NSString*)WeightUnit;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUserInfo Choreo.
 */
@interface TMBFitbit_Profile_UpdateUserInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a user's profile data.
 */
@interface TMBFitbit_Profile_UpdateUserInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Profile_UpdateUserInfo_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Profile_UpdateUserInfo Choreo */


/*! group TMBFitbit.Glucose.LogGlucose Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LogGlucose Choreo.
 */
@interface TMBFitbit_Glucose_LogGlucose_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setGlucose:(NSString*)Glucose;
	-(void)setHBA1C:(NSString*)HBA1C;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTime:(NSString*)Time;
	-(void)setTracker:(NSString*)Tracker;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogGlucose Choreo.
 */
@interface TMBFitbit_Glucose_LogGlucose_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates log entry for a blood glucose measurement and/or HbA1c measurement.
 */
@interface TMBFitbit_Glucose_LogGlucose : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Glucose_LogGlucose_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Glucose_LogGlucose Choreo */


/*! group TMBFitbit.Foods.GetFoodGoal Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFoodGoal Choreo.
 */
@interface TMBFitbit_Foods_GetFoodGoal_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFoodGoal Choreo.
 */
@interface TMBFitbit_Foods_GetFoodGoal_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a user's current daily calorie consumption goal.
 */
@interface TMBFitbit_Foods_GetFoodGoal : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_GetFoodGoal_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_GetFoodGoal Choreo */


/*! group TMBFitbit.Profile.GetUserInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUserInfo Choreo.
 */
@interface TMBFitbit_Profile_GetUserInfo_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserInfo Choreo.
 */
@interface TMBFitbit_Profile_GetUserInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a user's profile data.
 */
@interface TMBFitbit_Profile_GetUserInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Profile_GetUserInfo_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Profile_GetUserInfo Choreo */


/*! group TMBFitbit.Foods.GetFoods Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFoods Choreo.
 */
@interface TMBFitbit_Foods_GetFoods_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFoods Choreo.
 */
@interface TMBFitbit_Foods_GetFoods_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a summary and list of a user's food log entries for a specified date.
 */
@interface TMBFitbit_Foods_GetFoods : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_GetFoods_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_GetFoods Choreo */


/*! group TMBFitbit.Activities.BrowseActivities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the BrowseActivities Choreo.
 */
@interface TMBFitbit_Activities_BrowseActivities_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BrowseActivities Choreo.
 */
@interface TMBFitbit_Activities_BrowseActivities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a tree of all valid Fitbit public activities from the activities catalog as well as private custom activities the user created.
 */
@interface TMBFitbit_Activities_BrowseActivities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Activities_BrowseActivities_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Activities_BrowseActivities Choreo */


/*! group TMBFitbit.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBFitbit_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBFitbit_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;
	-(NSString*)getOAuthTokenSecret;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBFitbit_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBFitbit.OAuth_InitializeOAuth Choreo */


/*! group TMBFitbit.Activities.DeleteActivityLog Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteActivityLog Choreo.
 */
@interface TMBFitbit_Activities_DeleteActivityLog_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityLogID:(NSString*)ActivityLogID;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteActivityLog Choreo.
 */
@interface TMBFitbit_Activities_DeleteActivityLog_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified activity log entry.
 */
@interface TMBFitbit_Activities_DeleteActivityLog : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Activities_DeleteActivityLog_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Activities_DeleteActivityLog Choreo */


/*! group TMBFitbit.Activities.GetRecentActivities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentActivities Choreo.
 */
@interface TMBFitbit_Activities_GetRecentActivities_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentActivities Choreo.
 */
@interface TMBFitbit_Activities_GetRecentActivities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a list of a user's recent activities.
 */
@interface TMBFitbit_Activities_GetRecentActivities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Activities_GetRecentActivities_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Activities_GetRecentActivities Choreo */


/*! group TMBFitbit.Activities.LogActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LogActivity Choreo.
 */
@interface TMBFitbit_Activities_LogActivity_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setActivityID:(NSString*)ActivityID;
	-(void)setActivityName:(NSString*)ActivityName;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setDistanceUnit:(NSString*)DistanceUnit;
	-(void)setDistance:(NSString*)Distance;
	-(void)setDuration:(NSString*)Duration;
	-(void)setManualCalories:(NSString*)ManualCalories;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogActivity Choreo.
 */
@interface TMBFitbit_Activities_LogActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Log a new activity for a particular date.
 */
@interface TMBFitbit_Activities_LogActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Activities_LogActivity_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Activities_LogActivity Choreo */


/*! group TMBFitbit.Social.GetFriends Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFriends Choreo.
 */
@interface TMBFitbit_Social_GetFriends_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFriends Choreo.
 */
@interface TMBFitbit_Social_GetFriends_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets user's friends.
 */
@interface TMBFitbit_Social_GetFriends : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Social_GetFriends_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Social_GetFriends Choreo */


/*! group TMBFitbit.Body.GetBodyFatGoal Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBodyFatGoal Choreo.
 */
@interface TMBFitbit_Body_GetBodyFatGoal_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBodyFatGoal Choreo.
 */
@interface TMBFitbit_Body_GetBodyFatGoal_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get a user's current body fat goal.
 */
@interface TMBFitbit_Body_GetBodyFatGoal : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_GetBodyFatGoal_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_GetBodyFatGoal Choreo */


/*! group TMBFitbit.Heart.LogHeartRate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LogHeartRate Choreo.
 */
@interface TMBFitbit_Heart_LogHeartRate_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setHeartRate:(NSString*)HeartRate;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTime:(NSString*)Time;
	-(void)setTracker:(NSString*)Tracker;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogHeartRate Choreo.
 */
@interface TMBFitbit_Heart_LogHeartRate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates log entry for a heart rate measurement.
 */
@interface TMBFitbit_Heart_LogHeartRate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Heart_LogHeartRate_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Heart_LogHeartRate Choreo */


/*! group TMBFitbit.BloodPressure.GetBloodPressure Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBloodPressure Choreo.
 */
@interface TMBFitbit_BloodPressure_GetBloodPressure_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBloodPressure Choreo.
 */
@interface TMBFitbit_BloodPressure_GetBloodPressure_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get an average value and a list of user's blood pressure log entries for a given day.
 */
@interface TMBFitbit_BloodPressure_GetBloodPressure : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_BloodPressure_GetBloodPressure_Inputs*)newInputSet;
@end

/*! group TMBFitbit.BloodPressure_GetBloodPressure Choreo */


/*! group TMBFitbit.Social.GetInvites Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetInvites Choreo.
 */
@interface TMBFitbit_Social_GetInvites_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInvites Choreo.
 */
@interface TMBFitbit_Social_GetInvites_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve the list of invites to become freinds for a user.
 */
@interface TMBFitbit_Social_GetInvites : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Social_GetInvites_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Social_GetInvites Choreo */


/*! group TMBFitbit.Body.GetBodyMeasurements Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBodyMeasurements Choreo.
 */
@interface TMBFitbit_Body_GetBodyMeasurements_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBodyMeasurements Choreo.
 */
@interface TMBFitbit_Body_GetBodyMeasurements_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a summary of a user's body measurements for a specified date.
 */
@interface TMBFitbit_Body_GetBodyMeasurements : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_GetBodyMeasurements_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_GetBodyMeasurements Choreo */


/*! group TMBFitbit.Social.AcceptInvite Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AcceptInvite Choreo.
 */
@interface TMBFitbit_Social_AcceptInvite_Inputs : TMBChoreographyInputSet
	-(void)setAccept:(NSString*)Accept;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setFromUserID:(NSString*)FromUserID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AcceptInvite Choreo.
 */
@interface TMBFitbit_Social_AcceptInvite_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Accepts or rejects an invite to become friends with inviting user.
 */
@interface TMBFitbit_Social_AcceptInvite : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Social_AcceptInvite_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Social_AcceptInvite Choreo */


/*! group TMBFitbit.Foods.GetRecentFoods Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentFoods Choreo.
 */
@interface TMBFitbit_Foods_GetRecentFoods_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentFoods Choreo.
 */
@interface TMBFitbit_Foods_GetRecentFoods_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a list of a user's recent foods.
 */
@interface TMBFitbit_Foods_GetRecentFoods : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_GetRecentFoods_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_GetRecentFoods Choreo */


/*! group TMBFitbit.Body.DeleteBodyFatLog Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBodyFatLog Choreo.
 */
@interface TMBFitbit_Body_DeleteBodyFatLog_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBodyFatLogID:(NSString*)BodyFatLogID;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBodyFatLog Choreo.
 */
@interface TMBFitbit_Body_DeleteBodyFatLog_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete user's body weight fat log entry with the given id.
 */
@interface TMBFitbit_Body_DeleteBodyFatLog : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_DeleteBodyFatLog_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_DeleteBodyFatLog Choreo */


/*! group TMBFitbit.Body.GetBodyFat Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBodyFat Choreo.
 */
@interface TMBFitbit_Body_GetBodyFat_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBodyFat Choreo.
 */
@interface TMBFitbit_Body_GetBodyFat_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get a list of all user's body fat log entries for a given day.
 */
@interface TMBFitbit_Body_GetBodyFat : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_GetBodyFat_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_GetBodyFat Choreo */


/*! group TMBFitbit.Activities.GetFrequentActivities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFrequentActivities Choreo.
 */
@interface TMBFitbit_Activities_GetFrequentActivities_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFrequentActivities Choreo.
 */
@interface TMBFitbit_Activities_GetFrequentActivities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a list of a user's frequent activities.
 */
@interface TMBFitbit_Activities_GetFrequentActivities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Activities_GetFrequentActivities_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Activities_GetFrequentActivities Choreo */


/*! group TMBFitbit.Activities.GetFavoriteActivities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFavoriteActivities Choreo.
 */
@interface TMBFitbit_Activities_GetFavoriteActivities_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFavoriteActivities Choreo.
 */
@interface TMBFitbit_Activities_GetFavoriteActivities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a list of a user's favorite activities.
 */
@interface TMBFitbit_Activities_GetFavoriteActivities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Activities_GetFavoriteActivities_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Activities_GetFavoriteActivities Choreo */


/*! group TMBFitbit.Body.LogBodyWeight Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LogBodyWeight Choreo.
 */
@interface TMBFitbit_Body_LogBodyWeight_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTime:(NSString*)Time;
	-(void)setUserID:(NSString*)UserID;
	-(void)setWeight:(NSString*)Weight;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogBodyWeight Choreo.
 */
@interface TMBFitbit_Body_LogBodyWeight_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates log entry for a user's body weight.
 */
@interface TMBFitbit_Body_LogBodyWeight : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_LogBodyWeight_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_LogBodyWeight Choreo */


/*! group TMBFitbit.Foods.GetFrequentFoods Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFrequentFoods Choreo.
 */
@interface TMBFitbit_Foods_GetFrequentFoods_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFrequentFoods Choreo.
 */
@interface TMBFitbit_Foods_GetFrequentFoods_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a list of a user's frequent foods.
 */
@interface TMBFitbit_Foods_GetFrequentFoods : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_GetFrequentFoods_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_GetFrequentFoods Choreo */


/*! group TMBFitbit.Foods.GetFavoriteFoods Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFavoriteFoods Choreo.
 */
@interface TMBFitbit_Foods_GetFavoriteFoods_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFavoriteFoods Choreo.
 */
@interface TMBFitbit_Foods_GetFavoriteFoods_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a list of a user's favorite foods.
 */
@interface TMBFitbit_Foods_GetFavoriteFoods : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_GetFavoriteFoods_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_GetFavoriteFoods Choreo */


/*! group TMBFitbit.Foods.UpdateFoodGoal Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateFoodGoal Choreo.
 */
@interface TMBFitbit_Foods_UpdateFoodGoal_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCalories:(NSString*)Calories;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setIntensity:(NSString*)Intensity;
	-(void)setPersonalized:(NSString*)Personalized;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateFoodGoal Choreo.
 */
@interface TMBFitbit_Foods_UpdateFoodGoal_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a user's current daily calorie consumption goal or Food Plan.
 */
@interface TMBFitbit_Foods_UpdateFoodGoal : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_UpdateFoodGoal_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_UpdateFoodGoal Choreo */


/*! group TMBFitbit.Foods.GetWater Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWater Choreo.
 */
@interface TMBFitbit_Foods_GetWater_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWater Choreo.
 */
@interface TMBFitbit_Foods_GetWater_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a summary and list of a user's water log entries for a given day.
 */
@interface TMBFitbit_Foods_GetWater : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_GetWater_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_GetWater Choreo */


/*! group TMBFitbit.Sleep.LogSleep Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LogSleep Choreo.
 */
@interface TMBFitbit_Sleep_LogSleep_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setDuration:(NSString*)Duration;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogSleep Choreo.
 */
@interface TMBFitbit_Sleep_LogSleep_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates log entry for sleep.
 */
@interface TMBFitbit_Sleep_LogSleep : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Sleep_LogSleep_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Sleep_LogSleep Choreo */


/*! group TMBFitbit.Body.UpdateBodyFatGoal Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateBodyFatGoal Choreo.
 */
@interface TMBFitbit_Body_UpdateBodyFatGoal_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBodyFat:(NSString*)BodyFat;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateBodyFatGoal Choreo.
 */
@interface TMBFitbit_Body_UpdateBodyFatGoal_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Create or updates user's body fat goal.
 */
@interface TMBFitbit_Body_UpdateBodyFatGoal : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_UpdateBodyFatGoal_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_UpdateBodyFatGoal Choreo */


/*! group TMBFitbit.Foods.GetFoodUnits Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFoodUnits Choreo.
 */
@interface TMBFitbit_Foods_GetFoodUnits_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFoodUnits Choreo.
 */
@interface TMBFitbit_Foods_GetFoodUnits_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get a list of all valid Fitbit food units.
 */
@interface TMBFitbit_Foods_GetFoodUnits : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_GetFoodUnits_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_GetFoodUnits Choreo */


/*! group TMBFitbit.Foods.AddFavoriteFood Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddFavoriteFood Choreo.
 */
@interface TMBFitbit_Foods_AddFavoriteFood_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setFoodID:(NSString*)FoodID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddFavoriteFood Choreo.
 */
@interface TMBFitbit_Foods_AddFavoriteFood_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a specified food to a user's favorite food list.
 */
@interface TMBFitbit_Foods_AddFavoriteFood : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_AddFavoriteFood_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_AddFavoriteFood Choreo */


/*! group TMBFitbit.Statistics.GetTimeSeriesByDateRange Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTimeSeriesByDateRange Choreo.
 */
@interface TMBFitbit_Statistics_GetTimeSeriesByDateRange_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setResourcePath:(NSString*)ResourcePath;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTimeSeriesByDateRange Choreo.
 */
@interface TMBFitbit_Statistics_GetTimeSeriesByDateRange_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets time series data for a given resource based on a date range you specify.
 */
@interface TMBFitbit_Statistics_GetTimeSeriesByDateRange : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Statistics_GetTimeSeriesByDateRange_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Statistics_GetTimeSeriesByDateRange Choreo */


/*! group TMBFitbit.Foods.CreateFood Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateFood Choreo.
 */
@interface TMBFitbit_Foods_CreateFood_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCalories:(NSString*)Calories;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDescription:(NSString*)Description;
	-(void)setFormType:(NSString*)FormType;
	-(void)setMeasurementUnitID:(NSString*)MeasurementUnitID;
	-(void)setName:(NSString*)Name;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setServingSize:(NSString*)ServingSize;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFood Choreo.
 */
@interface TMBFitbit_Foods_CreateFood_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Create new private food for a user.
 */
@interface TMBFitbit_Foods_CreateFood : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_CreateFood_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_CreateFood Choreo */


/*! group TMBFitbit.Foods.DeleteWaterLog Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWaterLog Choreo.
 */
@interface TMBFitbit_Foods_DeleteWaterLog_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
	-(void)setWaterLogID:(NSString*)WaterLogID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWaterLog Choreo.
 */
@interface TMBFitbit_Foods_DeleteWaterLog_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified water log entry.
 */
@interface TMBFitbit_Foods_DeleteWaterLog : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Foods_DeleteWaterLog_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Foods_DeleteWaterLog Choreo */


/*! group TMBFitbit.Body.GetBodyWeightGoal Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBodyWeightGoal Choreo.
 */
@interface TMBFitbit_Body_GetBodyWeightGoal_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBodyWeightGoal Choreo.
 */
@interface TMBFitbit_Body_GetBodyWeightGoal_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get a user's current weight goal.
 */
@interface TMBFitbit_Body_GetBodyWeightGoal : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_GetBodyWeightGoal_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_GetBodyWeightGoal Choreo */


/*! group TMBFitbit.Body.GetBodyWeight Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBodyWeight Choreo.
 */
@interface TMBFitbit_Body_GetBodyWeight_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setDate:(NSString*)Date;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBodyWeight Choreo.
 */
@interface TMBFitbit_Body_GetBodyWeight_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a summary of a user's body weight for a specified date.
 */
@interface TMBFitbit_Body_GetBodyWeight : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_GetBodyWeight_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_GetBodyWeight Choreo */


/*! group TMBFitbit.Body.DeleteBodyWeightLog Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBodyWeightLog Choreo.
 */
@interface TMBFitbit_Body_DeleteBodyWeightLog_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBodyWeightLogID:(NSString*)BodyWeightLogID;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBodyWeightLog Choreo.
 */
@interface TMBFitbit_Body_DeleteBodyWeightLog_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete user's body weight log entry with the given id.
 */
@interface TMBFitbit_Body_DeleteBodyWeightLog : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Body_DeleteBodyWeightLog_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Body_DeleteBodyWeightLog Choreo */


/*! group TMBFitbit.Social.CreateInvite Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateInvite Choreo.
 */
@interface TMBFitbit_Social_CreateInvite_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setInvitedUserEmail:(NSString*)InvitedUserEmail;
	-(void)setInvitedUserID:(NSString*)InvitedUserID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateInvite Choreo.
 */
@interface TMBFitbit_Social_CreateInvite_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Invites a user to become friends with authorized user.
 */
@interface TMBFitbit_Social_CreateInvite : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Social_CreateInvite_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Social_CreateInvite Choreo */


/*! group TMBFitbit.Sleep.DeleteSleepLog Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteSleepLog Choreo.
 */
@interface TMBFitbit_Sleep_DeleteSleepLog_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSleepLogID:(NSString*)SleepLogID;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteSleepLog Choreo.
 */
@interface TMBFitbit_Sleep_DeleteSleepLog_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete user's sleep log entry with the given id.
 */
@interface TMBFitbit_Sleep_DeleteSleepLog : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_Sleep_DeleteSleepLog_Inputs*)newInputSet;
@end

/*! group TMBFitbit.Sleep_DeleteSleepLog Choreo */


/*! group TMBFitbit.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBFitbit_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBFitbit_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessTokenSecret;
	-(NSString*)getAccessToken;
	-(NSString*)getUserID;	
@end

/*!
 * Completes the OAuth process by retrieving a Fitbit access token, token secret and encoded user id (UserID) for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@interface TMBFitbit_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFitbit_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBFitbit.OAuth_FinalizeOAuth Choreo */
