/*!
 * @TMBCloudMine.m
 *
 * Execute Choreographies from the Temboo CloudMine bundle.
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

#import "TMBCloudMine.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetFile Choreo.
 */
@implementation TMBCloudMine_FileStorage_GetFile_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the Key input for this Choreo.
	*(required, string) The key whose value you want.
	 */
	-(void)setKey:(NSString*)Key {
		[super setInput:@"Key" toValue:Key];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*A path to the vault file to upload. This can be used as an alternative to the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFile Choreo.
 */
@implementation TMBCloudMine_FileStorage_GetFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a file from the CloudMine server with a given key.
 */
@implementation TMBCloudMine_FileStorage_GetFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_FileStorage_GetFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/FileStorage/GetFile"] autorelease];
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
		TMBCloudMine_FileStorage_GetFile_ResultSet *results = [[[TMBCloudMine_FileStorage_GetFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_FileStorage_GetFile_Inputs*)newInputSet {
		return [[[TMBCloudMine_FileStorage_GetFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SetFile Choreo.
 */
@implementation TMBCloudMine_FileStorage_SetFile_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the ContentType input for this Choreo.
	*(optional, string) The Content-Type of the file you are creating or updating. This defaults to application/octet-stream.
	 */
	-(void)setContentType:(NSString*)ContentType {
		[super setInput:@"ContentType" toValue:ContentType];
	}

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(conditional, string) The Base64 encoded contents of the file.
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the Key input for this Choreo.
	*(optional, string) A key for the file you are uploading. If provided, the file will be stored with this key; otherwise, a key will be generated and returned.
	 */
	-(void)setKey:(NSString*)Key {
		[super setInput:@"Key" toValue:Key];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*A path to the vault file to upload. This can be used as an alternative to the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetFile Choreo.
 */
@implementation TMBCloudMine_FileStorage_SetFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to update or create a file on the CloudMine server.
 */
@implementation TMBCloudMine_FileStorage_SetFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_FileStorage_SetFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/FileStorage/SetFile"] autorelease];
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
		TMBCloudMine_FileStorage_SetFile_ResultSet *results = [[[TMBCloudMine_FileStorage_SetFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SetFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_FileStorage_SetFile_Inputs*)newInputSet {
		return [[[TMBCloudMine_FileStorage_SetFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFile Choreo.
 */
@implementation TMBCloudMine_FileStorage_DeleteFile_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the Keys input for this Choreo.
	*(required, string) A comma-separated list of keys to delete.
	 */
	-(void)setKeys:(NSString*)Keys {
		[super setInput:@"Keys" toValue:Keys];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*A path to the vault file to upload. This can be used as an alternative to the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFile Choreo.
 */
@implementation TMBCloudMine_FileStorage_DeleteFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes one or more files from the CloudMine server using the keys provided.
 */
@implementation TMBCloudMine_FileStorage_DeleteFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_FileStorage_DeleteFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/FileStorage/DeleteFile"] autorelease];
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
		TMBCloudMine_FileStorage_DeleteFile_ResultSet *results = [[[TMBCloudMine_FileStorage_DeleteFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_FileStorage_DeleteFile_Inputs*)newInputSet {
		return [[[TMBCloudMine_FileStorage_DeleteFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccount Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_CreateAccount_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(optional, decimal) The latitude coordinate of the user's location. If provide, Longitude is also required.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(optional, decimal) The longitude coordinate of the user's location. If provide, Latitude is also required.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(optional, string) A name to associated with the user profile information.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The password for the account that is being created.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The username for the account that is being created.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccount Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_CreateAccount_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a user account with a given username and password.
 */
@implementation TMBCloudMine_UserAccountManagement_CreateAccount

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_UserAccountManagement_CreateAccount Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/UserAccountManagement/CreateAccount"] autorelease];
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
		TMBCloudMine_UserAccountManagement_CreateAccount_ResultSet *results = [[[TMBCloudMine_UserAccountManagement_CreateAccount_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAccount Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_UserAccountManagement_CreateAccount_Inputs*)newInputSet {
		return [[[TMBCloudMine_UserAccountManagement_CreateAccount_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ObjectUpdate Choreo.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectUpdate_Inputs

	/*!
	 * Set the value of the Data input for this Choreo.
	*(required, json) A valid JSON object containing key/value pairs.
	 */
	-(void)setData:(NSString*)Data {
		[super setInput:@"Data" toValue:Data];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectUpdate Choreo.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectUpdate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to update, merge, or create key/value pairs.

 */
@implementation TMBCloudMine_ObjectStorage_ObjectUpdate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_ObjectStorage_ObjectUpdate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/ObjectStorage/ObjectUpdate"] autorelease];
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
		TMBCloudMine_ObjectStorage_ObjectUpdate_ResultSet *results = [[[TMBCloudMine_ObjectStorage_ObjectUpdate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ObjectUpdate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_ObjectStorage_ObjectUpdate_Inputs*)newInputSet {
		return [[[TMBCloudMine_ObjectStorage_ObjectUpdate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AccountLogout Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_AccountLogout_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(required, string) The session token obtained from the AccountLogin Choreo.
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AccountLogout Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_AccountLogout_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to invalidate a user's session token.
 */
@implementation TMBCloudMine_UserAccountManagement_AccountLogout

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_UserAccountManagement_AccountLogout Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/UserAccountManagement/AccountLogout"] autorelease];
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
		TMBCloudMine_UserAccountManagement_AccountLogout_ResultSet *results = [[[TMBCloudMine_UserAccountManagement_AccountLogout_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AccountLogout Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_UserAccountManagement_AccountLogout_Inputs*)newInputSet {
		return [[[TMBCloudMine_UserAccountManagement_AccountLogout_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ObjectGet Choreo.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectGet_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, boolean) Returns a count of the results in the response if set to true. Valid values are true and false.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Keys input for this Choreo.
	*(optional, string) A comma separated list of keys to return. If not specified, all key/value pairs are returned.
	 */
	-(void)setKeys:(NSString*)Keys {
		[super setInput:@"Keys" toValue:Keys];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Limits the number of results returned. Use -1 for no limit. Use 0 for no results, and with Count=true to just get the number of available results. This defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}

	/*!
	 * Set the value of the Skip input for this Choreo.
	*(optional, integer) Indicates to start results after skiping this number objects. Used to page through results.
	 */
	-(void)setSkip:(NSString*)Skip {
		[super setInput:@"Skip" toValue:Skip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectGet Choreo.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectGet_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves one or more objects from Cloudmine.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectGet

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_ObjectStorage_ObjectGet Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/ObjectStorage/ObjectGet"] autorelease];
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
		TMBCloudMine_ObjectStorage_ObjectGet_ResultSet *results = [[[TMBCloudMine_ObjectStorage_ObjectGet_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ObjectGet Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_ObjectStorage_ObjectGet_Inputs*)newInputSet {
		return [[[TMBCloudMine_ObjectStorage_ObjectGet_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ObjectDelete Choreo.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectDelete_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the All input for this Choreo.
	*(conditional, boolean) Indicates that all keys should be deleted if the Keys input is left empty. Set to "true" to delete all keys.
	 */
	-(void)setAll:(NSString*)All {
		[super setInput:@"All" toValue:All];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the Keys input for this Choreo.
	*(conditional, string) A comma separated list of keys to delete. Required unless specifying "true" for the All parameter.
	 */
	-(void)setKeys:(NSString*)Keys {
		[super setInput:@"Keys" toValue:Keys];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectDelete Choreo.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectDelete_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes one or more specified keys.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectDelete

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_ObjectStorage_ObjectDelete Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/ObjectStorage/ObjectDelete"] autorelease];
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
		TMBCloudMine_ObjectStorage_ObjectDelete_ResultSet *results = [[[TMBCloudMine_ObjectStorage_ObjectDelete_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ObjectDelete Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_ObjectStorage_ObjectDelete_Inputs*)newInputSet {
		return [[[TMBCloudMine_ObjectStorage_ObjectDelete_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchUsers Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_SearchUsers_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) Search query for which users to retrieve.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(required, string) The session token for an existing user (returned by the AccountLogin Choreo).
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchUsers Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_SearchUsers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to search for users using CloudMine's search query language syntax.
 */
@implementation TMBCloudMine_UserAccountManagement_SearchUsers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_UserAccountManagement_SearchUsers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/UserAccountManagement/SearchUsers"] autorelease];
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
		TMBCloudMine_UserAccountManagement_SearchUsers_ResultSet *results = [[[TMBCloudMine_UserAccountManagement_SearchUsers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchUsers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_UserAccountManagement_SearchUsers_Inputs*)newInputSet {
		return [[[TMBCloudMine_UserAccountManagement_SearchUsers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ObjectSet Choreo.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectSet_Inputs

	/*!
	 * Set the value of the Data input for this Choreo.
	*(required, json) A valid JSON object containing key/value pairs.
	 */
	-(void)setData:(NSString*)Data {
		[super setInput:@"Data" toValue:Data];
	}

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectSet Choreo.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectSet_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to update or create key/value pairs.

 */
@implementation TMBCloudMine_ObjectStorage_ObjectSet

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_ObjectStorage_ObjectSet Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/ObjectStorage/ObjectSet"] autorelease];
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
		TMBCloudMine_ObjectStorage_ObjectSet_ResultSet *results = [[[TMBCloudMine_ObjectStorage_ObjectSet_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ObjectSet Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_ObjectStorage_ObjectSet_Inputs*)newInputSet {
		return [[[TMBCloudMine_ObjectStorage_ObjectSet_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetUsers Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_GetUsers_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUsers Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_GetUsers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all users that have been created for your application.
 */
@implementation TMBCloudMine_UserAccountManagement_GetUsers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_UserAccountManagement_GetUsers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/UserAccountManagement/GetUsers"] autorelease];
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
		TMBCloudMine_UserAccountManagement_GetUsers_ResultSet *results = [[[TMBCloudMine_UserAccountManagement_GetUsers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetUsers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_UserAccountManagement_GetUsers_Inputs*)newInputSet {
		return [[[TMBCloudMine_UserAccountManagement_GetUsers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PasswordChange Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_PasswordChange_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the NewPassword input for this Choreo.
	*(required, string) The user's new password.
	 */
	-(void)setNewPassword:(NSString*)NewPassword {
		[super setInput:@"NewPassword" toValue:NewPassword];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The password for the user that needs to authenticate.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The username for the user that needs to authenticate.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PasswordChange Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_PasswordChange_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a user's password.
 */
@implementation TMBCloudMine_UserAccountManagement_PasswordChange

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_UserAccountManagement_PasswordChange Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/UserAccountManagement/PasswordChange"] autorelease];
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
		TMBCloudMine_UserAccountManagement_PasswordChange_ResultSet *results = [[[TMBCloudMine_UserAccountManagement_PasswordChange_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PasswordChange Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_UserAccountManagement_PasswordChange_Inputs*)newInputSet {
		return [[[TMBCloudMine_UserAccountManagement_PasswordChange_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AccountLogin Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_AccountLogin_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) The password for the user that needs to authenticate.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The username for the user that needs to authenticate.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AccountLogin Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_AccountLogin_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Authenticates a user and returns a session token in order to create and query against user-level objects.
 */
@implementation TMBCloudMine_UserAccountManagement_AccountLogin

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_UserAccountManagement_AccountLogin Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/UserAccountManagement/AccountLogin"] autorelease];
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
		TMBCloudMine_UserAccountManagement_AccountLogin_ResultSet *results = [[[TMBCloudMine_UserAccountManagement_AccountLogin_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AccountLogin Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_UserAccountManagement_AccountLogin_Inputs*)newInputSet {
		return [[[TMBCloudMine_UserAccountManagement_AccountLogin_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PasswordReset Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_PasswordReset_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) The username/email for the user that needs to reset their password.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PasswordReset Choreo.
 */
@implementation TMBCloudMine_UserAccountManagement_PasswordReset_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows a user who has forgotten their password to trigger a password reset email.
 */
@implementation TMBCloudMine_UserAccountManagement_PasswordReset

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_UserAccountManagement_PasswordReset Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/UserAccountManagement/PasswordReset"] autorelease];
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
		TMBCloudMine_UserAccountManagement_PasswordReset_ResultSet *results = [[[TMBCloudMine_UserAccountManagement_PasswordReset_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PasswordReset Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_UserAccountManagement_PasswordReset_Inputs*)newInputSet {
		return [[[TMBCloudMine_UserAccountManagement_PasswordReset_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ObjectSearch Choreo.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectSearch_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by CloudMine after registering your app.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ApplicationIdentifier input for this Choreo.
	*(required, string) The application identifier provided by CloudMine after registering your app.
	 */
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier {
		[super setInput:@"ApplicationIdentifier" toValue:ApplicationIdentifier];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, boolean) Returns a count of the results in the response if set to true. Valid values are true and false.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Limits the number of results returned. Use -1 for no limit. Use 0 for no results, and with Count=true to just get the number of available results. This defaults to 50.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) The query for your search. See Choreo documentation for information on appropriate query syntax.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the SessionToken input for this Choreo.
	*(conditional, string) The session token for an existing user (returned by the AccountLogin Choreo). This is only required if your app is performing this operation on behalf of another user.
	 */
	-(void)setSessionToken:(NSString*)SessionToken {
		[super setInput:@"SessionToken" toValue:SessionToken];
	}

	/*!
	 * Set the value of the Skip input for this Choreo.
	*(optional, integer) Indicates to start results after skiping this number objects. Used to page through results.
	 */
	-(void)setSkip:(NSString*)Skip {
		[super setInput:@"Skip" toValue:Skip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectSearch Choreo.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CloudMine.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to query key/value pair objects.
 */
@implementation TMBCloudMine_ObjectStorage_ObjectSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCloudMine_ObjectStorage_ObjectSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CloudMine/ObjectStorage/ObjectSearch"] autorelease];
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
		TMBCloudMine_ObjectStorage_ObjectSearch_ResultSet *results = [[[TMBCloudMine_ObjectStorage_ObjectSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ObjectSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCloudMine_ObjectStorage_ObjectSearch_Inputs*)newInputSet {
		return [[[TMBCloudMine_ObjectStorage_ObjectSearch_Inputs alloc] init] autorelease];
	}
@end
	