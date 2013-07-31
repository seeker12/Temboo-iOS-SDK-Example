/*!
 * @header Temboo iOS SDK Parse classes
 *
 * Execute Choreographies from the Temboo Parse bundle.
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

/*! group TMBParse.Users.DeleteUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUser Choreo.
 */
@interface TMBParse_Users_DeleteUser_Inputs : TMBChoreographyInputSet
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUser Choreo.
 */
@interface TMBParse_Users_DeleteUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified user.
 */
@interface TMBParse_Users_DeleteUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Users_DeleteUser_Inputs*)newInputSet;
@end

/*! group TMBParse.Users_DeleteUser Choreo */


/*! group TMBParse.PushNotifications.DeleteInstallation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteInstallation Choreo.
 */
@interface TMBParse_PushNotifications_DeleteInstallation_Inputs : TMBChoreographyInputSet
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setMasterKey:(NSString*)MasterKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteInstallation Choreo.
 */
@interface TMBParse_PushNotifications_DeleteInstallation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes an installation object.
 */
@interface TMBParse_PushNotifications_DeleteInstallation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_PushNotifications_DeleteInstallation_Inputs*)newInputSet;
@end

/*! group TMBParse.PushNotifications_DeleteInstallation Choreo */


/*! group TMBParse.PushNotifications.Query Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@interface TMBParse_PushNotifications_Query_Inputs : TMBChoreographyInputSet
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setCount:(NSString*)Count;
	-(void)setInclude:(NSString*)Include;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMasterKey:(NSString*)MasterKey;
	-(void)setSkip:(NSString*)Skip;
	-(void)setWhere:(NSString*)Where;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@interface TMBParse_PushNotifications_Query_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves multiple installations at once and allows you to narrow results by specifying query constraints.
 */
@interface TMBParse_PushNotifications_Query : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_PushNotifications_Query_Inputs*)newInputSet;
@end

/*! group TMBParse.PushNotifications_Query Choreo */


/*! group TMBParse.Users.Login Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Login Choreo.
 */
@interface TMBParse_Users_Login_Inputs : TMBChoreographyInputSet
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setPassword:(NSString*)Password;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
	-(void)setUsername:(NSString*)Username;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Login Choreo.
 */
@interface TMBParse_Users_Login_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows your application to authenticate a given user; returns user information, user-provided fields, and a session token.
 */
@interface TMBParse_Users_Login : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Users_Login_Inputs*)newInputSet;
@end

/*! group TMBParse.Users_Login Choreo */


/*! group TMBParse.GeoPoints.Query Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@interface TMBParse_GeoPoints_Query_Inputs : TMBChoreographyInputSet
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setClassName:(NSString*)ClassName;
	-(void)setCount:(NSString*)Count;
	-(void)setInclude:(NSString*)Include;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
	-(void)setSkip:(NSString*)Skip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@interface TMBParse_GeoPoints_Query_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns objects associated with Geo points near a specified set of coordinates.
 */
@interface TMBParse_GeoPoints_Query : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_GeoPoints_Query_Inputs*)newInputSet;
@end

/*! group TMBParse.GeoPoints_Query Choreo */


/*! group TMBParse.PushNotifications.UpdateInstallation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateInstallation Choreo.
 */
@interface TMBParse_PushNotifications_UpdateInstallation_Inputs : TMBChoreographyInputSet
	-(void)setInstallation:(NSString*)Installation;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateInstallation Choreo.
 */
@interface TMBParse_PushNotifications_UpdateInstallation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing installation object on Parse.
 */
@interface TMBParse_PushNotifications_UpdateInstallation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_PushNotifications_UpdateInstallation_Inputs*)newInputSet;
@end

/*! group TMBParse.PushNotifications_UpdateInstallation Choreo */


/*! group TMBParse.Roles.RetrieveRole Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveRole Choreo.
 */
@interface TMBParse_Roles_RetrieveRole_Inputs : TMBChoreographyInputSet
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveRole Choreo.
 */
@interface TMBParse_Roles_RetrieveRole_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified role.
 */
@interface TMBParse_Roles_RetrieveRole : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Roles_RetrieveRole_Inputs*)newInputSet;
@end

