/*!
 * @header Temboo iOS SDK RapidShare classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBRapidShare.RenameFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RenameFile Choreo.
 */
@interface TMBRapidShare_RenameFile_Inputs : TMBChoreographyInputSet
	-(void)setFileId:(NSString*)FileId;
	-(void)setLogin:(NSString*)Login;
	-(void)setNewFileName:(NSString*)NewFileName;
	-(void)setPassword:(NSString*)Password;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RenameFile Choreo.
 */
@interface TMBRapidShare_RenameFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Renames a file to something else.
 */
@interface TMBRapidShare_RenameFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRapidShare_RenameFile_Inputs*)newInputSet;
@end

/*! group TMBRapidShare_RenameFile Choreo */


/*! group TMBRapidShare.MoveRealFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MoveRealFolder Choreo.
 */
@interface TMBRapidShare_MoveRealFolder_Inputs : TMBChoreographyInputSet
	-(void)setFolderId:(NSString*)FolderId;
	-(void)setLogin:(NSString*)Login;
	-(void)setNewParent:(NSString*)NewParent;
	-(void)setPassword:(NSString*)Password;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MoveRealFolder Choreo.
 */
@interface TMBRapidShare_MoveRealFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Changes the parent ID of existing RealFolders, enabling the location of the folder to be moved within a RapidShare account file hierarchy.
 */
@interface TMBRapidShare_MoveRealFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRapidShare_MoveRealFolder_Inputs*)newInputSet;
@end

/*! group TMBRapidShare_MoveRealFolder Choreo */


/*! group TMBRapidShare.ListRealFolders Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListRealFolders Choreo.
 */
@interface TMBRapidShare_ListRealFolders_Inputs : TMBChoreographyInputSet
	-(void)setLogin:(NSString*)Login;
	-(void)setPassword:(NSString*)Password;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRealFolders Choreo.
 */
@interface TMBRapidShare_ListRealFolders_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns all existing RealFolders
 */
@interface TMBRapidShare_ListRealFolders : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRapidShare_ListRealFolders_Inputs*)newInputSet;
@end

/*! group TMBRapidShare_ListRealFolders Choreo */


/*! group TMBRapidShare.DeleteRealFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRealFolder Choreo.
 */
@interface TMBRapidShare_DeleteRealFolder_Inputs : TMBChoreographyInputSet
	-(void)setLogin:(NSString*)Login;
	-(void)setPassword:(NSString*)Password;
	-(void)setRealFolder:(NSString*)RealFolder;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRealFolder Choreo.
 */
@interface TMBRapidShare_DeleteRealFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete a folder(s) from a RapidShare account.
 */
@interface TMBRapidShare_DeleteRealFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRapidShare_DeleteRealFolder_Inputs*)newInputSet;
@end

/*! group TMBRapidShare_DeleteRealFolder Choreo */


/*! group TMBRapidShare.MoveFilesToRealFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MoveFilesToRealFolder Choreo.
 */
@interface TMBRapidShare_MoveFilesToRealFolder_Inputs : TMBChoreographyInputSet
	-(void)setFiles:(NSString*)Files;
	-(void)setLogin:(NSString*)Login;
	-(void)setPassword:(NSString*)Password;
	-(void)setRealFolder:(NSString*)RealFolder;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MoveFilesToRealFolder Choreo.
 */
@interface TMBRapidShare_MoveFilesToRealFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Move an existing file to a new folder in RapidShare.
 */
@interface TMBRapidShare_MoveFilesToRealFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRapidShare_MoveFilesToRealFolder_Inputs*)newInputSet;
@end

/*! group TMBRapidShare_MoveFilesToRealFolder Choreo */


/*! group TMBRapidShare.ListFiles Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListFiles Choreo.
 */
@interface TMBRapidShare_ListFiles_Inputs : TMBChoreographyInputSet
	-(void)setFields:(NSString*)Fields;
	-(void)setFileIDs:(NSString*)FileIDs;
	-(void)setFileName:(NSString*)FileName;
	-(void)setFolderID:(NSString*)FolderID;
	-(void)setLogin:(NSString*)Login;
	-(void)setPassword:(NSString*)Password;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListFiles Choreo.
 */
