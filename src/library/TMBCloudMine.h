/*!
 * @header Temboo iOS SDK CloudMine classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBCloudMine.FileStorage.GetFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetFile Choreo.
 */
@interface TMBCloudMine_FileStorage_GetFile_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setKey:(NSString*)Key;
	-(void)setSessionToken:(NSString*)SessionToken;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetFile Choreo.
 */
@interface TMBCloudMine_FileStorage_GetFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a file from the CloudMine server with a given key.
 */
@interface TMBCloudMine_FileStorage_GetFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_FileStorage_GetFile_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.FileStorage_GetFile Choreo */


/*! group TMBCloudMine.FileStorage.SetFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SetFile Choreo.
 */
@interface TMBCloudMine_FileStorage_SetFile_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setContentType:(NSString*)ContentType;
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setKey:(NSString*)Key;
	-(void)setSessionToken:(NSString*)SessionToken;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SetFile Choreo.
 */
@interface TMBCloudMine_FileStorage_SetFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to update or create a file on the CloudMine server.
 */
@interface TMBCloudMine_FileStorage_SetFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_FileStorage_SetFile_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.FileStorage_SetFile Choreo */


/*! group TMBCloudMine.FileStorage.DeleteFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFile Choreo.
 */
@interface TMBCloudMine_FileStorage_DeleteFile_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setKeys:(NSString*)Keys;
	-(void)setSessionToken:(NSString*)SessionToken;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFile Choreo.
 */
@interface TMBCloudMine_FileStorage_DeleteFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes one or more files from the CloudMine server using the keys provided.
 */
@interface TMBCloudMine_FileStorage_DeleteFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_FileStorage_DeleteFile_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.FileStorage_DeleteFile Choreo */


/*! group TMBCloudMine.UserAccountManagement.CreateAccount Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccount Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_CreateAccount_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setName:(NSString*)Name;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccount Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_CreateAccount_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a user account with a given username and password.
 */
@interface TMBCloudMine_UserAccountManagement_CreateAccount : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_UserAccountManagement_CreateAccount_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.UserAccountManagement_CreateAccount Choreo */


/*! group TMBCloudMine.ObjectStorage.ObjectUpdate Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ObjectUpdate Choreo.
 */
@interface TMBCloudMine_ObjectStorage_ObjectUpdate_Inputs : TMBChoreographyInputSet
	-(void)setData:(NSString*)Data;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setSessionToken:(NSString*)SessionToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectUpdate Choreo.
 */
@interface TMBCloudMine_ObjectStorage_ObjectUpdate_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to update, merge, or create key/value pairs.

 */
@interface TMBCloudMine_ObjectStorage_ObjectUpdate : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_ObjectStorage_ObjectUpdate_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.ObjectStorage_ObjectUpdate Choreo */


/*! group TMBCloudMine.UserAccountManagement.AccountLogout Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AccountLogout Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_AccountLogout_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setSessionToken:(NSString*)SessionToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AccountLogout Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_AccountLogout_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to invalidate a user's session token.
 */
@interface TMBCloudMine_UserAccountManagement_AccountLogout : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_UserAccountManagement_AccountLogout_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.UserAccountManagement_AccountLogout Choreo */


/*! group TMBCloudMine.ObjectStorage.ObjectGet Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ObjectGet Choreo.
 */
@interface TMBCloudMine_ObjectStorage_ObjectGet_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setCount:(NSString*)Count;
	-(void)setKeys:(NSString*)Keys;
	-(void)setLimit:(NSString*)Limit;
	-(void)setSessionToken:(NSString*)SessionToken;
	-(void)setSkip:(NSString*)Skip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectGet Choreo.
 */
@interface TMBCloudMine_ObjectStorage_ObjectGet_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves one or more objects from Cloudmine.
 */
@interface TMBCloudMine_ObjectStorage_ObjectGet : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_ObjectStorage_ObjectGet_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.ObjectStorage_ObjectGet Choreo */


/*! group TMBCloudMine.ObjectStorage.ObjectDelete Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ObjectDelete Choreo.
 */
