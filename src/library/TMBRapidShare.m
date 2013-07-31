/*!
 * @TMBRapidShare.m
 *
 * Execute Choreographies from the Temboo RapidShare bundle.
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

#import "TMBRapidShare.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the RenameFile Choreo.
 */
@implementation TMBRapidShare_RenameFile_Inputs

	/*!
	 * Set the value of the FileId input for this Choreo.
	*(required, integer) The ID of the file to be renamed. Can be a commas separated list of ids.
	 */
	-(void)setFileId:(NSString*)FileId {
		[super setInput:@"FileId" toValue:FileId];
	}

	/*!
	 * Set the value of the Login input for this Choreo.
	*(required, string) Your RapidShare username
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the NewFileName input for this Choreo.
	*(required, string) The new file name.
	 */
	-(void)setNewFileName:(NSString*)NewFileName {
		[super setInput:@"NewFileName" toValue:NewFileName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your RapidShare password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RenameFile Choreo.
 */
@implementation TMBRapidShare_RenameFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from RapidShare. The ID of the newly created folder should be returned in the response upon a successful execution.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Renames a file to something else.
 */
@implementation TMBRapidShare_RenameFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRapidShare_RenameFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RapidShare/RenameFile"] autorelease];
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
		TMBRapidShare_RenameFile_ResultSet *results = [[[TMBRapidShare_RenameFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RenameFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRapidShare_RenameFile_Inputs*)newInputSet {
		return [[[TMBRapidShare_RenameFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MoveRealFolder Choreo.
 */
@implementation TMBRapidShare_MoveRealFolder_Inputs

	/*!
	 * Set the value of the FolderId input for this Choreo.
	*(required, integer) The id of the folder(s) to be moved. Can be a commas separated list of ids.
	 */
	-(void)setFolderId:(NSString*)FolderId {
		[super setInput:@"FolderId" toValue:FolderId];
	}

	/*!
	 * Set the value of the Login input for this Choreo.
	*(required, string) Your RapidShare username
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the NewParent input for this Choreo.
	*(required, integer) Enter the ID of new parent folder
	 */
	-(void)setNewParent:(NSString*)NewParent {
		[super setInput:@"NewParent" toValue:NewParent];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your RapidShare password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MoveRealFolder Choreo.
 */
@implementation TMBRapidShare_MoveRealFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from RapidShare. The id of the newly created folder should be returned in the response upon a successful execution.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Changes the parent ID of existing RealFolders, enabling the location of the folder to be moved within a RapidShare account file hierarchy.
 */
@implementation TMBRapidShare_MoveRealFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRapidShare_MoveRealFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RapidShare/MoveRealFolder"] autorelease];
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
		TMBRapidShare_MoveRealFolder_ResultSet *results = [[[TMBRapidShare_MoveRealFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MoveRealFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRapidShare_MoveRealFolder_Inputs*)newInputSet {
		return [[[TMBRapidShare_MoveRealFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListRealFolders Choreo.
 */
@implementation TMBRapidShare_ListRealFolders_Inputs

	/*!
	 * Set the value of the Login input for this Choreo.
	*(required, string) Your RapidShare username
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your RapidShare password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRealFolders Choreo.
 */
@implementation TMBRapidShare_ListRealFolders_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from RapidShare formatted in commas separated values.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns all existing RealFolders
 */
@implementation TMBRapidShare_ListRealFolders

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRapidShare_ListRealFolders Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RapidShare/ListRealFolders"] autorelease];
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
		TMBRapidShare_ListRealFolders_ResultSet *results = [[[TMBRapidShare_ListRealFolders_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListRealFolders Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRapidShare_ListRealFolders_Inputs*)newInputSet {
		return [[[TMBRapidShare_ListRealFolders_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRealFolder Choreo.
 */
@implementation TMBRapidShare_DeleteRealFolder_Inputs

	/*!
	 * Set the value of the Login input for this Choreo.
	*(required, string) Your RapidShare username
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your RapidShare password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RealFolder input for this Choreo.
	*(required, integer) The id of the folder to delete. Can be a commas separated list of ids.
	 */
	-(void)setRealFolder:(NSString*)RealFolder {
		[super setInput:@"RealFolder" toValue:RealFolder];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRealFolder Choreo.
 */
@implementation TMBRapidShare_DeleteRealFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from RapidShare
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete a folder(s) from a RapidShare account.
 */
@implementation TMBRapidShare_DeleteRealFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRapidShare_DeleteRealFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RapidShare/DeleteRealFolder"] autorelease];
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
		TMBRapidShare_DeleteRealFolder_ResultSet *results = [[[TMBRapidShare_DeleteRealFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRealFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRapidShare_DeleteRealFolder_Inputs*)newInputSet {
		return [[[TMBRapidShare_DeleteRealFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MoveFilesToRealFolder Choreo.
 */
@implementation TMBRapidShare_MoveFilesToRealFolder_Inputs

	/*!
	 * Set the value of the Files input for this Choreo.
	*(required, integer) The id of the file to move. Can be a commas separated list of ids.
	 */
	-(void)setFiles:(NSString*)Files {
		[super setInput:@"Files" toValue:Files];
	}

	/*!
	 * Set the value of the Login input for this Choreo.
	*(required, string) Your RapidShare username
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your RapidShare password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RealFolder input for this Choreo.
	*(optional, integer) The ID of the parent folder. Defaults to 0 for 'root'.
	 */
	-(void)setRealFolder:(NSString*)RealFolder {
		[super setInput:@"RealFolder" toValue:RealFolder];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MoveFilesToRealFolder Choreo.
 */
@implementation TMBRapidShare_MoveFilesToRealFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from RapidShare. The id of the newly created folder should be returned in the response upon a successful execution.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Move an existing file to a new folder in RapidShare.
 */
@implementation TMBRapidShare_MoveFilesToRealFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRapidShare_MoveFilesToRealFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RapidShare/MoveFilesToRealFolder"] autorelease];
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
		TMBRapidShare_MoveFilesToRealFolder_ResultSet *results = [[[TMBRapidShare_MoveFilesToRealFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MoveFilesToRealFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRapidShare_MoveFilesToRealFolder_Inputs*)newInputSet {
		return [[[TMBRapidShare_MoveFilesToRealFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListFiles Choreo.
 */
@implementation TMBRapidShare_ListFiles_Inputs

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) The database columns to return separated by commas. (i.e. downloads,lastdownload,filename,size, etc)
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileIDs input for this Choreo.
	*(optional, integer) The id of the file to list. Multiple IDs can be entered separated by commas.
	 */
	-(void)setFileIDs:(NSString*)FileIDs {
		[super setInput:@"FileIDs" toValue:FileIDs];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(optional, string) The name of the file to list
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(optional, integer) The id of the folder that contains the file you want to list. Defaults to 'all'.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}

	/*!
	 * Set the value of the Login input for this Choreo.
	*(required, string) Your RapidShare username
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your RapidShare password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListFiles Choreo.
 */
@implementation TMBRapidShare_ListFiles_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from RapidShare formatted in commas separated values.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists the files in all folders (or in a specified folder) and allows you to control the database columns returned in the result.
 */
@implementation TMBRapidShare_ListFiles

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRapidShare_ListFiles Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RapidShare/ListFiles"] autorelease];
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
		TMBRapidShare_ListFiles_ResultSet *results = [[[TMBRapidShare_ListFiles_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListFiles Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRapidShare_ListFiles_Inputs*)newInputSet {
		return [[[TMBRapidShare_ListFiles_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddRealFolder Choreo.
 */
@implementation TMBRapidShare_AddRealFolder_Inputs

	/*!
	 * Set the value of the Login input for this Choreo.
	*(required, string) Your RapidShare username
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the folder (Max character length is 250 bytes)
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Parent input for this Choreo.
	*(optional, integer) The ID of the parent folder. Defaults to 0 for 'root'.
	 */
	-(void)setParent:(NSString*)Parent {
		[super setInput:@"Parent" toValue:Parent];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your RapidShare password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddRealFolder Choreo.
 */
@implementation TMBRapidShare_AddRealFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from RapidShare. The id of the newly created folder should be returned in the response upon a successful execution.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new folder in RapidShare.
 */
@implementation TMBRapidShare_AddRealFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRapidShare_AddRealFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RapidShare/AddRealFolder"] autorelease];
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
		TMBRapidShare_AddRealFolder_ResultSet *results = [[[TMBRapidShare_AddRealFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddRealFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRapidShare_AddRealFolder_Inputs*)newInputSet {
		return [[[TMBRapidShare_AddRealFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountDetails Choreo.
 */
@implementation TMBRapidShare_GetAccountDetails_Inputs

	/*!
	 * Set the value of the Login input for this Choreo.
	*(required, string) Your RapidShare username
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your RapidShare password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the WithCookie input for this Choreo.
	*(optional, boolean) If value "1" is specified, a cookie is returned in the response
	 */
	-(void)setWithCookie:(NSString*)WithCookie {
		[super setInput:@"WithCookie" toValue:WithCookie];
	}

	/*!
	 * Set the value of the WithPublicId input for this Choreo.
	*(optional, boolean) If value "1" is specified, the public id is returned in the response
	 */
	-(void)setWithPublicId:(NSString*)WithPublicId {
		[super setInput:@"WithPublicId" toValue:WithPublicId];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountDetails Choreo.
 */
@implementation TMBRapidShare_GetAccountDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from RapidShare formatted in key / value pairs.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns details about a RapidShare account in key-value pairs.
 */
@implementation TMBRapidShare_GetAccountDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRapidShare_GetAccountDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RapidShare/GetAccountDetails"] autorelease];
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
		TMBRapidShare_GetAccountDetails_ResultSet *results = [[[TMBRapidShare_GetAccountDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAccountDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRapidShare_GetAccountDetails_Inputs*)newInputSet {
		return [[[TMBRapidShare_GetAccountDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SendMail Choreo.
 */
@implementation TMBRapidShare_SendMail_Inputs

	/*!
	 * Set the value of the Comment input for this Choreo.
	*(required, string) A comment that you want to send with the email
	 */
	-(void)setComment:(NSString*)Comment {
		[super setInput:@"Comment" toValue:Comment];
	}

	/*!
	 * Set the value of the Email1 input for this Choreo.
	*(required, string) The first email address to send to
	 */
	-(void)setEmail1:(NSString*)Email1 {
		[super setInput:@"Email1" toValue:Email1];
	}

	/*!
	 * Set the value of the Email2 input for this Choreo.
	*(optional, string) The second email address to send to
	 */
	-(void)setEmail2:(NSString*)Email2 {
		[super setInput:@"Email2" toValue:Email2];
	}

	/*!
	 * Set the value of the Email3 input for this Choreo.
	*(optional, string) The third email address to send to
	 */
	-(void)setEmail3:(NSString*)Email3 {
		[super setInput:@"Email3" toValue:Email3];
	}

	/*!
	 * Set the value of the FileID1 input for this Choreo.
	*(required, integer) The id for the file to inform the email recipient about
	 */
	-(void)setFileID1:(NSString*)FileID1 {
		[super setInput:@"FileID1" toValue:FileID1];
	}

	/*!
	 * Set the value of the FileName1 input for this Choreo.
	*(required, string) The name of the file to inform the email recipient about
	 */
	-(void)setFileName1:(NSString*)FileName1 {
		[super setInput:@"FileName1" toValue:FileName1];
	}

	/*!
	 * Set the value of the Login input for this Choreo.
	*(required, string) Your RapidShare username
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The senders name
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your RapidShare password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ReplyEmail input for this Choreo.
	*(required, string) The sender reply email address
	 */
	-(void)setReplyEmail:(NSString*)ReplyEmail {
		[super setInput:@"ReplyEmail" toValue:ReplyEmail];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(required, string) The subject line for the email
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendMail Choreo.
 */
@implementation TMBRapidShare_SendMail_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from RapidShare
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Send an email that contains a link to a file available on RapidShare.
 */
@implementation TMBRapidShare_SendMail

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRapidShare_SendMail Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RapidShare/SendMail"] autorelease];
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
		TMBRapidShare_SendMail_ResultSet *results = [[[TMBRapidShare_SendMail_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SendMail Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRapidShare_SendMail_Inputs*)newInputSet {
		return [[[TMBRapidShare_SendMail_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Upload Choreo.
 */
@implementation TMBRapidShare_Upload_Inputs

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(conditional, string) The base64 encoded contents of the file you want to upload. Required unless using the VaultFile alias (an advanced option used when running Choreos in the Temboo Designer).
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) The name of the file you want to upload
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the Folder input for this Choreo.
	*(optional, integer) The id of the folder you want to upload the file to
	 */
	-(void)setFolder:(NSString*)Folder {
		[super setInput:@"Folder" toValue:Folder];
	}

	/*!
	 * Set the value of the Login input for this Choreo.
	*(required, string) Your RapidShare username
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your RapidShare password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*The path to a file in your vault to upload. Required if FileContents input variable is not specified.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Upload Choreo.
 */
@implementation TMBRapidShare_Upload_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from RapidShare formatted in commas separated values.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Upload a file to RapidShare.
 */
@implementation TMBRapidShare_Upload

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRapidShare_Upload Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RapidShare/Upload"] autorelease];
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
		TMBRapidShare_Upload_ResultSet *results = [[[TMBRapidShare_Upload_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Upload Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRapidShare_Upload_Inputs*)newInputSet {
		return [[[TMBRapidShare_Upload_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFiles Choreo.
 */
@implementation TMBRapidShare_DeleteFiles_Inputs

	/*!
	 * Set the value of the File input for this Choreo.
	*(required, integer) The id of the file to delete. Can be a commas separated list of ids.
	 */
	-(void)setFile:(NSString*)File {
		[super setInput:@"File" toValue:File];
	}

	/*!
	 * Set the value of the Login input for this Choreo.
	*(required, string) Your RapidShare username
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your RapidShare password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFiles Choreo.
 */
@implementation TMBRapidShare_DeleteFiles_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from RapidShare
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Delete one or more files from RapidShare.
 */
@implementation TMBRapidShare_DeleteFiles

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBRapidShare_DeleteFiles Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/RapidShare/DeleteFiles"] autorelease];
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
		TMBRapidShare_DeleteFiles_ResultSet *results = [[[TMBRapidShare_DeleteFiles_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFiles Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBRapidShare_DeleteFiles_Inputs*)newInputSet {
		return [[[TMBRapidShare_DeleteFiles_Inputs alloc] init] autorelease];
	}
@end
	