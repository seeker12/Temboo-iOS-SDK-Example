/*!
 * @header Temboo iOS SDK OneLogin classes
 *
 * Execute Choreographies from the Temboo OneLogin bundle.
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

/*! group TMBOneLogin.Groups.ShowGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowGroup Choreo.
 */
@interface TMBOneLogin_Groups_ShowGroup_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowGroup Choreo.
 */
@interface TMBOneLogin_Groups_ShowGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a single group.
 */
@interface TMBOneLogin_Groups_ShowGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Groups_ShowGroup_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Groups_ShowGroup Choreo */


/*! group TMBOneLogin.Users.CreateUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateUser Choreo.
 */
@interface TMBOneLogin_Users_CreateUser_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAddress:(NSString*)Address;
	-(void)setEmail:(NSString*)Email;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setGroupID:(NSString*)GroupID;
	-(void)setLastName:(NSString*)LastName;
	-(void)setOpenIDName:(NSString*)OpenIDName;
	-(void)setPhone:(NSString*)Phone;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateUser Choreo.
 */
@interface TMBOneLogin_Users_CreateUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new user.
 */
@interface TMBOneLogin_Users_CreateUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Users_CreateUser_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Users_CreateUser Choreo */


/*! group TMBOneLogin.Accounts.ListAll Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAll Choreo.
 */
@interface TMBOneLogin_Accounts_ListAll_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAll Choreo.
 */
@interface TMBOneLogin_Accounts_ListAll_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all accounts.
 */
@interface TMBOneLogin_Accounts_ListAll : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Accounts_ListAll_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Accounts_ListAll Choreo */


/*! group TMBOneLogin.Groups.ListAll Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAll Choreo.
 */
@interface TMBOneLogin_Groups_ListAll_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAll Choreo.
 */
@interface TMBOneLogin_Groups_ListAll_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all groups.
 */
@interface TMBOneLogin_Groups_ListAll : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Groups_ListAll_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Groups_ListAll Choreo */


/*! group TMBOneLogin.Users.DeleteUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUser Choreo.
 */
@interface TMBOneLogin_Users_DeleteUser_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUser Choreo.
 */
@interface TMBOneLogin_Users_DeleteUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes an existing user.
 */
@interface TMBOneLogin_Users_DeleteUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Users_DeleteUser_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Users_DeleteUser Choreo */


/*! group TMBOneLogin.Accounts.UpdateAccount Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccount Choreo.
 */
@interface TMBOneLogin_Accounts_UpdateAccount_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAddress:(NSString*)Address;
	-(void)setCity:(NSString*)City;
	-(void)setCountry:(NSString*)Country;
	-(void)setEmail:(NSString*)Email;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setID:(NSString*)ID;
	-(void)setLastName:(NSString*)LastName;
	-(void)setPhone:(NSString*)Phone;
	-(void)setPlan:(NSString*)Plan;
	-(void)setState:(NSString*)State;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccount Choreo.
 */
@interface TMBOneLogin_Accounts_UpdateAccount_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing account.
 */
@interface TMBOneLogin_Accounts_UpdateAccount : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Accounts_UpdateAccount_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Accounts_UpdateAccount Choreo */


/*! group TMBOneLogin.Users.ListAll Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAll Choreo.
 */
@interface TMBOneLogin_Users_ListAll_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAll Choreo.
 */
@interface TMBOneLogin_Users_ListAll_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all users.
 */
@interface TMBOneLogin_Users_ListAll : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Users_ListAll_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Users_ListAll Choreo */


/*! group TMBOneLogin.Users.UpdateUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUser Choreo.
 */
@interface TMBOneLogin_Users_UpdateUser_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAddress:(NSString*)Address;
	-(void)setEmail:(NSString*)Email;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setGroupID:(NSString*)GroupID;
	-(void)setID:(NSString*)ID;
	-(void)setLastName:(NSString*)LastName;
	-(void)setOpenIDName:(NSString*)OpenIDName;
	-(void)setPhone:(NSString*)Phone;
	-(void)setRole:(NSString*)Role;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUser Choreo.
 */