@interface TMBRapidShare_ListFiles_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Lists the files in all folders (or in a specified folder) and allows you to control the database columns returned in the result.
 */
@interface TMBRapidShare_ListFiles : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRapidShare_ListFiles_Inputs*)newInputSet;
@end

/*! group TMBRapidShare_ListFiles Choreo */


/*! group TMBRapidShare.AddRealFolder Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddRealFolder Choreo.
 */
@interface TMBRapidShare_AddRealFolder_Inputs : TMBChoreographyInputSet
	-(void)setLogin:(NSString*)Login;
	-(void)setName:(NSString*)Name;
	-(void)setParent:(NSString*)Parent;
	-(void)setPassword:(NSString*)Password;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddRealFolder Choreo.
 */
@interface TMBRapidShare_AddRealFolder_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new folder in RapidShare.
 */
@interface TMBRapidShare_AddRealFolder : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRapidShare_AddRealFolder_Inputs*)newInputSet;
@end

/*! group TMBRapidShare_AddRealFolder Choreo */


/*! group TMBRapidShare.GetAccountDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAccountDetails Choreo.
 */
@interface TMBRapidShare_GetAccountDetails_Inputs : TMBChoreographyInputSet
	-(void)setLogin:(NSString*)Login;
	-(void)setPassword:(NSString*)Password;
	-(void)setWithCookie:(NSString*)WithCookie;
	-(void)setWithPublicId:(NSString*)WithPublicId;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAccountDetails Choreo.
 */
@interface TMBRapidShare_GetAccountDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns details about a RapidShare account in key-value pairs.
 */
@interface TMBRapidShare_GetAccountDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRapidShare_GetAccountDetails_Inputs*)newInputSet;
@end

/*! group TMBRapidShare_GetAccountDetails Choreo */


/*! group TMBRapidShare.SendMail Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SendMail Choreo.
 */
@interface TMBRapidShare_SendMail_Inputs : TMBChoreographyInputSet
	-(void)setComment:(NSString*)Comment;
	-(void)setEmail1:(NSString*)Email1;
	-(void)setEmail2:(NSString*)Email2;
	-(void)setEmail3:(NSString*)Email3;
	-(void)setFileID1:(NSString*)FileID1;
	-(void)setFileName1:(NSString*)FileName1;
	-(void)setLogin:(NSString*)Login;
	-(void)setName:(NSString*)Name;
	-(void)setPassword:(NSString*)Password;
	-(void)setReplyEmail:(NSString*)ReplyEmail;
	-(void)setSubject:(NSString*)Subject;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendMail Choreo.
 */
@interface TMBRapidShare_SendMail_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Send an email that contains a link to a file available on RapidShare.
 */
@interface TMBRapidShare_SendMail : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRapidShare_SendMail_Inputs*)newInputSet;
@end

/*! group TMBRapidShare_SendMail Choreo */


/*! group TMBRapidShare.Upload Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Upload Choreo.
 */
@interface TMBRapidShare_Upload_Inputs : TMBChoreographyInputSet
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setFileName:(NSString*)FileName;
	-(void)setFolder:(NSString*)Folder;
	-(void)setLogin:(NSString*)Login;
	-(void)setPassword:(NSString*)Password;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Upload Choreo.
 */
@interface TMBRapidShare_Upload_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Upload a file to RapidShare.
 */
@interface TMBRapidShare_Upload : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRapidShare_Upload_Inputs*)newInputSet;
@end

/*! group TMBRapidShare_Upload Choreo */


/*! group TMBRapidShare.DeleteFiles Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFiles Choreo.
 */
@interface TMBRapidShare_DeleteFiles_Inputs : TMBChoreographyInputSet
	-(void)setFile:(NSString*)File;
	-(void)setLogin:(NSString*)Login;
	-(void)setPassword:(NSString*)Password;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFiles Choreo.
 */
@interface TMBRapidShare_DeleteFiles_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Delete one or more files from RapidShare.
 */
@interface TMBRapidShare_DeleteFiles : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBRapidShare_DeleteFiles_Inputs*)newInputSet;
@end

/*! group TMBRapidShare_DeleteFiles Choreo */
