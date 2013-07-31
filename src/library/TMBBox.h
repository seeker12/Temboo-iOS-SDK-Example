/*!
 * @header Temboo iOS SDK Box classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBBox.Files.ZipFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ZipFile Choreo.
 */
@interface TMBBox_Files_ZipFile_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFileID:(NSString*)FileID;
	-(void)setSharedLink:(NSString*)SharedLink;
	-(void)setZipFileLocation:(NSString*)ZipFileLocation;
	-(void)setZipFileName:(NSString*)ZipFileName;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipFile Choreo.
 */
@interface TMBBox_Files_ZipFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getURL;	
@end

/*!
 * Creates a zipped version of the specified Box file and returns a link to the new compressed file.
 */
@interface TMBBox_Files_ZipFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Files_ZipFile_Inputs*)newInputSet;
@end

/*! group TMBBox.Files_ZipFile Choreo */


/*! group TMBBox.Comments.GetComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetComment Choreo.
 */
@interface TMBBox_Comments_GetComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setFields:(NSString*)Fields;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetComment Choreo.
 */
@interface TMBBox_Comments_GetComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the message and metadata for a specific comment.
 */
@interface TMBBox_Comments_GetComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Comments_GetComment_Inputs*)newInputSet;
@end

/*! group TMBBox.Comments_GetComment Choreo */


/*! group TMBBox.Files.CopyFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CopyFile Choreo.
 */
@interface TMBBox_Files_CopyFile_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setName:(NSString*)Name;
	-(void)setParentID:(NSString*)ParentID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CopyFile Choreo.
 */
@interface TMBBox_Files_CopyFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a copy of a file in another folder.
 */
@interface TMBBox_Files_CopyFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Files_CopyFile_Inputs*)newInputSet;
@end

/*! group TMBBox.Files_CopyFile Choreo */


/*! group TMBBox.Folders.CopyFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CopyFolder Choreo.
 */
@interface TMBBox_Folders_CopyFolder_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setName:(NSString*)Name;
	-(void)setParentID:(NSString*)ParentID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CopyFolder Choreo.
 */
@interface TMBBox_Folders_CopyFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a copy of a folder in another folder.
 */
@interface TMBBox_Folders_CopyFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Folders_CopyFolder_Inputs*)newInputSet;
@end

/*! group TMBBox.Folders_CopyFolder Choreo */


/*! group TMBBox.Files.DownloadFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DownloadFile Choreo.
 */
@interface TMBBox_Files_DownloadFile_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFileID:(NSString*)FileID;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DownloadFile Choreo.
 */
@interface TMBBox_Files_DownloadFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the contents of a specified file.
 */
@interface TMBBox_Files_DownloadFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Files_DownloadFile_Inputs*)newInputSet;
@end

/*! group TMBBox.Files_DownloadFile Choreo */


/*! group TMBBox.Files.UploadFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UploadFile Choreo.
 */
@interface TMBBox_Files_UploadFile_Inputs : TMBChoreographyInputSet
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFileID:(NSString*)FileID;
	-(void)setFileName:(NSString*)FileName;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadFile Choreo.
 */
@interface TMBBox_Files_UploadFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Uploads a new file to a user's account. This can also be used when updating the contents of an existing file.
 */
@interface TMBBox_Files_UploadFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Files_UploadFile_Inputs*)newInputSet;
@end

/*! group TMBBox.Files_UploadFile Choreo */


/*! group TMBBox.Collaborations.GetCollaboration Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCollaboration Choreo.
 */
@interface TMBBox_Collaborations_GetCollaboration_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCollaborationID:(NSString*)CollaborationID;
	-(void)setFields:(NSString*)Fields;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCollaboration Choreo.
 */
@interface TMBBox_Collaborations_GetCollaboration_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an existing collaboration.
 */
@interface TMBBox_Collaborations_GetCollaboration : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Collaborations_GetCollaboration_Inputs*)newInputSet;
@end