/*! group TMBParse.Roles_RetrieveRole Choreo */


/*! group TMBParse.PushNotifications.UploadInstallationData Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UploadInstallationData Choreo.
 */
@interface TMBParse_PushNotifications_UploadInstallationData_Inputs : TMBChoreographyInputSet
	-(void)setInstallation:(NSString*)Installation;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadInstallationData Choreo.
 */
@interface TMBParse_PushNotifications_UploadInstallationData_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates an installation object on Parse.
 */
@interface TMBParse_PushNotifications_UploadInstallationData : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_PushNotifications_UploadInstallationData_Inputs*)newInputSet;
@end

/*! group TMBParse.PushNotifications_UploadInstallationData Choreo */


/*! group TMBParse.Objects.DeleteObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteObject Choreo.
 */
@interface TMBParse_Objects_DeleteObject_Inputs : TMBChoreographyInputSet
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setClassName:(NSString*)ClassName;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteObject Choreo.
 */
@interface TMBParse_Objects_DeleteObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given object.
 */
@interface TMBParse_Objects_DeleteObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Objects_DeleteObject_Inputs*)newInputSet;
@end

/*! group TMBParse.Objects_DeleteObject Choreo */


/*! group TMBParse.GeoPoints.GeoPoint Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GeoPoint Choreo.
 */
@interface TMBParse_GeoPoints_GeoPoint_Inputs : TMBChoreographyInputSet
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setClassName:(NSString*)ClassName;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GeoPoint Choreo.
 */
@interface TMBParse_GeoPoints_GeoPoint_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Associates a Geo point with an existing object.
 */
@interface TMBParse_GeoPoints_GeoPoint : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_GeoPoints_GeoPoint_Inputs*)newInputSet;
@end

/*! group TMBParse.GeoPoints_GeoPoint Choreo */


/*! group TMBParse.Roles.DeleteRole Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRole Choreo.
 */
@interface TMBParse_Roles_DeleteRole_Inputs : TMBChoreographyInputSet
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRole Choreo.
 */
@interface TMBParse_Roles_DeleteRole_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a given role.
 */
@interface TMBParse_Roles_DeleteRole : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Roles_DeleteRole_Inputs*)newInputSet;
@end

/*! group TMBParse.Roles_DeleteRole Choreo */


/*! group TMBParse.Queries.Query Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@interface TMBParse_Queries_Query_Inputs : TMBChoreographyInputSet
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setClassName:(NSString*)ClassName;
	-(void)setCount:(NSString*)Count;
	-(void)setInclude:(NSString*)Include;
	-(void)setLimit:(NSString*)Limit;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
	-(void)setSkip:(NSString*)Skip;
	-(void)setWhere:(NSString*)Where;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@interface TMBParse_Queries_Query_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Queries Parse and retrieves objects based on given constraints.
 */
@interface TMBParse_Queries_Query : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Queries_Query_Inputs*)newInputSet;
@end

/*! group TMBParse.Queries_Query Choreo */


/*! group TMBParse.Users.PasswordReset Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the PasswordReset Choreo.
 */
@interface TMBParse_Users_PasswordReset_Inputs : TMBChoreographyInputSet
	-(void)setEmailAddress:(NSString*)EmailAddress;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PasswordReset Choreo.
 */
@interface TMBParse_Users_PasswordReset_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows a user to request a password reset email.
 */
@interface TMBParse_Users_PasswordReset : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Users_PasswordReset_Inputs*)newInputSet;
@end

/*! group TMBParse.Users_PasswordReset Choreo */


/*! group TMBParse.Roles.CreateRole Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateRole Choreo.
 */
@interface TMBParse_Roles_CreateRole_Inputs : TMBChoreographyInputSet
	-(void)setRole:(NSString*)Role;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRole Choreo.
 */
@interface TMBParse_Roles_CreateRole_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new role.
 */
@interface TMBParse_Roles_CreateRole : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Roles_CreateRole_Inputs*)newInputSet;
@end

/*! group TMBParse.Roles_CreateRole Choreo */


/*! group TMBParse.Users.UpdateUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUser Choreo.
 */
@interface TMBParse_Users_UpdateUser_Inputs : TMBChoreographyInputSet
	-(void)setUserInformation:(NSString*)UserInformation;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
	-(void)setSessionToken:(NSString*)SessionToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUser Choreo.
 */
