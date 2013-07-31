/*!
 * @TMBKlout.m
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

#import "TMBKlout.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ByKloutID Choreo.
 */
@implementation TMBKlout_Identity_ByKloutID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Klout.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the KloutID input for this Choreo.
	*(required, integer) The numeric ID for a Klout user.
	 */
	-(void)setKloutID:(NSString*)KloutID {
		[super setInput:@"KloutID" toValue:KloutID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByKloutID Choreo.
 */
@implementation TMBKlout_Identity_ByKloutID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Klout.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Performs a lookup for a user's identity using a Klout ID.
 */
@implementation TMBKlout_Identity_ByKloutID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKlout_Identity_ByKloutID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Klout/Identity/ByKloutID"] autorelease];
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
		TMBKlout_Identity_ByKloutID_ResultSet *results = [[[TMBKlout_Identity_ByKloutID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByKloutID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKlout_Identity_ByKloutID_Inputs*)newInputSet {
		return [[[TMBKlout_Identity_ByKloutID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByTwitterID Choreo.
 */
@implementation TMBKlout_Identity_ByTwitterID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Klout.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the TwitterID input for this Choreo.
	*(required, integer) The numeric ID for a Twitter user.
	 */
	-(void)setTwitterID:(NSString*)TwitterID {
		[super setInput:@"TwitterID" toValue:TwitterID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByTwitterID Choreo.
 */
@implementation TMBKlout_Identity_ByTwitterID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Klout.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Performs a lookup for a user's identity using a Twitter ID.
 */
@implementation TMBKlout_Identity_ByTwitterID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKlout_Identity_ByTwitterID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Klout/Identity/ByTwitterID"] autorelease];
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
		TMBKlout_Identity_ByTwitterID_ResultSet *results = [[[TMBKlout_Identity_ByTwitterID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByTwitterID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKlout_Identity_ByTwitterID_Inputs*)newInputSet {
		return [[[TMBKlout_Identity_ByTwitterID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByTwitterScreenName Choreo.
 */
@implementation TMBKlout_Identity_ByTwitterScreenName_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Klout.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ScreenName input for this Choreo.
	*(required, string) The screen name for a Twitter user.
	 */
	-(void)setScreenName:(NSString*)ScreenName {
		[super setInput:@"ScreenName" toValue:ScreenName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByTwitterScreenName Choreo.
 */
@implementation TMBKlout_Identity_ByTwitterScreenName_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Klout.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Performs a lookup for a user's identity using a Twitter screen name.
 */
@implementation TMBKlout_Identity_ByTwitterScreenName

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKlout_Identity_ByTwitterScreenName Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Klout/Identity/ByTwitterScreenName"] autorelease];
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
		TMBKlout_Identity_ByTwitterScreenName_ResultSet *results = [[[TMBKlout_Identity_ByTwitterScreenName_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByTwitterScreenName Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKlout_Identity_ByTwitterScreenName_Inputs*)newInputSet {
		return [[[TMBKlout_Identity_ByTwitterScreenName_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Score Choreo.
 */
@implementation TMBKlout_User_Score_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Klout.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the KloutID input for this Choreo.
	*(required, string) The id for a Klout user to retrieve a score for.
	 */
	-(void)setKloutID:(NSString*)KloutID {
		[super setInput:@"KloutID" toValue:KloutID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Score Choreo.
 */
@implementation TMBKlout_User_Score_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Klout.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a user's Klout Score and deltas.
 */
@implementation TMBKlout_User_Score

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKlout_User_Score Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Klout/User/Score"] autorelease];
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
		TMBKlout_User_Score_ResultSet *results = [[[TMBKlout_User_Score_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Score Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKlout_User_Score_Inputs*)newInputSet {
		return [[[TMBKlout_User_Score_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Influence Choreo.
 */
@implementation TMBKlout_User_Influence_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Klout.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the KloutID input for this Choreo.
	*(required, string) The id for a Klout user to retrieve influencers and influencees for.
	 */
	-(void)setKloutID:(NSString*)KloutID {
		[super setInput:@"KloutID" toValue:KloutID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Influence Choreo.
 */
@implementation TMBKlout_User_Influence_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Klout.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a user's influencers and influencees.
 */
@implementation TMBKlout_User_Influence

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKlout_User_Influence Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Klout/User/Influence"] autorelease];
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
		TMBKlout_User_Influence_ResultSet *results = [[[TMBKlout_User_Influence_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Influence Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKlout_User_Influence_Inputs*)newInputSet {
		return [[[TMBKlout_User_Influence_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Topics Choreo.
 */
@implementation TMBKlout_User_Topics_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Klout.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the KloutID input for this Choreo.
	*(required, string) The id for a Klout user to retrieve topics for.
	 */
	-(void)setKloutID:(NSString*)KloutID {
		[super setInput:@"KloutID" toValue:KloutID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Topics Choreo.
 */
@implementation TMBKlout_User_Topics_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Klout.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a user's topics. 
 */
@implementation TMBKlout_User_Topics

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKlout_User_Topics Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Klout/User/Topics"] autorelease];
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
		TMBKlout_User_Topics_ResultSet *results = [[[TMBKlout_User_Topics_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Topics Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKlout_User_Topics_Inputs*)newInputSet {
		return [[[TMBKlout_User_Topics_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByGooglePlusID Choreo.
 */
@implementation TMBKlout_Identity_ByGooglePlusID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Klout.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the GooglePlusID input for this Choreo.
	*(required, integer) The numeric ID for a Google+ user.
	 */
	-(void)setGooglePlusID:(NSString*)GooglePlusID {
		[super setInput:@"GooglePlusID" toValue:GooglePlusID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByGooglePlusID Choreo.
 */
@implementation TMBKlout_Identity_ByGooglePlusID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Klout.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Performs a lookup for a user's identity using a Google+ ID.
 */
@implementation TMBKlout_Identity_ByGooglePlusID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKlout_Identity_ByGooglePlusID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Klout/Identity/ByGooglePlusID"] autorelease];
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
		TMBKlout_Identity_ByGooglePlusID_ResultSet *results = [[[TMBKlout_Identity_ByGooglePlusID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByGooglePlusID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKlout_Identity_ByGooglePlusID_Inputs*)newInputSet {
		return [[[TMBKlout_Identity_ByGooglePlusID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowUser Choreo.
 */
@implementation TMBKlout_User_ShowUser_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Klout.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the KloutID input for this Choreo.
	*(required, string) The id for a Klout user to retrieve.
	 */
	-(void)setKloutID:(NSString*)KloutID {
		[super setInput:@"KloutID" toValue:KloutID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowUser Choreo.
 */
@implementation TMBKlout_User_ShowUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Klout.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a specified Klout user.
 */
@implementation TMBKlout_User_ShowUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKlout_User_ShowUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Klout/User/ShowUser"] autorelease];
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
		TMBKlout_User_ShowUser_ResultSet *results = [[[TMBKlout_User_ShowUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKlout_User_ShowUser_Inputs*)newInputSet {
		return [[[TMBKlout_User_ShowUser_Inputs alloc] init] autorelease];
	}
@end
	