/*! group TMBBox.Collaborations_GetCollaboration Choreo */


/*! group TMBBox.Search.Query Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@interface TMBBox_Search_Query_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setQuery:(NSString*)Query;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@interface TMBBox_Search_Query_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches a user's Box account for items that match a specified keyword.
 */
@interface TMBBox_Search_Query : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Search_Query_Inputs*)newInputSet;
@end

/*! group TMBBox.Search_Query Choreo */


/*! group TMBBox.Users.UpdateUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUser Choreo.
 */
@interface TMBBox_Users_UpdateUser_Inputs : TMBChoreographyInputSet
	-(void)setUserObject:(NSString*)UserObject;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUser Choreo.
 */
@interface TMBBox_Users_UpdateUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates information for an existing user.
 */
@interface TMBBox_Users_UpdateUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Users_UpdateUser_Inputs*)newInputSet;
@end

/*! group TMBBox.Users_UpdateUser Choreo */


/*! group TMBBox.Discussions.CreateDiscussion Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateDiscussion Choreo.
 */
@interface TMBBox_Discussions_CreateDiscussion_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setDescription:(NSString*)Description;
	-(void)setFields:(NSString*)Fields;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setName:(NSString*)Name;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateDiscussion Choreo.
 */
@interface TMBBox_Discussions_CreateDiscussion_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new discussion for a particular folder.
 */
@interface TMBBox_Discussions_CreateDiscussion : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Discussions_CreateDiscussion_Inputs*)newInputSet;
@end

/*! group TMBBox.Discussions_CreateDiscussion Choreo */


/*! group TMBBox.Folders.CreateFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateFolder Choreo.
 */
@interface TMBBox_Folders_CreateFolder_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setName:(NSString*)Name;
	-(void)setParentID:(NSString*)ParentID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFolder Choreo.
 */
@interface TMBBox_Folders_CreateFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new folder in the parent folder you specify.
 */
@interface TMBBox_Folders_CreateFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Folders_CreateFolder_Inputs*)newInputSet;
@end

/*! group TMBBox.Folders_CreateFolder Choreo */


/*! group TMBBox.Collaborations.DeleteCollaboration Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCollaboration Choreo.
 */
@interface TMBBox_Collaborations_DeleteCollaboration_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCollaborationID:(NSString*)CollaborationID;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCollaboration Choreo.
 */
@interface TMBBox_Collaborations_DeleteCollaboration_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a single collaboration.
 */
@interface TMBBox_Collaborations_DeleteCollaboration : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Collaborations_DeleteCollaboration_Inputs*)newInputSet;
@end

/*! group TMBBox.Collaborations_DeleteCollaboration Choreo */


/*! group TMBBox.Files.GetFileInformation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFileInformation Choreo.
 */
@interface TMBBox_Files_GetFileInformation_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFileInformation Choreo.
 */
@interface TMBBox_Files_GetFileInformation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a specified file.
 */
@interface TMBBox_Files_GetFileInformation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Files_GetFileInformation_Inputs*)newInputSet;
@end

/*! group TMBBox.Files_GetFileInformation Choreo */


/*! group TMBBox.Comments.AddComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddComment Choreo.
 */
@interface TMBBox_Comments_AddComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setMessage:(NSString*)Message;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddComment Choreo.
 */
@interface TMBBox_Comments_AddComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a comment to a specific file.
 */
@interface TMBBox_Comments_AddComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Comments_AddComment_Inputs*)newInputSet;
@end

/*! group TMBBox.Comments_AddComment Choreo */


/*! group TMBBox.Folders.CreateSharedLink Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateSharedLink Choreo.
 */
@interface TMBBox_Folders_CreateSharedLink_Inputs : TMBChoreographyInputSet
	-(void)setSharedLink:(NSString*)SharedLink;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFolderID:(NSString*)FolderID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateSharedLink Choreo.
 */
