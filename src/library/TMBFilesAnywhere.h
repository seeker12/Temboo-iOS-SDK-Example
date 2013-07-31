/*!
 * @header Temboo iOS SDK FilesAnywhere classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBFilesAnywhere.ViewFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ViewFile Choreo.
 */
@interface TMBFilesAnywhere_ViewFile_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPassword:(NSString*)Password;
	-(void)setPath:(NSString*)Path;
	-(void)setToken:(NSString*)Token;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ViewFile Choreo.
 */
@interface TMBFilesAnywhere_ViewFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Generate a URL from which a file can be viewed.
 */
@interface TMBFilesAnywhere_ViewFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_ViewFile_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_ViewFile Choreo */


/*! group TMBFilesAnywhere.RenameItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RenameItem Choreo.
 */
@interface TMBFilesAnywhere_RenameItem_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setNewName:(NSString*)NewName;
	-(void)setPassword:(NSString*)Password;
	-(void)setPath:(NSString*)Path;
	-(void)setToken:(NSString*)Token;
	-(void)setType:(NSString*)Type;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RenameItem Choreo.
 */
@interface TMBFilesAnywhere_RenameItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Rename an item.
 */
@interface TMBFilesAnywhere_RenameItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_RenameItem_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_RenameItem Choreo */


/*! group TMBFilesAnywhere.ListItems Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListItems Choreo.
 */
@interface TMBFilesAnywhere_ListItems_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPageNum:(NSString*)PageNum;
	-(void)setPageSize:(NSString*)PageSize;
	-(void)setPassword:(NSString*)Password;
	-(void)setPath:(NSString*)Path;
	-(void)setToken:(NSString*)Token;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListItems Choreo.
 */
@interface TMBFilesAnywhere_ListItems_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Lists files within a specified directory in your FilesAnywhere account.
 */
@interface TMBFilesAnywhere_ListItems : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_ListItems_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_ListItems Choreo */


/*! group TMBFilesAnywhere.AccountLogout Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AccountLogout Choreo.
 */
@interface TMBFilesAnywhere_AccountLogout_Inputs : TMBChoreographyInputSet
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AccountLogout Choreo.
 */
@interface TMBFilesAnywhere_AccountLogout_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Logout a user.
 */
@interface TMBFilesAnywhere_AccountLogout : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_AccountLogout_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_AccountLogout Choreo */


/*! group TMBFilesAnywhere.CreateFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateFolder Choreo.
 */
@interface TMBFilesAnywhere_CreateFolder_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setNewFolderName:(NSString*)NewFolderName;
	-(void)setPassword:(NSString*)Password;
	-(void)setPath:(NSString*)Path;
	-(void)setToken:(NSString*)Token;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFolder Choreo.
 */
@interface TMBFilesAnywhere_CreateFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Create a new folder.
 */
@interface TMBFilesAnywhere_CreateFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_CreateFolder_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_CreateFolder Choreo */


/*! group TMBFilesAnywhere.AddItemComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddItemComment Choreo.
 */
@interface TMBFilesAnywhere_AddItemComment_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setComment:(NSString*)Comment;
	-(void)setFullName:(NSString*)FullName;
	-(void)setParentID:(NSString*)ParentID;
	-(void)setPassword:(NSString*)Password;
	-(void)setPath:(NSString*)Path;
	-(void)setToken:(NSString*)Token;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddItemComment Choreo.
 */
@interface TMBFilesAnywhere_AddItemComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Add a comment to an item.
 */
@interface TMBFilesAnywhere_AddItemComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_AddItemComment_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_AddItemComment Choreo */


/*! group TMBFilesAnywhere.ItemCommentsList Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ItemCommentsList Choreo.
 */
@interface TMBFilesAnywhere_ItemCommentsList_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setItemPath:(NSString*)ItemPath;
	-(void)setPassword:(NSString*)Password;
	-(void)setToken:(NSString*)Token;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ItemCommentsList Choreo.
 */
