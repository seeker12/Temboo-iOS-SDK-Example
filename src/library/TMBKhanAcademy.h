/*!
 * @header Temboo iOS SDK KhanAcademy classes
 *
 * Execute Choreographies from the Temboo KhanAcademy bundle.
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

/*! group TMBKhanAcademy.Exercises.AllExercises Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AllExercises Choreo.
 */
@interface TMBKhanAcademy_Exercises_AllExercises_Inputs : TMBChoreographyInputSet
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AllExercises Choreo.
 */
@interface TMBKhanAcademy_Exercises_AllExercises_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all exercises in the Khan Academy library.
 */
@interface TMBKhanAcademy_Exercises_AllExercises : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Exercises_AllExercises_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Exercises_AllExercises Choreo */


/*! group TMBKhanAcademy.Exercises.GetExercise Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetExercise Choreo.
 */
@interface TMBKhanAcademy_Exercises_GetExercise_Inputs : TMBChoreographyInputSet
	-(void)setExerciseName:(NSString*)ExerciseName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExercise Choreo.
 */
@interface TMBKhanAcademy_Exercises_GetExercise_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the specified exercise.
 */
@interface TMBKhanAcademy_Exercises_GetExercise : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Exercises_GetExercise_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Exercises_GetExercise Choreo */


/*! group TMBKhanAcademy.Users.GetExerciseFollowUp Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetExerciseFollowUp Choreo.
 */
@interface TMBKhanAcademy_Users_GetExerciseFollowUp_Inputs : TMBChoreographyInputSet
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setEmail:(NSString*)Email;
	-(void)setExerciseName:(NSString*)ExerciseName;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setOAuthToken:(NSString*)OAuthToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExerciseFollowUp Choreo.
 */
@interface TMBKhanAcademy_Users_GetExerciseFollowUp_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves user data about all excercises which have the specified excercise as a prerequisite.
 */
@interface TMBKhanAcademy_Users_GetExerciseFollowUp : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Users_GetExerciseFollowUp_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Users_GetExerciseFollowUp Choreo */


/*! group TMBKhanAcademy.Exercises.GetExerciseVideos Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetExerciseVideos Choreo.
 */
@interface TMBKhanAcademy_Exercises_GetExerciseVideos_Inputs : TMBChoreographyInputSet
	-(void)setExerciseName:(NSString*)ExerciseName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExerciseVideos Choreo.
 */
@interface TMBKhanAcademy_Exercises_GetExerciseVideos_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all videos associated with a given exercise.
 */
@interface TMBKhanAcademy_Exercises_GetExerciseVideos : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Exercises_GetExerciseVideos_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Exercises_GetExerciseVideos Choreo */


/*! group TMBKhanAcademy.Users.GetExerciseLog Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetExerciseLog Choreo.
 */
@interface TMBKhanAcademy_Users_GetExerciseLog_Inputs : TMBChoreographyInputSet
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setExerciseName:(NSString*)ExerciseName;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setOAuthToken:(NSString*)OAuthToken;
	-(void)setStartTime:(NSString*)StartTime;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExerciseLog Choreo.
 */
@interface TMBKhanAcademy_Users_GetExerciseLog_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves user data about a specific excercise, such as when the problem was done, if the answer was correct, etc.
 */
@interface TMBKhanAcademy_Users_GetExerciseLog : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Users_GetExerciseLog_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Users_GetExerciseLog Choreo */


/*! group TMBKhanAcademy.Videos.GetVideoExercises Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetVideoExercises Choreo.
 */
@interface TMBKhanAcademy_Videos_GetVideoExercises_Inputs : TMBChoreographyInputSet
	-(void)setYouTubeID:(NSString*)YouTubeID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetVideoExercises Choreo.
 */
@interface TMBKhanAcademy_Videos_GetVideoExercises_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all the exercises associated with a given video.
 */
@interface TMBKhanAcademy_Videos_GetVideoExercises : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Videos_GetVideoExercises_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Videos_GetVideoExercises Choreo */


/*! group TMBKhanAcademy.Badges.BadgesByCategory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the BadgesByCategory Choreo.
 */
@interface TMBKhanAcademy_Badges_BadgesByCategory_Inputs : TMBChoreographyInputSet
	-(void)setCategoryID:(NSString*)CategoryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BadgesByCategory Choreo.
 */
@interface TMBKhanAcademy_Badges_BadgesByCategory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all badges for a specific category.
 */
@interface TMBKhanAcademy_Badges_BadgesByCategory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Badges_BadgesByCategory_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Badges_BadgesByCategory Choreo */


