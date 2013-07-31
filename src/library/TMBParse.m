/*!
 * @TMBParse.m
 *
 * Execute Choreographies from the Temboo Parse bundle.
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

#import "TMBParse.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUser Choreo.
 */
@implementation TMBParse_Users_DeleteUser_Inputs

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The ID of the user to retrieve.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUser Choreo.
 */
@implementation TMBParse_Users_DeleteUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified user.
 */
@implementation TMBParse_Users_DeleteUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Users_DeleteUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Users/DeleteUser"] autorelease];
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
		TMBParse_Users_DeleteUser_ResultSet *results = [[[TMBParse_Users_DeleteUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Users_DeleteUser_Inputs*)newInputSet {
		return [[[TMBParse_Users_DeleteUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInstallation Choreo.
 */
@implementation TMBParse_PushNotifications_DeleteInstallation_Inputs

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The ID of the installation to retrieve.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the MasterKey input for this Choreo.
	*(required, string) The Master Key provided by Parse.
	 */
	-(void)setMasterKey:(NSString*)MasterKey {
		[super setInput:@"MasterKey" toValue:MasterKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInstallation Choreo.
 */
@implementation TMBParse_PushNotifications_DeleteInstallation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes an installation object.
 */
@implementation TMBParse_PushNotifications_DeleteInstallation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_PushNotifications_DeleteInstallation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/PushNotifications/DeleteInstallation"] autorelease];
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
		TMBParse_PushNotifications_DeleteInstallation_ResultSet *results = [[[TMBParse_PushNotifications_DeleteInstallation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteInstallation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_PushNotifications_DeleteInstallation_Inputs*)newInputSet {
		return [[[TMBParse_PushNotifications_DeleteInstallation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@implementation TMBParse_PushNotifications_Query_Inputs

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, boolean) A flag indicating to include a count of objects in the response. Set to 1 to include a count. Defaults to 0.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Include input for this Choreo.
	*(optional, string) Specify a field to return multiple types of related objects in this query.  For example, enter: post.author, to retrieve posts and their authors related to this class.
	 */
	-(void)setInclude:(NSString*)Include {
		[super setInput:@"Include" toValue:Include];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of objects to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MasterKey input for this Choreo.
	*(required, string) The Master Key provided by Parse.
	 */
	-(void)setMasterKey:(NSString*)MasterKey {
		[super setInput:@"MasterKey" toValue:MasterKey];
	}

	/*!
	 * Set the value of the Skip input for this Choreo.
	*(optional, integer) Returns only records after this number. Used in combination with the Limit input to page through many results.
	 */
	-(void)setSkip:(NSString*)Skip {
		[super setInput:@"Skip" toValue:Skip];
	}

	/*!
	 * Set the value of the Where input for this Choreo.
	*(optional, json) A valid query constraint formatted as a JSON-encoded string. See documentation for syntax rules.
	 */
	-(void)setWhere:(NSString*)Where {
		[super setInput:@"Where" toValue:Where];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@implementation TMBParse_PushNotifications_Query_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves multiple installations at once and allows you to narrow results by specifying query constraints.
 */
@implementation TMBParse_PushNotifications_Query

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_PushNotifications_Query Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/PushNotifications/Query"] autorelease];
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
		TMBParse_PushNotifications_Query_ResultSet *results = [[[TMBParse_PushNotifications_Query_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Query Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_PushNotifications_Query_Inputs*)newInputSet {
		return [[[TMBParse_PushNotifications_Query_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Login Choreo.
 */
@implementation TMBParse_Users_Login_Inputs

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The password for the user that is loggin in.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The username for the user that is authenticating.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Login Choreo.
 */
@implementation TMBParse_Users_Login_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows your application to authenticate a given user; returns user information, user-provided fields, and a session token.
 */
@implementation TMBParse_Users_Login

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Users_Login Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Users/Login"] autorelease];
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
		TMBParse_Users_Login_ResultSet *results = [[[TMBParse_Users_Login_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Login Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Users_Login_Inputs*)newInputSet {
		return [[[TMBParse_Users_Login_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@implementation TMBParse_GeoPoints_Query_Inputs

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ClassName input for this Choreo.
	*(required, string) The class name for the object being created.
	 */
	-(void)setClassName:(NSString*)ClassName {
		[super setInput:@"ClassName" toValue:ClassName];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, boolean) A flag indicating to include a count of objects in the response. Set to 1 to include a count. Defaults to 0.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Include input for this Choreo.
	*(optional, string) Specify a field to return multiple types of related objects in this query.  For example, enter: post.author, to retrieve posts and their authors related to this class.
	 */
	-(void)setInclude:(NSString*)Include {
		[super setInput:@"Include" toValue:Include];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude coordinate of the Geo Point.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude coordinate of the Geo Point.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}

	/*!
	 * Set the value of the Skip input for this Choreo.
	*(optional, integer) Returns only records after this number. Used in combination with the Limit input to page through many results.
	 */
	-(void)setSkip:(NSString*)Skip {
		[super setInput:@"Skip" toValue:Skip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@implementation TMBParse_GeoPoints_Query_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns objects associated with Geo points near a specified set of coordinates.
 */
@implementation TMBParse_GeoPoints_Query

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_GeoPoints_Query Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/GeoPoints/Query"] autorelease];
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
		TMBParse_GeoPoints_Query_ResultSet *results = [[[TMBParse_GeoPoints_Query_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Query Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_GeoPoints_Query_Inputs*)newInputSet {
		return [[[TMBParse_GeoPoints_Query_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateInstallation Choreo.
 */
@implementation TMBParse_PushNotifications_UpdateInstallation_Inputs

	/*!
	 * Set the value of the Installation input for this Choreo.
	*(required, json) A JSON string containing the installation data. See documentation for syntax examples.
	 */
	-(void)setInstallation:(NSString*)Installation {
		[super setInput:@"Installation" toValue:Installation];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The ID of the installation to update.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateInstallation Choreo.
 */
@implementation TMBParse_PushNotifications_UpdateInstallation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing installation object on Parse.
 */
@implementation TMBParse_PushNotifications_UpdateInstallation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_PushNotifications_UpdateInstallation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/PushNotifications/UpdateInstallation"] autorelease];
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
		TMBParse_PushNotifications_UpdateInstallation_ResultSet *results = [[[TMBParse_PushNotifications_UpdateInstallation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateInstallation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_PushNotifications_UpdateInstallation_Inputs*)newInputSet {
		return [[[TMBParse_PushNotifications_UpdateInstallation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveRole Choreo.
 */
@implementation TMBParse_Roles_RetrieveRole_Inputs

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, json) The ID of the role to be retrieved.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveRole Choreo.
 */
@implementation TMBParse_Roles_RetrieveRole_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified role.
 */
@implementation TMBParse_Roles_RetrieveRole

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Roles_RetrieveRole Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Roles/RetrieveRole"] autorelease];
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
		TMBParse_Roles_RetrieveRole_ResultSet *results = [[[TMBParse_Roles_RetrieveRole_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveRole Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Roles_RetrieveRole_Inputs*)newInputSet {
		return [[[TMBParse_Roles_RetrieveRole_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UploadInstallationData Choreo.
 */
@implementation TMBParse_PushNotifications_UploadInstallationData_Inputs

	/*!
	 * Set the value of the Installation input for this Choreo.
	*(required, json) A JSON string containing the installation data. See documentation for syntax examples.
	 */
	-(void)setInstallation:(NSString*)Installation {
		[super setInput:@"Installation" toValue:Installation];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadInstallationData Choreo.
 */
@implementation TMBParse_PushNotifications_UploadInstallationData_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates an installation object on Parse.
 */
@implementation TMBParse_PushNotifications_UploadInstallationData

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_PushNotifications_UploadInstallationData Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/PushNotifications/UploadInstallationData"] autorelease];
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
		TMBParse_PushNotifications_UploadInstallationData_ResultSet *results = [[[TMBParse_PushNotifications_UploadInstallationData_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UploadInstallationData Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_PushNotifications_UploadInstallationData_Inputs*)newInputSet {
		return [[[TMBParse_PushNotifications_UploadInstallationData_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteObject Choreo.
 */
@implementation TMBParse_Objects_DeleteObject_Inputs

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ClassName input for this Choreo.
	*(required, string) The class name for the object being deleted.
	 */
	-(void)setClassName:(NSString*)ClassName {
		[super setInput:@"ClassName" toValue:ClassName];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The ID of the object to delete.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteObject Choreo.
 */
@implementation TMBParse_Objects_DeleteObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given object.
 */
@implementation TMBParse_Objects_DeleteObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Objects_DeleteObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Objects/DeleteObject"] autorelease];
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
		TMBParse_Objects_DeleteObject_ResultSet *results = [[[TMBParse_Objects_DeleteObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Objects_DeleteObject_Inputs*)newInputSet {
		return [[[TMBParse_Objects_DeleteObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GeoPoint Choreo.
 */
@implementation TMBParse_GeoPoints_GeoPoint_Inputs

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ClassName input for this Choreo.
	*(required, string) The class name for the object being created.
	 */
	-(void)setClassName:(NSString*)ClassName {
		[super setInput:@"ClassName" toValue:ClassName];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude coordinate of the Geo Point.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude coordinate of the Geo Point.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GeoPoint Choreo.
 */
@implementation TMBParse_GeoPoints_GeoPoint_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Associates a Geo point with an existing object.
 */
@implementation TMBParse_GeoPoints_GeoPoint

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_GeoPoints_GeoPoint Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/GeoPoints/GeoPoint"] autorelease];
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
		TMBParse_GeoPoints_GeoPoint_ResultSet *results = [[[TMBParse_GeoPoints_GeoPoint_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GeoPoint Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_GeoPoints_GeoPoint_Inputs*)newInputSet {
		return [[[TMBParse_GeoPoints_GeoPoint_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRole Choreo.
 */
@implementation TMBParse_Roles_DeleteRole_Inputs

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, json) The ID of the role to retrieve.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRole Choreo.
 */
@implementation TMBParse_Roles_DeleteRole_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a given role.
 */
@implementation TMBParse_Roles_DeleteRole

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Roles_DeleteRole Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Roles/DeleteRole"] autorelease];
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
		TMBParse_Roles_DeleteRole_ResultSet *results = [[[TMBParse_Roles_DeleteRole_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRole Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Roles_DeleteRole_Inputs*)newInputSet {
		return [[[TMBParse_Roles_DeleteRole_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@implementation TMBParse_Queries_Query_Inputs

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ClassName input for this Choreo.
	*(required, string) The class name for the object being created.
	 */
	-(void)setClassName:(NSString*)ClassName {
		[super setInput:@"ClassName" toValue:ClassName];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, boolean) A flag indicating to include a count of objects in the response. Set to 1 to include a count. Defaults to 0.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Include input for this Choreo.
	*(optional, string) Specify a field to return multiple types of related objects in this query.  For example, enter: post.author, to retrieve posts and their authors related to this class.
	 */
	-(void)setInclude:(NSString*)Include {
		[super setInput:@"Include" toValue:Include];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of objects to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}

	/*!
	 * Set the value of the Skip input for this Choreo.
	*(optional, integer) Returns only records after this number. Used in combination with the Limit input to page through many results.
	 */
	-(void)setSkip:(NSString*)Skip {
		[super setInput:@"Skip" toValue:Skip];
	}

	/*!
	 * Set the value of the Where input for this Choreo.
	*(optional, json) A valid query constraint formatted as a JSON-encoded string. See documentation for syntax rules.
	 */
	-(void)setWhere:(NSString*)Where {
		[super setInput:@"Where" toValue:Where];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@implementation TMBParse_Queries_Query_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Queries Parse and retrieves objects based on given constraints.
 */
@implementation TMBParse_Queries_Query

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Queries_Query Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Queries/Query"] autorelease];
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
		TMBParse_Queries_Query_ResultSet *results = [[[TMBParse_Queries_Query_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Query Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Queries_Query_Inputs*)newInputSet {
		return [[[TMBParse_Queries_Query_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PasswordReset Choreo.
 */
@implementation TMBParse_Users_PasswordReset_Inputs

	/*!
	 * Set the value of the EmailAddress input for this Choreo.
	*(required, json) The email address for the user who wishes to reset their password.
	 */
	-(void)setEmailAddress:(NSString*)EmailAddress {
		[super setInput:@"EmailAddress" toValue:EmailAddress];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PasswordReset Choreo.
 */
@implementation TMBParse_Users_PasswordReset_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows a user to request a password reset email.
 */
@implementation TMBParse_Users_PasswordReset

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Users_PasswordReset Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Users/PasswordReset"] autorelease];
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
		TMBParse_Users_PasswordReset_ResultSet *results = [[[TMBParse_Users_PasswordReset_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PasswordReset Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Users_PasswordReset_Inputs*)newInputSet {
		return [[[TMBParse_Users_PasswordReset_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateRole Choreo.
 */
@implementation TMBParse_Roles_CreateRole_Inputs

	/*!
	 * Set the value of the Role input for this Choreo.
	*(required, json) A JSON string containing the role information. See documentation for formatting details.
	 */
	-(void)setRole:(NSString*)Role {
		[super setInput:@"Role" toValue:Role];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRole Choreo.
 */
@implementation TMBParse_Roles_CreateRole_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new role.
 */
@implementation TMBParse_Roles_CreateRole

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Roles_CreateRole Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Roles/CreateRole"] autorelease];
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
		TMBParse_Roles_CreateRole_ResultSet *results = [[[TMBParse_Roles_CreateRole_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateRole Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Roles_CreateRole_Inputs*)newInputSet {
		return [[[TMBParse_Roles_CreateRole_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUser Choreo.
 */
@implementation TMBParse_Users_UpdateUser_Inputs

	/*!
	 * Set the value of the UserInformation input for this Choreo.
	*(required, json) A JSON string containing the user information to update.
	 */
	-(void)setUserInformation:(NSString*)UserInformation {
		[super setInput:@"UserInformation" toValue:UserInformation];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The ID of the user to update.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(required, string) A valid Session Token. Note that Session Tokens can be retrieved by the Login and SignUp Choreos.
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUser Choreo.
 */
@implementation TMBParse_Users_UpdateUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates information for an existing user.
 */
@implementation TMBParse_Users_UpdateUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Users_UpdateUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Users/UpdateUser"] autorelease];
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
		TMBParse_Users_UpdateUser_ResultSet *results = [[[TMBParse_Users_UpdateUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Users_UpdateUser_Inputs*)newInputSet {
		return [[[TMBParse_Users_UpdateUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveObject Choreo.
 */
@implementation TMBParse_Objects_RetrieveObject_Inputs

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ClassName input for this Choreo.
	*(required, string) The class name for the object being retrieved.
	 */
	-(void)setClassName:(NSString*)ClassName {
		[super setInput:@"ClassName" toValue:ClassName];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The ID of the object to retrieve.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveObject Choreo.
 */
@implementation TMBParse_Objects_RetrieveObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a given object.
 */
@implementation TMBParse_Objects_RetrieveObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Objects_RetrieveObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Objects/RetrieveObject"] autorelease];
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
		TMBParse_Objects_RetrieveObject_ResultSet *results = [[[TMBParse_Objects_RetrieveObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Objects_RetrieveObject_Inputs*)newInputSet {
		return [[[TMBParse_Objects_RetrieveObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFile Choreo.
 */
@implementation TMBParse_Files_DeleteFile_Inputs

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, json) The name of the file to delete. Note that this is the name generated and returned by Parse after uploading the file.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the MasterKey input for this Choreo.
	*(required, string) The Master Key provided by Parse.
	 */
	-(void)setMasterKey:(NSString*)MasterKey {
		[super setInput:@"MasterKey" toValue:MasterKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFile Choreo.
 */
@implementation TMBParse_Files_DeleteFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a file stored on Parse.
 */
@implementation TMBParse_Files_DeleteFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Files_DeleteFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Files/DeleteFile"] autorelease];
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
		TMBParse_Files_DeleteFile_ResultSet *results = [[[TMBParse_Files_DeleteFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Files_DeleteFile_Inputs*)newInputSet {
		return [[[TMBParse_Files_DeleteFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UploadFile Choreo.
 */
@implementation TMBParse_Files_UploadFile_Inputs

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(conditional, string) The Base64-encoded contents of the file you want to upload.
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ContentType input for this Choreo.
	*(required, string) The content type of the file that is being uploaded (i.e. text/plain, image/jpeg, etc).
	 */
	-(void)setContentType:(NSString*)ContentType {
		[super setInput:@"ContentType" toValue:ContentType];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) The name of the file you are uploading to Parse.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*A path to a vault file to upload. Can be used as an alternative to the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadFile Choreo.
 */
@implementation TMBParse_Files_UploadFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Uploads a file to Parse.
 */
@implementation TMBParse_Files_UploadFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Files_UploadFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Files/UploadFile"] autorelease];
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
		TMBParse_Files_UploadFile_ResultSet *results = [[[TMBParse_Files_UploadFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UploadFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Files_UploadFile_Inputs*)newInputSet {
		return [[[TMBParse_Files_UploadFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateObject Choreo.
 */
@implementation TMBParse_Objects_CreateObject_Inputs

	/*!
	 * Set the value of the ObjectContents input for this Choreo.
	*(required, json) A JSON string containing the object contents.
	 */
	-(void)setObjectContents:(NSString*)ObjectContents {
		[super setInput:@"ObjectContents" toValue:ObjectContents];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ClassName input for this Choreo.
	*(required, string) The class name for the object being created.
	 */
	-(void)setClassName:(NSString*)ClassName {
		[super setInput:@"ClassName" toValue:ClassName];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateObject Choreo.
 */
@implementation TMBParse_Objects_CreateObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new object on Parse.
 */
@implementation TMBParse_Objects_CreateObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Objects_CreateObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Objects/CreateObject"] autorelease];
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
		TMBParse_Objects_CreateObject_ResultSet *results = [[[TMBParse_Objects_CreateObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Objects_CreateObject_Inputs*)newInputSet {
		return [[[TMBParse_Objects_CreateObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateObject Choreo.
 */
@implementation TMBParse_Objects_UpdateObject_Inputs

	/*!
	 * Set the value of the ObjectContents input for this Choreo.
	*(required, json) A JSON string containing the object contents.
	 */
	-(void)setObjectContents:(NSString*)ObjectContents {
		[super setInput:@"ObjectContents" toValue:ObjectContents];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ClassName input for this Choreo.
	*(required, string) The class name for the object being updated.
	 */
	-(void)setClassName:(NSString*)ClassName {
		[super setInput:@"ClassName" toValue:ClassName];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The ID of the object to update.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateObject Choreo.
 */
@implementation TMBParse_Objects_UpdateObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing object.
 */
@implementation TMBParse_Objects_UpdateObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Objects_UpdateObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Objects/UpdateObject"] autorelease];
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
		TMBParse_Objects_UpdateObject_ResultSet *results = [[[TMBParse_Objects_UpdateObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Objects_UpdateObject_Inputs*)newInputSet {
		return [[[TMBParse_Objects_UpdateObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AssociateWithObject Choreo.
 */
@implementation TMBParse_Files_AssociateWithObject_Inputs

	/*!
	 * Set the value of the Association input for this Choreo.
	*(required, json) A JSON string containing the file information that is to be associated with the Parse object. See documentation for formatting examples.
	 */
	-(void)setAssociation:(NSString*)Association {
		[super setInput:@"Association" toValue:Association];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ClassName input for this Choreo.
	*(required, string) The name of the class that a file is being associated with.
	 */
	-(void)setClassName:(NSString*)ClassName {
		[super setInput:@"ClassName" toValue:ClassName];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AssociateWithObject Choreo.
 */
@implementation TMBParse_Files_AssociateWithObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to associate a previously uploaded file with Parse objects.
 */
@implementation TMBParse_Files_AssociateWithObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Files_AssociateWithObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Files/AssociateWithObject"] autorelease];
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
		TMBParse_Files_AssociateWithObject_ResultSet *results = [[[TMBParse_Files_AssociateWithObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AssociateWithObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Files_AssociateWithObject_Inputs*)newInputSet {
		return [[[TMBParse_Files_AssociateWithObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUser Choreo.
 */
@implementation TMBParse_Users_RetrieveUser_Inputs

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The ID of the user to retrieve.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUser Choreo.
 */
@implementation TMBParse_Users_RetrieveUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves details for a specific user.
 */
@implementation TMBParse_Users_RetrieveUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Users_RetrieveUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Users/RetrieveUser"] autorelease];
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
		TMBParse_Users_RetrieveUser_ResultSet *results = [[[TMBParse_Users_RetrieveUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Users_RetrieveUser_Inputs*)newInputSet {
		return [[[TMBParse_Users_RetrieveUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SendNotification Choreo.
 */
@implementation TMBParse_PushNotifications_SendNotification_Inputs

	/*!
	 * Set the value of the Notifcation input for this Choreo.
	*(required, json) A JSON string containing the push notification data. See documentation for syntax examples.
	 */
	-(void)setNotifcation:(NSString*)Notifcation {
		[super setInput:@"Notifcation" toValue:Notifcation];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendNotification Choreo.
 */
@implementation TMBParse_PushNotifications_SendNotification_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Sends a push notification.
 */
@implementation TMBParse_PushNotifications_SendNotification

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_PushNotifications_SendNotification Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/PushNotifications/SendNotification"] autorelease];
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
		TMBParse_PushNotifications_SendNotification_ResultSet *results = [[[TMBParse_PushNotifications_SendNotification_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SendNotification Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_PushNotifications_SendNotification_Inputs*)newInputSet {
		return [[[TMBParse_PushNotifications_SendNotification_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateRole Choreo.
 */
@implementation TMBParse_Roles_UpdateRole_Inputs

	/*!
	 * Set the value of the Role input for this Choreo.
	*(required, json) A JSON string containing the role information to be updated. See documentation for formatting details.
	 */
	-(void)setRole:(NSString*)Role {
		[super setInput:@"Role" toValue:Role];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The ID of the role to update.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateRole Choreo.
 */
@implementation TMBParse_Roles_UpdateRole_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing role.
 */
@implementation TMBParse_Roles_UpdateRole

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Roles_UpdateRole Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Roles/UpdateRole"] autorelease];
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
		TMBParse_Roles_UpdateRole_ResultSet *results = [[[TMBParse_Roles_UpdateRole_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateRole Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Roles_UpdateRole_Inputs*)newInputSet {
		return [[[TMBParse_Roles_UpdateRole_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@implementation TMBParse_Users_Query_Inputs

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, boolean) A flag indicating to include a count of users in the response. Set to 1 to include a count. Defaults to 0.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Include input for this Choreo.
	*(optional, string) Specify a field to return multiple types of related objects in this query.  For example, enter: post.author, to retrieve posts and their authors related to this class.
	 */
	-(void)setInclude:(NSString*)Include {
		[super setInput:@"Include" toValue:Include];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of users to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}

	/*!
	 * Set the value of the Where input for this Choreo.
	*(optional, json) A valid query constraint formatted as a JSON-encoded string. See documentation for syntax rules.
	 */
	-(void)setWhere:(NSString*)Where {
		[super setInput:@"Where" toValue:Where];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@implementation TMBParse_Users_Query_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves multiple users at once and allows you to specify query constraints.
 */
@implementation TMBParse_Users_Query

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Users_Query Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Users/Query"] autorelease];
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
		TMBParse_Users_Query_ResultSet *results = [[[TMBParse_Users_Query_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Query Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Users_Query_Inputs*)newInputSet {
		return [[[TMBParse_Users_Query_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LinkNewUser Choreo.
 */
@implementation TMBParse_Users_LinkNewUser_Inputs

	/*!
	 * Set the value of the AuthData input for this Choreo.
	*(required, json) A JSON string containing the authentication data of the user you want to link with another service. See documentation for more formatting details.
	 */
	-(void)setAuthData:(NSString*)AuthData {
		[super setInput:@"AuthData" toValue:AuthData];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LinkNewUser Choreo.
 */
@implementation TMBParse_Users_LinkNewUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows your application to sign up and login users by linking them to other services such as Twitter or Facebook.
 */
@implementation TMBParse_Users_LinkNewUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Users_LinkNewUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Users/LinkNewUser"] autorelease];
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
		TMBParse_Users_LinkNewUser_ResultSet *results = [[[TMBParse_Users_LinkNewUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LinkNewUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Users_LinkNewUser_Inputs*)newInputSet {
		return [[[TMBParse_Users_LinkNewUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SignUp Choreo.
 */
@implementation TMBParse_Users_SignUp_Inputs

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, json) A JSON string containing the new user information.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SignUp Choreo.
 */
@implementation TMBParse_Users_SignUp_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows your application to sign up a new user.
 */
@implementation TMBParse_Users_SignUp

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Users_SignUp Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Users/SignUp"] autorelease];
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
		TMBParse_Users_SignUp_ResultSet *results = [[[TMBParse_Users_SignUp_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SignUp Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Users_SignUp_Inputs*)newInputSet {
		return [[[TMBParse_Users_SignUp_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LinkExistingUser Choreo.
 */
@implementation TMBParse_Users_LinkExistingUser_Inputs

	/*!
	 * Set the value of the AuthData input for this Choreo.
	*(required, json) A JSON string containing the authentication data of the user you want to link with another service. See documentation for more formatting details.
	 */
	-(void)setAuthData:(NSString*)AuthData {
		[super setInput:@"AuthData" toValue:AuthData];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The ID of the user that is being linked to another service.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(required, string) A valid Session Token. Note that Session Tokens can be retrieved by the Login and SignUp Choreos.
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LinkExistingUser Choreo.
 */
@implementation TMBParse_Users_LinkExistingUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows your application to link an existing user with a service like Facebook or Twitter.
 */
@implementation TMBParse_Users_LinkExistingUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_Users_LinkExistingUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/Users/LinkExistingUser"] autorelease];
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
		TMBParse_Users_LinkExistingUser_ResultSet *results = [[[TMBParse_Users_LinkExistingUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LinkExistingUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_Users_LinkExistingUser_Inputs*)newInputSet {
		return [[[TMBParse_Users_LinkExistingUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveInstallation Choreo.
 */
@implementation TMBParse_PushNotifications_RetrieveInstallation_Inputs

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(required, string) The ID of the installation to retrieve.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the ApplicationID input for this Choreo.
	*(required, string) The Application ID provided by Parse.
	 */
	-(void)setApplicationID:(NSString*)ApplicationID {
		[super setInput:@"ApplicationID" toValue:ApplicationID];
	}

	/*!
	 * Set the value of the RESTAPIKey input for this Choreo.
	*(required, string) The REST API Key provided by Parse.
	 */
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey {
		[super setInput:@"RESTAPIKey" toValue:RESTAPIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveInstallation Choreo.
 */
@implementation TMBParse_PushNotifications_RetrieveInstallation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Parse.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the contents of an installation object.
 */
@implementation TMBParse_PushNotifications_RetrieveInstallation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBParse_PushNotifications_RetrieveInstallation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Parse/PushNotifications/RetrieveInstallation"] autorelease];
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
		TMBParse_PushNotifications_RetrieveInstallation_ResultSet *results = [[[TMBParse_PushNotifications_RetrieveInstallation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveInstallation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBParse_PushNotifications_RetrieveInstallation_Inputs*)newInputSet {
		return [[[TMBParse_PushNotifications_RetrieveInstallation_Inputs alloc] init] autorelease];
	}
@end
	