@interface TMBParse_Users_UpdateUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates information for an existing user.
 */
@interface TMBParse_Users_UpdateUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Users_UpdateUser_Inputs*)newInputSet;
@end

/*! group TMBParse.Users_UpdateUser Choreo */


/*! group TMBParse.Objects.RetrieveObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveObject Choreo.
 */
@interface TMBParse_Objects_RetrieveObject_Inputs : TMBChoreographyInputSet
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setClassName:(NSString*)ClassName;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveObject Choreo.
 */
@interface TMBParse_Objects_RetrieveObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a given object.
 */
@interface TMBParse_Objects_RetrieveObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Objects_RetrieveObject_Inputs*)newInputSet;
@end

/*! group TMBParse.Objects_RetrieveObject Choreo */


/*! group TMBParse.Files.DeleteFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteFile Choreo.
 */
@interface TMBParse_Files_DeleteFile_Inputs : TMBChoreographyInputSet
	-(void)setFileName:(NSString*)FileName;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setMasterKey:(NSString*)MasterKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteFile Choreo.
 */
@interface TMBParse_Files_DeleteFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a file stored on Parse.
 */
@interface TMBParse_Files_DeleteFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Files_DeleteFile_Inputs*)newInputSet;
@end

/*! group TMBParse.Files_DeleteFile Choreo */


/*! group TMBParse.Files.UploadFile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UploadFile Choreo.
 */
@interface TMBParse_Files_UploadFile_Inputs : TMBChoreographyInputSet
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setContentType:(NSString*)ContentType;
	-(void)setFileName:(NSString*)FileName;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadFile Choreo.
 */
@interface TMBParse_Files_UploadFile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Uploads a file to Parse.
 */
@interface TMBParse_Files_UploadFile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Files_UploadFile_Inputs*)newInputSet;
@end

/*! group TMBParse.Files_UploadFile Choreo */


/*! group TMBParse.Objects.CreateObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateObject Choreo.
 */
@interface TMBParse_Objects_CreateObject_Inputs : TMBChoreographyInputSet
	-(void)setObjectContents:(NSString*)ObjectContents;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setClassName:(NSString*)ClassName;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateObject Choreo.
 */
@interface TMBParse_Objects_CreateObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new object on Parse.
 */
@interface TMBParse_Objects_CreateObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Objects_CreateObject_Inputs*)newInputSet;
@end

/*! group TMBParse.Objects_CreateObject Choreo */


/*! group TMBParse.Objects.UpdateObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateObject Choreo.
 */
@interface TMBParse_Objects_UpdateObject_Inputs : TMBChoreographyInputSet
	-(void)setObjectContents:(NSString*)ObjectContents;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setClassName:(NSString*)ClassName;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateObject Choreo.
 */
@interface TMBParse_Objects_UpdateObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing object.
 */
@interface TMBParse_Objects_UpdateObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Objects_UpdateObject_Inputs*)newInputSet;
@end

/*! group TMBParse.Objects_UpdateObject Choreo */


/*! group TMBParse.Files.AssociateWithObject Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AssociateWithObject Choreo.
 */
@interface TMBParse_Files_AssociateWithObject_Inputs : TMBChoreographyInputSet
	-(void)setAssociation:(NSString*)Association;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setClassName:(NSString*)ClassName;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AssociateWithObject Choreo.
 */
@interface TMBParse_Files_AssociateWithObject_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to associate a previously uploaded file with Parse objects.
 */
@interface TMBParse_Files_AssociateWithObject : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Files_AssociateWithObject_Inputs*)newInputSet;
@end

/*! group TMBParse.Files_AssociateWithObject Choreo */


/*! group TMBParse.Users.RetrieveUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveUser Choreo.
 */
@interface TMBParse_Users_RetrieveUser_Inputs : TMBChoreographyInputSet
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveUser Choreo.
 */
@interface TMBParse_Users_RetrieveUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves details for a specific user.
 */
@interface TMBParse_Users_RetrieveUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Users_RetrieveUser_Inputs*)newInputSet;
@end