/*! group TMBKhanAcademy.Videos.GetVideoByReadableID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetVideoByReadableID Choreo.
 */
@interface TMBKhanAcademy_Videos_GetVideoByReadableID_Inputs : TMBChoreographyInputSet
	-(void)setReadableID:(NSString*)ReadableID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetVideoByReadableID Choreo.
 */
@interface TMBKhanAcademy_Videos_GetVideoByReadableID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves video data for a given video according to its readable ID.
 */
@interface TMBKhanAcademy_Videos_GetVideoByReadableID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Videos_GetVideoByReadableID_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Videos_GetVideoByReadableID Choreo */


/*! group TMBKhanAcademy.Users.GetExercise Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetExercise Choreo.
 */
@interface TMBKhanAcademy_Users_GetExercise_Inputs : TMBChoreographyInputSet
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setEmail:(NSString*)Email;
	-(void)setExerciseName:(NSString*)ExerciseName;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setOAuthToken:(NSString*)OAuthToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExercise Choreo.
 */
@interface TMBKhanAcademy_Users_GetExercise_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves user data for a given excercise, such as number of problems attempted, current streak, longest streak, etc.
 */
@interface TMBKhanAcademy_Users_GetExercise : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Users_GetExercise_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Users_GetExercise Choreo */


/*! group TMBKhanAcademy.Badges.AllCategories Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AllCategories Choreo.
 */
@interface TMBKhanAcademy_Badges_AllCategories_Inputs : TMBChoreographyInputSet
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AllCategories Choreo.
 */
@interface TMBKhanAcademy_Badges_AllCategories_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all the badge categories in Khan Academy.
 */
@interface TMBKhanAcademy_Badges_AllCategories : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Badges_AllCategories_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Badges_AllCategories Choreo */


/*! group TMBKhanAcademy.Topics.TopicData Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TopicData Choreo.
 */
@interface TMBKhanAcademy_Topics_TopicData_Inputs : TMBChoreographyInputSet
	-(void)setTopicID:(NSString*)TopicID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopicData Choreo.
 */
@interface TMBKhanAcademy_Topics_TopicData_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves topic data for a given topic, including an abbreviated list of all its sub-topics.
 */
@interface TMBKhanAcademy_Topics_TopicData : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Topics_TopicData_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Topics_TopicData Choreo */


/*! group TMBKhanAcademy.Topics.GetTopicExercises Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopicExercises Choreo.
 */
@interface TMBKhanAcademy_Topics_GetTopicExercises_Inputs : TMBChoreographyInputSet
	-(void)setTopicID:(NSString*)TopicID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopicExercises Choreo.
 */
@interface TMBKhanAcademy_Topics_GetTopicExercises_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all exercises for a given topic.
 */
@interface TMBKhanAcademy_Topics_GetTopicExercises : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Topics_GetTopicExercises_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Topics_GetTopicExercises Choreo */


/*! group TMBKhanAcademy.Topics.GetTopicVideos Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTopicVideos Choreo.
 */
@interface TMBKhanAcademy_Topics_GetTopicVideos_Inputs : TMBChoreographyInputSet
	-(void)setTopicID:(NSString*)TopicID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopicVideos Choreo.
 */
@interface TMBKhanAcademy_Topics_GetTopicVideos_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retreievs a list of all videos for a given topic.
 */
@interface TMBKhanAcademy_Topics_GetTopicVideos : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Topics_GetTopicVideos_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Topics_GetTopicVideos Choreo */


/*! group TMBKhanAcademy.Users.GetVideo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetVideo Choreo.
 */
@interface TMBKhanAcademy_Users_GetVideo_Inputs : TMBChoreographyInputSet
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setEmail:(NSString*)Email;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setOAuthToken:(NSString*)OAuthToken;
	-(void)setYouTubeID:(NSString*)YouTubeID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetVideo Choreo.
 */
@interface TMBKhanAcademy_Users_GetVideo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves user data about a specific video, such as amount of video watched, points received, etc.
 */
@interface TMBKhanAcademy_Users_GetVideo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Users_GetVideo_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Users_GetVideo Choreo */


/*! group TMBKhanAcademy.Users.GetVideoLog Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetVideoLog Choreo.
 */
@interface TMBKhanAcademy_Users_GetVideoLog_Inputs : TMBChoreographyInputSet
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setOAuthToken:(NSString*)OAuthToken;
	-(void)setStartTime:(NSString*)StartTime;
	-(void)setYouTubeID:(NSString*)YouTubeID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetVideoLog Choreo.
 */
