/*!
 * @TMBFitbit.m
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

#import "TMBFitbit.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetBadges Choreo.
 */
@implementation TMBFitbit_Social_GetBadges_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(conditional, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBadges Choreo.
 */
@implementation TMBFitbit_Social_GetBadges_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a user's badges.
 */
@implementation TMBFitbit_Social_GetBadges

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Social_GetBadges Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Social/GetBadges"] autorelease];
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
		TMBFitbit_Social_GetBadges_ResultSet *results = [[[TMBFitbit_Social_GetBadges_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBadges Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Social_GetBadges_Inputs*)newInputSet {
		return [[[TMBFitbit_Social_GetBadges_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetActivities Choreo.
 */
@implementation TMBFitbit_Activities_GetActivities_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetActivities Choreo.
 */
@implementation TMBFitbit_Activities_GetActivities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a summary and list of a user's activities and activity log entries for a specified date.
 */
@implementation TMBFitbit_Activities_GetActivities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Activities_GetActivities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Activities/GetActivities"] autorelease];
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
		TMBFitbit_Activities_GetActivities_ResultSet *results = [[[TMBFitbit_Activities_GetActivities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetActivities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Activities_GetActivities_Inputs*)newInputSet {
		return [[[TMBFitbit_Activities_GetActivities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFavoriteFood Choreo.
 */
@implementation TMBFitbit_Foods_DeleteFavoriteFood_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the FoodID input for this Choreo.
	*(required, integer) The id of the food to delete from you favorites list.
	 */
	-(void)setFoodID:(NSString*)FoodID {
		[super setInput:@"FoodID" toValue:FoodID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFavoriteFood Choreo.
 */
@implementation TMBFitbit_Foods_DeleteFavoriteFood_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified food from a user's favorite foods list.
 */
@implementation TMBFitbit_Foods_DeleteFavoriteFood

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_DeleteFavoriteFood Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/DeleteFavoriteFood"] autorelease];
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
		TMBFitbit_Foods_DeleteFavoriteFood_ResultSet *results = [[[TMBFitbit_Foods_DeleteFavoriteFood_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFavoriteFood Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_DeleteFavoriteFood_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_DeleteFavoriteFood_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LogWater Choreo.
 */
@implementation TMBFitbit_Foods_LogWater_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(required, decimal) The amount of water consumed. Corresponds to the Unit input.
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Unit input for this Choreo.
	*(required, string) Unit of measurement for the water entry. Valid values: 'ml', 'fl oz', or 'cup'.
	 */
	-(void)setUnit:(NSString*)Unit {
		[super setInput:@"Unit" toValue:Unit];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogWater Choreo.
 */
@implementation TMBFitbit_Foods_LogWater_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Log a new water entry for a particular date.
 */
@implementation TMBFitbit_Foods_LogWater

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_LogWater Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/LogWater"] autorelease];
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
		TMBFitbit_Foods_LogWater_ResultSet *results = [[[TMBFitbit_Foods_LogWater_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LogWater Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_LogWater_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_LogWater_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetHeartRate Choreo.
 */
@implementation TMBFitbit_Heart_GetHeartRate_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetHeartRate Choreo.
 */
@implementation TMBFitbit_Heart_GetHeartRate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets average values and a list of user's heart rate log entries for a given day.
 */
@implementation TMBFitbit_Heart_GetHeartRate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Heart_GetHeartRate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Heart/GetHeartRate"] autorelease];
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
		TMBFitbit_Heart_GetHeartRate_ResultSet *results = [[[TMBFitbit_Heart_GetHeartRate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetHeartRate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Heart_GetHeartRate_Inputs*)newInputSet {
		return [[[TMBFitbit_Heart_GetHeartRate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFriendsLeaderboard Choreo.
 */
@implementation TMBFitbit_Social_GetFriendsLeaderboard_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFriendsLeaderboard Choreo.
 */
@implementation TMBFitbit_Social_GetFriendsLeaderboard_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a user's friends leaderboard.
 */
@implementation TMBFitbit_Social_GetFriendsLeaderboard

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Social_GetFriendsLeaderboard Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Social/GetFriendsLeaderboard"] autorelease];
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
		TMBFitbit_Social_GetFriendsLeaderboard_ResultSet *results = [[[TMBFitbit_Social_GetFriendsLeaderboard_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFriendsLeaderboard Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Social_GetFriendsLeaderboard_Inputs*)newInputSet {
		return [[[TMBFitbit_Social_GetFriendsLeaderboard_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTimeSeriesByPeriod Choreo.
 */
@implementation TMBFitbit_Statistics_GetTimeSeriesByPeriod_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(required, date) The end date of the period for the data you want to retrieve (in the format yyyy-MM-dd). You can also specify the value 'today'.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Period input for this Choreo.
	*(optional, string) The date range period. Valid values are: 1d, 7d, 30d, 1w, 1m, 3m, 6m, 1y, max. Defaults to 'max'.
	 */
	-(void)setPeriod:(NSString*)Period {
		[super setInput:@"Period" toValue:Period];
	}

	/*!
	 * Set the value of the ResourcePath input for this Choreo.
	*(required, string) The resource path that you want to access (for example: activities/log/distance). See Choreo documentation for a full list of resource paths.
	 */
	-(void)setResourcePath:(NSString*)ResourcePath {
		[super setInput:@"ResourcePath" toValue:ResourcePath];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTimeSeriesByPeriod Choreo.
 */
@implementation TMBFitbit_Statistics_GetTimeSeriesByPeriod_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets time series data for a given resource based on a date range period you specify.
 */
@implementation TMBFitbit_Statistics_GetTimeSeriesByPeriod

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Statistics_GetTimeSeriesByPeriod Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Statistics/GetTimeSeriesByPeriod"] autorelease];
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
		TMBFitbit_Statistics_GetTimeSeriesByPeriod_ResultSet *results = [[[TMBFitbit_Statistics_GetTimeSeriesByPeriod_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTimeSeriesByPeriod Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Statistics_GetTimeSeriesByPeriod_Inputs*)newInputSet {
		return [[[TMBFitbit_Statistics_GetTimeSeriesByPeriod_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetActivityStats Choreo.
 */
@implementation TMBFitbit_Statistics_GetActivityStats_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetActivityStats Choreo.
 */
@implementation TMBFitbit_Statistics_GetActivityStats_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets user's activity statistics.
 */
@implementation TMBFitbit_Statistics_GetActivityStats

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Statistics_GetActivityStats Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Statistics/GetActivityStats"] autorelease];
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
		TMBFitbit_Statistics_GetActivityStats_ResultSet *results = [[[TMBFitbit_Statistics_GetActivityStats_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetActivityStats Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Statistics_GetActivityStats_Inputs*)newInputSet {
		return [[[TMBFitbit_Statistics_GetActivityStats_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFoodLog Choreo.
 */
@implementation TMBFitbit_Foods_DeleteFoodLog_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the FoodLogID input for this Choreo.
	*(required, integer) The id of the food log you want to delete. The Id is returned in the LogFood response.
	 */
	-(void)setFoodLogID:(NSString*)FoodLogID {
		[super setInput:@"FoodLogID" toValue:FoodLogID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFoodLog Choreo.
 */
@implementation TMBFitbit_Foods_DeleteFoodLog_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified food log entry.
 */
@implementation TMBFitbit_Foods_DeleteFoodLog

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_DeleteFoodLog Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/DeleteFoodLog"] autorelease];
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
		TMBFitbit_Foods_DeleteFoodLog_ResultSet *results = [[[TMBFitbit_Foods_DeleteFoodLog_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFoodLog Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_DeleteFoodLog_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_DeleteFoodLog_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteHeartRateLog Choreo.
 */
@implementation TMBFitbit_Heart_DeleteHeartRateLog_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the HeartRateLogID input for this Choreo.
	*(required, integer) The id of the heart rate log you want to delete.
	 */
	-(void)setHeartRateLogID:(NSString*)HeartRateLogID {
		[super setInput:@"HeartRateLogID" toValue:HeartRateLogID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteHeartRateLog Choreo.
 */
@implementation TMBFitbit_Heart_DeleteHeartRateLog_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes user's heart rate log entry with the given id.
 */
@implementation TMBFitbit_Heart_DeleteHeartRateLog

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Heart_DeleteHeartRateLog Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Heart/DeleteHeartRateLog"] autorelease];
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
		TMBFitbit_Heart_DeleteHeartRateLog_ResultSet *results = [[[TMBFitbit_Heart_DeleteHeartRateLog_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteHeartRateLog Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Heart_DeleteHeartRateLog_Inputs*)newInputSet {
		return [[[TMBFitbit_Heart_DeleteHeartRateLog_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBloodPressureLog Choreo.
 */
@implementation TMBFitbit_BloodPressure_DeleteBloodPressureLog_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the BloodPressureLogID input for this Choreo.
	*(required, integer) The id of the blood pressure log you want to delete.
	 */
	-(void)setBloodPressureLogID:(NSString*)BloodPressureLogID {
		[super setInput:@"BloodPressureLogID" toValue:BloodPressureLogID];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBloodPressureLog Choreo.
 */
@implementation TMBFitbit_BloodPressure_DeleteBloodPressureLog_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes user's blood pressure log entry with the given id.
 */
@implementation TMBFitbit_BloodPressure_DeleteBloodPressureLog

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_BloodPressure_DeleteBloodPressureLog Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/BloodPressure/DeleteBloodPressureLog"] autorelease];
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
		TMBFitbit_BloodPressure_DeleteBloodPressureLog_ResultSet *results = [[[TMBFitbit_BloodPressure_DeleteBloodPressureLog_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBloodPressureLog Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_BloodPressure_DeleteBloodPressureLog_Inputs*)newInputSet {
		return [[[TMBFitbit_BloodPressure_DeleteBloodPressureLog_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMeals Choreo.
 */
@implementation TMBFitbit_Foods_GetMeals_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMeals Choreo.
 */
@implementation TMBFitbit_Foods_GetMeals_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get a list of meals that a user has created in his or her food log.
 */
@implementation TMBFitbit_Foods_GetMeals

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_GetMeals Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/GetMeals"] autorelease];
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
		TMBFitbit_Foods_GetMeals_ResultSet *results = [[[TMBFitbit_Foods_GetMeals_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMeals Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_GetMeals_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_GetMeals_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LogBodyFat Choreo.
 */
@implementation TMBFitbit_Body_LogBodyFat_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the BodyFat input for this Choreo.
	*(required, decimal) Body Fat; in the format X.XX
	 */
	-(void)setBodyFat:(NSString*)BodyFat {
		[super setInput:@"BodyFat" toValue:BodyFat];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Time input for this Choreo.
	*(optional, string) Time of the measurement; hours and minutes in the format HH:mm:ss; set to last second of the day if not provided.
	 */
	-(void)setTime:(NSString*)Time {
		[super setInput:@"Time" toValue:Time];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogBodyFat Choreo.
 */
@implementation TMBFitbit_Body_LogBodyFat_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates log entry for a user's body fat.
 */
@implementation TMBFitbit_Body_LogBodyFat

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_LogBodyFat Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/LogBodyFat"] autorelease];
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
		TMBFitbit_Body_LogBodyFat_ResultSet *results = [[[TMBFitbit_Body_LogBodyFat_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LogBodyFat Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_LogBodyFat_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_LogBodyFat_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LogFood Choreo.
 */
@implementation TMBFitbit_Foods_LogFood_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(required, integer) The amount of food consumed formatted like X.XX. Note that this input corresponds with the UnitId input.
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Favorite input for this Choreo.
	*(optional, boolean) Set to 1 to add food to favorites after creating log entry. Defaults to 0 for false.
	 */
	-(void)setFavorite:(NSString*)Favorite {
		[super setInput:@"Favorite" toValue:Favorite];
	}

	/*!
	 * Set the value of the FoodID input for this Choreo.
	*(required, integer) The id of the food to create a log entry for.
	 */
	-(void)setFoodID:(NSString*)FoodID {
		[super setInput:@"FoodID" toValue:FoodID];
	}

	/*!
	 * Set the value of the MealType input for this Choreo.
	*(required, string) The type of meal. Valid values: Breakfast, Morning Snack, Lunch, Afternoon Snack, Dinner, Anytime.
	 */
	-(void)setMealType:(NSString*)MealType {
		[super setInput:@"MealType" toValue:MealType];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UnitID input for this Choreo.
	*(required, integer) This id can be retrieved through other calls such as: Get Foods (Recent, Frequent, Favorite), Search Foods or Get Food Units.
	 */
	-(void)setUnitID:(NSString*)UnitID {
		[super setInput:@"UnitID" toValue:UnitID];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogFood Choreo.
 */
@implementation TMBFitbit_Foods_LogFood_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Log a new food entry for a particular date.
 */
@implementation TMBFitbit_Foods_LogFood

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_LogFood Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/LogFood"] autorelease];
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
		TMBFitbit_Foods_LogFood_ResultSet *results = [[[TMBFitbit_Foods_LogFood_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LogFood Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_LogFood_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_LogFood_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetGlucose Choreo.
 */
@implementation TMBFitbit_Glucose_GetGlucose_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetGlucose Choreo.
 */
@implementation TMBFitbit_Glucose_GetGlucose_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a list of user's blood glucose and HbA1C measurements for a given day.
 */
@implementation TMBFitbit_Glucose_GetGlucose

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Glucose_GetGlucose Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Glucose/GetGlucose"] autorelease];
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
		TMBFitbit_Glucose_GetGlucose_ResultSet *results = [[[TMBFitbit_Glucose_GetGlucose_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetGlucose Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Glucose_GetGlucose_Inputs*)newInputSet {
		return [[[TMBFitbit_Glucose_GetGlucose_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetDevices Choreo.
 */
@implementation TMBFitbit_Devices_GetDevices_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDevices Choreo.
 */
@implementation TMBFitbit_Devices_GetDevices_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the list of Fitbit devices for a user.
 */
@implementation TMBFitbit_Devices_GetDevices

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Devices_GetDevices Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Devices/GetDevices"] autorelease];
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
		TMBFitbit_Devices_GetDevices_ResultSet *results = [[[TMBFitbit_Devices_GetDevices_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDevices Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Devices_GetDevices_Inputs*)newInputSet {
		return [[[TMBFitbit_Devices_GetDevices_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddFavoriteActivity Choreo.
 */
@implementation TMBFitbit_Activities_AddFavoriteActivity_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, integer) The id of the activity you want to make a favorite.
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddFavoriteActivity Choreo.
 */
@implementation TMBFitbit_Activities_AddFavoriteActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a specified activity to a user's favorite activities list.
 */
@implementation TMBFitbit_Activities_AddFavoriteActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Activities_AddFavoriteActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Activities/AddFavoriteActivity"] autorelease];
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
		TMBFitbit_Activities_AddFavoriteActivity_ResultSet *results = [[[TMBFitbit_Activities_AddFavoriteActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddFavoriteActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Activities_AddFavoriteActivity_Inputs*)newInputSet {
		return [[[TMBFitbit_Activities_AddFavoriteActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LogBodyMeasurements Choreo.
 */
@implementation TMBFitbit_Body_LogBodyMeasurements_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Bicep input for this Choreo.
	*(conditional, decimal) The user's bicep measurement.
	 */
	-(void)setBicep:(NSString*)Bicep {
		[super setInput:@"Bicep" toValue:Bicep];
	}

	/*!
	 * Set the value of the Calf input for this Choreo.
	*(conditional, decimal) The user's calf measurement.
	 */
	-(void)setCalf:(NSString*)Calf {
		[super setInput:@"Calf" toValue:Calf];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Forearm input for this Choreo.
	*(conditional, decimal) The user's forearm measurement.
	 */
	-(void)setForearm:(NSString*)Forearm {
		[super setInput:@"Forearm" toValue:Forearm];
	}

	/*!
	 * Set the value of the Hips input for this Choreo.
	*(conditional, decimal) The user's hips measurement.
	 */
	-(void)setHips:(NSString*)Hips {
		[super setInput:@"Hips" toValue:Hips];
	}

	/*!
	 * Set the value of the Neck input for this Choreo.
	*(conditional, decimal) The user's neck measurement.
	 */
	-(void)setNeck:(NSString*)Neck {
		[super setInput:@"Neck" toValue:Neck];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Thigh input for this Choreo.
	*(conditional, decimal) The user's thigh measurement.
	 */
	-(void)setThigh:(NSString*)Thigh {
		[super setInput:@"Thigh" toValue:Thigh];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the Waist input for this Choreo.
	*(conditional, decimal) The user's waist measurement.
	 */
	-(void)setWaist:(NSString*)Waist {
		[super setInput:@"Waist" toValue:Waist];
	}

	/*!
	 * Set the value of the Weight input for this Choreo.
	*(conditional, decimal) The user's weight.
	 */
	-(void)setWeight:(NSString*)Weight {
		[super setInput:@"Weight" toValue:Weight];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogBodyMeasurements Choreo.
 */
@implementation TMBFitbit_Body_LogBodyMeasurements_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new log entry for a user's body measurements.
 */
@implementation TMBFitbit_Body_LogBodyMeasurements

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_LogBodyMeasurements Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/LogBodyMeasurements"] autorelease];
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
		TMBFitbit_Body_LogBodyMeasurements_ResultSet *results = [[[TMBFitbit_Body_LogBodyMeasurements_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LogBodyMeasurements Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_LogBodyMeasurements_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_LogBodyMeasurements_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAlarms Choreo.
 */
@implementation TMBFitbit_Devices_GetAlarms_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the DeviceID input for this Choreo.
	*(required, string) The id of the device you would like to manage the alarm on.
	 */
	-(void)setDeviceID:(NSString*)DeviceID {
		[super setInput:@"DeviceID" toValue:DeviceID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAlarms Choreo.
 */
@implementation TMBFitbit_Devices_GetAlarms_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the list of Fitbit device alarms for a specific device.
 */
@implementation TMBFitbit_Devices_GetAlarms

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Devices_GetAlarms Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Devices/GetAlarms"] autorelease];
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
		TMBFitbit_Devices_GetAlarms_ResultSet *results = [[[TMBFitbit_Devices_GetAlarms_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAlarms Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Devices_GetAlarms_Inputs*)newInputSet {
		return [[[TMBFitbit_Devices_GetAlarms_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LogBloodPressure Choreo.
 */
@implementation TMBFitbit_BloodPressure_LogBloodPressure_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Diastolic input for this Choreo.
	*(required, integer) The diastolic measurement.
	 */
	-(void)setDiastolic:(NSString*)Diastolic {
		[super setInput:@"Diastolic" toValue:Diastolic];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Systolic input for this Choreo.
	*(required, integer) The systolic measurement.
	 */
	-(void)setSystolic:(NSString*)Systolic {
		[super setInput:@"Systolic" toValue:Systolic];
	}

	/*!
	 * Set the value of the Time input for this Choreo.
	*(optional, string) Time of the measurement; hours and minutes in the format HH:mm.
	 */
	-(void)setTime:(NSString*)Time {
		[super setInput:@"Time" toValue:Time];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogBloodPressure Choreo.
 */
@implementation TMBFitbit_BloodPressure_LogBloodPressure_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates log entry for a blood pressure measurement.
 */
@implementation TMBFitbit_BloodPressure_LogBloodPressure

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_BloodPressure_LogBloodPressure Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/BloodPressure/LogBloodPressure"] autorelease];
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
		TMBFitbit_BloodPressure_LogBloodPressure_ResultSet *results = [[[TMBFitbit_BloodPressure_LogBloodPressure_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LogBloodPressure Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_BloodPressure_LogBloodPressure_Inputs*)newInputSet {
		return [[[TMBFitbit_BloodPressure_LogBloodPressure_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateBodyWeightGoal Choreo.
 */
@implementation TMBFitbit_Body_UpdateBodyWeightGoal_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, date) Weight goal start date; in the format yyyy-MM-dd.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the StartWeight input for this Choreo.
	*(required, decimal) Weight goal start weight; in the format X.XX.
	 */
	-(void)setStartWeight:(NSString*)StartWeight {
		[super setInput:@"StartWeight" toValue:StartWeight];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the Weight input for this Choreo.
	*(conditional, decimal) Weight goal target weight; in the format X.XX. Required if user doesn't have a weight goal.
	 */
	-(void)setWeight:(NSString*)Weight {
		[super setInput:@"Weight" toValue:Weight];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateBodyWeightGoal Choreo.
 */
@implementation TMBFitbit_Body_UpdateBodyWeightGoal_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates or updates a user's weight goal.
 */
@implementation TMBFitbit_Body_UpdateBodyWeightGoal

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_UpdateBodyWeightGoal Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/UpdateBodyWeightGoal"] autorelease];
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
		TMBFitbit_Body_UpdateBodyWeightGoal_ResultSet *results = [[[TMBFitbit_Body_UpdateBodyWeightGoal_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateBodyWeightGoal Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_UpdateBodyWeightGoal_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_UpdateBodyWeightGoal_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSleep Choreo.
 */
@implementation TMBFitbit_Sleep_GetSleep_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSleep Choreo.
 */
@implementation TMBFitbit_Sleep_GetSleep_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a summary and list of a user's sleep log entries for a specified date.
 */
@implementation TMBFitbit_Sleep_GetSleep

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Sleep_GetSleep Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Sleep/GetSleep"] autorelease];
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
		TMBFitbit_Sleep_GetSleep_ResultSet *results = [[[TMBFitbit_Sleep_GetSleep_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSleep Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Sleep_GetSleep_Inputs*)newInputSet {
		return [[[TMBFitbit_Sleep_GetSleep_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFavoriteActivity Choreo.
 */
@implementation TMBFitbit_Activities_DeleteFavoriteActivity_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, integer) The id of the activity you want to delete from your favorites list.
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFavoriteActivity Choreo.
 */
@implementation TMBFitbit_Activities_DeleteFavoriteActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified activity from a user's favorite activities list.
 */
@implementation TMBFitbit_Activities_DeleteFavoriteActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Activities_DeleteFavoriteActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Activities/DeleteFavoriteActivity"] autorelease];
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
		TMBFitbit_Activities_DeleteFavoriteActivity_ResultSet *results = [[[TMBFitbit_Activities_DeleteFavoriteActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFavoriteActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Activities_DeleteFavoriteActivity_Inputs*)newInputSet {
		return [[[TMBFitbit_Activities_DeleteFavoriteActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchFoods Choreo.
 */
@implementation TMBFitbit_Foods_SearchFoods_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) The search query (i.e. artichoke).
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchFoods Choreo.
 */
@implementation TMBFitbit_Foods_SearchFoods_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search public foods in the Fibit database and private user created foods by keyword search.
 */
@implementation TMBFitbit_Foods_SearchFoods

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_SearchFoods Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/SearchFoods"] autorelease];
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
		TMBFitbit_Foods_SearchFoods_ResultSet *results = [[[TMBFitbit_Foods_SearchFoods_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchFoods Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_SearchFoods_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_SearchFoods_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUserInfo Choreo.
 */
@implementation TMBFitbit_Profile_UpdateUserInfo_Inputs

	/*!
	 * Set the value of the AboutMe input for this Choreo.
	*(optional, string) The user's About Me string.
	 */
	-(void)setAboutMe:(NSString*)AboutMe {
		[super setInput:@"AboutMe" toValue:AboutMe];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Birthday input for this Choreo.
	*(optional, date) Date of Birth; in the format yyyy-MM-dd.
	 */
	-(void)setBirthday:(NSString*)Birthday {
		[super setInput:@"Birthday" toValue:Birthday];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(optional, string) The user's city information.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(optional, string) The two-character code for the user's country.
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the FoodLocale input for this Choreo.
	*(optional, string) Food Database Locale; in the format "xx_XX".
	 */
	-(void)setFoodLocale:(NSString*)FoodLocale {
		[super setInput:@"FoodLocale" toValue:FoodLocale];
	}

	/*!
	 * Set the value of the FullName input for this Choreo.
	*(optional, string) The user's full name.
	 */
	-(void)setFullName:(NSString*)FullName {
		[super setInput:@"FullName" toValue:FullName];
	}

	/*!
	 * Set the value of the Gender input for this Choreo.
	*(optional, string) The user's gender (MALE/FEMALE/NA).
	 */
	-(void)setGender:(NSString*)Gender {
		[super setInput:@"Gender" toValue:Gender];
	}

	/*!
	 * Set the value of the GlucoseUnit input for this Choreo.
	*(optional, decimal) The blood glucose unit of measurement being used. Valid values are: en_US, any,  METRIC.
	 */
	-(void)setGlucoseUnit:(NSString*)GlucoseUnit {
		[super setInput:@"GlucoseUnit" toValue:GlucoseUnit];
	}

	/*!
	 * Set the value of the HeightUnit input for this Choreo.
	*(optional, decimal) The height unit being used. Valid values are: en_US, any,  METRIC.
	 */
	-(void)setHeightUnit:(NSString*)HeightUnit {
		[super setInput:@"HeightUnit" toValue:HeightUnit];
	}

	/*!
	 * Set the value of the Height input for this Choreo.
	*(optional, decimal) The user's height; in the format X.XX (inches).
	 */
	-(void)setHeight:(NSString*)Height {
		[super setInput:@"Height" toValue:Height];
	}

	/*!
	 * Set the value of the Locale input for this Choreo.
	*(optional, string) Locale of website (country/language); one of the locales, currently – (en_US, fr_FR, de_DE, es_ES, en_GB, en_AU, en_NZ, ja_JP).
	 */
	-(void)setLocale:(NSString*)Locale {
		[super setInput:@"Locale" toValue:Locale];
	}

	/*!
	 * Set the value of the Nickname input for this Choreo.
	*(optional, string) The user's nickname.
	 */
	-(void)setNickname:(NSString*)Nickname {
		[super setInput:@"Nickname" toValue:Nickname];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The two-character state abbreviation for the user.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the StrideLengthRunning input for this Choreo.
	*(optional, decimal) Running stride length; in the format X.XX.
	 */
	-(void)setStrideLengthRunning:(NSString*)StrideLengthRunning {
		[super setInput:@"StrideLengthRunning" toValue:StrideLengthRunning];
	}

	/*!
	 * Set the value of the StrideLengthWalking input for this Choreo.
	*(optional, decimal) Walking stride length; in the format X.XX.
	 */
	-(void)setStrideLengthWalking:(NSString*)StrideLengthWalking {
		[super setInput:@"StrideLengthWalking" toValue:StrideLengthWalking];
	}

	/*!
	 * Set the value of the Timezone input for this Choreo.
	*(optional, string) The user's timezone; in the format "America/Los_Angeles"
	 */
	-(void)setTimezone:(NSString*)Timezone {
		[super setInput:@"Timezone" toValue:Timezone];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the WaterUnit input for this Choreo.
	*(optional, decimal) The water unit being used. Valid values are: en_US, any,  METRIC.
	 */
	-(void)setWaterUnit:(NSString*)WaterUnit {
		[super setInput:@"WaterUnit" toValue:WaterUnit];
	}

	/*!
	 * Set the value of the WeightUnit input for this Choreo.
	*(optional, string) The weight unit being used. Valid values are: en_US, any,  METRIC.
	 */
	-(void)setWeightUnit:(NSString*)WeightUnit {
		[super setInput:@"WeightUnit" toValue:WeightUnit];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUserInfo Choreo.
 */
@implementation TMBFitbit_Profile_UpdateUserInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a user's profile data.
 */
@implementation TMBFitbit_Profile_UpdateUserInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Profile_UpdateUserInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Profile/UpdateUserInfo"] autorelease];
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
		TMBFitbit_Profile_UpdateUserInfo_ResultSet *results = [[[TMBFitbit_Profile_UpdateUserInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateUserInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Profile_UpdateUserInfo_Inputs*)newInputSet {
		return [[[TMBFitbit_Profile_UpdateUserInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LogGlucose Choreo.
 */
@implementation TMBFitbit_Glucose_LogGlucose_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Glucose input for this Choreo.
	*(conditional, integer) Glucose measurement; in the format X.X, required with tracker parameter, otherwise optional.
	 */
	-(void)setGlucose:(NSString*)Glucose {
		[super setInput:@"Glucose" toValue:Glucose];
	}

	/*!
	 * Set the value of the HBA1C input for this Choreo.
	*(conditional, decimal) HbA1c measurement; in the format X.X, either hba1c or tracker should be provided (or both).
	 */
	-(void)setHBA1C:(NSString*)HBA1C {
		[super setInput:@"HBA1C" toValue:HBA1C];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Time input for this Choreo.
	*(optional, string) Time of the measurement; hours and minutes in the format HH:mm.
	 */
	-(void)setTime:(NSString*)Time {
		[super setInput:@"Time" toValue:Time];
	}

	/*!
	 * Set the value of the Tracker input for this Choreo.
	*(conditional, string) Glucose tracker name; predefined or custom tracker name (matches tracker name on the website, e.g. "Afternoon").
	 */
	-(void)setTracker:(NSString*)Tracker {
		[super setInput:@"Tracker" toValue:Tracker];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogGlucose Choreo.
 */
@implementation TMBFitbit_Glucose_LogGlucose_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates log entry for a blood glucose measurement and/or HbA1c measurement.
 */
@implementation TMBFitbit_Glucose_LogGlucose

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Glucose_LogGlucose Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Glucose/LogGlucose"] autorelease];
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
		TMBFitbit_Glucose_LogGlucose_ResultSet *results = [[[TMBFitbit_Glucose_LogGlucose_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LogGlucose Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Glucose_LogGlucose_Inputs*)newInputSet {
		return [[[TMBFitbit_Glucose_LogGlucose_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFoodGoal Choreo.
 */
@implementation TMBFitbit_Foods_GetFoodGoal_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFoodGoal Choreo.
 */
@implementation TMBFitbit_Foods_GetFoodGoal_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a user's current daily calorie consumption goal.
 */
@implementation TMBFitbit_Foods_GetFoodGoal

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_GetFoodGoal Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/GetFoodGoal"] autorelease];
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
		TMBFitbit_Foods_GetFoodGoal_ResultSet *results = [[[TMBFitbit_Foods_GetFoodGoal_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFoodGoal Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_GetFoodGoal_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_GetFoodGoal_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUserInfo Choreo.
 */
@implementation TMBFitbit_Profile_GetUserInfo_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUserInfo Choreo.
 */
@implementation TMBFitbit_Profile_GetUserInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a user's profile data.
 */
@implementation TMBFitbit_Profile_GetUserInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Profile_GetUserInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Profile/GetUserInfo"] autorelease];
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
		TMBFitbit_Profile_GetUserInfo_ResultSet *results = [[[TMBFitbit_Profile_GetUserInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUserInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Profile_GetUserInfo_Inputs*)newInputSet {
		return [[[TMBFitbit_Profile_GetUserInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFoods Choreo.
 */
@implementation TMBFitbit_Foods_GetFoods_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFoods Choreo.
 */
@implementation TMBFitbit_Foods_GetFoods_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a summary and list of a user's food log entries for a specified date.
 */
@implementation TMBFitbit_Foods_GetFoods

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_GetFoods Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/GetFoods"] autorelease];
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
		TMBFitbit_Foods_GetFoods_ResultSet *results = [[[TMBFitbit_Foods_GetFoods_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFoods Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_GetFoods_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_GetFoods_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the BrowseActivities Choreo.
 */
@implementation TMBFitbit_Activities_BrowseActivities_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BrowseActivities Choreo.
 */
@implementation TMBFitbit_Activities_BrowseActivities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a tree of all valid Fitbit public activities from the activities catalog as well as private custom activities the user created.
 */
@implementation TMBFitbit_Activities_BrowseActivities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Activities_BrowseActivities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Activities/BrowseActivities"] autorelease];
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
		TMBFitbit_Activities_BrowseActivities_ResultSet *results = [[[TMBFitbit_Activities_BrowseActivities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the BrowseActivities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Activities_BrowseActivities_Inputs*)newInputSet {
		return [[[TMBFitbit_Activities_BrowseActivities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBFitbit_OAuth_InitializeOAuth_Inputs

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
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
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
@implementation TMBFitbit_OAuth_InitializeOAuth_ResultSet

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

	/*!
	 * Retrieve the value of the "OAuthTokenSecret" output from an execution of this Choreo.
	 * @return - NSString* (string) The temporary OAuth Token Secret that can be exchanged for permanent tokens using the FinalizeOAuth Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getOAuthTokenSecret {
		return [super getOutputByName:@"OAuthTokenSecret"];
	}
	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@implementation TMBFitbit_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/OAuth/InitializeOAuth"] autorelease];
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
		TMBFitbit_OAuth_InitializeOAuth_ResultSet *results = [[[TMBFitbit_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBFitbit_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteActivityLog Choreo.
 */
@implementation TMBFitbit_Activities_DeleteActivityLog_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityLogID input for this Choreo.
	*(required, integer) The id of the activity log you want to delete. The Id is returned in the LogActivity response.
	 */
	-(void)setActivityLogID:(NSString*)ActivityLogID {
		[super setInput:@"ActivityLogID" toValue:ActivityLogID];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteActivityLog Choreo.
 */
@implementation TMBFitbit_Activities_DeleteActivityLog_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified activity log entry.
 */
@implementation TMBFitbit_Activities_DeleteActivityLog

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Activities_DeleteActivityLog Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Activities/DeleteActivityLog"] autorelease];
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
		TMBFitbit_Activities_DeleteActivityLog_ResultSet *results = [[[TMBFitbit_Activities_DeleteActivityLog_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteActivityLog Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Activities_DeleteActivityLog_Inputs*)newInputSet {
		return [[[TMBFitbit_Activities_DeleteActivityLog_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentActivities Choreo.
 */
@implementation TMBFitbit_Activities_GetRecentActivities_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentActivities Choreo.
 */
@implementation TMBFitbit_Activities_GetRecentActivities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a list of a user's recent activities.
 */
@implementation TMBFitbit_Activities_GetRecentActivities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Activities_GetRecentActivities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Activities/GetRecentActivities"] autorelease];
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
		TMBFitbit_Activities_GetRecentActivities_ResultSet *results = [[[TMBFitbit_Activities_GetRecentActivities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecentActivities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Activities_GetRecentActivities_Inputs*)newInputSet {
		return [[[TMBFitbit_Activities_GetRecentActivities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LogActivity Choreo.
 */
@implementation TMBFitbit_Activities_LogActivity_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(conditional, integer) This can be the id of the activity, directory activity, or intensity level activity.
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}

	/*!
	 * Set the value of the ActivityName input for this Choreo.
	*(conditional, string) Custom activity name; either activityId or activityName should be provided.
	 */
	-(void)setActivityName:(NSString*)ActivityName {
		[super setInput:@"ActivityName" toValue:ActivityName];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the DistanceUnit input for this Choreo.
	*(conditional, string) Corresponds with the Distance parameter (i.e. Mile). See Choreo documentation for links to unit charts.
	 */
	-(void)setDistanceUnit:(NSString*)DistanceUnit {
		[super setInput:@"DistanceUnit" toValue:DistanceUnit];
	}

	/*!
	 * Set the value of the Distance input for this Choreo.
	*(conditional, decimal) The activity distance. Used when activityId corresponds to 'Running'  or 'Walking' for example.
	 */
	-(void)setDistance:(NSString*)Distance {
		[super setInput:@"Distance" toValue:Distance];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(required, integer) The duration of the activity in milliseconds.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the ManualCalories input for this Choreo.
	*(conditional, integer) The amount of calories defined manually; required when using the ActivityName parameter, otherwise optional.
	 */
	-(void)setManualCalories:(NSString*)ManualCalories {
		[super setInput:@"ManualCalories" toValue:ManualCalories];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(required, string) The hour and minutes for the start of the activity formatted like HH:mm.
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogActivity Choreo.
 */
@implementation TMBFitbit_Activities_LogActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Log a new activity for a particular date.
 */
@implementation TMBFitbit_Activities_LogActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Activities_LogActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Activities/LogActivity"] autorelease];
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
		TMBFitbit_Activities_LogActivity_ResultSet *results = [[[TMBFitbit_Activities_LogActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LogActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Activities_LogActivity_Inputs*)newInputSet {
		return [[[TMBFitbit_Activities_LogActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFriends Choreo.
 */
@implementation TMBFitbit_Social_GetFriends_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFriends Choreo.
 */
@implementation TMBFitbit_Social_GetFriends_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets user's friends.
 */
@implementation TMBFitbit_Social_GetFriends

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Social_GetFriends Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Social/GetFriends"] autorelease];
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
		TMBFitbit_Social_GetFriends_ResultSet *results = [[[TMBFitbit_Social_GetFriends_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFriends Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Social_GetFriends_Inputs*)newInputSet {
		return [[[TMBFitbit_Social_GetFriends_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBodyFatGoal Choreo.
 */
@implementation TMBFitbit_Body_GetBodyFatGoal_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBodyFatGoal Choreo.
 */
@implementation TMBFitbit_Body_GetBodyFatGoal_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get a user's current body fat goal.
 */
@implementation TMBFitbit_Body_GetBodyFatGoal

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_GetBodyFatGoal Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/GetBodyFatGoal"] autorelease];
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
		TMBFitbit_Body_GetBodyFatGoal_ResultSet *results = [[[TMBFitbit_Body_GetBodyFatGoal_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBodyFatGoal Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_GetBodyFatGoal_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_GetBodyFatGoal_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LogHeartRate Choreo.
 */
@implementation TMBFitbit_Heart_LogHeartRate_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the HeartRate input for this Choreo.
	*(required, integer) Heart rate measurement.
	 */
	-(void)setHeartRate:(NSString*)HeartRate {
		[super setInput:@"HeartRate" toValue:HeartRate];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Time input for this Choreo.
	*(optional, string) Time of the measurement; hours and minutes in the format HH:mm.
	 */
	-(void)setTime:(NSString*)Time {
		[super setInput:@"Time" toValue:Time];
	}

	/*!
	 * Set the value of the Tracker input for this Choreo.
	*(required, string) Heart rate tracker name; predefined or custom tracker name (matches tracker name on the website).
	 */
	-(void)setTracker:(NSString*)Tracker {
		[super setInput:@"Tracker" toValue:Tracker];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogHeartRate Choreo.
 */
@implementation TMBFitbit_Heart_LogHeartRate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates log entry for a heart rate measurement.
 */
@implementation TMBFitbit_Heart_LogHeartRate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Heart_LogHeartRate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Heart/LogHeartRate"] autorelease];
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
		TMBFitbit_Heart_LogHeartRate_ResultSet *results = [[[TMBFitbit_Heart_LogHeartRate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LogHeartRate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Heart_LogHeartRate_Inputs*)newInputSet {
		return [[[TMBFitbit_Heart_LogHeartRate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBloodPressure Choreo.
 */
@implementation TMBFitbit_BloodPressure_GetBloodPressure_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBloodPressure Choreo.
 */
@implementation TMBFitbit_BloodPressure_GetBloodPressure_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get an average value and a list of user's blood pressure log entries for a given day.
 */
@implementation TMBFitbit_BloodPressure_GetBloodPressure

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_BloodPressure_GetBloodPressure Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/BloodPressure/GetBloodPressure"] autorelease];
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
		TMBFitbit_BloodPressure_GetBloodPressure_ResultSet *results = [[[TMBFitbit_BloodPressure_GetBloodPressure_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBloodPressure Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_BloodPressure_GetBloodPressure_Inputs*)newInputSet {
		return [[[TMBFitbit_BloodPressure_GetBloodPressure_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetInvites Choreo.
 */
@implementation TMBFitbit_Social_GetInvites_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetInvites Choreo.
 */
@implementation TMBFitbit_Social_GetInvites_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve the list of invites to become freinds for a user.
 */
@implementation TMBFitbit_Social_GetInvites

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Social_GetInvites Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Social/GetInvites"] autorelease];
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
		TMBFitbit_Social_GetInvites_ResultSet *results = [[[TMBFitbit_Social_GetInvites_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetInvites Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Social_GetInvites_Inputs*)newInputSet {
		return [[[TMBFitbit_Social_GetInvites_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBodyMeasurements Choreo.
 */
@implementation TMBFitbit_Body_GetBodyMeasurements_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBodyMeasurements Choreo.
 */
@implementation TMBFitbit_Body_GetBodyMeasurements_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a summary of a user's body measurements for a specified date.
 */
@implementation TMBFitbit_Body_GetBodyMeasurements

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_GetBodyMeasurements Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/GetBodyMeasurements"] autorelease];
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
		TMBFitbit_Body_GetBodyMeasurements_ResultSet *results = [[[TMBFitbit_Body_GetBodyMeasurements_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBodyMeasurements Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_GetBodyMeasurements_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_GetBodyMeasurements_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AcceptInvite Choreo.
 */
@implementation TMBFitbit_Social_AcceptInvite_Inputs

	/*!
	 * Set the value of the Accept input for this Choreo.
	*(required, boolean) Accept or reject an invite; (true or false).
	 */
	-(void)setAccept:(NSString*)Accept {
		[super setInput:@"Accept" toValue:Accept];
	}

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the FromUserID input for this Choreo.
	*(required, string) The user's id to indicate user to accept or reject invite from.
	 */
	-(void)setFromUserID:(NSString*)FromUserID {
		[super setInput:@"FromUserID" toValue:FromUserID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AcceptInvite Choreo.
 */
@implementation TMBFitbit_Social_AcceptInvite_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Accepts or rejects an invite to become friends with inviting user.
 */
@implementation TMBFitbit_Social_AcceptInvite

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Social_AcceptInvite Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Social/AcceptInvite"] autorelease];
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
		TMBFitbit_Social_AcceptInvite_ResultSet *results = [[[TMBFitbit_Social_AcceptInvite_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AcceptInvite Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Social_AcceptInvite_Inputs*)newInputSet {
		return [[[TMBFitbit_Social_AcceptInvite_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentFoods Choreo.
 */
@implementation TMBFitbit_Foods_GetRecentFoods_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentFoods Choreo.
 */
@implementation TMBFitbit_Foods_GetRecentFoods_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a list of a user's recent foods.
 */
@implementation TMBFitbit_Foods_GetRecentFoods

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_GetRecentFoods Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/GetRecentFoods"] autorelease];
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
		TMBFitbit_Foods_GetRecentFoods_ResultSet *results = [[[TMBFitbit_Foods_GetRecentFoods_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecentFoods Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_GetRecentFoods_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_GetRecentFoods_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBodyFatLog Choreo.
 */
@implementation TMBFitbit_Body_DeleteBodyFatLog_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the BodyFatLogID input for this Choreo.
	*(required, integer) The id of the body fat log entry.
	 */
	-(void)setBodyFatLogID:(NSString*)BodyFatLogID {
		[super setInput:@"BodyFatLogID" toValue:BodyFatLogID];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBodyFatLog Choreo.
 */
@implementation TMBFitbit_Body_DeleteBodyFatLog_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete user's body weight fat log entry with the given id.
 */
@implementation TMBFitbit_Body_DeleteBodyFatLog

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_DeleteBodyFatLog Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/DeleteBodyFatLog"] autorelease];
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
		TMBFitbit_Body_DeleteBodyFatLog_ResultSet *results = [[[TMBFitbit_Body_DeleteBodyFatLog_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBodyFatLog Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_DeleteBodyFatLog_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_DeleteBodyFatLog_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBodyFat Choreo.
 */
@implementation TMBFitbit_Body_GetBodyFat_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, string) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd). Time periods and ranges are allowed by passing a range like 2013-03-16/2013-03-18 or 2013-03-18/1w.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBodyFat Choreo.
 */
@implementation TMBFitbit_Body_GetBodyFat_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get a list of all user's body fat log entries for a given day.
 */
@implementation TMBFitbit_Body_GetBodyFat

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_GetBodyFat Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/GetBodyFat"] autorelease];
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
		TMBFitbit_Body_GetBodyFat_ResultSet *results = [[[TMBFitbit_Body_GetBodyFat_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBodyFat Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_GetBodyFat_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_GetBodyFat_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFrequentActivities Choreo.
 */
@implementation TMBFitbit_Activities_GetFrequentActivities_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFrequentActivities Choreo.
 */
@implementation TMBFitbit_Activities_GetFrequentActivities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a list of a user's frequent activities.
 */
@implementation TMBFitbit_Activities_GetFrequentActivities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Activities_GetFrequentActivities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Activities/GetFrequentActivities"] autorelease];
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
		TMBFitbit_Activities_GetFrequentActivities_ResultSet *results = [[[TMBFitbit_Activities_GetFrequentActivities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFrequentActivities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Activities_GetFrequentActivities_Inputs*)newInputSet {
		return [[[TMBFitbit_Activities_GetFrequentActivities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFavoriteActivities Choreo.
 */
@implementation TMBFitbit_Activities_GetFavoriteActivities_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFavoriteActivities Choreo.
 */
@implementation TMBFitbit_Activities_GetFavoriteActivities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a list of a user's favorite activities.
 */
@implementation TMBFitbit_Activities_GetFavoriteActivities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Activities_GetFavoriteActivities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Activities/GetFavoriteActivities"] autorelease];
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
		TMBFitbit_Activities_GetFavoriteActivities_ResultSet *results = [[[TMBFitbit_Activities_GetFavoriteActivities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFavoriteActivities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Activities_GetFavoriteActivities_Inputs*)newInputSet {
		return [[[TMBFitbit_Activities_GetFavoriteActivities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LogBodyWeight Choreo.
 */
@implementation TMBFitbit_Body_LogBodyWeight_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the new log entry (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Time input for this Choreo.
	*(optional, string) Time of the measurement; hours and minutes in the format HH:mm:ss; set to last second of the day if not provided.
	 */
	-(void)setTime:(NSString*)Time {
		[super setInput:@"Time" toValue:Time];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the Weight input for this Choreo.
	*(required, decimal) A new value (in pounds) to log for weight. In the format of X.XX.
	 */
	-(void)setWeight:(NSString*)Weight {
		[super setInput:@"Weight" toValue:Weight];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogBodyWeight Choreo.
 */
@implementation TMBFitbit_Body_LogBodyWeight_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates log entry for a user's body weight.
 */
@implementation TMBFitbit_Body_LogBodyWeight

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_LogBodyWeight Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/LogBodyWeight"] autorelease];
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
		TMBFitbit_Body_LogBodyWeight_ResultSet *results = [[[TMBFitbit_Body_LogBodyWeight_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LogBodyWeight Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_LogBodyWeight_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_LogBodyWeight_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFrequentFoods Choreo.
 */
@implementation TMBFitbit_Foods_GetFrequentFoods_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFrequentFoods Choreo.
 */
@implementation TMBFitbit_Foods_GetFrequentFoods_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a list of a user's frequent foods.
 */
@implementation TMBFitbit_Foods_GetFrequentFoods

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_GetFrequentFoods Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/GetFrequentFoods"] autorelease];
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
		TMBFitbit_Foods_GetFrequentFoods_ResultSet *results = [[[TMBFitbit_Foods_GetFrequentFoods_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFrequentFoods Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_GetFrequentFoods_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_GetFrequentFoods_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFavoriteFoods Choreo.
 */
@implementation TMBFitbit_Foods_GetFavoriteFoods_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFavoriteFoods Choreo.
 */
@implementation TMBFitbit_Foods_GetFavoriteFoods_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a list of a user's favorite foods.
 */
@implementation TMBFitbit_Foods_GetFavoriteFoods

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_GetFavoriteFoods Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/GetFavoriteFoods"] autorelease];
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
		TMBFitbit_Foods_GetFavoriteFoods_ResultSet *results = [[[TMBFitbit_Foods_GetFavoriteFoods_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFavoriteFoods Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_GetFavoriteFoods_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_GetFavoriteFoods_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateFoodGoal Choreo.
 */
@implementation TMBFitbit_Foods_UpdateFoodGoal_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Calories input for this Choreo.
	*(conditional, integer) The calorie consumption goal; either calories or intensity should be provided.
	 */
	-(void)setCalories:(NSString*)Calories {
		[super setInput:@"Calories" toValue:Calories];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Intensity input for this Choreo.
	*(conditional, string) Food Plan intensity; (MAINTENANCE, EASIER, MEDIUM, KINDAHARD, HARDER); either calories or intensity should be provided.
	 */
	-(void)setIntensity:(NSString*)Intensity {
		[super setInput:@"Intensity" toValue:Intensity];
	}

	/*!
	 * Set the value of the Personalized input for this Choreo.
	*(optional, boolean) Food Plan type; true or false.
	 */
	-(void)setPersonalized:(NSString*)Personalized {
		[super setInput:@"Personalized" toValue:Personalized];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateFoodGoal Choreo.
 */
@implementation TMBFitbit_Foods_UpdateFoodGoal_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a user's current daily calorie consumption goal or Food Plan.
 */
@implementation TMBFitbit_Foods_UpdateFoodGoal

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_UpdateFoodGoal Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/UpdateFoodGoal"] autorelease];
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
		TMBFitbit_Foods_UpdateFoodGoal_ResultSet *results = [[[TMBFitbit_Foods_UpdateFoodGoal_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateFoodGoal Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_UpdateFoodGoal_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_UpdateFoodGoal_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWater Choreo.
 */
@implementation TMBFitbit_Foods_GetWater_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWater Choreo.
 */
@implementation TMBFitbit_Foods_GetWater_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a summary and list of a user's water log entries for a given day.
 */
@implementation TMBFitbit_Foods_GetWater

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_GetWater Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/GetWater"] autorelease];
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
		TMBFitbit_Foods_GetWater_ResultSet *results = [[[TMBFitbit_Foods_GetWater_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWater Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_GetWater_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_GetWater_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LogSleep Choreo.
 */
@implementation TMBFitbit_Sleep_LogSleep_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The date that corresponds with the log entry you want to create (in the format yyyy-MM-dd).
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the Duration input for this Choreo.
	*(required, string) The sleep duration in milliseconds.
	 */
	-(void)setDuration:(NSString*)Duration {
		[super setInput:@"Duration" toValue:Duration];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartTime input for this Choreo.
	*(required, string) The sleep start time; hours and minutes in the format HH:mm.
	 */
	-(void)setStartTime:(NSString*)StartTime {
		[super setInput:@"StartTime" toValue:StartTime];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LogSleep Choreo.
 */
@implementation TMBFitbit_Sleep_LogSleep_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates log entry for sleep.
 */
@implementation TMBFitbit_Sleep_LogSleep

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Sleep_LogSleep Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Sleep/LogSleep"] autorelease];
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
		TMBFitbit_Sleep_LogSleep_ResultSet *results = [[[TMBFitbit_Sleep_LogSleep_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LogSleep Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Sleep_LogSleep_Inputs*)newInputSet {
		return [[[TMBFitbit_Sleep_LogSleep_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateBodyFatGoal Choreo.
 */
@implementation TMBFitbit_Body_UpdateBodyFatGoal_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the BodyFat input for this Choreo.
	*(required, decimal) Target body fat in %; in the format X.XX.
	 */
	-(void)setBodyFat:(NSString*)BodyFat {
		[super setInput:@"BodyFat" toValue:BodyFat];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateBodyFatGoal Choreo.
 */
@implementation TMBFitbit_Body_UpdateBodyFatGoal_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Create or updates user's body fat goal.
 */
@implementation TMBFitbit_Body_UpdateBodyFatGoal

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_UpdateBodyFatGoal Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/UpdateBodyFatGoal"] autorelease];
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
		TMBFitbit_Body_UpdateBodyFatGoal_ResultSet *results = [[[TMBFitbit_Body_UpdateBodyFatGoal_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateBodyFatGoal Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_UpdateBodyFatGoal_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_UpdateBodyFatGoal_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFoodUnits Choreo.
 */
@implementation TMBFitbit_Foods_GetFoodUnits_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(optional, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(optional, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFoodUnits Choreo.
 */
@implementation TMBFitbit_Foods_GetFoodUnits_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get a list of all valid Fitbit food units.
 */
@implementation TMBFitbit_Foods_GetFoodUnits

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_GetFoodUnits Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/GetFoodUnits"] autorelease];
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
		TMBFitbit_Foods_GetFoodUnits_ResultSet *results = [[[TMBFitbit_Foods_GetFoodUnits_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFoodUnits Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_GetFoodUnits_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_GetFoodUnits_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddFavoriteFood Choreo.
 */
@implementation TMBFitbit_Foods_AddFavoriteFood_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the FoodID input for this Choreo.
	*(required, integer) The id of the food you want to make a favorite.
	 */
	-(void)setFoodID:(NSString*)FoodID {
		[super setInput:@"FoodID" toValue:FoodID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddFavoriteFood Choreo.
 */
@implementation TMBFitbit_Foods_AddFavoriteFood_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a specified food to a user's favorite food list.
 */
@implementation TMBFitbit_Foods_AddFavoriteFood

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_AddFavoriteFood Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/AddFavoriteFood"] autorelease];
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
		TMBFitbit_Foods_AddFavoriteFood_ResultSet *results = [[[TMBFitbit_Foods_AddFavoriteFood_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddFavoriteFood Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_AddFavoriteFood_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_AddFavoriteFood_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTimeSeriesByDateRange Choreo.
 */
@implementation TMBFitbit_Statistics_GetTimeSeriesByDateRange_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(required, date) The end date of the date range for the data you want to retrieve (in the format yyyy-MM-dd). You can also specify the value 'today'.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the ResourcePath input for this Choreo.
	*(required, string) The resource path that you want to access (for example: activities/log/distance). See Choreo documentation for a full list of resource paths.
	 */
	-(void)setResourcePath:(NSString*)ResourcePath {
		[super setInput:@"ResourcePath" toValue:ResourcePath];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, date) The start date of the date range for the data you want to retrieve (in the format yyyy-MM-dd). You can also specify the value 'today'.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTimeSeriesByDateRange Choreo.
 */
@implementation TMBFitbit_Statistics_GetTimeSeriesByDateRange_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets time series data for a given resource based on a date range you specify.
 */
@implementation TMBFitbit_Statistics_GetTimeSeriesByDateRange

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Statistics_GetTimeSeriesByDateRange Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Statistics/GetTimeSeriesByDateRange"] autorelease];
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
		TMBFitbit_Statistics_GetTimeSeriesByDateRange_ResultSet *results = [[[TMBFitbit_Statistics_GetTimeSeriesByDateRange_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTimeSeriesByDateRange Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Statistics_GetTimeSeriesByDateRange_Inputs*)newInputSet {
		return [[[TMBFitbit_Statistics_GetTimeSeriesByDateRange_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateFood Choreo.
 */
@implementation TMBFitbit_Foods_CreateFood_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Calories input for this Choreo.
	*(required, integer) The number of calories per serving size.
	 */
	-(void)setCalories:(NSString*)Calories {
		[super setInput:@"Calories" toValue:Calories];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A description for the food entry.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the FormType input for this Choreo.
	*(optional, string) Form type; (LIQUID or DRY).
	 */
	-(void)setFormType:(NSString*)FormType {
		[super setInput:@"FormType" toValue:FormType];
	}

	/*!
	 * Set the value of the MeasurementUnitID input for this Choreo.
	*(required, integer) The default measurement unit.
	 */
	-(void)setMeasurementUnitID:(NSString*)MeasurementUnitID {
		[super setInput:@"MeasurementUnitID" toValue:MeasurementUnitID];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the food.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ServingSize input for this Choreo.
	*(required, integer) The default serving size.
	 */
	-(void)setServingSize:(NSString*)ServingSize {
		[super setInput:@"ServingSize" toValue:ServingSize];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFood Choreo.
 */
@implementation TMBFitbit_Foods_CreateFood_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Create new private food for a user.
 */
@implementation TMBFitbit_Foods_CreateFood

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_CreateFood Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/CreateFood"] autorelease];
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
		TMBFitbit_Foods_CreateFood_ResultSet *results = [[[TMBFitbit_Foods_CreateFood_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateFood Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_CreateFood_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_CreateFood_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteWaterLog Choreo.
 */
@implementation TMBFitbit_Foods_DeleteWaterLog_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the WaterLogID input for this Choreo.
	*(required, integer) The id of the water log you want to delete. The Id is returned in the LogWater response.
	 */
	-(void)setWaterLogID:(NSString*)WaterLogID {
		[super setInput:@"WaterLogID" toValue:WaterLogID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteWaterLog Choreo.
 */
@implementation TMBFitbit_Foods_DeleteWaterLog_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified water log entry.
 */
@implementation TMBFitbit_Foods_DeleteWaterLog

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Foods_DeleteWaterLog Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Foods/DeleteWaterLog"] autorelease];
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
		TMBFitbit_Foods_DeleteWaterLog_ResultSet *results = [[[TMBFitbit_Foods_DeleteWaterLog_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteWaterLog Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Foods_DeleteWaterLog_Inputs*)newInputSet {
		return [[[TMBFitbit_Foods_DeleteWaterLog_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBodyWeightGoal Choreo.
 */
@implementation TMBFitbit_Body_GetBodyWeightGoal_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBodyWeightGoal Choreo.
 */
@implementation TMBFitbit_Body_GetBodyWeightGoal_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Get a user's current weight goal.
 */
@implementation TMBFitbit_Body_GetBodyWeightGoal

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_GetBodyWeightGoal Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/GetBodyWeightGoal"] autorelease];
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
		TMBFitbit_Body_GetBodyWeightGoal_ResultSet *results = [[[TMBFitbit_Body_GetBodyWeightGoal_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBodyWeightGoal Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_GetBodyWeightGoal_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_GetBodyWeightGoal_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBodyWeight Choreo.
 */
@implementation TMBFitbit_Body_GetBodyWeight_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, string) The date that corresponds with the log entry you want to retrieve (in the format yyyy-MM-dd). Time periods and ranges are allowed by passing a range like 2013-03-16/2013-03-18 or 2013-03-18/1w.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBodyWeight Choreo.
 */
@implementation TMBFitbit_Body_GetBodyWeight_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a summary of a user's body weight for a specified date.
 */
@implementation TMBFitbit_Body_GetBodyWeight

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_GetBodyWeight Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/GetBodyWeight"] autorelease];
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
		TMBFitbit_Body_GetBodyWeight_ResultSet *results = [[[TMBFitbit_Body_GetBodyWeight_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBodyWeight Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_GetBodyWeight_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_GetBodyWeight_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteBodyWeightLog Choreo.
 */
@implementation TMBFitbit_Body_DeleteBodyWeightLog_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the BodyWeightLogID input for this Choreo.
	*(required, integer) The id of the body weight log entry.
	 */
	-(void)setBodyWeightLogID:(NSString*)BodyWeightLogID {
		[super setInput:@"BodyWeightLogID" toValue:BodyWeightLogID];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteBodyWeightLog Choreo.
 */
@implementation TMBFitbit_Body_DeleteBodyWeightLog_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete user's body weight log entry with the given id.
 */
@implementation TMBFitbit_Body_DeleteBodyWeightLog

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Body_DeleteBodyWeightLog Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Body/DeleteBodyWeightLog"] autorelease];
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
		TMBFitbit_Body_DeleteBodyWeightLog_ResultSet *results = [[[TMBFitbit_Body_DeleteBodyWeightLog_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteBodyWeightLog Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Body_DeleteBodyWeightLog_Inputs*)newInputSet {
		return [[[TMBFitbit_Body_DeleteBodyWeightLog_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateInvite Choreo.
 */
@implementation TMBFitbit_Social_CreateInvite_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the InvitedUserEmail input for this Choreo.
	*(conditional, string) The email address of the user to invite; user can be a Fitbit member already. Required unless providing the InvitedUserID.
	 */
	-(void)setInvitedUserEmail:(NSString*)InvitedUserEmail {
		[super setInput:@"InvitedUserEmail" toValue:InvitedUserEmail];
	}

	/*!
	 * Set the value of the InvitedUserID input for this Choreo.
	*(conditional, string) The Fitbit user id of the user to send an invite to. Required unless providing the InvitedUserEmail.
	 */
	-(void)setInvitedUserID:(NSString*)InvitedUserID {
		[super setInput:@"InvitedUserID" toValue:InvitedUserID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateInvite Choreo.
 */
@implementation TMBFitbit_Social_CreateInvite_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Invites a user to become friends with authorized user.
 */
@implementation TMBFitbit_Social_CreateInvite

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Social_CreateInvite Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Social/CreateInvite"] autorelease];
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
		TMBFitbit_Social_CreateInvite_ResultSet *results = [[[TMBFitbit_Social_CreateInvite_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateInvite Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Social_CreateInvite_Inputs*)newInputSet {
		return [[[TMBFitbit_Social_CreateInvite_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteSleepLog Choreo.
 */
@implementation TMBFitbit_Sleep_DeleteSleepLog_Inputs

	/*!
	 * Set the value of the AccessTokenSecret input for this Choreo.
	*(required, string) The Access Token Secret retrieved during the OAuth process.
	 */
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret {
		[super setInput:@"AccessTokenSecret" toValue:AccessTokenSecret];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that you want the response to be in: xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SleepLogID input for this Choreo.
	*(required, integer) The id of the sleep log you want to delete.
	 */
	-(void)setSleepLogID:(NSString*)SleepLogID {
		[super setInput:@"SleepLogID" toValue:SleepLogID];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(optional, string) The user's encoded id. Defaults to "-" (dash) which will return data for the user associated with the token credentials provided.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteSleepLog Choreo.
 */
@implementation TMBFitbit_Sleep_DeleteSleepLog_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Fitbit. Note that for a successful execution, no content is returned and this output variable should be empty.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete user's sleep log entry with the given id.
 */
@implementation TMBFitbit_Sleep_DeleteSleepLog

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_Sleep_DeleteSleepLog Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/Sleep/DeleteSleepLog"] autorelease];
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
		TMBFitbit_Sleep_DeleteSleepLog_ResultSet *results = [[[TMBFitbit_Sleep_DeleteSleepLog_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteSleepLog Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_Sleep_DeleteSleepLog_Inputs*)newInputSet {
		return [[[TMBFitbit_Sleep_DeleteSleepLog_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBFitbit_OAuth_FinalizeOAuth_Inputs

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
	*(required, string) The Consumer Key provided by Fitbit.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Fitbit.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The oauth_token_secret retrieved during the OAuth process. This is returned by the InitializeOAuth Choreo.
	 */
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret {
		[super setInput:@"OAuthTokenSecret" toValue:OAuthTokenSecret];
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
@implementation TMBFitbit_OAuth_FinalizeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessTokenSecret" output from an execution of this Choreo.
	 * @return - NSString* (string) The Access Token Secret retrieved during the OAuth process.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessTokenSecret {
		return [super getOutputByName:@"AccessTokenSecret"];
	}

	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The Access Token retrieved during the OAuth process.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}

	/*!
	 * Retrieve the value of the "UserID" output from an execution of this Choreo.
	 * @return - NSString* (string) The user's encoded id associated with the access token that is being retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getUserID {
		return [super getOutputByName:@"UserID"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Fitbit access token, token secret and encoded user id (UserID) for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@implementation TMBFitbit_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFitbit_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Fitbit/OAuth/FinalizeOAuth"] autorelease];
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
		TMBFitbit_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBFitbit_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFitbit_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBFitbit_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end
	