@interface TMBBox_Folders_CreateSharedLink_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a shared link for a particular folder.
 */
@interface TMBBox_Folders_CreateSharedLink : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Folders_CreateSharedLink_Inputs*)newInputSet;
@end

/*! group TMBBox.Folders_CreateSharedLink Choreo */


/*! group TMBBox.Files.GetComments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetComments Choreo.
 */
@interface TMBBox_Files_GetComments_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetComments Choreo.
 */
@interface TMBBox_Files_GetComments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves comments for a specified file.
 */
@interface TMBBox_Files_GetComments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Files_GetComments_Inputs*)newInputSet;
@end

/*! group TMBBox.Files_GetComments Choreo */


/*! group TMBBox.Users.CreateUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateUser Choreo.
 */
@interface TMBBox_Users_CreateUser_Inputs : TMBChoreographyInputSet
	-(void)setUserObject:(NSString*)UserObject;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateUser Choreo.
 */
@interface TMBBox_Users_CreateUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new user in an enterprise.
 */
@interface TMBBox_Users_CreateUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Users_CreateUser_Inputs*)newInputSet;
@end

/*! group TMBBox.Users_CreateUser Choreo */


/*! group TMBBox.Folders.ZipFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ZipFolder Choreo.
 */
@interface TMBBox_Folders_ZipFolder_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setSharedLink:(NSString*)SharedLink;
	-(void)setZipFileLocation:(NSString*)ZipFileLocation;
	-(void)setZipFileName:(NSString*)ZipFileName;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ZipFolder Choreo.
 */
@interface TMBBox_Folders_ZipFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getURL;	
@end

/*!
 * Creates a zip file containing all files within the specified folder and returns a link to the new compressed file.
 */
@interface TMBBox_Folders_ZipFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Folders_ZipFolder_Inputs*)newInputSet;
@end

/*! group TMBBox.Folders_ZipFolder Choreo */


/*! group TMBBox.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBBox_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBBox_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getExpires;
	-(NSString*)getRefreshToken;	
@end

/*!
 * Completes the OAuth process by retrieving a Box access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
 */
@interface TMBBox_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBBox.OAuth_FinalizeOAuth Choreo */


/*! group TMBBox.OAuth.RefreshToken Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RefreshToken Choreo.
 */
@interface TMBBox_OAuth_RefreshToken_Inputs : TMBChoreographyInputSet
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setRefreshToken:(NSString*)RefreshToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RefreshToken Choreo.
 */
@interface TMBBox_OAuth_RefreshToken_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;
	-(NSString*)getExpires;
	-(NSString*)getNewRefreshToken;	
@end

/*!
 * Generates a new access token with a given valid refresh token.
 */
@interface TMBBox_OAuth_RefreshToken : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_OAuth_RefreshToken_Inputs*)newInputSet;
@end

/*! group TMBBox.OAuth_RefreshToken Choreo */


/*! group TMBBox.Files.DeleteFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFile Choreo.
 */
@interface TMBBox_Files_DeleteFile_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFileID:(NSString*)FileID;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFile Choreo.
 */
@interface TMBBox_Files_DeleteFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Moves a file to the trash.
 */
@interface TMBBox_Files_DeleteFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Files_DeleteFile_Inputs*)newInputSet;
@end

/*! group TMBBox.Files_DeleteFile Choreo */


/*! group TMBBox.Folders.UpdateFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateFolder Choreo.
 */
@interface TMBBox_Folders_UpdateFolder_Inputs : TMBChoreographyInputSet
	-(void)setFolderObject:(NSString*)FolderObject;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFolderID:(NSString*)FolderID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateFolder Choreo.
 */
@interface TMBBox_Folders_UpdateFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates the information about a folder.
 */
@interface TMBBox_Folders_UpdateFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Folders_UpdateFolder_Inputs*)newInputSet;
@end

/*! group TMBBox.Folders_UpdateFolder Choreo */


