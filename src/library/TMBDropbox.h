/*!
 * @header Temboo iOS SDK Dropbox classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBDropbox.FilesAndMetadata.Delta Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Delta Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_Delta_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setCursor:(NSString*)Cursor;
	-(void)setLocale:(NSString*)Locale;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Delta Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_Delta_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you keep up with changes to files and folders in a user's Dropbox.
 */
@interface TMBDropbox_FilesAndMetadata_Delta : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FilesAndMetadata_Delta_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FilesAndMetadata_Delta Choreo */


/*! group TMBDropbox.FilesAndMetadata.GetFileRevisions Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFileRevisions Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_GetFileRevisions_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setPath:(NSString*)Path;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRevisionLimit:(NSString*)RevisionLimit;
	-(void)setRoot:(NSString*)Root;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFileRevisions Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_GetFileRevisions_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves metadata for the previous revisions of a file
 */
@interface TMBDropbox_FilesAndMetadata_GetFileRevisions : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FilesAndMetadata_GetFileRevisions_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FilesAndMetadata_GetFileRevisions Choreo */


/*! group TMBDropbox.FileOperations.DeleteFileOrFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFileOrFolder Choreo.
 */
@interface TMBDropbox_FileOperations_DeleteFileOrFolder_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setPath:(NSString*)Path;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoot:(NSString*)Root;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFileOrFolder Choreo.
 */
@interface TMBDropbox_FileOperations_DeleteFileOrFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Deletes a Dropbox file or folder that you specify.
 */
@interface TMBDropbox_FileOperations_DeleteFileOrFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FileOperations_DeleteFileOrFolder_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FileOperations_DeleteFileOrFolder Choreo */


/*! group TMBDropbox.FilesAndMetadata.ListFolderContents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListFolderContents Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_ListFolderContents_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setFileLimit:(NSString*)FileLimit;
	-(void)setFolder:(NSString*)Folder;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoot:(NSString*)Root;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListFolderContents Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_ListFolderContents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Lists contents of a given Dropbox folder.
 */
@interface TMBDropbox_FilesAndMetadata_ListFolderContents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FilesAndMetadata_ListFolderContents_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FilesAndMetadata_ListFolderContents Choreo */


/*! group TMBDropbox.FileOperations.CopyFileOrFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CopyFileOrFolder Choreo.
 */
@interface TMBDropbox_FileOperations_CopyFileOrFolder_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setFromCopyRef:(NSString*)FromCopyRef;
	-(void)setFromPath:(NSString*)FromPath;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoot:(NSString*)Root;
	-(void)setToPath:(NSString*)ToPath;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CopyFileOrFolder Choreo.
 */
@interface TMBDropbox_FileOperations_CopyFileOrFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Copies a file or folder to a new location in the Dropbox tree.
 */
@interface TMBDropbox_FileOperations_CopyFileOrFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FileOperations_CopyFileOrFolder_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FileOperations_CopyFileOrFolder Choreo */


/*! group TMBDropbox.FilesAndMetadata.RestoreFileToRevision Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RestoreFileToRevision Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_RestoreFileToRevision_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setPath:(NSString*)Path;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRevision:(NSString*)Revision;
	-(void)setRoot:(NSString*)Root;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RestoreFileToRevision Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_RestoreFileToRevision_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Restores a specified file to a previous revision.
 */
@interface TMBDropbox_FilesAndMetadata_RestoreFileToRevision : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FilesAndMetadata_RestoreFileToRevision_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FilesAndMetadata_RestoreFileToRevision Choreo */


/*! group TMBDropbox.FilesAndMetadata.UploadFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UploadFile Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_UploadFile_Inputs : TMBChoreographyInputSet
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setFileContentsFromURL:(NSString*)FileContentsFromURL;
	-(void)setFileName:(NSString*)FileName;
	-(void)setFolder:(NSString*)Folder;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoot:(NSString*)Root;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadFile Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_UploadFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Uploads a file to your Dropbox account.
 */
@interface TMBDropbox_FilesAndMetadata_UploadFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FilesAndMetadata_UploadFile_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FilesAndMetadata_UploadFile Choreo */


/*! group TMBDropbox.FilesAndMetadata.GetThumbnail Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetThumbnail Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_GetThumbnail_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setImageFormat:(NSString*)ImageFormat;
	-(void)setPath:(NSString*)Path;
	-(void)setRoot:(NSString*)Root;
	-(void)setSize:(NSString*)Size;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetThumbnail Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_GetThumbnail_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a thumbnail for a specified image.
 */
@interface TMBDropbox_FilesAndMetadata_GetThumbnail : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FilesAndMetadata_GetThumbnail_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FilesAndMetadata_GetThumbnail Choreo */


/*! group TMBDropbox.FilesAndMetadata.GetShareableLink Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetShareableLink Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_GetShareableLink_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setPath:(NSString*)Path;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoot:(NSString*)Root;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetShareableLink Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_GetShareableLink_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves a shareable link to files or folders.
 */
@interface TMBDropbox_FilesAndMetadata_GetShareableLink : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FilesAndMetadata_GetShareableLink_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FilesAndMetadata_GetShareableLink Choreo */


/*! group TMBDropbox.FileOperations.CreateFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateFolder Choreo.
 */
@interface TMBDropbox_FileOperations_CreateFolder_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setNewFolderName:(NSString*)NewFolderName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoot:(NSString*)Root;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFolder Choreo.
 */
@interface TMBDropbox_FileOperations_CreateFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Creates a Dropbox folder.
 */
@interface TMBDropbox_FileOperations_CreateFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FileOperations_CreateFolder_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FileOperations_CreateFolder Choreo */