@interface TMBFilesAnywhere_ItemCommentsList_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Get the comments list of an item.
 */
@interface TMBFilesAnywhere_ItemCommentsList : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_ItemCommentsList_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_ItemCommentsList Choreo */


/*! group TMBFilesAnywhere.UploadFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UploadFile Choreo.
 */
@interface TMBFilesAnywhere_UploadFile_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setPassword:(NSString*)Password;
	-(void)setPath:(NSString*)Path;
	-(void)setToken:(NSString*)Token;
	-(void)setUsername:(NSString*)Username;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadFile Choreo.
 */
@interface TMBFilesAnywhere_UploadFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Uploads a file to a specified directory in your FilesAnywhere account.
 */
@interface TMBFilesAnywhere_UploadFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_UploadFile_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_UploadFile Choreo */


/*! group TMBFilesAnywhere.ListUserVolumes Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListUserVolumes Choreo.
 */
@interface TMBFilesAnywhere_ListUserVolumes_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPassword:(NSString*)Password;
	-(void)setToken:(NSString*)Token;
	-(void)setUsername:(NSString*)Username;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUserVolumes Choreo.
 */
@interface TMBFilesAnywhere_ListUserVolumes_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * List user volumes.
 */
@interface TMBFilesAnywhere_ListUserVolumes : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_ListUserVolumes_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_ListUserVolumes Choreo */


/*! group TMBFilesAnywhere.DownloadBase64EncodedFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DownloadBase64EncodedFile Choreo.
 */
@interface TMBFilesAnywhere_DownloadBase64EncodedFile_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPassword:(NSString*)Password;
	-(void)setPath:(NSString*)Path;
	-(void)setToken:(NSString*)Token;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DownloadBase64EncodedFile Choreo.
 */
@interface TMBFilesAnywhere_DownloadBase64EncodedFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Downloads a file from a specified directory in your FilesAnywhere account, and returns the content as Base64 encoded data.
 */
@interface TMBFilesAnywhere_DownloadBase64EncodedFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_DownloadBase64EncodedFile_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_DownloadBase64EncodedFile Choreo */


/*! group TMBFilesAnywhere.FileProperties Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FileProperties Choreo.
 */
@interface TMBFilesAnywhere_FileProperties_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPassword:(NSString*)Password;
	-(void)setPath:(NSString*)Path;
	-(void)setToken:(NSString*)Token;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FileProperties Choreo.
 */
@interface TMBFilesAnywhere_FileProperties_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Lists file property information.
 */
@interface TMBFilesAnywhere_FileProperties : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_FileProperties_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_FileProperties Choreo */


/*! group TMBFilesAnywhere.AccountLogin Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AccountLogin Choreo.
 */
@interface TMBFilesAnywhere_AccountLogin_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAllowedIPList:(NSString*)AllowedIPList;
	-(void)setClientEncryptParam:(NSString*)ClientEncryptParam;
	-(void)setOrgID:(NSString*)OrgID;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AccountLogin Choreo.
 */
@interface TMBFilesAnywhere_AccountLogin_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Retrieves an authentication token from FilesAnywhere.
 */
@interface TMBFilesAnywhere_AccountLogin : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_AccountLogin_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_AccountLogin Choreo */


/*! group TMBFilesAnywhere.DeleteItem Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteItem Choreo.
 */
@interface TMBFilesAnywhere_DeleteItem_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setPassword:(NSString*)Password;
	-(void)setPath:(NSString*)Path;
	-(void)setToken:(NSString*)Token;
	-(void)setType:(NSString*)Type;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteItem Choreo.
 */
@interface TMBFilesAnywhere_DeleteItem_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Deletes a file from a specified directory in your FilesAnywhere account.
 */
@interface TMBFilesAnywhere_DeleteItem : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFilesAnywhere_DeleteItem_Inputs*)newInputSet;
@end

/*! group TMBFilesAnywhere_DeleteItem Choreo */