/*! group TMBBox.Users.GetCurrentUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCurrentUser Choreo.
 */
@interface TMBBox_Users_GetCurrentUser_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCurrentUser Choreo.
 */
@interface TMBBox_Users_GetCurrentUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about the authenticated user.
 */
@interface TMBBox_Users_GetCurrentUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Users_GetCurrentUser_Inputs*)newInputSet;
@end

/*! group TMBBox.Users_GetCurrentUser Choreo */


/*! group TMBBox.Users.DeleteUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUser Choreo.
 */
@interface TMBBox_Users_DeleteUser_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setForce:(NSString*)Force;
	-(void)setNotify:(NSString*)Notify;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUser Choreo.
 */
@interface TMBBox_Users_DeleteUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified user.
 */
@interface TMBBox_Users_DeleteUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Users_DeleteUser_Inputs*)newInputSet;
@end

/*! group TMBBox.Users_DeleteUser Choreo */


/*! group TMBBox.Folders.DeleteFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFolder Choreo.
 */
@interface TMBBox_Folders_DeleteFolder_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setRecursive:(NSString*)Recursive;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFolder Choreo.
 */
@interface TMBBox_Folders_DeleteFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified folder.
 */
@interface TMBBox_Folders_DeleteFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Folders_DeleteFolder_Inputs*)newInputSet;
@end

/*! group TMBBox.Folders_DeleteFolder Choreo */


/*! group TMBBox.Collaborations.AddCollaboration Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddCollaboration Choreo.
 */
@interface TMBBox_Collaborations_AddCollaboration_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setLogin:(NSString*)Login;
	-(void)setRole:(NSString*)Role;
	-(void)setUserID:(NSString*)UserID;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddCollaboration Choreo.
 */
@interface TMBBox_Collaborations_AddCollaboration_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a collaboration for a single user to a specific folder.
 */
@interface TMBBox_Collaborations_AddCollaboration : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Collaborations_AddCollaboration_Inputs*)newInputSet;
@end

/*! group TMBBox.Collaborations_AddCollaboration Choreo */


/*! group TMBBox.Comments.UpdateComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateComment Choreo.
 */
@interface TMBBox_Comments_UpdateComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setFields:(NSString*)Fields;
	-(void)setMessage:(NSString*)Message;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateComment Choreo.
 */
@interface TMBBox_Comments_UpdateComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing comment.
 */
@interface TMBBox_Comments_UpdateComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Comments_UpdateComment_Inputs*)newInputSet;
@end

/*! group TMBBox.Comments_UpdateComment Choreo */


/*! group TMBBox.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBBox_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBBox_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getAuthorizeURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBBox_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBBox.OAuth_InitializeOAuth Choreo */


/*! group TMBBox.Discussions.GetComments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetComments Choreo.
 */
@interface TMBBox_Discussions_GetComments_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setDiscussionID:(NSString*)DiscussionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetComments Choreo.
 */
@interface TMBBox_Discussions_GetComments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves comments for a specific discussion.
 */
@interface TMBBox_Discussions_GetComments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Discussions_GetComments_Inputs*)newInputSet;
@end

/*! group TMBBox.Discussions_GetComments Choreo */


/*! group TMBBox.Collaborations.UpdateCollaboration Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateCollaboration Choreo.
 */
@interface TMBBox_Collaborations_UpdateCollaboration_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCollaborationID:(NSString*)CollaborationID;
	-(void)setFields:(NSString*)Fields;
	-(void)setRole:(NSString*)Role;
	-(void)setStatus:(NSString*)Status;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateCollaboration Choreo.
 */
@interface TMBBox_Collaborations_UpdateCollaboration_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Edits an existing collaboration.
 */
@interface TMBBox_Collaborations_UpdateCollaboration : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Collaborations_UpdateCollaboration_Inputs*)newInputSet;
@end