@interface TMBKhanAcademy_Users_GetVideoLog_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves user log data about a specific video, such as when the log of watching a video was started, how long the session lasted, etc.
 */
@interface TMBKhanAcademy_Users_GetVideoLog : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Users_GetVideoLog_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Users_GetVideoLog Choreo */


/*! group TMBKhanAcademy.Topics.TopicTree Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the TopicTree Choreo.
 */
@interface TMBKhanAcademy_Topics_TopicTree_Inputs : TMBChoreographyInputSet
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopicTree Choreo.
 */
@interface TMBKhanAcademy_Topics_TopicTree_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the hierarchical organization of all topics in the Khan Academy library.
 */
@interface TMBKhanAcademy_Topics_TopicTree : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Topics_TopicTree_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Topics_TopicTree Choreo */


/*! group TMBKhanAcademy.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBKhanAcademy_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBKhanAcademy_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBKhanAcademy_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.OAuth_InitializeOAuth Choreo */


/*! group TMBKhanAcademy.Badges.GetBadges Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBadges Choreo.
 */
@interface TMBKhanAcademy_Badges_GetBadges_Inputs : TMBChoreographyInputSet
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setEmail:(NSString*)Email;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setOAuthToken:(NSString*)OAuthToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBadges Choreo.
 */
@interface TMBKhanAcademy_Badges_GetBadges_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all badges, and if a user is logged in, retrieves additional information about the badges that user has earned.
 */
@interface TMBKhanAcademy_Badges_GetBadges : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Badges_GetBadges_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Badges_GetBadges Choreo */


/*! group TMBKhanAcademy.Users.GetUserVideos Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUserVideos Choreo.
 */
@interface TMBKhanAcademy_Users_GetUserVideos_Inputs : TMBChoreographyInputSet
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setEmail:(NSString*)Email;
	-(void)setEndTime:(NSString*)EndTime;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setOAuthToken:(NSString*)OAuthToken;
	-(void)setStartTime:(NSString*)StartTime;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserVideos Choreo.
 */
@interface TMBKhanAcademy_Users_GetUserVideos_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves data about all videos watched by a specific user.
 */
@interface TMBKhanAcademy_Users_GetUserVideos : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Users_GetUserVideos_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Users_GetUserVideos Choreo */


/*! group TMBKhanAcademy.Exercises.GetExerciseFollowUp Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetExerciseFollowUp Choreo.
 */
@interface TMBKhanAcademy_Exercises_GetExerciseFollowUp_Inputs : TMBChoreographyInputSet
	-(void)setExerciseName:(NSString*)ExerciseName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExerciseFollowUp Choreo.
 */
@interface TMBKhanAcademy_Exercises_GetExerciseFollowUp_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all exercises which have the specified exercise as a prerequisite.
 */
@interface TMBKhanAcademy_Exercises_GetExerciseFollowUp : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Exercises_GetExerciseFollowUp_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Exercises_GetExerciseFollowUp Choreo */


/*! group TMBKhanAcademy.Users.GetUserExercises Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUserExercises Choreo.
 */
@interface TMBKhanAcademy_Users_GetUserExercises_Inputs : TMBChoreographyInputSet
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setEmail:(NSString*)Email;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setOAuthToken:(NSString*)OAuthToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserExercises Choreo.
 */
@interface TMBKhanAcademy_Users_GetUserExercises_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves data about all excercises engaged by a specific user.
 */
@interface TMBKhanAcademy_Users_GetUserExercises : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Users_GetUserExercises_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Users_GetUserExercises Choreo */


/*! group TMBKhanAcademy.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBKhanAcademy_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBKhanAcademy_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getOAuthTokenSecret;
	-(NSString*)getOAuthToken;	
@end

/*!
 * Completes the OAuth process by retrieving a Khan Academy OAuth token and token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@interface TMBKhanAcademy_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.OAuth_FinalizeOAuth Choreo */


/*! group TMBKhanAcademy.Users.CurrentUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CurrentUser Choreo.
 */
@interface TMBKhanAcademy_Users_CurrentUser_Inputs : TMBChoreographyInputSet
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setEmail:(NSString*)Email;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setOAuthToken:(NSString*)OAuthToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CurrentUser Choreo.
 */
@interface TMBKhanAcademy_Users_CurrentUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves user data about a specified user.
 */
@interface TMBKhanAcademy_Users_CurrentUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBKhanAcademy_Users_CurrentUser_Inputs*)newInputSet;
@end

/*! group TMBKhanAcademy.Users_CurrentUser Choreo */
