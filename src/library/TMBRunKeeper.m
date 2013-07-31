/*!
 * @TMBRunKeeper.m
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

#import "TMBRunKeeper.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveProfile Choreo.
 */
@implementation TMBRunKeeper_Profile_RetrieveProfile_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveProfile Choreo.
 */
@implementation TMBRunKeeper_Profile_RetrieveProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a user's profile information including the user’s identity, geographical location, and fitness goals.
 */
@implementation TMBRunKeeper_Profile_RetrieveProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Profile_RetrieveProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Profile/RetrieveProfile"] autorelease];
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
		TMBRunKeeper_Profile_RetrieveProfile_ResultSet *results = [[[TMBRunKeeper_Profile_RetrieveProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Profile_RetrieveProfile_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Profile_RetrieveProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntry Choreo.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_RetrieveEntry_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the diabetes measurement entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /diabetes/24220709).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntry Choreo.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_RetrieveEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a diabetes measurement entry from a user’s feed.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_RetrieveEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_DiabetesMeasurements_RetrieveEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/DiabetesMeasurements/RetrieveEntry"] autorelease];
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
		TMBRunKeeper_DiabetesMeasurements_RetrieveEntry_ResultSet *results = [[[TMBRunKeeper_DiabetesMeasurements_RetrieveEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_DiabetesMeasurements_RetrieveEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_DiabetesMeasurements_RetrieveEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntry Choreo.
 */
@implementation TMBRunKeeper_Sleep_RetrieveEntry_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the sleep entry, or you can pass the full uri for the entry as returned from the RetrieveEntries response (i.e. /sleep/-12985593-1347998400000).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntry Choreo.
 */
@implementation TMBRunKeeper_Sleep_RetrieveEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a sleep entry from a user’s feed.
 */
@implementation TMBRunKeeper_Sleep_RetrieveEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Sleep_RetrieveEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Sleep/RetrieveEntry"] autorelease];
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
		TMBRunKeeper_Sleep_RetrieveEntry_ResultSet *results = [[[TMBRunKeeper_Sleep_RetrieveEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Sleep_RetrieveEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Sleep_RetrieveEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@implementation TMBRunKeeper_GeneralMeasurements_DeleteEntry_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the body measurement entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /generalMeasurements/-12985593-1351036800000).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@implementation TMBRunKeeper_GeneralMeasurements_DeleteEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string "true" when an entry is deleted successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes an individual body measurement entry from a user’s feed.
 */
@implementation TMBRunKeeper_GeneralMeasurements_DeleteEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_GeneralMeasurements_DeleteEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/GeneralMeasurements/DeleteEntry"] autorelease];
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
		TMBRunKeeper_GeneralMeasurements_DeleteEntry_ResultSet *results = [[[TMBRunKeeper_GeneralMeasurements_DeleteEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_GeneralMeasurements_DeleteEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_GeneralMeasurements_DeleteEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateSettings Choreo.
 */
@implementation TMBRunKeeper_Settings_UpdateSettings_Inputs

	/*!
	 * Set the value of the Settings input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the settings to update. See documentation for formatting examples.
	 */
	-(void)setSettings:(NSString*)Settings {
		[super setInput:@"Settings" toValue:Settings];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateSettings Choreo.
 */
@implementation TMBRunKeeper_Settings_UpdateSettings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a user’s settings.
 */
@implementation TMBRunKeeper_Settings_UpdateSettings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Settings_UpdateSettings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Settings/UpdateSettings"] autorelease];
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
		TMBRunKeeper_Settings_UpdateSettings_ResultSet *results = [[[TMBRunKeeper_Settings_UpdateSettings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateSettings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Settings_UpdateSettings_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Settings_UpdateSettings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteActivity Choreo.
 */
@implementation TMBRunKeeper_FitnessActivities_DeleteActivity_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivites Choreo (i.e. /fitnessActivities/125927913).
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteActivity Choreo.
 */
@implementation TMBRunKeeper_FitnessActivities_DeleteActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string "true" when an activity is deleted successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes an individual activity from a user’s feed.
 */
@implementation TMBRunKeeper_FitnessActivities_DeleteActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_FitnessActivities_DeleteActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/FitnessActivities/DeleteActivity"] autorelease];
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
		TMBRunKeeper_FitnessActivities_DeleteActivity_ResultSet *results = [[[TMBRunKeeper_FitnessActivities_DeleteActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_FitnessActivities_DeleteActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_FitnessActivities_DeleteActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@implementation TMBRunKeeper_Weight_DeleteEntry_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the weight entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /weight/20775350).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@implementation TMBRunKeeper_Weight_DeleteEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string "true" when an entry is deleted successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes an individual weight entry from a user’s feed.
 */
@implementation TMBRunKeeper_Weight_DeleteEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Weight_DeleteEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Weight/DeleteEntry"] autorelease];
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
		TMBRunKeeper_Weight_DeleteEntry_ResultSet *results = [[[TMBRunKeeper_Weight_DeleteEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Weight_DeleteEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Weight_DeleteEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RecordActivity Choreo.
 */
@implementation TMBRunKeeper_BackgroundActivities_RecordActivity_Inputs

	/*!
	 * Set the value of the Activity input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the activity to create. See documentation for formatting examples.
	 */
	-(void)setActivity:(NSString*)Activity {
		[super setInput:@"Activity" toValue:Activity];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RecordActivity Choreo.
 */
@implementation TMBRunKeeper_BackgroundActivities_RecordActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string 'true" when a new activity is created successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "URI" output from an execution of this Choreo.
	 * @return - NSString* (string) The activity uri that was created.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURI {
		return [super getOutputByName:@"URI"];
	}
	
@end

/*!
 * Records a newly-completed background activity, or begins recording an activity still in progress.
 */
@implementation TMBRunKeeper_BackgroundActivities_RecordActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_BackgroundActivities_RecordActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/BackgroundActivities/RecordActivity"] autorelease];
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
		TMBRunKeeper_BackgroundActivities_RecordActivity_ResultSet *results = [[[TMBRunKeeper_BackgroundActivities_RecordActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RecordActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_BackgroundActivities_RecordActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_BackgroundActivities_RecordActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@implementation TMBRunKeeper_Sleep_UpdateEntry_Inputs

	/*!
	 * Set the value of the Entry input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the fields to be updated in the sleep entry. See documentation for formatting examples.
	 */
	-(void)setEntry:(NSString*)Entry {
		[super setInput:@"Entry" toValue:Entry];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the sleep entry, or you can pass the full uri for the entry as returned from the RetrieveEntries response (i.e. /sleep/-12985593-1347998400000).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@implementation TMBRunKeeper_Sleep_UpdateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a sleep entry in a user’s feed.
 */
@implementation TMBRunKeeper_Sleep_UpdateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Sleep_UpdateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Sleep/UpdateEntry"] autorelease];
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
		TMBRunKeeper_Sleep_UpdateEntry_ResultSet *results = [[[TMBRunKeeper_Sleep_UpdateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Sleep_UpdateEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Sleep_UpdateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateActivity Choreo.
 */
@implementation TMBRunKeeper_BackgroundActivities_UpdateActivity_Inputs

	/*!
	 * Set the value of the Activity input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the activity to update. See documentation for formatting examples.
	 */
	-(void)setActivity:(NSString*)Activity {
		[super setInput:@"Activity" toValue:Activity];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivities Choreo (i.e. /backgroundActivities/-12985593-1351022400000).
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateActivity Choreo.
 */
@implementation TMBRunKeeper_BackgroundActivities_UpdateActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a background activity in a user's feed.
 */
@implementation TMBRunKeeper_BackgroundActivities_UpdateActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_BackgroundActivities_UpdateActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/BackgroundActivities/UpdateActivity"] autorelease];
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
		TMBRunKeeper_BackgroundActivities_UpdateActivity_ResultSet *results = [[[TMBRunKeeper_BackgroundActivities_UpdateActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_BackgroundActivities_UpdateActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_BackgroundActivities_UpdateActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntry Choreo.
 */
@implementation TMBRunKeeper_GeneralMeasurements_RetrieveEntry_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the body measurement entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /generalMeasurements/24220709).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntry Choreo.
 */
@implementation TMBRunKeeper_GeneralMeasurements_RetrieveEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a body measurement entry from a user’s feed.
 */
@implementation TMBRunKeeper_GeneralMeasurements_RetrieveEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_GeneralMeasurements_RetrieveEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/GeneralMeasurements/RetrieveEntry"] autorelease];
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
		TMBRunKeeper_GeneralMeasurements_RetrieveEntry_ResultSet *results = [[[TMBRunKeeper_GeneralMeasurements_RetrieveEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_GeneralMeasurements_RetrieveEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_GeneralMeasurements_RetrieveEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteActivity Choreo.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_DeleteActivity_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, integer) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from RetrieveActivities response (i.e. /strengthTrainingActivities/125927913).
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteActivity Choreo.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_DeleteActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string "true" when an activity is deleted successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes an individual strength training activity from a user’s feed.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_DeleteActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_StrengthTrainingActivities_DeleteActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/StrengthTrainingActivities/DeleteActivity"] autorelease];
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
		TMBRunKeeper_StrengthTrainingActivities_DeleteActivity_ResultSet *results = [[[TMBRunKeeper_StrengthTrainingActivities_DeleteActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_StrengthTrainingActivities_DeleteActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_StrengthTrainingActivities_DeleteActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RecordActivity Choreo.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_RecordActivity_Inputs

	/*!
	 * Set the value of the Activity input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the activity to create. See documentation for formatting examples.
	 */
	-(void)setActivity:(NSString*)Activity {
		[super setInput:@"Activity" toValue:Activity];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RecordActivity Choreo.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_RecordActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string "true" when an activity is created successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "URI" output from an execution of this Choreo.
	 * @return - NSString* (string) The activity uri that was created.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURI {
		return [super getOutputByName:@"URI"];
	}
	
@end

/*!
 * Records a newly-completed strength training activity, or begins recording an activity still in progress.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_RecordActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_StrengthTrainingActivities_RecordActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/StrengthTrainingActivities/RecordActivity"] autorelease];
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
		TMBRunKeeper_StrengthTrainingActivities_RecordActivity_ResultSet *results = [[[TMBRunKeeper_StrengthTrainingActivities_RecordActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RecordActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_StrengthTrainingActivities_RecordActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_StrengthTrainingActivities_RecordActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@implementation TMBRunKeeper_Weight_CreateEntry_Inputs

	/*!
	 * Set the value of the Entry input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the entry to create. See documentation for formatting examples.
	 */
	-(void)setEntry:(NSString*)Entry {
		[super setInput:@"Entry" toValue:Entry];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@implementation TMBRunKeeper_Weight_CreateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string 'true" when a new entry is created successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "URI" output from an execution of this Choreo.
	 * @return - NSString* (string) The entry uri that was created.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURI {
		return [super getOutputByName:@"URI"];
	}
	
@end

/*!
 * Adds a weight entry to a user's feed.
 */
@implementation TMBRunKeeper_Weight_CreateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Weight_CreateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Weight/CreateEntry"] autorelease];
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
		TMBRunKeeper_Weight_CreateEntry_ResultSet *results = [[[TMBRunKeeper_Weight_CreateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Weight_CreateEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Weight_CreateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_DeleteEntry_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the diabetes measurement entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /diabetes/12985593).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_DeleteEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string "true" when an entry is deleted successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes an individual diabetes measurement entry from a user’s feed.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_DeleteEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_DiabetesMeasurements_DeleteEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/DiabetesMeasurements/DeleteEntry"] autorelease];
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
		TMBRunKeeper_DiabetesMeasurements_DeleteEntry_ResultSet *results = [[[TMBRunKeeper_DiabetesMeasurements_DeleteEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_DiabetesMeasurements_DeleteEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_DiabetesMeasurements_DeleteEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUserInfo Choreo.
 */
@implementation TMBRunKeeper_Users_RetrieveUserInfo_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUserInfo Choreo.
 */
@implementation TMBRunKeeper_Users_RetrieveUserInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the available resources for a specific user and the URIs for accessing them. 
 */
@implementation TMBRunKeeper_Users_RetrieveUserInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Users_RetrieveUserInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Users/RetrieveUserInfo"] autorelease];
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
		TMBRunKeeper_Users_RetrieveUserInfo_ResultSet *results = [[[TMBRunKeeper_Users_RetrieveUserInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveUserInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Users_RetrieveUserInfo_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Users_RetrieveUserInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RecordActivity Choreo.
 */
@implementation TMBRunKeeper_FitnessActivities_RecordActivity_Inputs

	/*!
	 * Set the value of the Activity input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the activity to create. See documentation for formatting examples.
	 */
	-(void)setActivity:(NSString*)Activity {
		[super setInput:@"Activity" toValue:Activity];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RecordActivity Choreo.
 */
@implementation TMBRunKeeper_FitnessActivities_RecordActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string "true" when an activity is created successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "URI" output from an execution of this Choreo.
	 * @return - NSString* (string) The activity uri that was created.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURI {
		return [super getOutputByName:@"URI"];
	}
	
@end

/*!
 * Records a newly-completed activity, or begins recording an activity still in progress.
 */
@implementation TMBRunKeeper_FitnessActivities_RecordActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_FitnessActivities_RecordActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/FitnessActivities/RecordActivity"] autorelease];
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
		TMBRunKeeper_FitnessActivities_RecordActivity_ResultSet *results = [[[TMBRunKeeper_FitnessActivities_RecordActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RecordActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_FitnessActivities_RecordActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_FitnessActivities_RecordActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivites Choreo.
 */
@implementation TMBRunKeeper_FitnessActivities_RetrieveActivites_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number entries to return per page. Defaults to 25.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivites Choreo.
 */
@implementation TMBRunKeeper_FitnessActivities_RetrieveActivites_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Next" output from an execution of this Choreo.
	 * @return - NSString* (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNext {
		return [super getOutputByName:@"Next"];
	}

	/*!
	 * Retrieve the value of the "Previous" output from an execution of this Choreo.
	 * @return - NSString* (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPrevious {
		return [super getOutputByName:@"Previous"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a feed of a user's fitness activities.
 */
@implementation TMBRunKeeper_FitnessActivities_RetrieveActivites

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_FitnessActivities_RetrieveActivites Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/FitnessActivities/RetrieveActivites"] autorelease];
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
		TMBRunKeeper_FitnessActivities_RetrieveActivites_ResultSet *results = [[[TMBRunKeeper_FitnessActivities_RetrieveActivites_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveActivites Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_FitnessActivities_RetrieveActivites_Inputs*)newInputSet {
		return [[[TMBRunKeeper_FitnessActivities_RetrieveActivites_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivities Choreo.
 */
@implementation TMBRunKeeper_BackgroundActivities_RetrieveActivities_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number entries to return per page. Defaults to 25.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivities Choreo.
 */
@implementation TMBRunKeeper_BackgroundActivities_RetrieveActivities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Next" output from an execution of this Choreo.
	 * @return - NSString* (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNext {
		return [super getOutputByName:@"Next"];
	}

	/*!
	 * Retrieve the value of the "Previous" output from an execution of this Choreo.
	 * @return - NSString* (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPrevious {
		return [super getOutputByName:@"Previous"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the feed for a user's background activities.
 */
@implementation TMBRunKeeper_BackgroundActivities_RetrieveActivities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_BackgroundActivities_RetrieveActivities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/BackgroundActivities/RetrieveActivities"] autorelease];
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
		TMBRunKeeper_BackgroundActivities_RetrieveActivities_ResultSet *results = [[[TMBRunKeeper_BackgroundActivities_RetrieveActivities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveActivities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_BackgroundActivities_RetrieveActivities_Inputs*)newInputSet {
		return [[[TMBRunKeeper_BackgroundActivities_RetrieveActivities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@implementation TMBRunKeeper_Nutrition_CreateEntry_Inputs

	/*!
	 * Set the value of the Entry input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the entry to create. See documentation for formatting examples.
	 */
	-(void)setEntry:(NSString*)Entry {
		[super setInput:@"Entry" toValue:Entry];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@implementation TMBRunKeeper_Nutrition_CreateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string 'true" when a new entry is created successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "URI" output from an execution of this Choreo.
	 * @return - NSString* (string) The entry uri that was created.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURI {
		return [super getOutputByName:@"URI"];
	}
	
@end

/*!
 * Adds a nutrition entry to a user's feed.
 */
@implementation TMBRunKeeper_Nutrition_CreateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Nutrition_CreateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Nutrition/CreateEntry"] autorelease];
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
		TMBRunKeeper_Nutrition_CreateEntry_ResultSet *results = [[[TMBRunKeeper_Nutrition_CreateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Nutrition_CreateEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Nutrition_CreateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@implementation TMBRunKeeper_Nutrition_DeleteEntry_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the nutrition entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /nutrition/-12985593-1350864000000).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@implementation TMBRunKeeper_Nutrition_DeleteEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string "true" when an entry is deleted successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes an individual nutrition entry from a user’s feed.
 */
@implementation TMBRunKeeper_Nutrition_DeleteEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Nutrition_DeleteEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Nutrition/DeleteEntry"] autorelease];
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
		TMBRunKeeper_Nutrition_DeleteEntry_ResultSet *results = [[[TMBRunKeeper_Nutrition_DeleteEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Nutrition_DeleteEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Nutrition_DeleteEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivity Choreo.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, integer) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from RetrieveActivities response (i.e. /strengthTrainingActivities/125927913).
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivity Choreo.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a page from a user’s strength training activity history.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/StrengthTrainingActivities/RetrieveActivity"] autorelease];
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
		TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity_ResultSet *results = [[[TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_StrengthTrainingActivities_RetrieveActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntries Choreo.
 */
@implementation TMBRunKeeper_GeneralMeasurements_RetrieveEntries_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number entries to return per page. Defaults to 25.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntries Choreo.
 */
@implementation TMBRunKeeper_GeneralMeasurements_RetrieveEntries_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Next" output from an execution of this Choreo.
	 * @return - NSString* (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNext {
		return [super getOutputByName:@"Next"];
	}

	/*!
	 * Retrieve the value of the "Previous" output from an execution of this Choreo.
	 * @return - NSString* (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPrevious {
		return [super getOutputByName:@"Previous"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the feed for a user's general body measurements.
 */
@implementation TMBRunKeeper_GeneralMeasurements_RetrieveEntries

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_GeneralMeasurements_RetrieveEntries Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/GeneralMeasurements/RetrieveEntries"] autorelease];
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
		TMBRunKeeper_GeneralMeasurements_RetrieveEntries_ResultSet *results = [[[TMBRunKeeper_GeneralMeasurements_RetrieveEntries_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveEntries Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_GeneralMeasurements_RetrieveEntries_Inputs*)newInputSet {
		return [[[TMBRunKeeper_GeneralMeasurements_RetrieveEntries_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@implementation TMBRunKeeper_GeneralMeasurements_UpdateEntry_Inputs

	/*!
	 * Set the value of the Entry input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the fields to be updated in the body measurement entry. See documentation for formatting examples.
	 */
	-(void)setEntry:(NSString*)Entry {
		[super setInput:@"Entry" toValue:Entry];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the body measurement entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /generalMeasurements/24085455).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@implementation TMBRunKeeper_GeneralMeasurements_UpdateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a body measurement entry in a user’s feed.
 */
@implementation TMBRunKeeper_GeneralMeasurements_UpdateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_GeneralMeasurements_UpdateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/GeneralMeasurements/UpdateEntry"] autorelease];
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
		TMBRunKeeper_GeneralMeasurements_UpdateEntry_ResultSet *results = [[[TMBRunKeeper_GeneralMeasurements_UpdateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_GeneralMeasurements_UpdateEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_GeneralMeasurements_UpdateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveSettings Choreo.
 */
@implementation TMBRunKeeper_Settings_RetrieveSettings_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveSettings Choreo.
 */
@implementation TMBRunKeeper_Settings_RetrieveSettings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a user’s settings including a user's sharing and display preferences.
 */
@implementation TMBRunKeeper_Settings_RetrieveSettings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Settings_RetrieveSettings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Settings/RetrieveSettings"] autorelease];
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
		TMBRunKeeper_Settings_RetrieveSettings_ResultSet *results = [[[TMBRunKeeper_Settings_RetrieveSettings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveSettings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Settings_RetrieveSettings_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Settings_RetrieveSettings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntry Choreo.
 */
@implementation TMBRunKeeper_Nutrition_RetrieveEntry_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the nutrition entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /nutrition/-12985593-1350950400000).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntry Choreo.
 */
@implementation TMBRunKeeper_Nutrition_RetrieveEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a nutrition entry from a user’s feed.
 */
@implementation TMBRunKeeper_Nutrition_RetrieveEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Nutrition_RetrieveEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Nutrition/RetrieveEntry"] autorelease];
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
		TMBRunKeeper_Nutrition_RetrieveEntry_ResultSet *results = [[[TMBRunKeeper_Nutrition_RetrieveEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Nutrition_RetrieveEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Nutrition_RetrieveEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateProfile Choreo.
 */
@implementation TMBRunKeeper_Profile_UpdateProfile_Inputs

	/*!
	 * Set the value of the Profile input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the profile fields to update. See documentation for formatting examples.
	 */
	-(void)setProfile:(NSString*)Profile {
		[super setInput:@"Profile" toValue:Profile];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateProfile Choreo.
 */
@implementation TMBRunKeeper_Profile_UpdateProfile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Update's a user's profile.
 */
@implementation TMBRunKeeper_Profile_UpdateProfile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Profile_UpdateProfile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Profile/UpdateProfile"] autorelease];
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
		TMBRunKeeper_Profile_UpdateProfile_ResultSet *results = [[[TMBRunKeeper_Profile_UpdateProfile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateProfile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Profile_UpdateProfile_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Profile_UpdateProfile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteEntry Choreo.
 */
@implementation TMBRunKeeper_Sleep_DeleteEntry_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the sleep entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /sleep/-12985593-1351022400000).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteEntry Choreo.
 */
@implementation TMBRunKeeper_Sleep_DeleteEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string "true" when an entry is deleted successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes an individual sleep entry from a user’s feed.
 */
@implementation TMBRunKeeper_Sleep_DeleteEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Sleep_DeleteEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Sleep/DeleteEntry"] autorelease];
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
		TMBRunKeeper_Sleep_DeleteEntry_ResultSet *results = [[[TMBRunKeeper_Sleep_DeleteEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Sleep_DeleteEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Sleep_DeleteEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@implementation TMBRunKeeper_Nutrition_UpdateEntry_Inputs

	/*!
	 * Set the value of the Entry input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the fields to be updated in the sleep entry. See documentation for formatting examples.
	 */
	-(void)setEntry:(NSString*)Entry {
		[super setInput:@"Entry" toValue:Entry];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the nutrition entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /nutrition/-12985593-1350950400000).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@implementation TMBRunKeeper_Nutrition_UpdateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a nutrition entry in a user’s feed.
 */
@implementation TMBRunKeeper_Nutrition_UpdateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Nutrition_UpdateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Nutrition/UpdateEntry"] autorelease];
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
		TMBRunKeeper_Nutrition_UpdateEntry_ResultSet *results = [[[TMBRunKeeper_Nutrition_UpdateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Nutrition_UpdateEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Nutrition_UpdateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBRunKeeper_OAuth_InitializeOAuth_Inputs

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
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by RunKeeper after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
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
@implementation TMBRunKeeper_OAuth_InitializeOAuth_ResultSet

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
@implementation TMBRunKeeper_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/OAuth/InitializeOAuth"] autorelease];
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
		TMBRunKeeper_OAuth_InitializeOAuth_ResultSet *results = [[[TMBRunKeeper_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBRunKeeper_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntries Choreo.
 */
@implementation TMBRunKeeper_Nutrition_RetrieveEntries_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number entries to return per page. Defaults to 25.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntries Choreo.
 */
@implementation TMBRunKeeper_Nutrition_RetrieveEntries_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Next" output from an execution of this Choreo.
	 * @return - NSString* (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNext {
		return [super getOutputByName:@"Next"];
	}

	/*!
	 * Retrieve the value of the "Previous" output from an execution of this Choreo.
	 * @return - NSString* (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPrevious {
		return [super getOutputByName:@"Previous"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the feed for a user's nutrition entries.
 */
@implementation TMBRunKeeper_Nutrition_RetrieveEntries

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Nutrition_RetrieveEntries Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Nutrition/RetrieveEntries"] autorelease];
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
		TMBRunKeeper_Nutrition_RetrieveEntries_ResultSet *results = [[[TMBRunKeeper_Nutrition_RetrieveEntries_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveEntries Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Nutrition_RetrieveEntries_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Nutrition_RetrieveEntries_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateActivity Choreo.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_UpdateActivity_Inputs

	/*!
	 * Set the value of the Activity input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the activity to update. See documentation for formatting examples.
	 */
	-(void)setActivity:(NSString*)Activity {
		[super setInput:@"Activity" toValue:Activity];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, integer) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from RetrieveActivities response (i.e. /strengthTrainingActivities/125927913).
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateActivity Choreo.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_UpdateActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a past strength training activity.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_UpdateActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_StrengthTrainingActivities_UpdateActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/StrengthTrainingActivities/UpdateActivity"] autorelease];
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
		TMBRunKeeper_StrengthTrainingActivities_UpdateActivity_ResultSet *results = [[[TMBRunKeeper_StrengthTrainingActivities_UpdateActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_StrengthTrainingActivities_UpdateActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_StrengthTrainingActivities_UpdateActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBRunKeeper_OAuth_FinalizeOAuth_Inputs

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
	*(required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the authorization code after the user authorizes.
	 */
	-(void)setCallbackID:(NSString*)CallbackID {
		[super setInput:@"CallbackID" toValue:CallbackID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by RunKeeper after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by RunKeeper after registering your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
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
@implementation TMBRunKeeper_OAuth_FinalizeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The access token for the user that has granted access to your application.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a RunKeeper access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@implementation TMBRunKeeper_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/OAuth/FinalizeOAuth"] autorelease];
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
		TMBRunKeeper_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBRunKeeper_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBRunKeeper_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntries Choreo.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_RetrieveEntries_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number entries to return per page. Defaults to 25.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntries Choreo.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_RetrieveEntries_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Next" output from an execution of this Choreo.
	 * @return - NSString* (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNext {
		return [super getOutputByName:@"Next"];
	}

	/*!
	 * Retrieve the value of the "Previous" output from an execution of this Choreo.
	 * @return - NSString* (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPrevious {
		return [super getOutputByName:@"Previous"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the feed for a user's diabetes measurements.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_RetrieveEntries

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_DiabetesMeasurements_RetrieveEntries Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/DiabetesMeasurements/RetrieveEntries"] autorelease];
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
		TMBRunKeeper_DiabetesMeasurements_RetrieveEntries_ResultSet *results = [[[TMBRunKeeper_DiabetesMeasurements_RetrieveEntries_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveEntries Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_DiabetesMeasurements_RetrieveEntries_Inputs*)newInputSet {
		return [[[TMBRunKeeper_DiabetesMeasurements_RetrieveEntries_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_UpdateEntry_Inputs

	/*!
	 * Set the value of the Entry input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the fields to be updated in the diabetes entry. See documentation for formatting examples.
	 */
	-(void)setEntry:(NSString*)Entry {
		[super setInput:@"Entry" toValue:Entry];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the diabetes entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /diabetes/24085455).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_UpdateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a diabetes measurement entry in a user’s feed.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_UpdateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_DiabetesMeasurements_UpdateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/DiabetesMeasurements/UpdateEntry"] autorelease];
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
		TMBRunKeeper_DiabetesMeasurements_UpdateEntry_ResultSet *results = [[[TMBRunKeeper_DiabetesMeasurements_UpdateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_DiabetesMeasurements_UpdateEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_DiabetesMeasurements_UpdateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntries Choreo.
 */
@implementation TMBRunKeeper_Weight_RetrieveEntries_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number entries to return per page. Defaults to 25.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntries Choreo.
 */
@implementation TMBRunKeeper_Weight_RetrieveEntries_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Next" output from an execution of this Choreo.
	 * @return - NSString* (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNext {
		return [super getOutputByName:@"Next"];
	}

	/*!
	 * Retrieve the value of the "Previous" output from an execution of this Choreo.
	 * @return - NSString* (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPrevious {
		return [super getOutputByName:@"Previous"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the feed for a user's weight entries.
 */
@implementation TMBRunKeeper_Weight_RetrieveEntries

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Weight_RetrieveEntries Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Weight/RetrieveEntries"] autorelease];
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
		TMBRunKeeper_Weight_RetrieveEntries_ResultSet *results = [[[TMBRunKeeper_Weight_RetrieveEntries_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveEntries Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Weight_RetrieveEntries_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Weight_RetrieveEntries_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateActivity Choreo.
 */
@implementation TMBRunKeeper_FitnessActivities_UpdateActivity_Inputs

	/*!
	 * Set the value of the Activity input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the activity to update. See documentation for formatting examples.
	 */
	-(void)setActivity:(NSString*)Activity {
		[super setInput:@"Activity" toValue:Activity];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivites Choreo (i.e. /fitnessActivities/125927913).
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateActivity Choreo.
 */
@implementation TMBRunKeeper_FitnessActivities_UpdateActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a past activity.
 */
@implementation TMBRunKeeper_FitnessActivities_UpdateActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_FitnessActivities_UpdateActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/FitnessActivities/UpdateActivity"] autorelease];
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
		TMBRunKeeper_FitnessActivities_UpdateActivity_ResultSet *results = [[[TMBRunKeeper_FitnessActivities_UpdateActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_FitnessActivities_UpdateActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_FitnessActivities_UpdateActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivities Choreo.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number entries to return per page. Defaults to 25.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivities Choreo.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Next" output from an execution of this Choreo.
	 * @return - NSString* (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNext {
		return [super getOutputByName:@"Next"];
	}

	/*!
	 * Retrieve the value of the "Previous" output from an execution of this Choreo.
	 * @return - NSString* (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPrevious {
		return [super getOutputByName:@"Previous"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the feed for a user's strength training activities.
 */
@implementation TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/StrengthTrainingActivities/RetrieveActivities"] autorelease];
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
		TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities_ResultSet *results = [[[TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveActivities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities_Inputs*)newInputSet {
		return [[[TMBRunKeeper_StrengthTrainingActivities_RetrieveActivities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntry Choreo.
 */
@implementation TMBRunKeeper_Weight_RetrieveEntry_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the weight entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /weight/24085455).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntry Choreo.
 */
@implementation TMBRunKeeper_Weight_RetrieveEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a weight entry from a user’s feed.
 */
@implementation TMBRunKeeper_Weight_RetrieveEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Weight_RetrieveEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Weight/RetrieveEntry"] autorelease];
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
		TMBRunKeeper_Weight_RetrieveEntry_ResultSet *results = [[[TMBRunKeeper_Weight_RetrieveEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Weight_RetrieveEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Weight_RetrieveEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@implementation TMBRunKeeper_Sleep_CreateEntry_Inputs

	/*!
	 * Set the value of the Entry input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the entry to create. See documentation for formatting examples.
	 */
	-(void)setEntry:(NSString*)Entry {
		[super setInput:@"Entry" toValue:Entry];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@implementation TMBRunKeeper_Sleep_CreateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string 'true" when a new entry is created successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "URI" output from an execution of this Choreo.
	 * @return - NSString* (string) The entry uri that was created.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURI {
		return [super getOutputByName:@"URI"];
	}
	
@end

/*!
 * Adds a new sleep activity to a user's feed.
 */
@implementation TMBRunKeeper_Sleep_CreateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Sleep_CreateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Sleep/CreateEntry"] autorelease];
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
		TMBRunKeeper_Sleep_CreateEntry_ResultSet *results = [[[TMBRunKeeper_Sleep_CreateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Sleep_CreateEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Sleep_CreateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateEntry Choreo.
 */
@implementation TMBRunKeeper_Weight_UpdateEntry_Inputs

	/*!
	 * Set the value of the Entry input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the fields to be updated in the weight entry. See documentation for formatting examples.
	 */
	-(void)setEntry:(NSString*)Entry {
		[super setInput:@"Entry" toValue:Entry];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the EntryID input for this Choreo.
	*(required, string) This can be the individual id of the weight entry, or you can pass the full uri for the entry as returned from the RetrieveEntries Choreo (i.e. /weight/24085455).
	 */
	-(void)setEntryID:(NSString*)EntryID {
		[super setInput:@"EntryID" toValue:EntryID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateEntry Choreo.
 */
@implementation TMBRunKeeper_Weight_UpdateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a weight entry in a user’s feed.
 */
@implementation TMBRunKeeper_Weight_UpdateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Weight_UpdateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Weight/UpdateEntry"] autorelease];
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
		TMBRunKeeper_Weight_UpdateEntry_ResultSet *results = [[[TMBRunKeeper_Weight_UpdateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Weight_UpdateEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Weight_UpdateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_CreateEntry_Inputs

	/*!
	 * Set the value of the Entry input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the diabetes measurement entry to create. See documentation for formatting examples.
	 */
	-(void)setEntry:(NSString*)Entry {
		[super setInput:@"Entry" toValue:Entry];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_CreateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string 'true" when a new entry is created successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "URI" output from an execution of this Choreo.
	 * @return - NSString* (string) The entry uri that was created.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURI {
		return [super getOutputByName:@"URI"];
	}
	
@end

/*!
 * Adds a diabetes measurement entry to a user's feed.
 */
@implementation TMBRunKeeper_DiabetesMeasurements_CreateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_DiabetesMeasurements_CreateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/DiabetesMeasurements/CreateEntry"] autorelease];
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
		TMBRunKeeper_DiabetesMeasurements_CreateEntry_ResultSet *results = [[[TMBRunKeeper_DiabetesMeasurements_CreateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_DiabetesMeasurements_CreateEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_DiabetesMeasurements_CreateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateEntry Choreo.
 */
@implementation TMBRunKeeper_GeneralMeasurements_CreateEntry_Inputs

	/*!
	 * Set the value of the Entry input for this Choreo.
	*(required, json) A JSON string containing the key/value pairs for the body measurement entry to create. See documentation for formatting examples.
	 */
	-(void)setEntry:(NSString*)Entry {
		[super setInput:@"Entry" toValue:Entry];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEntry Choreo.
 */
@implementation TMBRunKeeper_GeneralMeasurements_CreateEntry_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string 'true" when a new entry is created successfully.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "URI" output from an execution of this Choreo.
	 * @return - NSString* (string) The entry uri that was created.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURI {
		return [super getOutputByName:@"URI"];
	}
	
@end

/*!
 * Adds a body measurement entry to a user's feed.
 */
@implementation TMBRunKeeper_GeneralMeasurements_CreateEntry

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_GeneralMeasurements_CreateEntry Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/GeneralMeasurements/CreateEntry"] autorelease];
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
		TMBRunKeeper_GeneralMeasurements_CreateEntry_ResultSet *results = [[[TMBRunKeeper_GeneralMeasurements_CreateEntry_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateEntry Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_GeneralMeasurements_CreateEntry_Inputs*)newInputSet {
		return [[[TMBRunKeeper_GeneralMeasurements_CreateEntry_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteActivity Choreo.
 */
@implementation TMBRunKeeper_BackgroundActivities_DeleteActivity_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivities Choreo (i.e. /backgroundActivities/-12985593-1347998400000).
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteActivity Choreo.
 */
@implementation TMBRunKeeper_BackgroundActivities_DeleteActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (boolean) Contains the string "true" when activities are successfully deleted.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes an individual background activity from a user’s feed.
 */
@implementation TMBRunKeeper_BackgroundActivities_DeleteActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_BackgroundActivities_DeleteActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/BackgroundActivities/DeleteActivity"] autorelease];
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
		TMBRunKeeper_BackgroundActivities_DeleteActivity_ResultSet *results = [[[TMBRunKeeper_BackgroundActivities_DeleteActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_BackgroundActivities_DeleteActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_BackgroundActivities_DeleteActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveFriends Choreo.
 */
@implementation TMBRunKeeper_Friends_RetrieveFriends_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number entries to return per page. Defaults to 25.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveFriends Choreo.
 */
@implementation TMBRunKeeper_Friends_RetrieveFriends_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Next" output from an execution of this Choreo.
	 * @return - NSString* (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNext {
		return [super getOutputByName:@"Next"];
	}

	/*!
	 * Retrieve the value of the "Previous" output from an execution of this Choreo.
	 * @return - NSString* (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPrevious {
		return [super getOutputByName:@"Previous"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the friends in a user's network.
 */
@implementation TMBRunKeeper_Friends_RetrieveFriends

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Friends_RetrieveFriends Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Friends/RetrieveFriends"] autorelease];
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
		TMBRunKeeper_Friends_RetrieveFriends_ResultSet *results = [[[TMBRunKeeper_Friends_RetrieveFriends_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveFriends Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Friends_RetrieveFriends_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Friends_RetrieveFriends_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivity Choreo.
 */
@implementation TMBRunKeeper_BackgroundActivities_RetrieveActivity_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivities Choreo (i.e. /backgroundActivities/-12985593-1347998400000).
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivity Choreo.
 */
@implementation TMBRunKeeper_BackgroundActivities_RetrieveActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a page from a user’s background activity feed.
 */
@implementation TMBRunKeeper_BackgroundActivities_RetrieveActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_BackgroundActivities_RetrieveActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/BackgroundActivities/RetrieveActivity"] autorelease];
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
		TMBRunKeeper_BackgroundActivities_RetrieveActivity_ResultSet *results = [[[TMBRunKeeper_BackgroundActivities_RetrieveActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_BackgroundActivities_RetrieveActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_BackgroundActivities_RetrieveActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveRecords Choreo.
 */
@implementation TMBRunKeeper_PersonalRecords_RetrieveRecords_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveRecords Choreo.
 */
@implementation TMBRunKeeper_PersonalRecords_RetrieveRecords_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the feed for a user's personal records.
 */
@implementation TMBRunKeeper_PersonalRecords_RetrieveRecords

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_PersonalRecords_RetrieveRecords Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/PersonalRecords/RetrieveRecords"] autorelease];
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
		TMBRunKeeper_PersonalRecords_RetrieveRecords_ResultSet *results = [[[TMBRunKeeper_PersonalRecords_RetrieveRecords_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveRecords Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_PersonalRecords_RetrieveRecords_Inputs*)newInputSet {
		return [[[TMBRunKeeper_PersonalRecords_RetrieveRecords_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveActivity Choreo.
 */
@implementation TMBRunKeeper_FitnessActivities_RetrieveActivity_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ActivityID input for this Choreo.
	*(required, string) This can be the individual id of the activity, or you can pass the full uri for the activity as returned from the RetrieveActivites Choreo (i.e. /fitnessActivities/125927913).
	 */
	-(void)setActivityID:(NSString*)ActivityID {
		[super setInput:@"ActivityID" toValue:ActivityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveActivity Choreo.
 */
@implementation TMBRunKeeper_FitnessActivities_RetrieveActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a page of a user’s activity history or information for a past activity.
 */
@implementation TMBRunKeeper_FitnessActivities_RetrieveActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_FitnessActivities_RetrieveActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/FitnessActivities/RetrieveActivity"] autorelease];
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
		TMBRunKeeper_FitnessActivities_RetrieveActivity_ResultSet *results = [[[TMBRunKeeper_FitnessActivities_RetrieveActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_FitnessActivities_RetrieveActivity_Inputs*)newInputSet {
		return [[[TMBRunKeeper_FitnessActivities_RetrieveActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveEntries Choreo.
 */
@implementation TMBRunKeeper_Sleep_RetrieveEntries_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved after the final step in the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number entries to return per page. Defaults to 25.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of entries to return. This parameter is used in combination with the PageSize input to page through results. Defaults to 0 (the first page).
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveEntries Choreo.
 */
@implementation TMBRunKeeper_Sleep_RetrieveEntries_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Next" output from an execution of this Choreo.
	 * @return - NSString* (integer) The next page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNext {
		return [super getOutputByName:@"Next"];
	}

	/*!
	 * Retrieve the value of the "Previous" output from an execution of this Choreo.
	 * @return - NSString* (integer) The previous page of entries that is available. This value can be passed into the Page input while paging through entries.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getPrevious {
		return [super getOutputByName:@"Previous"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from RunKeeper.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the feed for a user's sleep entries.
 */
@implementation TMBRunKeeper_Sleep_RetrieveEntries

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRunKeeper_Sleep_RetrieveEntries Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RunKeeper/Sleep/RetrieveEntries"] autorelease];
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
		TMBRunKeeper_Sleep_RetrieveEntries_ResultSet *results = [[[TMBRunKeeper_Sleep_RetrieveEntries_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveEntries Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRunKeeper_Sleep_RetrieveEntries_Inputs*)newInputSet {
		return [[[TMBRunKeeper_Sleep_RetrieveEntries_Inputs alloc] init] autorelease];
	}
@end
	