/*! group TMBBox.Collaborations_UpdateCollaboration Choreo */


/*! group TMBBox.Folders.RetrieveFolderItems Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveFolderItems Choreo.
 */
@interface TMBBox_Folders_RetrieveFolderItems_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setLimit:(NSString*)Limit;
	-(void)setOffset:(NSString*)Offset;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveFolderItems Choreo.
 */
@interface TMBBox_Folders_RetrieveFolderItems_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves only the files and/or folders contained within the specified folder.
 */
@interface TMBBox_Folders_RetrieveFolderItems : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Folders_RetrieveFolderItems_Inputs*)newInputSet;
@end

/*! group TMBBox.Folders_RetrieveFolderItems Choreo */


/*! group TMBBox.Discussions.AddComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddComment Choreo.
 */
@interface TMBBox_Discussions_AddComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setDiscussionID:(NSString*)DiscussionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setMessage:(NSString*)Message;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddComment Choreo.
 */
@interface TMBBox_Discussions_AddComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a comment to a specific discussion.
 */
@interface TMBBox_Discussions_AddComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Discussions_AddComment_Inputs*)newInputSet;
@end

/*! group TMBBox.Discussions_AddComment Choreo */


/*! group TMBBox.Files.UpdateFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateFile Choreo.
 */
@interface TMBBox_Files_UpdateFile_Inputs : TMBChoreographyInputSet
	-(void)setFileObject:(NSString*)FileObject;
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFileID:(NSString*)FileID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateFile Choreo.
 */
@interface TMBBox_Files_UpdateFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates individual or multiple fields in the file object.
 */
@interface TMBBox_Files_UpdateFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Files_UpdateFile_Inputs*)newInputSet;
@end

/*! group TMBBox.Files_UpdateFile Choreo */


/*! group TMBBox.Discussions.GetDiscussion Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDiscussion Choreo.
 */
@interface TMBBox_Discussions_GetDiscussion_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setDiscussionID:(NSString*)DiscussionID;
	-(void)setFields:(NSString*)Fields;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDiscussion Choreo.
 */
@interface TMBBox_Discussions_GetDiscussion_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the metadata for a specific discussion.
 */
@interface TMBBox_Discussions_GetDiscussion : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Discussions_GetDiscussion_Inputs*)newInputSet;
@end

/*! group TMBBox.Discussions_GetDiscussion Choreo */


/*! group TMBBox.Comments.DeleteComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteComment Choreo.
 */
@interface TMBBox_Comments_DeleteComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCommentID:(NSString*)CommentID;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteComment Choreo.
 */
@interface TMBBox_Comments_DeleteComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specific comment.
 */
@interface TMBBox_Comments_DeleteComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Comments_DeleteComment_Inputs*)newInputSet;
@end

/*! group TMBBox.Comments_DeleteComment Choreo */


/*! group TMBBox.Collaborations.GetPendingCollaborations Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPendingCollaborations Choreo.
 */
@interface TMBBox_Collaborations_GetPendingCollaborations_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPendingCollaborations Choreo.
 */
@interface TMBBox_Collaborations_GetPendingCollaborations_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all pending collaboration invites for a user.
 */
@interface TMBBox_Collaborations_GetPendingCollaborations : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Collaborations_GetPendingCollaborations_Inputs*)newInputSet;
@end

/*! group TMBBox.Collaborations_GetPendingCollaborations Choreo */


/*! group TMBBox.Folders.GetFolderInformation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFolderInformation Choreo.
 */
@interface TMBBox_Folders_GetFolderInformation_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setFields:(NSString*)Fields;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFolderInformation Choreo.
 */
@interface TMBBox_Folders_GetFolderInformation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a specified folder.
 */
@interface TMBBox_Folders_GetFolderInformation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBox_Folders_GetFolderInformation_Inputs*)newInputSet;
@end

/*! group TMBBox.Folders_GetFolderInformation Choreo */
