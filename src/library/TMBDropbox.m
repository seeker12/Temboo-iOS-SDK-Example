/*!
 * @TMBDropbox.m
 *
 * Execute Choreographies from the Temboo Dropbox bundle.
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

#import "TMBDropbox.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the Delta Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_Delta_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the Cursor input for this Choreo.
	*(optional, string) A string that is used to keep track of your current state. On the next call pass in this value to return delta entries that have been recorded since the cursor was returned.
	 */
	-(void)setCursor:(NSString*)Cursor {
		[super setInput:@"Cursor" toValue:Cursor];
	}

	/*!
	 * Set the value of the Locale input for this Choreo.
	*(optional, string) The metadata returned will have its size field translated based on the given locale.
	 */
	-(void)setLocale:(NSString*)Locale {
		[super setInput:@"Locale" toValue:Locale];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delta Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_Delta_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you keep up with changes to files and folders in a user's Dropbox.
 */
@implementation TMBDropbox_FilesAndMetadata_Delta

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FilesAndMetadata_Delta Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FilesAndMetadata/Delta"] autorelease];
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
		TMBDropbox_FilesAndMetadata_Delta_ResultSet *results = [[[TMBDropbox_FilesAndMetadata_Delta_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Delta Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FilesAndMetadata_Delta_Inputs*)newInputSet {
		return [[[TMBDropbox_FilesAndMetadata_Delta_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFileRevisions Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_GetFileRevisions_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the file that you want to return revisions for (i.e. RootFolder/SubFolder/MyFile.txt).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RevisionLimit input for this Choreo.
	*(optional, integer) Default is 10. Max is 1,000. When listing a file, the service will not report listings containing more than the amount specified here.
	 */
	-(void)setRevisionLimit:(NSString*)RevisionLimit {
		[super setInput:@"RevisionLimit" toValue:RevisionLimit];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFileRevisions Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_GetFileRevisions_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves metadata for the previous revisions of a file
 */
@implementation TMBDropbox_FilesAndMetadata_GetFileRevisions

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FilesAndMetadata_GetFileRevisions Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FilesAndMetadata/GetFileRevisions"] autorelease];
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
		TMBDropbox_FilesAndMetadata_GetFileRevisions_ResultSet *results = [[[TMBDropbox_FilesAndMetadata_GetFileRevisions_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFileRevisions Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FilesAndMetadata_GetFileRevisions_Inputs*)newInputSet {
		return [[[TMBDropbox_FilesAndMetadata_GetFileRevisions_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFileOrFolder Choreo.
 */
@implementation TMBDropbox_FileOperations_DeleteFileOrFolder_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the file or folder you want to delete (i.e. RootFolder/SubFolder/FileToDelete.txt).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFileOrFolder Choreo.
 */
@implementation TMBDropbox_FileOperations_DeleteFileOrFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Deletes a Dropbox file or folder that you specify.
 */
@implementation TMBDropbox_FileOperations_DeleteFileOrFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FileOperations_DeleteFileOrFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FileOperations/DeleteFileOrFolder"] autorelease];
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
		TMBDropbox_FileOperations_DeleteFileOrFolder_ResultSet *results = [[[TMBDropbox_FileOperations_DeleteFileOrFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteFileOrFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FileOperations_DeleteFileOrFolder_Inputs*)newInputSet {
		return [[[TMBDropbox_FileOperations_DeleteFileOrFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListFolderContents Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_ListFolderContents_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the FileLimit input for this Choreo.
	*(optional, integer) Dropbox will not return a list that exceeds this specified limit. Defaults to 10,000.
	 */
	-(void)setFileLimit:(NSString*)FileLimit {
		[super setInput:@"FileLimit" toValue:FileLimit];
	}

	/*!
	 * Set the value of the Folder input for this Choreo.
	*(optional, string) The name of the folder that contains the listing you want to retrieve. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder).
	 */
	-(void)setFolder:(NSString*)Folder {
		[super setInput:@"Folder" toValue:Folder];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListFolderContents Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_ListFolderContents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Lists contents of a given Dropbox folder.
 */
@implementation TMBDropbox_FilesAndMetadata_ListFolderContents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FilesAndMetadata_ListFolderContents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FilesAndMetadata/ListFolderContents"] autorelease];
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
		TMBDropbox_FilesAndMetadata_ListFolderContents_ResultSet *results = [[[TMBDropbox_FilesAndMetadata_ListFolderContents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListFolderContents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FilesAndMetadata_ListFolderContents_Inputs*)newInputSet {
		return [[[TMBDropbox_FilesAndMetadata_ListFolderContents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CopyFileOrFolder Choreo.
 */
@implementation TMBDropbox_FileOperations_CopyFileOrFolder_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the FromCopyRef input for this Choreo.
	*(conditional, string) Specifies a CopyRef previously generated by running the CreateCopyRef choreo. If you specify this value, you must leave FromPath empty.
	 */
	-(void)setFromCopyRef:(NSString*)FromCopyRef {
		[super setInput:@"FromCopyRef" toValue:FromCopyRef];
	}

	/*!
	 * Set the value of the FromPath input for this Choreo.
	*(conditional, string) Specifies the file or folder to be copied. If you specify this value, you must leave the FromCopyRef blank.
	 */
	-(void)setFromPath:(NSString*)FromPath {
		[super setInput:@"FromPath" toValue:FromPath];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}

	/*!
	 * Set the value of the ToPath input for this Choreo.
	*(required, string) Specifies the destination path, including the new name for the file or folder.
	 */
	-(void)setToPath:(NSString*)ToPath {
		[super setInput:@"ToPath" toValue:ToPath];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CopyFileOrFolder Choreo.
 */
@implementation TMBDropbox_FileOperations_CopyFileOrFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Copies a file or folder to a new location in the Dropbox tree.
 */
@implementation TMBDropbox_FileOperations_CopyFileOrFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FileOperations_CopyFileOrFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FileOperations/CopyFileOrFolder"] autorelease];
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
		TMBDropbox_FileOperations_CopyFileOrFolder_ResultSet *results = [[[TMBDropbox_FileOperations_CopyFileOrFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CopyFileOrFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FileOperations_CopyFileOrFolder_Inputs*)newInputSet {
		return [[[TMBDropbox_FileOperations_CopyFileOrFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RestoreFileToRevision Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_RestoreFileToRevision_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the file that you want to return revisions for (i.e. RootFolder/SubFolder/MyFile.txt).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Revision input for this Choreo.
	*(required, string) The revision of the file to restore. The revision ID can be retrieved by running the GetFileRevision Choreo.
	 */
	-(void)setRevision:(NSString*)Revision {
		[super setInput:@"Revision" toValue:Revision];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RestoreFileToRevision Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_RestoreFileToRevision_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Restores a specified file to a previous revision.
 */
@implementation TMBDropbox_FilesAndMetadata_RestoreFileToRevision

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FilesAndMetadata_RestoreFileToRevision Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FilesAndMetadata/RestoreFileToRevision"] autorelease];
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
		TMBDropbox_FilesAndMetadata_RestoreFileToRevision_ResultSet *results = [[[TMBDropbox_FilesAndMetadata_RestoreFileToRevision_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RestoreFileToRevision Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FilesAndMetadata_RestoreFileToRevision_Inputs*)newInputSet {
		return [[[TMBDropbox_FilesAndMetadata_RestoreFileToRevision_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UploadFile Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_UploadFile_Inputs

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(conditional, string) The Base64-encoded contents of the file you want to upload. Required UNLESS uploading a file from a URL using the FileContentsFromURL input variable.
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the FileContentsFromURL input for this Choreo.
	*(conditional, string) URL for file you want to upload. Alternative to uploading Base64Encoded data. If specifiying URL, leave FileContents blank. Valid URLs: http(s) requests only.
	 */
	-(void)setFileContentsFromURL:(NSString*)FileContentsFromURL {
		[super setInput:@"FileContentsFromURL" toValue:FileContentsFromURL];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) The name of the file you are uploading to Dropbox.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the Folder input for this Choreo.
	*(optional, string) The name of the folder that that you want to upload a file to. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder).
	 */
	-(void)setFolder:(NSString*)Folder {
		[super setInput:@"Folder" toValue:Folder];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*(optional, vault file) The path to a vault file you want to upload. Required unless using the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadFile Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_UploadFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Uploads a file to your Dropbox account.
 */
@implementation TMBDropbox_FilesAndMetadata_UploadFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FilesAndMetadata_UploadFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FilesAndMetadata/UploadFile"] autorelease];
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
		TMBDropbox_FilesAndMetadata_UploadFile_ResultSet *results = [[[TMBDropbox_FilesAndMetadata_UploadFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UploadFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FilesAndMetadata_UploadFile_Inputs*)newInputSet {
		return [[[TMBDropbox_FilesAndMetadata_UploadFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetThumbnail Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_GetThumbnail_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the ImageFormat input for this Choreo.
	*(optional, string) The thumbnail format to return for the specified image. Accepted values are: jpeg (default) or png.
	 */
	-(void)setImageFormat:(NSString*)ImageFormat {
		[super setInput:@"ImageFormat" toValue:ImageFormat];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the file that you want to generate a thumbnail for (i.e. RootFolder/SubFolder/MyFile.txt).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}

	/*!
	 * Set the value of the Size input for this Choreo.
	*(optional, string) The size of the thumbnail to generate. Accepted values are: small, medium, s, m, l, xl. See Choreo documentation for exact dimensions. Defaults to "small".
	 */
	-(void)setSize:(NSString*)Size {
		[super setInput:@"Size" toValue:Size];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetThumbnail Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_GetThumbnail_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The base64 encoded image content of the thumbnail.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a thumbnail for a specified image.
 */
@implementation TMBDropbox_FilesAndMetadata_GetThumbnail

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FilesAndMetadata_GetThumbnail Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FilesAndMetadata/GetThumbnail"] autorelease];
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
		TMBDropbox_FilesAndMetadata_GetThumbnail_ResultSet *results = [[[TMBDropbox_FilesAndMetadata_GetThumbnail_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetThumbnail Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FilesAndMetadata_GetThumbnail_Inputs*)newInputSet {
		return [[[TMBDropbox_FilesAndMetadata_GetThumbnail_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetShareableLink Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_GetShareableLink_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the file or folder you want to return a shareable link for (i.e. RootFolder/SubFolder/MyFile.txt).
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShareableLink Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_GetShareableLink_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves a shareable link to files or folders.
 */
@implementation TMBDropbox_FilesAndMetadata_GetShareableLink

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FilesAndMetadata_GetShareableLink Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FilesAndMetadata/GetShareableLink"] autorelease];
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
		TMBDropbox_FilesAndMetadata_GetShareableLink_ResultSet *results = [[[TMBDropbox_FilesAndMetadata_GetShareableLink_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetShareableLink Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FilesAndMetadata_GetShareableLink_Inputs*)newInputSet {
		return [[[TMBDropbox_FilesAndMetadata_GetShareableLink_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateFolder Choreo.
 */
@implementation TMBDropbox_FileOperations_CreateFolder_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the NewFolderName input for this Choreo.
	*(required, string) The name of the new folder to create. A path with a root folder is also valid (i.e. RootFolder/NewFolderName).
	 */
	-(void)setNewFolderName:(NSString*)NewFolderName {
		[super setInput:@"NewFolderName" toValue:NewFolderName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFolder Choreo.
 */
@implementation TMBDropbox_FileOperations_CreateFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Creates a Dropbox folder.
 */
@implementation TMBDropbox_FileOperations_CreateFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FileOperations_CreateFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FileOperations/CreateFolder"] autorelease];
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
		TMBDropbox_FileOperations_CreateFolder_ResultSet *results = [[[TMBDropbox_FileOperations_CreateFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FileOperations_CreateFolder_Inputs*)newInputSet {
		return [[[TMBDropbox_FileOperations_CreateFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBDropbox_OAuth_InitializeOAuth_Inputs

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
	 * Set the value of the DropboxAppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setDropboxAppKey:(NSString*)DropboxAppKey {
		[super setInput:@"DropboxAppKey" toValue:DropboxAppKey];
	}

	/*!
	 * Set the value of the DropboxAppSecret input for this Choreo.
	*(required, string) The AppSecret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setDropboxAppSecret:(NSString*)DropboxAppSecret {
		[super setInput:@"DropboxAppSecret" toValue:DropboxAppSecret];
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
@implementation TMBDropbox_OAuth_InitializeOAuth_ResultSet

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
	 * @return - NSString* (string) The temporary OAuth Token Secret that can be exchanged for a final token secret using the FinalizeOAuth Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getOAuthTokenSecret {
		return [super getOutputByName:@"OAuthTokenSecret"];
	}
	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@implementation TMBDropbox_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/OAuth/InitializeOAuth"] autorelease];
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
		TMBDropbox_OAuth_InitializeOAuth_ResultSet *results = [[[TMBDropbox_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBDropbox_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the MoveFileOrFolder Choreo.
 */
@implementation TMBDropbox_FileOperations_MoveFileOrFolder_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the FromPath input for this Choreo.
	*(required, string) Specifies the file or folder to be copied.
	 */
	-(void)setFromPath:(NSString*)FromPath {
		[super setInput:@"FromPath" toValue:FromPath];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}

	/*!
	 * Set the value of the ToPath input for this Choreo.
	*(required, string) Specifies the destination path, including the new name for the file or folder.
	 */
	-(void)setToPath:(NSString*)ToPath {
		[super setInput:@"ToPath" toValue:ToPath];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MoveFileOrFolder Choreo.
 */
@implementation TMBDropbox_FileOperations_MoveFileOrFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Moves a file or folder to a new location in the Dropbox tree.
 */
@implementation TMBDropbox_FileOperations_MoveFileOrFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FileOperations_MoveFileOrFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FileOperations/MoveFileOrFolder"] autorelease];
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
		TMBDropbox_FileOperations_MoveFileOrFolder_ResultSet *results = [[[TMBDropbox_FileOperations_MoveFileOrFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the MoveFileOrFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FileOperations_MoveFileOrFolder_Inputs*)newInputSet {
		return [[[TMBDropbox_FileOperations_MoveFileOrFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetFile Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_GetFile_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to file you want to retrieve (i.e. RootFolder/SubFolder/MyFile.txt). Only the file name is necessary when the file is at the root level.
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFile Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_GetFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from Dropbox. The response will contain the contents of the file you are retrieving as Base64 encoded data.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Gets a file from your Dropbox account, returns the file content as Base64 encoded data.
 */
@implementation TMBDropbox_FilesAndMetadata_GetFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FilesAndMetadata_GetFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FilesAndMetadata/GetFile"] autorelease];
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
		TMBDropbox_FilesAndMetadata_GetFile_ResultSet *results = [[[TMBDropbox_FilesAndMetadata_GetFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FilesAndMetadata_GetFile_Inputs*)newInputSet {
		return [[[TMBDropbox_FilesAndMetadata_GetFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchFilesAndFolders Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_SearchFilesAndFolders_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the FileLimit input for this Choreo.
	*(optional, integer) Dropbox will not return a list that exceeds this specified limit. Defaults to 10,000.
	 */
	-(void)setFileLimit:(NSString*)FileLimit {
		[super setInput:@"FileLimit" toValue:FileLimit];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(optional, string) The path to the folder you want to search from (i.e. RootFolder/SubFolder). Leave blank to search ALL.
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) The search string. Must be at least three characters long.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchFilesAndFolders Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_SearchFilesAndFolders_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to search Dropbox for files or folders by a keyword search.
 */
@implementation TMBDropbox_FilesAndMetadata_SearchFilesAndFolders

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FilesAndMetadata_SearchFilesAndFolders Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FilesAndMetadata/SearchFilesAndFolders"] autorelease];
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
		TMBDropbox_FilesAndMetadata_SearchFilesAndFolders_ResultSet *results = [[[TMBDropbox_FilesAndMetadata_SearchFilesAndFolders_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchFilesAndFolders Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FilesAndMetadata_SearchFilesAndFolders_Inputs*)newInputSet {
		return [[[TMBDropbox_FilesAndMetadata_SearchFilesAndFolders_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateCopyRef Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_CreateCopyRef_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The path to the file you want to make available as a copy reference, i.e.  "testfile.txt" or "Folder/testfile.txt".
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCopyRef Choreo.
 */
@implementation TMBDropbox_FilesAndMetadata_CreateCopyRef_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Allows you to create a copy reference (copy_ref) that you can later reference to copy files or folders to another user's Dropbox using the CopyFileOrFolder choreo. 
 */
@implementation TMBDropbox_FilesAndMetadata_CreateCopyRef

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FilesAndMetadata_CreateCopyRef Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FilesAndMetadata/CreateCopyRef"] autorelease];
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
		TMBDropbox_FilesAndMetadata_CreateCopyRef_ResultSet *results = [[[TMBDropbox_FilesAndMetadata_CreateCopyRef_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateCopyRef Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FilesAndMetadata_CreateCopyRef_Inputs*)newInputSet {
		return [[[TMBDropbox_FilesAndMetadata_CreateCopyRef_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ZipFolder Choreo.
 */
@implementation TMBDropbox_FileOperations_ZipFolder_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the Folder input for this Choreo.
	*(required, string) The name of the folder that contains the files you want to retrieve and zip. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder).
	 */
	-(void)setFolder:(NSString*)Folder {
		[super setInput:@"Folder" toValue:Folder];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which the path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}

	/*!
	 * Set the value of the ZipFileLocation input for this Choreo.
	*(optional, string) The name of the folder to put the new zip file in. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder). When not specified, the zip file will be put in the root folder.
	 */
	-(void)setZipFileLocation:(NSString*)ZipFileLocation {
		[super setInput:@"ZipFileLocation" toValue:ZipFileLocation];
	}

	/*!
	 * Set the value of the ZipFileName input for this Choreo.
	*(optional, string) The name of the zip file that will be created. If not specified, the original folder name containing the files to zip will be used with a .zip extension.
	 */
	-(void)setZipFileName:(NSString*)ZipFileName {
		[super setInput:@"ZipFileName" toValue:ZipFileName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipFolder Choreo.
 */
@implementation TMBDropbox_FileOperations_ZipFolder_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "URL" output from an execution of this Choreo.
	 * @return - NSString* 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURL {
		return [super getOutputByName:@"URL"];
	}


	
@end

/*!
 * Creates a zip file containing all files within the specified folder and returns a shareable link to the new compressed file.
 */
@implementation TMBDropbox_FileOperations_ZipFolder

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FileOperations_ZipFolder Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FileOperations/ZipFolder"] autorelease];
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
		TMBDropbox_FileOperations_ZipFolder_ResultSet *results = [[[TMBDropbox_FileOperations_ZipFolder_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ZipFolder Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FileOperations_ZipFolder_Inputs*)newInputSet {
		return [[[TMBDropbox_FileOperations_ZipFolder_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AccountInfo Choreo.
 */
@implementation TMBDropbox_Account_AccountInfo_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to xml or json. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AccountInfo Choreo.
 */
@implementation TMBDropbox_Account_AccountInfo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Dropbox. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}


	
@end

/*!
 * Retrieves information about the user's account.
 */
@implementation TMBDropbox_Account_AccountInfo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_Account_AccountInfo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/Account/AccountInfo"] autorelease];
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
		TMBDropbox_Account_AccountInfo_ResultSet *results = [[[TMBDropbox_Account_AccountInfo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AccountInfo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_Account_AccountInfo_Inputs*)newInputSet {
		return [[[TMBDropbox_Account_AccountInfo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ZipFile Choreo.
 */
@implementation TMBDropbox_FileOperations_ZipFile_Inputs

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
	 * Set the value of the AppKey input for this Choreo.
	*(required, string) The App Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setAppKey:(NSString*)AppKey {
		[super setInput:@"AppKey" toValue:AppKey];
	}

	/*!
	 * Set the value of the AppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setAppSecret:(NSString*)AppSecret {
		[super setInput:@"AppSecret" toValue:AppSecret];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) The name of the Dropbox file you want to zip.
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the Folder input for this Choreo.
	*(conditional, string) The name of the folder that contains the file you want to zip. A path to a sub-folder is also valid (i.e. RootFolder/SubFolder). Not required if the file is at the root level.
	 */
	-(void)setFolder:(NSString*)Folder {
		[super setInput:@"Folder" toValue:Folder];
	}

	/*!
	 * Set the value of the Root input for this Choreo.
	*(conditional, string) The root relative to which the path is specified. Valid values are "sandbox" and "dropbox" (the default). When your access token has the App folder level of access, this should be set to "sandbox".
	 */
	-(void)setRoot:(NSString*)Root {
		[super setInput:@"Root" toValue:Root];
	}

	/*!
	 * Set the value of the ZipFileLocation input for this Choreo.
	*(optional, string) The name of the folder to put the new zip file in.A path to a sub-folder is also valid (i.e. RootFolder/SubFolder).  When not specified, the zip file will be put in the root folder.
	 */
	-(void)setZipFileLocation:(NSString*)ZipFileLocation {
		[super setInput:@"ZipFileLocation" toValue:ZipFileLocation];
	}

	/*!
	 * Set the value of the ZipFileName input for this Choreo.
	*(optional, string) The name of the zip file that will be created. If not specified, the original file name will be used with a .zip extension.
	 */
	-(void)setZipFileName:(NSString*)ZipFileName {
		[super setInput:@"ZipFileName" toValue:ZipFileName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipFile Choreo.
 */
@implementation TMBDropbox_FileOperations_ZipFile_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "URL" output from an execution of this Choreo.
	 * @return - NSString* (string) The shared link for the new zip file.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getURL {
		return [super getOutputByName:@"URL"];
	}
	
@end

/*!
 * Creates a zipped version of the specified Dropbox file and returns a shareable link to the new compressed file.
 */
@implementation TMBDropbox_FileOperations_ZipFile

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_FileOperations_ZipFile Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/FileOperations/ZipFile"] autorelease];
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
		TMBDropbox_FileOperations_ZipFile_ResultSet *results = [[[TMBDropbox_FileOperations_ZipFile_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ZipFile Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_FileOperations_ZipFile_Inputs*)newInputSet {
		return [[[TMBDropbox_FileOperations_ZipFile_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBDropbox_OAuth_FinalizeOAuth_Inputs

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
	 * Set the value of the DropboxAppKey input for this Choreo.
	*(required, string) The APP Key provided by Dropbox (AKA the OAuth Consumer Key).
	 */
	-(void)setDropboxAppKey:(NSString*)DropboxAppKey {
		[super setInput:@"DropboxAppKey" toValue:DropboxAppKey];
	}

	/*!
	 * Set the value of the DropboxAppSecret input for this Choreo.
	*(required, string) The App Secret provided by Dropbox (AKA the OAuth Consumer Secret).
	 */
	-(void)setDropboxAppSecret:(NSString*)DropboxAppSecret {
		[super setInput:@"DropboxAppSecret" toValue:DropboxAppSecret];
	}

	/*!
	 * Set the value of the OAuthTokenSecret input for this Choreo.
	*(required, string) The OAuthTokenSecret returned by the InitializeOAuth Choreo.
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
@implementation TMBDropbox_OAuth_FinalizeOAuth_ResultSet

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
	 * @return - NSString* (integer) The Dropbox user ID associated with the access token and secret returned.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getUserID {
		return [super getOutputByName:@"UserID"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a Dropbox access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@implementation TMBDropbox_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDropbox_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Dropbox/OAuth/FinalizeOAuth"] autorelease];
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
		TMBDropbox_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBDropbox_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDropbox_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBDropbox_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end
	