/*! group TMBDropbox.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBDropbox_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setDropboxAppKey:(NSString*)DropboxAppKey;
	-(void)setDropboxAppSecret:(NSString*)DropboxAppSecret;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBDropbox_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;
	-(NSString*)getOAuthTokenSecret;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBDropbox_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBDropbox.OAuth_InitializeOAuth Choreo */


/*! group TMBDropbox.FileOperations.MoveFileOrFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MoveFileOrFolder Choreo.
 */
@interface TMBDropbox_FileOperations_MoveFileOrFolder_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setFromPath:(NSString*)FromPath;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoot:(NSString*)Root;
	-(void)setToPath:(NSString*)ToPath;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MoveFileOrFolder Choreo.
 */
@interface TMBDropbox_FileOperations_MoveFileOrFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Moves a file or folder to a new location in the Dropbox tree.
 */
@interface TMBDropbox_FileOperations_MoveFileOrFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FileOperations_MoveFileOrFolder_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FileOperations_MoveFileOrFolder Choreo */


/*! group TMBDropbox.FilesAndMetadata.GetFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFile Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_GetFile_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setPath:(NSString*)Path;
	-(void)setRoot:(NSString*)Root;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFile Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_GetFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Gets a file from your Dropbox account, returns the file content as Base64 encoded data.
 */
@interface TMBDropbox_FilesAndMetadata_GetFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FilesAndMetadata_GetFile_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FilesAndMetadata_GetFile Choreo */


/*! group TMBDropbox.FilesAndMetadata.SearchFilesAndFolders Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchFilesAndFolders Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_SearchFilesAndFolders_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setFileLimit:(NSString*)FileLimit;
	-(void)setPath:(NSString*)Path;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoot:(NSString*)Root;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchFilesAndFolders Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_SearchFilesAndFolders_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to search Dropbox for files or folders by a keyword search.
 */
@interface TMBDropbox_FilesAndMetadata_SearchFilesAndFolders : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FilesAndMetadata_SearchFilesAndFolders_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FilesAndMetadata_SearchFilesAndFolders Choreo */


/*! group TMBDropbox.FilesAndMetadata.CreateCopyRef Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateCopyRef Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_CreateCopyRef_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setPath:(NSString*)Path;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRoot:(NSString*)Root;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCopyRef Choreo.
 */
@interface TMBDropbox_FilesAndMetadata_CreateCopyRef_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Allows you to create a copy reference (copy_ref) that you can later reference to copy files or folders to another user's Dropbox using the CopyFileOrFolder choreo. 
 */
@interface TMBDropbox_FilesAndMetadata_CreateCopyRef : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FilesAndMetadata_CreateCopyRef_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FilesAndMetadata_CreateCopyRef Choreo */


/*! group TMBDropbox.FileOperations.ZipFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ZipFolder Choreo.
 */
@interface TMBDropbox_FileOperations_ZipFolder_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setFolder:(NSString*)Folder;
	-(void)setRoot:(NSString*)Root;
	-(void)setZipFileLocation:(NSString*)ZipFileLocation;
	-(void)setZipFileName:(NSString*)ZipFileName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipFolder Choreo.
 */
@interface TMBDropbox_FileOperations_ZipFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getURL;
	
@end

/*!
 * Creates a zip file containing all files within the specified folder and returns a shareable link to the new compressed file.
 */
@interface TMBDropbox_FileOperations_ZipFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FileOperations_ZipFolder_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FileOperations_ZipFolder Choreo */


/*! group TMBDropbox.Account.AccountInfo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AccountInfo Choreo.
 */
@interface TMBDropbox_Account_AccountInfo_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AccountInfo Choreo.
 */
@interface TMBDropbox_Account_AccountInfo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	
@end

/*!
 * Retrieves information about the user's account.
 */
@interface TMBDropbox_Account_AccountInfo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_Account_AccountInfo_Inputs*)newInputSet;
@end

/*! group TMBDropbox.Account_AccountInfo Choreo */


/*! group TMBDropbox.FileOperations.ZipFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ZipFile Choreo.
 */
@interface TMBDropbox_FileOperations_ZipFile_Inputs : TMBChoreographyInputSet
	-(void)setAccessTokenSecret:(NSString*)AccessTokenSecret;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setAppSecret:(NSString*)AppSecret;
	-(void)setFileName:(NSString*)FileName;
	-(void)setFolder:(NSString*)Folder;
	-(void)setRoot:(NSString*)Root;
	-(void)setZipFileLocation:(NSString*)ZipFileLocation;
	-(void)setZipFileName:(NSString*)ZipFileName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipFile Choreo.
 */
@interface TMBDropbox_FileOperations_ZipFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getURL;	
@end

/*!
 * Creates a zipped version of the specified Dropbox file and returns a shareable link to the new compressed file.
 */
@interface TMBDropbox_FileOperations_ZipFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_FileOperations_ZipFile_Inputs*)newInputSet;
@end

/*! group TMBDropbox.FileOperations_ZipFile Choreo */


/*! group TMBDropbox.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBDropbox_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setDropboxAppKey:(NSString*)DropboxAppKey;
	-(void)setDropboxAppSecret:(NSString*)DropboxAppSecret;
	-(void)setOAuthTokenSecret:(NSString*)OAuthTokenSecret;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBDropbox_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessTokenSecret;
	-(NSString*)getAccessToken;
	-(NSString*)getUserID;	
@end

/*!
 * Completes the OAuth process by retrieving a Dropbox access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@interface TMBDropbox_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDropbox_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBDropbox.OAuth_FinalizeOAuth Choreo */