@interface TMBCloudMine_ObjectStorage_ObjectDelete_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAll:(NSString*)All;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setKeys:(NSString*)Keys;
	-(void)setSessionToken:(NSString*)SessionToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectDelete Choreo.
 */
@interface TMBCloudMine_ObjectStorage_ObjectDelete_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes one or more specified keys.
 */
@interface TMBCloudMine_ObjectStorage_ObjectDelete : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_ObjectStorage_ObjectDelete_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.ObjectStorage_ObjectDelete Choreo */


/*! group TMBCloudMine.UserAccountManagement.SearchUsers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchUsers Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_SearchUsers_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setQuery:(NSString*)Query;
	-(void)setSessionToken:(NSString*)SessionToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchUsers Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_SearchUsers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to search for users using CloudMine's search query language syntax.
 */
@interface TMBCloudMine_UserAccountManagement_SearchUsers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_UserAccountManagement_SearchUsers_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.UserAccountManagement_SearchUsers Choreo */


/*! group TMBCloudMine.ObjectStorage.ObjectSet Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ObjectSet Choreo.
 */
@interface TMBCloudMine_ObjectStorage_ObjectSet_Inputs : TMBChoreographyInputSet
	-(void)setData:(NSString*)Data;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setSessionToken:(NSString*)SessionToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectSet Choreo.
 */
@interface TMBCloudMine_ObjectStorage_ObjectSet_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to update or create key/value pairs.

 */
@interface TMBCloudMine_ObjectStorage_ObjectSet : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_ObjectStorage_ObjectSet_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.ObjectStorage_ObjectSet Choreo */


/*! group TMBCloudMine.UserAccountManagement.GetUsers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetUsers Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_GetUsers_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetUsers Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_GetUsers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all users that have been created for your application.
 */
@interface TMBCloudMine_UserAccountManagement_GetUsers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_UserAccountManagement_GetUsers_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.UserAccountManagement_GetUsers Choreo */


/*! group TMBCloudMine.UserAccountManagement.PasswordChange Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PasswordChange Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_PasswordChange_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setNewPassword:(NSString*)NewPassword;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PasswordChange Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_PasswordChange_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a user's password.
 */
@interface TMBCloudMine_UserAccountManagement_PasswordChange : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_UserAccountManagement_PasswordChange_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.UserAccountManagement_PasswordChange Choreo */


/*! group TMBCloudMine.UserAccountManagement.AccountLogin Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AccountLogin Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_AccountLogin_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setPassword:(NSString*)Password;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AccountLogin Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_AccountLogin_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Authenticates a user and returns a session token in order to create and query against user-level objects.
 */
@interface TMBCloudMine_UserAccountManagement_AccountLogin : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_UserAccountManagement_AccountLogin_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.UserAccountManagement_AccountLogin Choreo */


/*! group TMBCloudMine.UserAccountManagement.PasswordReset Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PasswordReset Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_PasswordReset_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PasswordReset Choreo.
 */
@interface TMBCloudMine_UserAccountManagement_PasswordReset_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows a user who has forgotten their password to trigger a password reset email.
 */
@interface TMBCloudMine_UserAccountManagement_PasswordReset : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_UserAccountManagement_PasswordReset_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.UserAccountManagement_PasswordReset Choreo */


/*! group TMBCloudMine.ObjectStorage.ObjectSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ObjectSearch Choreo.
 */
@interface TMBCloudMine_ObjectStorage_ObjectSearch_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setApplicationIdentifier:(NSString*)ApplicationIdentifier;
	-(void)setCount:(NSString*)Count;
	-(void)setLimit:(NSString*)Limit;
	-(void)setQuery:(NSString*)Query;
	-(void)setSessionToken:(NSString*)SessionToken;
	-(void)setSkip:(NSString*)Skip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ObjectSearch Choreo.
 */
@interface TMBCloudMine_ObjectStorage_ObjectSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to query key/value pair objects.
 */
@interface TMBCloudMine_ObjectStorage_ObjectSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBCloudMine_ObjectStorage_ObjectSearch_Inputs*)newInputSet;
@end

/*! group TMBCloudMine.ObjectStorage_ObjectSearch Choreo */
