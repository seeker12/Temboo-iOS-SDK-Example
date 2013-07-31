/*!
 * @TMBBox.m
 *
 * Execute Choreographies from the Temboo Box bundle.
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

#import "TMBBox.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ZipFile Choreo.
 */
@implementation TMBBox_Files_ZipFile_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The id of the file to zip.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the SharedLink input for this Choreo.
	*(conditional, json) A JSON object  representing the item’s shared link and associated permissions. See documentation for formatting examples.
	 */
	-(void)setSharedLink:(NSString*)SharedLink {
		[super setInput:@"SharedLink" toValue:SharedLink];
	}

	/*!
	 * Set the value of the ZipFileLocation input for this Choreo.
	*(conditional, string) The id of the folder to put the new zip file in. When not specified, the zip file will be put in the root folder.
	 */
	-(void)setZipFileLocation:(NSString*)ZipFileLocation {
		[super setInput:@"ZipFileLocation" toValue:ZipFileLocation];
	}

	/*!
	 * Set the value of the ZipFileName input for this Choreo.
	*(required, string) The name of the zip file that will be created.
	 */
	-(void)setZipFileName:(NSString*)ZipFileName {
		[super setInput:@"ZipFileName" toValue:ZipFileName];
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
 * Results object with appropriate getters for retrieving outputs from the ZipFile Choreo.
 */
@implementation TMBBox_Files_ZipFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from Box. This contains the newly created zip file metadata.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "URL" output from an execution of this Choreo.
	 * @return - NSString* (string) The url for the newly created zip file.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURL {
		return [super getOutputByName:@"URL"];
	}
	
@end

/*!
 * Creates a zipped version of the specified Box file and returns a link to the new compressed file.
 */
@implementation TMBBox_Files_ZipFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Files_ZipFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Files/ZipFile"] autorelease];
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
		TMBBox_Files_ZipFile_ResultSet *results = [[[TMBBox_Files_ZipFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ZipFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Files_ZipFile_Inputs*)newInputSet {
		return [[[TMBBox_Files_ZipFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetComment Choreo.
 */
@implementation TMBBox_Comments_GetComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The id of the comment to retrieve.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
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
 * Results object with appropriate getters for retrieving outputs from the GetComment Choreo.
 */
@implementation TMBBox_Comments_GetComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the message and metadata for a specific comment.
 */
@implementation TMBBox_Comments_GetComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Comments_GetComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Comments/GetComment"] autorelease];
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
		TMBBox_Comments_GetComment_ResultSet *results = [[[TMBBox_Comments_GetComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Comments_GetComment_Inputs*)newInputSet {
		return [[[TMBBox_Comments_GetComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CopyFile Choreo.
 */
@implementation TMBBox_Files_CopyFile_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The id of the file to copy.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) An optional new name for the file.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ParentID input for this Choreo.
	*(required, string) The ID of the destination folder to copy the file into.
	 */
	-(void)setParentID:(NSString*)ParentID {
		[super setInput:@"ParentID" toValue:ParentID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CopyFile Choreo.
 */
@implementation TMBBox_Files_CopyFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a copy of a file in another folder.
 */
@implementation TMBBox_Files_CopyFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Files_CopyFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Files/CopyFile"] autorelease];
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
		TMBBox_Files_CopyFile_ResultSet *results = [[[TMBBox_Files_CopyFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CopyFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Files_CopyFile_Inputs*)newInputSet {
		return [[[TMBBox_Files_CopyFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CopyFolder Choreo.
 */
@implementation TMBBox_Folders_CopyFolder_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(required, string) The id of the folder to copy.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) An optional new name for the folder.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ParentID input for this Choreo.
	*(required, string) The ID of the destination folder to copy the folder to.
	 */
	-(void)setParentID:(NSString*)ParentID {
		[super setInput:@"ParentID" toValue:ParentID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CopyFolder Choreo.
 */
@implementation TMBBox_Folders_CopyFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a copy of a folder in another folder.
 */
@implementation TMBBox_Folders_CopyFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Folders_CopyFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Folders/CopyFolder"] autorelease];
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
		TMBBox_Folders_CopyFolder_ResultSet *results = [[[TMBBox_Folders_CopyFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CopyFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Folders_CopyFolder_Inputs*)newInputSet {
		return [[[TMBBox_Folders_CopyFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DownloadFile Choreo.
 */
@implementation TMBBox_Files_DownloadFile_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The id of the file to download.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
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
 * Results object with appropriate getters for retrieving outputs from the DownloadFile Choreo.
 */
@implementation TMBBox_Files_DownloadFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The Base64 encoded contents of the downloaded file.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the contents of a specified file.
 */
@implementation TMBBox_Files_DownloadFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Files_DownloadFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Files/DownloadFile"] autorelease];
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
		TMBBox_Files_DownloadFile_ResultSet *results = [[[TMBBox_Files_DownloadFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DownloadFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Files_DownloadFile_Inputs*)newInputSet {
		return [[[TMBBox_Files_DownloadFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UploadFile Choreo.
 */
@implementation TMBBox_Files_UploadFile_Inputs

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(conditional, string) The Base64 encoded contents of the file you want to upload.
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(optional, string) When providing the id of an existing file, the content of the file will be updated.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(conditional, string) The name of the new file to upload. Note that when providing the FileID in order to perform an update to a file, it is not necessary to provide the FileName.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(optional, string) The ID of the target folder to upload the file to. Defaults to 0 indicating the root folder.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
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
@implementation TMBBox_Files_UploadFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Uploads a new file to a user's account. This can also be used when updating the contents of an existing file.
 */
@implementation TMBBox_Files_UploadFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Files_UploadFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Files/UploadFile"] autorelease];
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
		TMBBox_Files_UploadFile_ResultSet *results = [[[TMBBox_Files_UploadFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UploadFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Files_UploadFile_Inputs*)newInputSet {
		return [[[TMBBox_Files_UploadFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCollaboration Choreo.
 */
@implementation TMBBox_Collaborations_GetCollaboration_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CollaborationID input for this Choreo.
	*(required, string) The id of the collaboration to retrieve.
	 */
	-(void)setCollaborationID:(NSString*)CollaborationID {
		[super setInput:@"CollaborationID" toValue:CollaborationID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
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
 * Results object with appropriate getters for retrieving outputs from the GetCollaboration Choreo.
 */
@implementation TMBBox_Collaborations_GetCollaboration_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an existing collaboration.
 */
@implementation TMBBox_Collaborations_GetCollaboration

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Collaborations_GetCollaboration Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Collaborations/GetCollaboration"] autorelease];
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
		TMBBox_Collaborations_GetCollaboration_ResultSet *results = [[[TMBBox_Collaborations_GetCollaboration_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCollaboration Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Collaborations_GetCollaboration_Inputs*)newInputSet {
		return [[[TMBBox_Collaborations_GetCollaboration_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@implementation TMBBox_Search_Query_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of search results to return. Defaults to 30.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The search result at which to start the response. Defaults to 0.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) The string to search for; can be matched against item names, descriptions, text content of a file, and other fields of the different item types.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
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
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@implementation TMBBox_Search_Query_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches a user's Box account for items that match a specified keyword.
 */
@implementation TMBBox_Search_Query

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Search_Query Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Search/Query"] autorelease];
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
		TMBBox_Search_Query_ResultSet *results = [[[TMBBox_Search_Query_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Query Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Search_Query_Inputs*)newInputSet {
		return [[[TMBBox_Search_Query_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUser Choreo.
 */
@implementation TMBBox_Users_UpdateUser_Inputs

	/*!
	 * Set the value of the UserObject input for this Choreo.
	*(required, json) A JSON object representing the user's information that should be updated. See documentation for formatting examples.
	 */
	-(void)setUserObject:(NSString*)UserObject {
		[super setInput:@"UserObject" toValue:UserObject];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The id of the user whose information should be updated.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUser Choreo.
 */
@implementation TMBBox_Users_UpdateUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates information for an existing user.
 */
@implementation TMBBox_Users_UpdateUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Users_UpdateUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Users/UpdateUser"] autorelease];
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
		TMBBox_Users_UpdateUser_ResultSet *results = [[[TMBBox_Users_UpdateUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Users_UpdateUser_Inputs*)newInputSet {
		return [[[TMBBox_Users_UpdateUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateDiscussion Choreo.
 */
@implementation TMBBox_Discussions_CreateDiscussion_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) The description of the discussion.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(required, string) The id of the folder to create a discussion for.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the discussion.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
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
 * Results object with appropriate getters for retrieving outputs from the CreateDiscussion Choreo.
 */
@implementation TMBBox_Discussions_CreateDiscussion_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new discussion for a particular folder.
 */
@implementation TMBBox_Discussions_CreateDiscussion

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Discussions_CreateDiscussion Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Discussions/CreateDiscussion"] autorelease];
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
		TMBBox_Discussions_CreateDiscussion_ResultSet *results = [[[TMBBox_Discussions_CreateDiscussion_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateDiscussion Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Discussions_CreateDiscussion_Inputs*)newInputSet {
		return [[[TMBBox_Discussions_CreateDiscussion_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateFolder Choreo.
 */
@implementation TMBBox_Folders_CreateFolder_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the folder to create.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ParentID input for this Choreo.
	*(optional, string) The ID of the parent folder in which to create the new folder. Defaults to 0 indicating the "root" folder.
	 */
	-(void)setParentID:(NSString*)ParentID {
		[super setInput:@"ParentID" toValue:ParentID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFolder Choreo.
 */
@implementation TMBBox_Folders_CreateFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new folder in the parent folder you specify.
 */
@implementation TMBBox_Folders_CreateFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Folders_CreateFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Folders/CreateFolder"] autorelease];
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
		TMBBox_Folders_CreateFolder_ResultSet *results = [[[TMBBox_Folders_CreateFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Folders_CreateFolder_Inputs*)newInputSet {
		return [[[TMBBox_Folders_CreateFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCollaboration Choreo.
 */
@implementation TMBBox_Collaborations_DeleteCollaboration_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CollaborationID input for this Choreo.
	*(required, string) The id of the collaboration to remove from a folder.
	 */
	-(void)setCollaborationID:(NSString*)CollaborationID {
		[super setInput:@"CollaborationID" toValue:CollaborationID];
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
 * Results object with appropriate getters for retrieving outputs from the DeleteCollaboration Choreo.
 */
@implementation TMBBox_Collaborations_DeleteCollaboration_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a single collaboration.
 */
@implementation TMBBox_Collaborations_DeleteCollaboration

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Collaborations_DeleteCollaboration Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Collaborations/DeleteCollaboration"] autorelease];
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
		TMBBox_Collaborations_DeleteCollaboration_ResultSet *results = [[[TMBBox_Collaborations_DeleteCollaboration_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteCollaboration Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Collaborations_DeleteCollaboration_Inputs*)newInputSet {
		return [[[TMBBox_Collaborations_DeleteCollaboration_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFileInformation Choreo.
 */
@implementation TMBBox_Files_GetFileInformation_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The id of the file that you want to retrieve information for.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
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
 * Results object with appropriate getters for retrieving outputs from the GetFileInformation Choreo.
 */
@implementation TMBBox_Files_GetFileInformation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a specified file.
 */
@implementation TMBBox_Files_GetFileInformation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Files_GetFileInformation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Files/GetFileInformation"] autorelease];
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
		TMBBox_Files_GetFileInformation_ResultSet *results = [[[TMBBox_Files_GetFileInformation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFileInformation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Files_GetFileInformation_Inputs*)newInputSet {
		return [[[TMBBox_Files_GetFileInformation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddComment Choreo.
 */
@implementation TMBBox_Comments_AddComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The id of the file that you want to view comments for.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(required, string) The text of the comment to be posted.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
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
 * Results object with appropriate getters for retrieving outputs from the AddComment Choreo.
 */
@implementation TMBBox_Comments_AddComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a comment to a specific file.
 */
@implementation TMBBox_Comments_AddComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Comments_AddComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Comments/AddComment"] autorelease];
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
		TMBBox_Comments_AddComment_ResultSet *results = [[[TMBBox_Comments_AddComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Comments_AddComment_Inputs*)newInputSet {
		return [[[TMBBox_Comments_AddComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateSharedLink Choreo.
 */
@implementation TMBBox_Folders_CreateSharedLink_Inputs

	/*!
	 * Set the value of the SharedLink input for this Choreo.
	*(required, json) A JSON object  representing the item’s shared link and associated permissions. See documentation for formatting examples.
	 */
	-(void)setSharedLink:(NSString*)SharedLink {
		[super setInput:@"SharedLink" toValue:SharedLink];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(required, string) The id of the folder to get a shared link for.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateSharedLink Choreo.
 */
@implementation TMBBox_Folders_CreateSharedLink_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a shared link for a particular folder.
 */
@implementation TMBBox_Folders_CreateSharedLink

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Folders_CreateSharedLink Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Folders/CreateSharedLink"] autorelease];
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
		TMBBox_Folders_CreateSharedLink_ResultSet *results = [[[TMBBox_Folders_CreateSharedLink_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateSharedLink Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Folders_CreateSharedLink_Inputs*)newInputSet {
		return [[[TMBBox_Folders_CreateSharedLink_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetComments Choreo.
 */
@implementation TMBBox_Files_GetComments_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The id of the file that you want to view comments for.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
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
 * Results object with appropriate getters for retrieving outputs from the GetComments Choreo.
 */
@implementation TMBBox_Files_GetComments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves comments for a specified file.
 */
@implementation TMBBox_Files_GetComments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Files_GetComments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Files/GetComments"] autorelease];
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
		TMBBox_Files_GetComments_ResultSet *results = [[[TMBBox_Files_GetComments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetComments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Files_GetComments_Inputs*)newInputSet {
		return [[[TMBBox_Files_GetComments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateUser Choreo.
 */
@implementation TMBBox_Users_CreateUser_Inputs

	/*!
	 * Set the value of the UserObject input for this Choreo.
	*(required, json) A JSON object representing the new user. See documentation for formatting examples.
	 */
	-(void)setUserObject:(NSString*)UserObject {
		[super setInput:@"UserObject" toValue:UserObject];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateUser Choreo.
 */
@implementation TMBBox_Users_CreateUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new user in an enterprise.
 */
@implementation TMBBox_Users_CreateUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Users_CreateUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Users/CreateUser"] autorelease];
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
		TMBBox_Users_CreateUser_ResultSet *results = [[[TMBBox_Users_CreateUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Users_CreateUser_Inputs*)newInputSet {
		return [[[TMBBox_Users_CreateUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ZipFolder Choreo.
 */
@implementation TMBBox_Folders_ZipFolder_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(conditional, string) The id of the folder that you want to retrieve items for to zip. To indicate the root folder, specify 0.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}

	/*!
	 * Set the value of the SharedLink input for this Choreo.
	*(conditional, json) A JSON object  representing the item’s shared link and associated permissions. See documentation for formatting examples.
	 */
	-(void)setSharedLink:(NSString*)SharedLink {
		[super setInput:@"SharedLink" toValue:SharedLink];
	}

	/*!
	 * Set the value of the ZipFileLocation input for this Choreo.
	*(optional, string) The id of the folder to put the new zip file in. When not specified, the zip file will be put in the root folder.
	 */
	-(void)setZipFileLocation:(NSString*)ZipFileLocation {
		[super setInput:@"ZipFileLocation" toValue:ZipFileLocation];
	}

	/*!
	 * Set the value of the ZipFileName input for this Choreo.
	*(required, string) The name of the zip file that will be created.
	 */
	-(void)setZipFileName:(NSString*)ZipFileName {
		[super setInput:@"ZipFileName" toValue:ZipFileName];
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
 * Results object with appropriate getters for retrieving outputs from the ZipFolder Choreo.
 */
@implementation TMBBox_Folders_ZipFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box. This contains the newly created zip file metadata.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "URL" output from an execution of this Choreo.
	 * @return - NSString* (string) The url for the newly created zip file.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURL {
		return [super getOutputByName:@"URL"];
	}
	
@end

/*!
 * Creates a zip file containing all files within the specified folder and returns a link to the new compressed file.
 */
@implementation TMBBox_Folders_ZipFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Folders_ZipFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Folders/ZipFolder"] autorelease];
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
		TMBBox_Folders_ZipFolder_ResultSet *results = [[[TMBBox_Folders_ZipFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ZipFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Folders_ZipFolder_Inputs*)newInputSet {
		return [[[TMBBox_Folders_ZipFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBBox_OAuth_FinalizeOAuth_Inputs

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
	*(required, string) The Client ID provided by Box after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by Box after registering your application.
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
@implementation TMBBox_OAuth_FinalizeOAuth_ResultSet

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

	/*!
	 * Retrieve the value of the "Expires" output from an execution of this Choreo.
	 * @return - NSString* (integer) The expiration time of the access_token retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getExpires {
		return [super getOutputByName:@"Expires"];
	}

	/*!
	 * Retrieve the value of the "RefreshToken" output from an execution of this Choreo.
	 * @return - NSString* (string) A token that may be used to obtain a new access token when the short-lived access token expires.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRefreshToken {
		return [super getOutputByName:@"RefreshToken"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Box access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@implementation TMBBox_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/OAuth/FinalizeOAuth"] autorelease];
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
		TMBBox_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBBox_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBBox_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RefreshToken Choreo.
 */
@implementation TMBBox_OAuth_RefreshToken_Inputs

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by Box after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by Box after registering your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the RefreshToken input for this Choreo.
	*(required, string) A valid refresh token used to generate a new access token.
	 */
	-(void)setRefreshToken:(NSString*)RefreshToken {
		[super setInput:@"RefreshToken" toValue:RefreshToken];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefreshToken Choreo.
 */
@implementation TMBBox_OAuth_RefreshToken_ResultSet

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

	/*!
	 * Retrieve the value of the "Expires" output from an execution of this Choreo.
	 * @return - NSString* (integer) The expiration time of the access_token retrieved.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getExpires {
		return [super getOutputByName:@"Expires"];
	}

	/*!
	 * Retrieve the value of the "NewRefreshToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The new refresh token which can be used the next time your app needs to get a new access token.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNewRefreshToken {
		return [super getOutputByName:@"NewRefreshToken"];
	}
	
@end

/*!
 * Generates a new access token with a given valid refresh token.
 */
@implementation TMBBox_OAuth_RefreshToken

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_OAuth_RefreshToken Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/OAuth/RefreshToken"] autorelease];
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
		TMBBox_OAuth_RefreshToken_ResultSet *results = [[[TMBBox_OAuth_RefreshToken_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RefreshToken Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_OAuth_RefreshToken_Inputs*)newInputSet {
		return [[[TMBBox_OAuth_RefreshToken_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFile Choreo.
 */
@implementation TMBBox_Files_DeleteFile_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The id of the file that you want to delete.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
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
 * Results object with appropriate getters for retrieving outputs from the DeleteFile Choreo.
 */
@implementation TMBBox_Files_DeleteFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Moves a file to the trash.
 */
@implementation TMBBox_Files_DeleteFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Files_DeleteFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Files/DeleteFile"] autorelease];
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
		TMBBox_Files_DeleteFile_ResultSet *results = [[[TMBBox_Files_DeleteFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Files_DeleteFile_Inputs*)newInputSet {
		return [[[TMBBox_Files_DeleteFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateFolder Choreo.
 */
@implementation TMBBox_Folders_UpdateFolder_Inputs

	/*!
	 * Set the value of the FolderObject input for this Choreo.
	*(required, json) A JSON object representing the new folder information. See documentation for formatting examples.
	 */
	-(void)setFolderObject:(NSString*)FolderObject {
		[super setInput:@"FolderObject" toValue:FolderObject];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(required, string) The id of the folder to update.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateFolder Choreo.
 */
@implementation TMBBox_Folders_UpdateFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates the information about a folder.
 */
@implementation TMBBox_Folders_UpdateFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Folders_UpdateFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Folders/UpdateFolder"] autorelease];
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
		TMBBox_Folders_UpdateFolder_ResultSet *results = [[[TMBBox_Folders_UpdateFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Folders_UpdateFolder_Inputs*)newInputSet {
		return [[[TMBBox_Folders_UpdateFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCurrentUser Choreo.
 */
@implementation TMBBox_Users_GetCurrentUser_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
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
 * Results object with appropriate getters for retrieving outputs from the GetCurrentUser Choreo.
 */
@implementation TMBBox_Users_GetCurrentUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about the authenticated user.
 */
@implementation TMBBox_Users_GetCurrentUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Users_GetCurrentUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Users/GetCurrentUser"] autorelease];
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
		TMBBox_Users_GetCurrentUser_ResultSet *results = [[[TMBBox_Users_GetCurrentUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCurrentUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Users_GetCurrentUser_Inputs*)newInputSet {
		return [[[TMBBox_Users_GetCurrentUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUser Choreo.
 */
@implementation TMBBox_Users_DeleteUser_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Force input for this Choreo.
	*(optional, boolean) Whether or not the user should be deleted even when they still own files.
	 */
	-(void)setForce:(NSString*)Force {
		[super setInput:@"Force" toValue:Force];
	}

	/*!
	 * Set the value of the Notify input for this Choreo.
	*(optional, boolean) Indicates that the user should receive an email notification of the transfer.
	 */
	-(void)setNotify:(NSString*)Notify {
		[super setInput:@"Notify" toValue:Notify];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, string) The id of the user whose information should be updated.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUser Choreo.
 */
@implementation TMBBox_Users_DeleteUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified user.
 */
@implementation TMBBox_Users_DeleteUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Users_DeleteUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Users/DeleteUser"] autorelease];
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
		TMBBox_Users_DeleteUser_ResultSet *results = [[[TMBBox_Users_DeleteUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Users_DeleteUser_Inputs*)newInputSet {
		return [[[TMBBox_Users_DeleteUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFolder Choreo.
 */
@implementation TMBBox_Folders_DeleteFolder_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(required, string) The id of the folder that you want to delete.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}

	/*!
	 * Set the value of the Recursive input for this Choreo.
	*(optional, boolean) Whether or not to delete this folder if it has items within in. Defaults to true.
	 */
	-(void)setRecursive:(NSString*)Recursive {
		[super setInput:@"Recursive" toValue:Recursive];
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
 * Results object with appropriate getters for retrieving outputs from the DeleteFolder Choreo.
 */
@implementation TMBBox_Folders_DeleteFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified folder.
 */
@implementation TMBBox_Folders_DeleteFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Folders_DeleteFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Folders/DeleteFolder"] autorelease];
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
		TMBBox_Folders_DeleteFolder_ResultSet *results = [[[TMBBox_Folders_DeleteFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Folders_DeleteFolder_Inputs*)newInputSet {
		return [[[TMBBox_Folders_DeleteFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddCollaboration Choreo.
 */
@implementation TMBBox_Collaborations_AddCollaboration_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(required, string) The id of the folder that you want to create a collaboration for.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}

	/*!
	 * Set the value of the Login input for this Choreo.
	*(conditional, string) The email address of someone who this collaboration applies to. Required unless providing the UserID. Note, this does not need to be a Box user.
	 */
	-(void)setLogin:(NSString*)Login {
		[super setInput:@"Login" toValue:Login];
	}

	/*!
	 * Set the value of the Role input for this Choreo.
	*(optional, string) The access level of the collaboration. Valid values are "viewer" or "editor". Defaults to "viewer".
	 */
	-(void)setRole:(NSString*)Role {
		[super setInput:@"Role" toValue:Role];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(conditional, string) The id of a Box user who this collaboration applies to. Required unless providing the EmailAddress.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
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
 * Results object with appropriate getters for retrieving outputs from the AddCollaboration Choreo.
 */
@implementation TMBBox_Collaborations_AddCollaboration_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a collaboration for a single user to a specific folder.
 */
@implementation TMBBox_Collaborations_AddCollaboration

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Collaborations_AddCollaboration Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Collaborations/AddCollaboration"] autorelease];
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
		TMBBox_Collaborations_AddCollaboration_ResultSet *results = [[[TMBBox_Collaborations_AddCollaboration_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddCollaboration Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Collaborations_AddCollaboration_Inputs*)newInputSet {
		return [[[TMBBox_Collaborations_AddCollaboration_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateComment Choreo.
 */
@implementation TMBBox_Comments_UpdateComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The id of the comment to update.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(required, string) The text of the comment to be posted.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
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
 * Results object with appropriate getters for retrieving outputs from the UpdateComment Choreo.
 */
@implementation TMBBox_Comments_UpdateComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing comment.
 */
@implementation TMBBox_Comments_UpdateComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Comments_UpdateComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Comments/UpdateComment"] autorelease];
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
		TMBBox_Comments_UpdateComment_ResultSet *results = [[[TMBBox_Comments_UpdateComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Comments_UpdateComment_Inputs*)newInputSet {
		return [[[TMBBox_Comments_UpdateComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBBox_OAuth_InitializeOAuth_Inputs

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
	*(required, string) The Client ID provided by Box after registering your application.
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
@implementation TMBBox_OAuth_InitializeOAuth_ResultSet

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
	 * Retrieve the value of the "AuthorizeURL" output from an execution of this Choreo.
	 * @return - NSString* (string) (Deprecated) Please refer to the AuthorizationURL output variable in your code. This output variable will be removed soon.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAuthorizeURL {
		return [super getOutputByName:@"AuthorizeURL"];
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
@implementation TMBBox_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/OAuth/InitializeOAuth"] autorelease];
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
		TMBBox_OAuth_InitializeOAuth_ResultSet *results = [[[TMBBox_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBBox_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetComments Choreo.
 */
@implementation TMBBox_Discussions_GetComments_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the DiscussionID input for this Choreo.
	*(required, string) The id of the discussion to retrieve.
	 */
	-(void)setDiscussionID:(NSString*)DiscussionID {
		[super setInput:@"DiscussionID" toValue:DiscussionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
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
 * Results object with appropriate getters for retrieving outputs from the GetComments Choreo.
 */
@implementation TMBBox_Discussions_GetComments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves comments for a specific discussion.
 */
@implementation TMBBox_Discussions_GetComments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Discussions_GetComments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Discussions/GetComments"] autorelease];
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
		TMBBox_Discussions_GetComments_ResultSet *results = [[[TMBBox_Discussions_GetComments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetComments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Discussions_GetComments_Inputs*)newInputSet {
		return [[[TMBBox_Discussions_GetComments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateCollaboration Choreo.
 */
@implementation TMBBox_Collaborations_UpdateCollaboration_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CollaborationID input for this Choreo.
	*(required, string) The id of the collaboration to edit.
	 */
	-(void)setCollaborationID:(NSString*)CollaborationID {
		[super setInput:@"CollaborationID" toValue:CollaborationID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Role input for this Choreo.
	*(conditional, string) The access level of the collaboration. Valid values are "viewer" or "editor". Defaults to "viewer". This value can only be updated by the owner of the folder.
	 */
	-(void)setRole:(NSString*)Role {
		[super setInput:@"Role" toValue:Role];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(conditional, string) Whether this collaboration has been accepted. Valid values are: "accepted" or "rejected". This value can only be updated by the user who has been invited to the collaboration.
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
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
 * Results object with appropriate getters for retrieving outputs from the UpdateCollaboration Choreo.
 */
@implementation TMBBox_Collaborations_UpdateCollaboration_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Edits an existing collaboration.
 */
@implementation TMBBox_Collaborations_UpdateCollaboration

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Collaborations_UpdateCollaboration Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Collaborations/UpdateCollaboration"] autorelease];
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
		TMBBox_Collaborations_UpdateCollaboration_ResultSet *results = [[[TMBBox_Collaborations_UpdateCollaboration_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateCollaboration Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Collaborations_UpdateCollaboration_Inputs*)newInputSet {
		return [[[TMBBox_Collaborations_UpdateCollaboration_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveFolderItems Choreo.
 */
@implementation TMBBox_Folders_RetrieveFolderItems_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(conditional, string) The id of the folder that you want to retrieve items for. Defaults to 0 indicating the "root" folder.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of items to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The item at which to begin the response.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
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
 * Results object with appropriate getters for retrieving outputs from the RetrieveFolderItems Choreo.
 */
@implementation TMBBox_Folders_RetrieveFolderItems_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves only the files and/or folders contained within the specified folder.
 */
@implementation TMBBox_Folders_RetrieveFolderItems

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Folders_RetrieveFolderItems Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Folders/RetrieveFolderItems"] autorelease];
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
		TMBBox_Folders_RetrieveFolderItems_ResultSet *results = [[[TMBBox_Folders_RetrieveFolderItems_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RetrieveFolderItems Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Folders_RetrieveFolderItems_Inputs*)newInputSet {
		return [[[TMBBox_Folders_RetrieveFolderItems_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddComment Choreo.
 */
@implementation TMBBox_Discussions_AddComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the DiscussionID input for this Choreo.
	*(required, string) The id of the file that you want to view comments for.
	 */
	-(void)setDiscussionID:(NSString*)DiscussionID {
		[super setInput:@"DiscussionID" toValue:DiscussionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(required, string) The text of the comment to added to the discussion.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
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
 * Results object with appropriate getters for retrieving outputs from the AddComment Choreo.
 */
@implementation TMBBox_Discussions_AddComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a comment to a specific discussion.
 */
@implementation TMBBox_Discussions_AddComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Discussions_AddComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Discussions/AddComment"] autorelease];
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
		TMBBox_Discussions_AddComment_ResultSet *results = [[[TMBBox_Discussions_AddComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Discussions_AddComment_Inputs*)newInputSet {
		return [[[TMBBox_Discussions_AddComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateFile Choreo.
 */
@implementation TMBBox_Files_UpdateFile_Inputs

	/*!
	 * Set the value of the FileObject input for this Choreo.
	*(required, json) A JSON object representing the new file information. See documentation for formatting examples.
	 */
	-(void)setFileObject:(NSString*)FileObject {
		[super setInput:@"FileObject" toValue:FileObject];
	}

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FileID input for this Choreo.
	*(required, string) The id of the file to update.
	 */
	-(void)setFileID:(NSString*)FileID {
		[super setInput:@"FileID" toValue:FileID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateFile Choreo.
 */
@implementation TMBBox_Files_UpdateFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates individual or multiple fields in the file object.
 */
@implementation TMBBox_Files_UpdateFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Files_UpdateFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Files/UpdateFile"] autorelease];
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
		TMBBox_Files_UpdateFile_ResultSet *results = [[[TMBBox_Files_UpdateFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Files_UpdateFile_Inputs*)newInputSet {
		return [[[TMBBox_Files_UpdateFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetDiscussion Choreo.
 */
@implementation TMBBox_Discussions_GetDiscussion_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the DiscussionID input for this Choreo.
	*(required, string) The id of the discussion to retrieve.
	 */
	-(void)setDiscussionID:(NSString*)DiscussionID {
		[super setInput:@"DiscussionID" toValue:DiscussionID];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
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
 * Results object with appropriate getters for retrieving outputs from the GetDiscussion Choreo.
 */
@implementation TMBBox_Discussions_GetDiscussion_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the metadata for a specific discussion.
 */
@implementation TMBBox_Discussions_GetDiscussion

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Discussions_GetDiscussion Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Discussions/GetDiscussion"] autorelease];
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
		TMBBox_Discussions_GetDiscussion_ResultSet *results = [[[TMBBox_Discussions_GetDiscussion_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDiscussion Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Discussions_GetDiscussion_Inputs*)newInputSet {
		return [[[TMBBox_Discussions_GetDiscussion_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteComment Choreo.
 */
@implementation TMBBox_Comments_DeleteComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the CommentID input for this Choreo.
	*(required, string) The id of the comment to update.
	 */
	-(void)setCommentID:(NSString*)CommentID {
		[super setInput:@"CommentID" toValue:CommentID];
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
 * Results object with appropriate getters for retrieving outputs from the DeleteComment Choreo.
 */
@implementation TMBBox_Comments_DeleteComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specific comment.
 */
@implementation TMBBox_Comments_DeleteComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Comments_DeleteComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Comments/DeleteComment"] autorelease];
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
		TMBBox_Comments_DeleteComment_ResultSet *results = [[[TMBBox_Comments_DeleteComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Comments_DeleteComment_Inputs*)newInputSet {
		return [[[TMBBox_Comments_DeleteComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPendingCollaborations Choreo.
 */
@implementation TMBBox_Collaborations_GetPendingCollaborations_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
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
 * Results object with appropriate getters for retrieving outputs from the GetPendingCollaborations Choreo.
 */
@implementation TMBBox_Collaborations_GetPendingCollaborations_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all pending collaboration invites for a user.
 */
@implementation TMBBox_Collaborations_GetPendingCollaborations

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Collaborations_GetPendingCollaborations Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Collaborations/GetPendingCollaborations"] autorelease];
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
		TMBBox_Collaborations_GetPendingCollaborations_ResultSet *results = [[[TMBBox_Collaborations_GetPendingCollaborations_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPendingCollaborations Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Collaborations_GetPendingCollaborations_Inputs*)newInputSet {
		return [[[TMBBox_Collaborations_GetPendingCollaborations_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFolderInformation Choreo.
 */
@implementation TMBBox_Folders_GetFolderInformation_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The access token retrieved during the OAuth2 process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-separated list of fields to include in the response.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the FolderID input for this Choreo.
	*(conditional, string) The id of the folder that you want to retrieve information for. Defaults to 0 indicating the "root" folder.
	 */
	-(void)setFolderID:(NSString*)FolderID {
		[super setInput:@"FolderID" toValue:FolderID];
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
 * Results object with appropriate getters for retrieving outputs from the GetFolderInformation Choreo.
 */
@implementation TMBBox_Folders_GetFolderInformation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Box.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a specified folder.
 */
@implementation TMBBox_Folders_GetFolderInformation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBBox_Folders_GetFolderInformation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Box/Folders/GetFolderInformation"] autorelease];
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
		TMBBox_Folders_GetFolderInformation_ResultSet *results = [[[TMBBox_Folders_GetFolderInformation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFolderInformation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBBox_Folders_GetFolderInformation_Inputs*)newInputSet {
		return [[[TMBBox_Folders_GetFolderInformation_Inputs alloc] init] autorelease];
	}
@end
	