/*! group TMBParse.Users_RetrieveUser Choreo */


/*! group TMBParse.PushNotifications.SendNotification Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SendNotification Choreo.
 */
@interface TMBParse_PushNotifications_SendNotification_Inputs : TMBChoreographyInputSet
	-(void)setNotifcation:(NSString*)Notifcation;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SendNotification Choreo.
 */
@interface TMBParse_PushNotifications_SendNotification_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Sends a push notification.
 */
@interface TMBParse_PushNotifications_SendNotification : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_PushNotifications_SendNotification_Inputs*)newInputSet;
@end

/*! group TMBParse.PushNotifications_SendNotification Choreo */


/*! group TMBParse.Roles.UpdateRole Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateRole Choreo.
 */
@interface TMBParse_Roles_UpdateRole_Inputs : TMBChoreographyInputSet
	-(void)setRole:(NSString*)Role;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateRole Choreo.
 */
@interface TMBParse_Roles_UpdateRole_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing role.
 */
@interface TMBParse_Roles_UpdateRole : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Roles_UpdateRole_Inputs*)newInputSet;
@end

/*! group TMBParse.Roles_UpdateRole Choreo */


/*! group TMBParse.Users.Query Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@interface TMBParse_Users_Query_Inputs : TMBChoreographyInputSet
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setCount:(NSString*)Count;
	-(void)setInclude:(NSString*)Include;
	-(void)setLimit:(NSString*)Limit;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
	-(void)setWhere:(NSString*)Where;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@interface TMBParse_Users_Query_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves multiple users at once and allows you to specify query constraints.
 */
@interface TMBParse_Users_Query : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Users_Query_Inputs*)newInputSet;
@end

/*! group TMBParse.Users_Query Choreo */


/*! group TMBParse.Users.LinkNewUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LinkNewUser Choreo.
 */
@interface TMBParse_Users_LinkNewUser_Inputs : TMBChoreographyInputSet
	-(void)setAuthData:(NSString*)AuthData;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LinkNewUser Choreo.
 */
@interface TMBParse_Users_LinkNewUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows your application to sign up and login users by linking them to other services such as Twitter or Facebook.
 */
@interface TMBParse_Users_LinkNewUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Users_LinkNewUser_Inputs*)newInputSet;
@end

/*! group TMBParse.Users_LinkNewUser Choreo */


/*! group TMBParse.Users.SignUp Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SignUp Choreo.
 */
@interface TMBParse_Users_SignUp_Inputs : TMBChoreographyInputSet
	-(void)setUser:(NSString*)User;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SignUp Choreo.
 */
@interface TMBParse_Users_SignUp_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows your application to sign up a new user.
 */
@interface TMBParse_Users_SignUp : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Users_SignUp_Inputs*)newInputSet;
@end

/*! group TMBParse.Users_SignUp Choreo */


/*! group TMBParse.Users.LinkExistingUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LinkExistingUser Choreo.
 */
@interface TMBParse_Users_LinkExistingUser_Inputs : TMBChoreographyInputSet
	-(void)setAuthData:(NSString*)AuthData;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
	-(void)setSessionToken:(NSString*)SessionToken;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LinkExistingUser Choreo.
 */
@interface TMBParse_Users_LinkExistingUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows your application to link an existing user with a service like Facebook or Twitter.
 */
@interface TMBParse_Users_LinkExistingUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_Users_LinkExistingUser_Inputs*)newInputSet;
@end

/*! group TMBParse.Users_LinkExistingUser Choreo */


/*! group TMBParse.PushNotifications.RetrieveInstallation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RetrieveInstallation Choreo.
 */
@interface TMBParse_PushNotifications_RetrieveInstallation_Inputs : TMBChoreographyInputSet
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setApplicationID:(NSString*)ApplicationID;
	-(void)setRESTAPIKey:(NSString*)RESTAPIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RetrieveInstallation Choreo.
 */
@interface TMBParse_PushNotifications_RetrieveInstallation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the contents of an installation object.
 */
@interface TMBParse_PushNotifications_RetrieveInstallation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBParse_PushNotifications_RetrieveInstallation_Inputs*)newInputSet;
@end

/*! group TMBParse.PushNotifications_RetrieveInstallation Choreo */
