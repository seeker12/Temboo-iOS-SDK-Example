/*!
 * @TMBKhanAcademy.m
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

#import "TMBKhanAcademy.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the AllExercises Choreo.
 */
@implementation TMBKhanAcademy_Exercises_AllExercises_Inputs

	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AllExercises Choreo.
 */
@implementation TMBKhanAcademy_Exercises_AllExercises_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all exercises in the Khan Academy library.
 */
@implementation TMBKhanAcademy_Exercises_AllExercises

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Exercises_AllExercises Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Exercises/AllExercises"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Exercises_AllExercises_ResultSet *results = [[[TMBKhanAcademy_Exercises_AllExercises_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AllExercises Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Exercises_AllExercises_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Exercises_AllExercises_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetExercise Choreo.
 */
@implementation TMBKhanAcademy_Exercises_GetExercise_Inputs

	/*!
	 * Set the value of the ExerciseName input for this Choreo.
	*(required, string) The name of the exercise to retrieve (e.g. logarithms_1)
	 */
	-(void)setExerciseName:(NSString*)ExerciseName {
		[super setInput:@"ExerciseName" toValue:ExerciseName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExercise Choreo.
 */
@implementation TMBKhanAcademy_Exercises_GetExercise_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the specified exercise.
 */
@implementation TMBKhanAcademy_Exercises_GetExercise

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Exercises_GetExercise Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Exercises/GetExercise"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Exercises_GetExercise_ResultSet *results = [[[TMBKhanAcademy_Exercises_GetExercise_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetExercise Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Exercises_GetExercise_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Exercises_GetExercise_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetExerciseFollowUp Choreo.
 */
@implementation TMBKhanAcademy_Users_GetExerciseFollowUp_Inputs

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Khan Academy.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The OAuth Consumer Secret provided by Khan Academy.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ExerciseName input for this Choreo.
	*(required, string) The exercise for which you want to retrieve follwow up exercises (e.g. "simplifying_fractions").
	 */
	-(void)setExerciseName:(NSString*)ExerciseName {
		[super setInput:@"ExerciseName" toValue:ExerciseName];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuth Token Secret retrieved during the OAuth process.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the OAuthToken input for this Choreo.
	*(required, string) The OAuth Token retrieved during the OAuth process.
	 */
	-(void)setOAuthToken:(NSString*)OAuthToken {
		[super setInput:@"OAuthToken" toValue:OAuthToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExerciseFollowUp Choreo.
 */
@implementation TMBKhanAcademy_Users_GetExerciseFollowUp_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves user data about all excercises which have the specified excercise as a prerequisite.
 */
@implementation TMBKhanAcademy_Users_GetExerciseFollowUp

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Users_GetExerciseFollowUp Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Users/GetExerciseFollowUp"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Users_GetExerciseFollowUp_ResultSet *results = [[[TMBKhanAcademy_Users_GetExerciseFollowUp_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetExerciseFollowUp Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Users_GetExerciseFollowUp_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Users_GetExerciseFollowUp_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetExerciseVideos Choreo.
 */
@implementation TMBKhanAcademy_Exercises_GetExerciseVideos_Inputs

	/*!
	 * Set the value of the ExerciseName input for this Choreo.
	*(required, string) The name of the exercise to retrieve (e.g. logarithms_1)
	 */
	-(void)setExerciseName:(NSString*)ExerciseName {
		[super setInput:@"ExerciseName" toValue:ExerciseName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExerciseVideos Choreo.
 */
@implementation TMBKhanAcademy_Exercises_GetExerciseVideos_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all videos associated with a given exercise.
 */
@implementation TMBKhanAcademy_Exercises_GetExerciseVideos

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Exercises_GetExerciseVideos Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Exercises/GetExerciseVideos"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Exercises_GetExerciseVideos_ResultSet *results = [[[TMBKhanAcademy_Exercises_GetExerciseVideos_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetExerciseVideos Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Exercises_GetExerciseVideos_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Exercises_GetExerciseVideos_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetExerciseLog Choreo.
 */
@implementation TMBKhanAcademy_Users_GetExerciseLog_Inputs

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Khan Academy.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The OAuth Consumer Secret provided by Khan Academy.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, string) The date/time to end searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the ExerciseName input for this Choreo.
	*(required, string) The name of the exercise for which you want to retrieve information (e.g. scientific_notation).
	 */
	-(void)setExerciseName:(NSString*)ExerciseName {
		[super setInput:@"ExerciseName" toValue:ExerciseName];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuth Token Secret retrieved during the OAuth process.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the OAuthToken input for this Choreo.
	*(required, string) The OAuth Token retrieved during the OAuth process.
	 */
	-(void)setOAuthToken:(NSString*)OAuthToken {
		[super setInput:@"OAuthToken" toValue:OAuthToken];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, string) The date/time to start searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExerciseLog Choreo.
 */
@implementation TMBKhanAcademy_Users_GetExerciseLog_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves user data about a specific excercise, such as when the problem was done, if the answer was correct, etc.
 */
@implementation TMBKhanAcademy_Users_GetExerciseLog

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Users_GetExerciseLog Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Users/GetExerciseLog"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Users_GetExerciseLog_ResultSet *results = [[[TMBKhanAcademy_Users_GetExerciseLog_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetExerciseLog Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Users_GetExerciseLog_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Users_GetExerciseLog_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetVideoExercises Choreo.
 */
@implementation TMBKhanAcademy_Videos_GetVideoExercises_Inputs

	/*!
	 * Set the value of the YouTubeID input for this Choreo.
	*(required, string) The Youtube ID of the video for which you want data.
	 */
	-(void)setYouTubeID:(NSString*)YouTubeID {
		[super setInput:@"YouTubeID" toValue:YouTubeID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetVideoExercises Choreo.
 */
@implementation TMBKhanAcademy_Videos_GetVideoExercises_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all the exercises associated with a given video.
 */
@implementation TMBKhanAcademy_Videos_GetVideoExercises

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Videos_GetVideoExercises Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Videos/GetVideoExercises"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Videos_GetVideoExercises_ResultSet *results = [[[TMBKhanAcademy_Videos_GetVideoExercises_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetVideoExercises Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Videos_GetVideoExercises_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Videos_GetVideoExercises_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the BadgesByCategory Choreo.
 */
@implementation TMBKhanAcademy_Badges_BadgesByCategory_Inputs

	/*!
	 * Set the value of the CategoryID input for this Choreo.
	*(required, string) The category of badges to retrieve. A full list of CategoryIds can be obtained by running the AllCategories Choreo.
	 */
	-(void)setCategoryID:(NSString*)CategoryID {
		[super setInput:@"CategoryID" toValue:CategoryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BadgesByCategory Choreo.
 */
@implementation TMBKhanAcademy_Badges_BadgesByCategory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all badges for a specific category.
 */
@implementation TMBKhanAcademy_Badges_BadgesByCategory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Badges_BadgesByCategory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Badges/BadgesByCategory"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Badges_BadgesByCategory_ResultSet *results = [[[TMBKhanAcademy_Badges_BadgesByCategory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the BadgesByCategory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Badges_BadgesByCategory_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Badges_BadgesByCategory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetVideoByReadableID Choreo.
 */
@implementation TMBKhanAcademy_Videos_GetVideoByReadableID_Inputs

	/*!
	 * Set the value of the ReadableID input for this Choreo.
	*(required, string) The ReadableID of the video for which you want to retrieve information (e.g. adding-subtracting-negative-numbers).
	 */
	-(void)setReadableID:(NSString*)ReadableID {
		[super setInput:@"ReadableID" toValue:ReadableID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetVideoByReadableID Choreo.
 */
@implementation TMBKhanAcademy_Videos_GetVideoByReadableID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves video data for a given video according to its readable ID.
 */
@implementation TMBKhanAcademy_Videos_GetVideoByReadableID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Videos_GetVideoByReadableID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Videos/GetVideoByReadableID"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Videos_GetVideoByReadableID_ResultSet *results = [[[TMBKhanAcademy_Videos_GetVideoByReadableID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetVideoByReadableID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Videos_GetVideoByReadableID_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Videos_GetVideoByReadableID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetExercise Choreo.
 */
@implementation TMBKhanAcademy_Users_GetExercise_Inputs

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Khan Academy.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The OAuth Consumer Secret provided by Khan Academy.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ExerciseName input for this Choreo.
	*(required, string) The exercise for which you want to retrieve follwow up exercises (e.g. "simplifying_fractions").
	 */
	-(void)setExerciseName:(NSString*)ExerciseName {
		[super setInput:@"ExerciseName" toValue:ExerciseName];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuth Token Secret retrieved during the OAuth process.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the OAuthToken input for this Choreo.
	*(required, string) The OAuth Token retrieved during the OAuth process.
	 */
	-(void)setOAuthToken:(NSString*)OAuthToken {
		[super setInput:@"OAuthToken" toValue:OAuthToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExercise Choreo.
 */
@implementation TMBKhanAcademy_Users_GetExercise_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves user data for a given excercise, such as number of problems attempted, current streak, longest streak, etc.
 */
@implementation TMBKhanAcademy_Users_GetExercise

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Users_GetExercise Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Users/GetExercise"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Users_GetExercise_ResultSet *results = [[[TMBKhanAcademy_Users_GetExercise_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetExercise Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Users_GetExercise_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Users_GetExercise_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AllCategories Choreo.
 */
@implementation TMBKhanAcademy_Badges_AllCategories_Inputs

	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AllCategories Choreo.
 */
@implementation TMBKhanAcademy_Badges_AllCategories_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all the badge categories in Khan Academy.
 */
@implementation TMBKhanAcademy_Badges_AllCategories

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Badges_AllCategories Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Badges/AllCategories"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Badges_AllCategories_ResultSet *results = [[[TMBKhanAcademy_Badges_AllCategories_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AllCategories Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Badges_AllCategories_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Badges_AllCategories_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TopicData Choreo.
 */
@implementation TMBKhanAcademy_Topics_TopicData_Inputs

	/*!
	 * Set the value of the TopicID input for this Choreo.
	*(required, string) The ID of the topic.
	 */
	-(void)setTopicID:(NSString*)TopicID {
		[super setInput:@"TopicID" toValue:TopicID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopicData Choreo.
 */
@implementation TMBKhanAcademy_Topics_TopicData_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves topic data for a given topic, including an abbreviated list of all its sub-topics.
 */
@implementation TMBKhanAcademy_Topics_TopicData

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Topics_TopicData Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Topics/TopicData"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Topics_TopicData_ResultSet *results = [[[TMBKhanAcademy_Topics_TopicData_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TopicData Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Topics_TopicData_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Topics_TopicData_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopicExercises Choreo.
 */
@implementation TMBKhanAcademy_Topics_GetTopicExercises_Inputs

	/*!
	 * Set the value of the TopicID input for this Choreo.
	*(required, string) The ID of the topic.
	 */
	-(void)setTopicID:(NSString*)TopicID {
		[super setInput:@"TopicID" toValue:TopicID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopicExercises Choreo.
 */
@implementation TMBKhanAcademy_Topics_GetTopicExercises_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all exercises for a given topic.
 */
@implementation TMBKhanAcademy_Topics_GetTopicExercises

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Topics_GetTopicExercises Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Topics/GetTopicExercises"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Topics_GetTopicExercises_ResultSet *results = [[[TMBKhanAcademy_Topics_GetTopicExercises_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopicExercises Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Topics_GetTopicExercises_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Topics_GetTopicExercises_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTopicVideos Choreo.
 */
@implementation TMBKhanAcademy_Topics_GetTopicVideos_Inputs

	/*!
	 * Set the value of the TopicID input for this Choreo.
	*(required, string) The ID of the topic.
	 */
	-(void)setTopicID:(NSString*)TopicID {
		[super setInput:@"TopicID" toValue:TopicID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTopicVideos Choreo.
 */
@implementation TMBKhanAcademy_Topics_GetTopicVideos_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retreievs a list of all videos for a given topic.
 */
@implementation TMBKhanAcademy_Topics_GetTopicVideos

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Topics_GetTopicVideos Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Topics/GetTopicVideos"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Topics_GetTopicVideos_ResultSet *results = [[[TMBKhanAcademy_Topics_GetTopicVideos_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTopicVideos Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Topics_GetTopicVideos_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Topics_GetTopicVideos_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetVideo Choreo.
 */
@implementation TMBKhanAcademy_Users_GetVideo_Inputs

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Khan Academy.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The OAuth Consumer Secret provided by Khan Academy.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuth Token Secret retrieved during the OAuth process.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the OAuthToken input for this Choreo.
	*(required, string) The OAuth Token retrieved during the OAuth process.
	 */
	-(void)setOAuthToken:(NSString*)OAuthToken {
		[super setInput:@"OAuthToken" toValue:OAuthToken];
	}

	/*!
	 * Set the value of the YouTubeID input for this Choreo.
	*(required, string) The YouTube ID of the video for which you want to retrieve information.
	 */
	-(void)setYouTubeID:(NSString*)YouTubeID {
		[super setInput:@"YouTubeID" toValue:YouTubeID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetVideo Choreo.
 */
@implementation TMBKhanAcademy_Users_GetVideo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves user data about a specific video, such as amount of video watched, points received, etc.
 */
@implementation TMBKhanAcademy_Users_GetVideo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Users_GetVideo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Users/GetVideo"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Users_GetVideo_ResultSet *results = [[[TMBKhanAcademy_Users_GetVideo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetVideo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Users_GetVideo_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Users_GetVideo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetVideoLog Choreo.
 */
@implementation TMBKhanAcademy_Users_GetVideoLog_Inputs

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Khan Academy.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The OAuth Consumer Secret provided by Khan Academy.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, string) The date/time to end searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuth Token Secret retrieved during the OAuth process.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the OAuthToken input for this Choreo.
	*(required, string) The OAuth Token retrieved during the OAuth process.
	 */
	-(void)setOAuthToken:(NSString*)OAuthToken {
		[super setInput:@"OAuthToken" toValue:OAuthToken];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, string) The date/time to start searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the YouTubeID input for this Choreo.
	*(required, string) The YouTube ID of the video for which you want to retrieve information.
	 */
	-(void)setYouTubeID:(NSString*)YouTubeID {
		[super setInput:@"YouTubeID" toValue:YouTubeID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetVideoLog Choreo.
 */
@implementation TMBKhanAcademy_Users_GetVideoLog_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves user log data about a specific video, such as when the log of watching a video was started, how long the session lasted, etc.
 */
@implementation TMBKhanAcademy_Users_GetVideoLog

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Users_GetVideoLog Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Users/GetVideoLog"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Users_GetVideoLog_ResultSet *results = [[[TMBKhanAcademy_Users_GetVideoLog_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetVideoLog Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Users_GetVideoLog_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Users_GetVideoLog_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TopicTree Choreo.
 */
@implementation TMBKhanAcademy_Topics_TopicTree_Inputs

	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopicTree Choreo.
 */
@implementation TMBKhanAcademy_Topics_TopicTree_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the hierarchical organization of all topics in the Khan Academy library.
 */
@implementation TMBKhanAcademy_Topics_TopicTree

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Topics_TopicTree Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Topics/TopicTree"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Topics_TopicTree_ResultSet *results = [[[TMBKhanAcademy_Topics_TopicTree_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TopicTree Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Topics_TopicTree_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Topics_TopicTree_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBKhanAcademy_OAuth_InitializeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppKeyName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyName:(NSString*)AppKeyName {
		[super setInput:@"AppKeyName" toValue:AppKeyName];
	}

	/*!
	 * Set the value of the AppKeyValue input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyValue:(NSString*)AppKeyValue {
		[super setInput:@"AppKeyValue" toValue:AppKeyValue];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Khan Academy.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The OAuth Consumer Secret provided by Khan Academy.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the CustomCallbackID input for this Choreo.
	*(optional, string) A unique identifier that you can pass to eliminate the need to wait for a Temboo generated CallbackID. Callback identifiers may only contain numbers, letters, periods, and hyphens.
	 */
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID {
		[super setInput:@"CustomCallbackID" toValue:CustomCallbackID];
	}

	/*!
	 * Set the value of the ForwardingURL input for this Choreo.
	*(optional, string) The URL that Temboo will redirect your users to after they grant your application access.
	 */
	-(void)setForwardingURL:(NSString*)ForwardingURL {
		[super setInput:@"ForwardingURL" toValue:ForwardingURL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBKhanAcademy_OAuth_InitializeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AuthorizationURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAuthorizationURL {
		return [super getOutputByName:@"AuthorizationURL"];
	}

	/*!
	 * Retrieve the value of the "CallbackID" output from an execution of this Choreo.
	 * @return - NSString* (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCallbackID {
		return [super getOutputByName:@"CallbackID"];
	}
	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@implementation TMBKhanAcademy_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/OAuth/InitializeOAuth"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_OAuth_InitializeOAuth_ResultSet *results = [[[TMBKhanAcademy_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBadges Choreo.
 */
@implementation TMBKhanAcademy_Badges_GetBadges_Inputs

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(optional, string) The Consumer Key provided by Khan Academy.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(optional, string) The OAuth Consumer Secret provided by Khan Academy.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user in the case when authentication credentials are provided.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(optional, string) The OAuth Token Secret retrieved during the OAuth process.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the OAuthToken input for this Choreo.
	*(optional, string) The OAuth Token retrieved during the OAuth process.
	 */
	-(void)setOAuthToken:(NSString*)OAuthToken {
		[super setInput:@"OAuthToken" toValue:OAuthToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBadges Choreo.
 */
@implementation TMBKhanAcademy_Badges_GetBadges_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all badges, and if a user is logged in, retrieves additional information about the badges that user has earned.
 */
@implementation TMBKhanAcademy_Badges_GetBadges

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Badges_GetBadges Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Badges/GetBadges"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Badges_GetBadges_ResultSet *results = [[[TMBKhanAcademy_Badges_GetBadges_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBadges Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Badges_GetBadges_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Badges_GetBadges_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUserVideos Choreo.
 */
@implementation TMBKhanAcademy_Users_GetUserVideos_Inputs

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Khan Academy.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The OAuth Consumer Secret provided by Khan Academy.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the EndTime input for this Choreo.
	*(optional, string) The date/time to end searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
	 */
	-(void)setEndTime:(NSString*)EndTime {
		[super setInput:@"EndTime" toValue:EndTime];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuth Token Secret retrieved during the OAuth process.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the OAuthToken input for this Choreo.
	*(required, string) The OAuth Token retrieved during the OAuth process.
	 */
	-(void)setOAuthToken:(NSString*)OAuthToken {
		[super setInput:@"OAuthToken" toValue:OAuthToken];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(optional, string) The date/time to start searching for logs in UTC format: YYYY-mm-ddTHH:MM:SS (e.g., 2011-10-18T02:41:53).
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserVideos Choreo.
 */
@implementation TMBKhanAcademy_Users_GetUserVideos_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves data about all videos watched by a specific user.
 */
@implementation TMBKhanAcademy_Users_GetUserVideos

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Users_GetUserVideos Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Users/GetUserVideos"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Users_GetUserVideos_ResultSet *results = [[[TMBKhanAcademy_Users_GetUserVideos_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUserVideos Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Users_GetUserVideos_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Users_GetUserVideos_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetExerciseFollowUp Choreo.
 */
@implementation TMBKhanAcademy_Exercises_GetExerciseFollowUp_Inputs

	/*!
	 * Set the value of the ExerciseName input for this Choreo.
	*(required, string) The name of the exercise to retrieve (e.g. logarithms_1)
	 */
	-(void)setExerciseName:(NSString*)ExerciseName {
		[super setInput:@"ExerciseName" toValue:ExerciseName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetExerciseFollowUp Choreo.
 */
@implementation TMBKhanAcademy_Exercises_GetExerciseFollowUp_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all exercises which have the specified exercise as a prerequisite.
 */
@implementation TMBKhanAcademy_Exercises_GetExerciseFollowUp

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Exercises_GetExerciseFollowUp Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Exercises/GetExerciseFollowUp"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Exercises_GetExerciseFollowUp_ResultSet *results = [[[TMBKhanAcademy_Exercises_GetExerciseFollowUp_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetExerciseFollowUp Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Exercises_GetExerciseFollowUp_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Exercises_GetExerciseFollowUp_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUserExercises Choreo.
 */
@implementation TMBKhanAcademy_Users_GetUserExercises_Inputs

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Khan Academy.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The OAuth Consumer Secret provided by Khan Academy.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuth Token Secret retrieved during the OAuth process.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the OAuthToken input for this Choreo.
	*(required, string) The OAuth Token retrieved during the OAuth process.
	 */
	-(void)setOAuthToken:(NSString*)OAuthToken {
		[super setInput:@"OAuthToken" toValue:OAuthToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserExercises Choreo.
 */
@implementation TMBKhanAcademy_Users_GetUserExercises_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves data about all excercises engaged by a specific user.
 */
@implementation TMBKhanAcademy_Users_GetUserExercises

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Users_GetUserExercises Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Users/GetUserExercises"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Users_GetUserExercises_ResultSet *results = [[[TMBKhanAcademy_Users_GetUserExercises_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUserExercises Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Users_GetUserExercises_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Users_GetUserExercises_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBKhanAcademy_OAuth_FinalizeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppKeyName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyName:(NSString*)AppKeyName {
		[super setInput:@"AppKeyName" toValue:AppKeyName];
	}

	/*!
	 * Set the value of the AppKeyValue input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyValue:(NSString*)AppKeyValue {
		[super setInput:@"AppKeyValue" toValue:AppKeyValue];
	}

	/*!
	 * Set the value of the CallbackID input for this Choreo.
	*(required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the callback data after the user authorizes.
	 */
	-(void)setCallbackID:(NSString*)CallbackID {
		[super setInput:@"CallbackID" toValue:CallbackID];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Khan Academy.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The OAuth Consumer Secret provided by Khan Academy.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Timeout input for this Choreo.
	*(optional, integer) The amount of time (in seconds) to poll your Temboo callback URL to see if your app's user has allowed or denied the request for access. Defaults to 20. Max is 60.
	 */
	-(void)setTimeout:(NSString*)Timeout {
		[super setInput:@"Timeout" toValue:Timeout];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@implementation TMBKhanAcademy_OAuth_FinalizeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "OAuthTokenSecret" output from an execution of this Choreo.
	 * @return - NSString* (string) The OAuth Token Secret retrieved during the OAuth process.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getOAuthTokenSecret {
		return [super getOutputByName:@"OAuthTokenSecret"];
	}

	/*!
	 * Retrieve the value of the "OAuthToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The OAuth Token retrieved during the OAuth process.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getOAuthToken {
		return [super getOutputByName:@"OAuthToken"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Khan Academy OAuth token and token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@implementation TMBKhanAcademy_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/OAuth/FinalizeOAuth"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBKhanAcademy_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CurrentUser Choreo.
 */
@implementation TMBKhanAcademy_Users_CurrentUser_Inputs

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Khan Academy.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The OAuth Consumer Secret provided by Khan Academy.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) The email address (coach or student ID) of user. If not provided, defaults to currently logged in user.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuth Token Secret retrieved during the OAuth process.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
	}

	/*!
	 * Set the value of the OAuthToken input for this Choreo.
	*(required, string) The OAuth Token retrieved during the OAuth process.
	 */
	-(void)setOAuthToken:(NSString*)OAuthToken {
		[super setInput:@"OAuthToken" toValue:OAuthToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CurrentUser Choreo.
 */
@implementation TMBKhanAcademy_Users_CurrentUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Khan Academy.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves user data about a specified user.
 */
@implementation TMBKhanAcademy_Users_CurrentUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKhanAcademy_Users_CurrentUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/KhanAcademy/Users/CurrentUser"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBKhanAcademy_Users_CurrentUser_ResultSet *results = [[[TMBKhanAcademy_Users_CurrentUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CurrentUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKhanAcademy_Users_CurrentUser_Inputs*)newInputSet {
		return [[[TMBKhanAcademy_Users_CurrentUser_Inputs alloc] init] autorelease];
	}
@end
	