@interface TMBOneLogin_Users_UpdateUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing user.
 */
@interface TMBOneLogin_Users_UpdateUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Users_UpdateUser_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Users_UpdateUser Choreo */


/*! group TMBOneLogin.Events.ListAll Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAll Choreo.
 */
@interface TMBOneLogin_Events_ListAll_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAll Choreo.
 */
@interface TMBOneLogin_Events_ListAll_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all events (aka activities).
 */
@interface TMBOneLogin_Events_ListAll : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Events_ListAll_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Events_ListAll Choreo */


/*! group TMBOneLogin.Users.ShowUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowUser Choreo.
 */
@interface TMBOneLogin_Users_ShowUser_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowUser Choreo.
 */
@interface TMBOneLogin_Users_ShowUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a single user.
 */
@interface TMBOneLogin_Users_ShowUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Users_ShowUser_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Users_ShowUser Choreo */


/*! group TMBOneLogin.Events.ShowEvent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowEvent Choreo.
 */
@interface TMBOneLogin_Events_ShowEvent_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowEvent Choreo.
 */
@interface TMBOneLogin_Events_ShowEvent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a single event.
 */
@interface TMBOneLogin_Events_ShowEvent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Events_ShowEvent_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Events_ShowEvent Choreo */


/*! group TMBOneLogin.Events.CreateEvent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateEvent Choreo.
 */
@interface TMBOneLogin_Events_CreateEvent_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setEventTypeID:(NSString*)EventTypeID;
	-(void)setObjectID:(NSString*)ObjectID;
	-(void)setObjectName:(NSString*)ObjectName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEvent Choreo.
 */
@interface TMBOneLogin_Events_CreateEvent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new event.
 */
@interface TMBOneLogin_Events_CreateEvent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Events_CreateEvent_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Events_CreateEvent Choreo */


/*! group TMBOneLogin.Accounts.ShowAccount Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowAccount Choreo.
 */
@interface TMBOneLogin_Accounts_ShowAccount_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowAccount Choreo.
 */
@interface TMBOneLogin_Accounts_ShowAccount_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a single account.
 */
@interface TMBOneLogin_Accounts_ShowAccount : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Accounts_ShowAccount_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Accounts_ShowAccount Choreo */


/*! group TMBOneLogin.Accounts.CreateAccount Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccount Choreo.
 */
@interface TMBOneLogin_Accounts_CreateAccount_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAddress:(NSString*)Address;
	-(void)setCity:(NSString*)City;
	-(void)setCountry:(NSString*)Country;
	-(void)setEmail:(NSString*)Email;
	-(void)setFirstName:(NSString*)FirstName;
	-(void)setLastName:(NSString*)LastName;
	-(void)setPhone:(NSString*)Phone;
	-(void)setPlan:(NSString*)Plan;
	-(void)setState:(NSString*)State;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccount Choreo.
 */
@interface TMBOneLogin_Accounts_CreateAccount_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new account.
 */
@interface TMBOneLogin_Accounts_CreateAccount : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Accounts_CreateAccount_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Accounts_CreateAccount Choreo */


/*! group TMBOneLogin.Roles.ListAll Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAll Choreo.
 */
@interface TMBOneLogin_Roles_ListAll_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAll Choreo.
 */
@interface TMBOneLogin_Roles_ListAll_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all roles.
 */
@interface TMBOneLogin_Roles_ListAll : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Roles_ListAll_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Roles_ListAll Choreo */


/*! group TMBOneLogin.Roles.ShowRole Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowRole Choreo.
 */
@interface TMBOneLogin_Roles_ShowRole_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowRole Choreo.
 */
@interface TMBOneLogin_Roles_ShowRole_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a single role.
 */
@interface TMBOneLogin_Roles_ShowRole : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBOneLogin_Roles_ShowRole_Inputs*)newInputSet;
@end

/*! group TMBOneLogin.Roles_ShowRole Choreo */
