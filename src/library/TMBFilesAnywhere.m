/*!
 * @TMBFilesAnywhere.m
 *
 * Execute Choreographies from the Temboo FilesAnywhere bundle.
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

#import "TMBFilesAnywhere.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ViewFile Choreo.
 */
@implementation TMBFilesAnywhere_ViewFile_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) Enter the path to the item being viewed in the following format: \USERNAME\file.txt
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ViewFile Choreo.
 */
@implementation TMBFilesAnywhere_ViewFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Generate a URL from which a file can be viewed.
 */
@implementation TMBFilesAnywhere_ViewFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_ViewFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/ViewFile"] autorelease];
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
		TMBFilesAnywhere_ViewFile_ResultSet *results = [[[TMBFilesAnywhere_ViewFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ViewFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_ViewFile_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_ViewFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RenameItem Choreo.
 */
@implementation TMBFilesAnywhere_RenameItem_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the NewName input for this Choreo.
	*(required, string) Enter the new name for the item.
	 */
	-(void)setNewName:(NSString*)NewName {
		[super setInput:@"NewName" toValue:NewName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the file you want to rename (i.e. \JOHNSMITH\MyFolder\MyFile.txt).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(required, string) Specify the type of file being renamed by entering: folder, OR, file.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RenameItem Choreo.
 */
@implementation TMBFilesAnywhere_RenameItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Rename an item.
 */
@implementation TMBFilesAnywhere_RenameItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_RenameItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/RenameItem"] autorelease];
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
		TMBFilesAnywhere_RenameItem_ResultSet *results = [[[TMBFilesAnywhere_RenameItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RenameItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_RenameItem_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_RenameItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListItems Choreo.
 */
@implementation TMBFilesAnywhere_ListItems_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the PageNum input for this Choreo.
	*(optional, integer) The page number to return. Can be used to page through large result sets. Defaults to 1.
	 */
	-(void)setPageNum:(NSString*)PageNum {
		[super setInput:@"PageNum" toValue:PageNum];
	}

	/*!
	 * Set the value of the PageSize input for this Choreo.
	*(optional, integer) The number of results to return per page. Defaults to 10.
	 */
	-(void)setPageSize:(NSString*)PageSize {
		[super setInput:@"PageSize" toValue:PageSize];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the folder that you want to list items for (i.e. \JOHNSMITH\MyFolder).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListItems Choreo.
 */
@implementation TMBFilesAnywhere_ListItems_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Lists files within a specified directory in your FilesAnywhere account.
 */
@implementation TMBFilesAnywhere_ListItems

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_ListItems Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/ListItems"] autorelease];
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
		TMBFilesAnywhere_ListItems_ResultSet *results = [[[TMBFilesAnywhere_ListItems_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListItems Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_ListItems_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_ListItems_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AccountLogout Choreo.
 */
@implementation TMBFilesAnywhere_AccountLogout_Inputs

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The token retrieved from authentication.  Can be passed from the AccountLogin Choreo.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AccountLogout Choreo.
 */
@implementation TMBFilesAnywhere_AccountLogout_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Logout a user.
 */
@implementation TMBFilesAnywhere_AccountLogout

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_AccountLogout Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/AccountLogout"] autorelease];
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
		TMBFilesAnywhere_AccountLogout_ResultSet *results = [[[TMBFilesAnywhere_AccountLogout_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AccountLogout Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_AccountLogout_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_AccountLogout_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateFolder Choreo.
 */
@implementation TMBFilesAnywhere_CreateFolder_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the NewFolderName input for this Choreo.
	*(required, string) Enter a name for the new folder.
	 */
	-(void)setNewFolderName:(NSString*)NewFolderName {
		[super setInput:@"NewFolderName" toValue:NewFolderName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the folder you want to create (i.e. \JOHNSMITH\MyFolder).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFolder Choreo.
 */
@implementation TMBFilesAnywhere_CreateFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Create a new folder.
 */
@implementation TMBFilesAnywhere_CreateFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_CreateFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/CreateFolder"] autorelease];
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
		TMBFilesAnywhere_CreateFolder_ResultSet *results = [[[TMBFilesAnywhere_CreateFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_CreateFolder_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_CreateFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddItemComment Choreo.
 */
@implementation TMBFilesAnywhere_AddItemComment_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Comment input for this Choreo.
	*(required, string) Enter item comment.
	 */
	-(void)setComment:(NSString*)Comment {
		[super setInput:@"Comment" toValue:Comment];
	}

	/*!
	 * Set the value of the FullName input for this Choreo.
	*(required, string) Provide the full name of the user entering the comment.
	 */
	-(void)setFullName:(NSString*)FullName {
		[super setInput:@"FullName" toValue:FullName];
	}

	/*!
	 * Set the value of the ParentID input for this Choreo.
	*(required, integer) Specify the ID of the parent comment.
	 */
	-(void)setParentID:(NSString*)ParentID {
		[super setInput:@"ParentID" toValue:ParentID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) Enter the path to the item in the following format: \USERNAME\file.txt
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddItemComment Choreo.
 */
@implementation TMBFilesAnywhere_AddItemComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Add a comment to an item.
 */
@implementation TMBFilesAnywhere_AddItemComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_AddItemComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/AddItemComment"] autorelease];
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
		TMBFilesAnywhere_AddItemComment_ResultSet *results = [[[TMBFilesAnywhere_AddItemComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddItemComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_AddItemComment_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_AddItemComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ItemCommentsList Choreo.
 */
@implementation TMBFilesAnywhere_ItemCommentsList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ItemPath input for this Choreo.
	*(required, string) Enter the path to the item in the following format: \USERNAME\file.txt
	 */
	-(void)setItemPath:(NSString*)ItemPath {
		[super setInput:@"ItemPath" toValue:ItemPath];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ItemCommentsList Choreo.
 */
@implementation TMBFilesAnywhere_ItemCommentsList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Get the comments list of an item.
 */
@implementation TMBFilesAnywhere_ItemCommentsList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_ItemCommentsList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/ItemCommentsList"] autorelease];
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
		TMBFilesAnywhere_ItemCommentsList_ResultSet *results = [[[TMBFilesAnywhere_ItemCommentsList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ItemCommentsList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_ItemCommentsList_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_ItemCommentsList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UploadFile Choreo.
 */
@implementation TMBFilesAnywhere_UploadFile_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(optional, string) The base64 encoded file contents of the file you want to upload. Required unless using the VaultFile alias (an advanced option used when running Choreos in the Temboo Designer).
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The file path that you want to use for the upload (i.e. \JOHNSMITH\MyFolder\MyFile.txt)
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) The path to a vault file that you want to upload. Required unless using the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadFile Choreo.
 */
@implementation TMBFilesAnywhere_UploadFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Uploads a file to a specified directory in your FilesAnywhere account.
 */
@implementation TMBFilesAnywhere_UploadFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_UploadFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/UploadFile"] autorelease];
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
		TMBFilesAnywhere_UploadFile_ResultSet *results = [[[TMBFilesAnywhere_UploadFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UploadFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_UploadFile_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_UploadFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListUserVolumes Choreo.
 */
@implementation TMBFilesAnywhere_ListUserVolumes_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) The path to a vault file that you want to upload. Required unless using the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUserVolumes Choreo.
 */
@implementation TMBFilesAnywhere_ListUserVolumes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * List user volumes.
 */
@implementation TMBFilesAnywhere_ListUserVolumes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_ListUserVolumes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/ListUserVolumes"] autorelease];
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
		TMBFilesAnywhere_ListUserVolumes_ResultSet *results = [[[TMBFilesAnywhere_ListUserVolumes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListUserVolumes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_ListUserVolumes_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_ListUserVolumes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DownloadBase64EncodedFile Choreo.
 */
@implementation TMBFilesAnywhere_DownloadBase64EncodedFile_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the file you want to download (i.e. \JOHNSMITH\MyFolder\MyFile.txt).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DownloadBase64EncodedFile Choreo.
 */
@implementation TMBFilesAnywhere_DownloadBase64EncodedFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from FilesAnywhere. The response contains the Base64 encoded content of the file you are downloading.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Downloads a file from a specified directory in your FilesAnywhere account, and returns the content as Base64 encoded data.
 */
@implementation TMBFilesAnywhere_DownloadBase64EncodedFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_DownloadBase64EncodedFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/DownloadBase64EncodedFile"] autorelease];
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
		TMBFilesAnywhere_DownloadBase64EncodedFile_ResultSet *results = [[[TMBFilesAnywhere_DownloadBase64EncodedFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DownloadBase64EncodedFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_DownloadBase64EncodedFile_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_DownloadBase64EncodedFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FileProperties Choreo.
 */
@implementation TMBFilesAnywhere_FileProperties_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the file you want to retrieve properties for (i.e. \JOHNSMITH\MyFolder\MyFile.txt).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FileProperties Choreo.
 */
@implementation TMBFilesAnywhere_FileProperties_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Lists file property information.
 */
@implementation TMBFilesAnywhere_FileProperties

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_FileProperties Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/FileProperties"] autorelease];
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
		TMBFilesAnywhere_FileProperties_ResultSet *results = [[[TMBFilesAnywhere_FileProperties_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FileProperties Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_FileProperties_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_FileProperties_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AccountLogin Choreo.
 */
@implementation TMBFilesAnywhere_AccountLogin_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by FilesAnywhere.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AllowedIPList input for this Choreo.
	*(optional, string) List of allowed IP addresses.  Multiple IP addresses can be separated by commas.
	 */
	-(void)setAllowedIPList:(NSString*)AllowedIPList {
		[super setInput:@"AllowedIPList" toValue:AllowedIPList];
	}

	/*!
	 * Set the value of the ClientEncryptParam input for this Choreo.
	*(optional, string) Used to return an encrypted password to use for subsequent logins.
	 */
	-(void)setClientEncryptParam:(NSString*)ClientEncryptParam {
		[super setInput:@"ClientEncryptParam" toValue:ClientEncryptParam];
	}

	/*!
	 * Set the value of the OrgID input for this Choreo.
	*(optional, integer) Defaults to 0 for a FilesAnywhere Web account.  Use 50 for a FilesAnywhere WebAdvanced account.
	 */
	-(void)setOrgID:(NSString*)OrgID {
		[super setInput:@"OrgID" toValue:OrgID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your FilesAnywhere password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your FilesAnywhere username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AccountLogin Choreo.
 */
@implementation TMBFilesAnywhere_AccountLogin_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (string) The token value parsed from the FilesAnywhere response.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Retrieves an authentication token from FilesAnywhere.
 */
@implementation TMBFilesAnywhere_AccountLogin

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_AccountLogin Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/AccountLogin"] autorelease];
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
		TMBFilesAnywhere_AccountLogin_ResultSet *results = [[[TMBFilesAnywhere_AccountLogin_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AccountLogin Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_AccountLogin_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_AccountLogin_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteItem Choreo.
 */
@implementation TMBFilesAnywhere_DeleteItem_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(conditional, string) The API Key provided by FilesAnywhere. Required unless supplying a valid Token input.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(conditional, password) Your FilesAnywhere password. Required unless supplying a valid Token input.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the file you want to delete (i.e. \JOHNSMITH\MyFolder\MyFile.txt).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of item you are deleting. Can be set to 'file' or 'folder'. Defaults to 'file'.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(conditional, string) Your FilesAnywhere username. Required unless supplying a valid Token input.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteItem Choreo.
 */
@implementation TMBFilesAnywhere_DeleteItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from FilesAnywhere.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (conditional, string) If provided, the Choreo will use the token to authenticate. If the token is expired or not provided, the Choreo will relogin and retrieve a new token when APIKey, Username, and Password are supplied.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Deletes a file from a specified directory in your FilesAnywhere account.
 */
@implementation TMBFilesAnywhere_DeleteItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFilesAnywhere_DeleteItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/FilesAnywhere/DeleteItem"] autorelease];
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
		TMBFilesAnywhere_DeleteItem_ResultSet *results = [[[TMBFilesAnywhere_DeleteItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFilesAnywhere_DeleteItem_Inputs*)newInputSet {
		return [[[TMBFilesAnywhere_DeleteItem_Inputs alloc] init] autorelease];
	}
@end
	