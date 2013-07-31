/*!
 * @header Temboo iOS SDK Zendesk classes
 *
 * Execute Choreographies from the Temboo Zendesk bundle.
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

/*! group TMBZendesk.Users.ListUsersByOrganization Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListUsersByOrganization Choreo.
 */
@interface TMBZendesk_Users_ListUsersByOrganization_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setOrganizationID:(NSString*)OrganizationID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUsersByOrganization Choreo.
 */
@interface TMBZendesk_Users_ListUsersByOrganization_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all tickets involving a specified organization.
 */
@interface TMBZendesk_Users_ListUsersByOrganization : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_ListUsersByOrganization_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_ListUsersByOrganization Choreo */


/*! group TMBZendesk.Tickets.ListTicketsByOrganization Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListTicketsByOrganization Choreo.
 */
@interface TMBZendesk_Tickets_ListTicketsByOrganization_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setOrganizationID:(NSString*)OrganizationID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTicketsByOrganization Choreo.
 */
@interface TMBZendesk_Tickets_ListTicketsByOrganization_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all tickets involving a specified organization.
 */
@interface TMBZendesk_Tickets_ListTicketsByOrganization : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tickets_ListTicketsByOrganization_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tickets_ListTicketsByOrganization Choreo */


/*! group TMBZendesk.Tags.ListTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListTags Choreo.
 */
@interface TMBZendesk_Tags_ListTags_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTags Choreo.
 */
@interface TMBZendesk_Tags_ListTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the most popular recent tags in decreasing popularity.
 */
@interface TMBZendesk_Tags_ListTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tags_ListTags_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tags_ListTags Choreo */


/*! group TMBZendesk.Tickets.GetTicket Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTicket Choreo.
 */
@interface TMBZendesk_Tickets_GetTicket_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setID:(NSString*)ID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTicket Choreo.
 */
@interface TMBZendesk_Tickets_GetTicket_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about a ticket using its ID.
 */
@interface TMBZendesk_Tickets_GetTicket : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tickets_GetTicket_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tickets_GetTicket Choreo */


/*! group TMBZendesk.Users.SearchUsers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchUsers Choreo.
 */
@interface TMBZendesk_Users_SearchUsers_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setQuery:(NSString*)Query;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchUsers Choreo.
 */
@interface TMBZendesk_Users_SearchUsers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of users who match the search parameters.
 */
@interface TMBZendesk_Users_SearchUsers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_SearchUsers_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_SearchUsers Choreo */


/*! group TMBZendesk.Users.UpdateUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUser Choreo.
 */
@interface TMBZendesk_Users_UpdateUser_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setUserData:(NSString*)UserData;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUser Choreo.
 */
@interface TMBZendesk_Users_UpdateUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing user.
 */
@interface TMBZendesk_Users_UpdateUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_UpdateUser_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_UpdateUser Choreo */


/*! group TMBZendesk.Users.CreateUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateUser Choreo.
 */
@interface TMBZendesk_Users_CreateUser_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setUserData:(NSString*)UserData;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateUser Choreo.
 */
@interface TMBZendesk_Users_CreateUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new user.
 */
@interface TMBZendesk_Users_CreateUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_CreateUser_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_CreateUser Choreo */


/*! group TMBZendesk.Tickets.ListAllTickets Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllTickets Choreo.
 */
@interface TMBZendesk_Tickets_ListAllTickets_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setNumber:(NSString*)Number;
	-(void)setPage:(NSString*)Page;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllTickets Choreo.
 */
@interface TMBZendesk_Tickets_ListAllTickets_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all existing tickets.
 */
@interface TMBZendesk_Tickets_ListAllTickets : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tickets_ListAllTickets_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tickets_ListAllTickets Choreo */


/*! group TMBZendesk.Macros.ApplyMacroToAllTickets Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ApplyMacroToAllTickets Choreo.
 */
@interface TMBZendesk_Macros_ApplyMacroToAllTickets_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setMacroID:(NSString*)MacroID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ApplyMacroToAllTickets Choreo.
 */
@interface TMBZendesk_Macros_ApplyMacroToAllTickets_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Applies a given macro to all applicable tickets.
 */
@interface TMBZendesk_Macros_ApplyMacroToAllTickets : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Macros_ApplyMacroToAllTickets_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Macros_ApplyMacroToAllTickets Choreo */


/*! group TMBZendesk.Macros.ApplyMacroToTicket Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ApplyMacroToTicket Choreo.
 */
@interface TMBZendesk_Macros_ApplyMacroToTicket_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setMacroID:(NSString*)MacroID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setTicketID:(NSString*)TicketID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ApplyMacroToTicket Choreo.
 */
@interface TMBZendesk_Macros_ApplyMacroToTicket_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Applies a macro to a given ticket.
 */
@interface TMBZendesk_Macros_ApplyMacroToTicket : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Macros_ApplyMacroToTicket_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Macros_ApplyMacroToTicket Choreo */


/*! group TMBZendesk.Tickets.CreateTicket Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateTicket Choreo.
 */
@interface TMBZendesk_Tickets_CreateTicket_Inputs : TMBChoreographyInputSet
	-(void)setComment:(NSString*)Comment;
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setSubject:(NSString*)Subject;
	-(void)setTicketData:(NSString*)TicketData;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTicket Choreo.
 */
@interface TMBZendesk_Tickets_CreateTicket_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new ticket.
 */
@interface TMBZendesk_Tickets_CreateTicket : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tickets_CreateTicket_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tickets_CreateTicket Choreo */


/*! group TMBZendesk.Users.UpdateUserImage Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUserImage Choreo.
 */
@interface TMBZendesk_Users_UpdateUserImage_Inputs : TMBChoreographyInputSet
	-(void)setResponse:(NSString*)Response;
	-(void)setEmail:(NSString*)Email;
	-(void)setImageURL:(NSString*)ImageURL;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUserImage Choreo.
 */
@interface TMBZendesk_Users_UpdateUserImage_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates a user's profile image.
 */
@interface TMBZendesk_Users_UpdateUserImage : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_UpdateUserImage_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_UpdateUserImage Choreo */


/*! group TMBZendesk.Tickets.UpdateTicket Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateTicket Choreo.
 */
@interface TMBZendesk_Tickets_UpdateTicket_Inputs : TMBChoreographyInputSet
	-(void)setComment:(NSString*)Comment;
	-(void)setEmail:(NSString*)Email;
	-(void)setMetadata:(NSString*)Metadata;
	-(void)setPassword:(NSString*)Password;
	-(void)setPublic:(NSString*)Public;
	-(void)setServer:(NSString*)Server;
	-(void)setStatus:(NSString*)Status;
	-(void)setTicketData:(NSString*)TicketData;
	-(void)setTicketID:(NSString*)TicketID;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateTicket Choreo.
 */
@interface TMBZendesk_Tickets_UpdateTicket_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Updates an existing ticket.
 */
@interface TMBZendesk_Tickets_UpdateTicket : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tickets_UpdateTicket_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tickets_UpdateTicket Choreo */


/*! group TMBZendesk.ActivityStream.ShowActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowActivity Choreo.
 */
@interface TMBZendesk_ActivityStream_ShowActivity_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setID:(NSString*)ID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowActivity Choreo.
 */
@interface TMBZendesk_ActivityStream_ShowActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns only a list of activities pertaining to the agent executing the request.
 */
@interface TMBZendesk_ActivityStream_ShowActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_ActivityStream_ShowActivity_Inputs*)newInputSet;
@end

/*! group TMBZendesk.ActivityStream_ShowActivity Choreo */


/*! group TMBZendesk.Search.SearchAnonymous Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchAnonymous Choreo.
 */
@interface TMBZendesk_Search_SearchAnonymous_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setQuery:(NSString*)Query;
	-(void)setServer:(NSString*)Server;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setSortOrder:(NSString*)SortOrder;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchAnonymous Choreo.
 */
@interface TMBZendesk_Search_SearchAnonymous_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows anonymous users to search public forums.
 */
@interface TMBZendesk_Search_SearchAnonymous : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Search_SearchAnonymous_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Search_SearchAnonymous Choreo */


/*! group TMBZendesk.ActivityStream.ListActivity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListActivity Choreo.
 */
@interface TMBZendesk_ActivityStream_ListActivity_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListActivity Choreo.
 */
@interface TMBZendesk_ActivityStream_ListActivity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of activities pertaining to the agent executing the request.
 */
@interface TMBZendesk_ActivityStream_ListActivity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_ActivityStream_ListActivity_Inputs*)newInputSet;
@end

/*! group TMBZendesk.ActivityStream_ListActivity Choreo */


/*! group TMBZendesk.Tickets.DeleteTicket Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTicket Choreo.
 */
@interface TMBZendesk_Tickets_DeleteTicket_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setID:(NSString*)ID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTicket Choreo.
 */
@interface TMBZendesk_Tickets_DeleteTicket_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes an existing ticket.
 */
@interface TMBZendesk_Tickets_DeleteTicket : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tickets_DeleteTicket_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tickets_DeleteTicket Choreo */


/*! group TMBZendesk.Search.SearchAll Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchAll Choreo.
 */
@interface TMBZendesk_Search_SearchAll_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setQuery:(NSString*)Query;
	-(void)setServer:(NSString*)Server;
	-(void)setSortBy:(NSString*)SortBy;
	-(void)setSortOrder:(NSString*)SortOrder;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchAll Choreo.
 */
@interface TMBZendesk_Search_SearchAll_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns search results across all ticket fields.
 */
@interface TMBZendesk_Search_SearchAll : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Search_SearchAll_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Search_SearchAll Choreo */


/*! group TMBZendesk.Attachments.UploadAttachment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UploadAttachment Choreo.
 */
@interface TMBZendesk_Attachments_UploadAttachment_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setExistingToken:(NSString*)ExistingToken;
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setFileName:(NSString*)FileName;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setVaultFile:(NSString*)VaultFile;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadAttachment Choreo.
 */
@interface TMBZendesk_Attachments_UploadAttachment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getToken;	
@end

/*!
 * Uploads a file to be used as an attachment to a ticket.
 */
@interface TMBZendesk_Attachments_UploadAttachment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Attachments_UploadAttachment_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Attachments_UploadAttachment Choreo */


/*! group TMBZendesk.Macros.ListMacros Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListMacros Choreo.
 */
@interface TMBZendesk_Macros_ListMacros_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMacros Choreo.
 */
@interface TMBZendesk_Macros_ListMacros_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all active macros available to the current user.
 */
@interface TMBZendesk_Macros_ListMacros : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Macros_ListMacros_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Macros_ListMacros Choreo */


/*! group TMBZendesk.Users.ShowUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowUser Choreo.
 */
@interface TMBZendesk_Users_ShowUser_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setID:(NSString*)ID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowUser Choreo.
 */
@interface TMBZendesk_Users_ShowUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about given user.
 */
@interface TMBZendesk_Users_ShowUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_ShowUser_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_ShowUser Choreo */


/*! group TMBZendesk.Users.DeleteUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUser Choreo.
 */
@interface TMBZendesk_Users_DeleteUser_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setID:(NSString*)ID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUser Choreo.
 */
@interface TMBZendesk_Users_DeleteUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a given user.
 */
@interface TMBZendesk_Users_DeleteUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_DeleteUser_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_DeleteUser Choreo */


/*! group TMBZendesk.Users.ShowCurrentUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ShowCurrentUser Choreo.
 */
@interface TMBZendesk_Users_ShowCurrentUser_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowCurrentUser Choreo.
 */
@interface TMBZendesk_Users_ShowCurrentUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the currently authenticated user.
 */
@interface TMBZendesk_Users_ShowCurrentUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_ShowCurrentUser_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_ShowCurrentUser Choreo */


/*! group TMBZendesk.Users.CreateManyUsers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateManyUsers Choreo.
 */
@interface TMBZendesk_Users_CreateManyUsers_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setUsers:(NSString*)Users;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateManyUsers Choreo.
 */
@interface TMBZendesk_Users_CreateManyUsers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates many new users at one time.
 */
@interface TMBZendesk_Users_CreateManyUsers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_CreateManyUsers_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_CreateManyUsers Choreo */


/*! group TMBZendesk.Users.ListUsersByGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListUsersByGroup Choreo.
 */
@interface TMBZendesk_Users_ListUsersByGroup_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setGroupID:(NSString*)GroupID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUsersByGroup Choreo.
 */
@interface TMBZendesk_Users_ListUsersByGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all users in a specified group.
 */
@interface TMBZendesk_Users_ListUsersByGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_ListUsersByGroup_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_ListUsersByGroup Choreo */


/*! group TMBZendesk.Tickets.ListTicketsByUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListTicketsByUser Choreo.
 */
@interface TMBZendesk_Tickets_ListTicketsByUser_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setUserID:(NSString*)UserID;
	-(void)setUserType:(NSString*)UserType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTicketsByUser Choreo.
 */
@interface TMBZendesk_Tickets_ListTicketsByUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * 
 */
@interface TMBZendesk_Tickets_ListTicketsByUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tickets_ListTicketsByUser_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tickets_ListTicketsByUser Choreo */


/*! group TMBZendesk.Tickets.ListTicketIncidents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListTicketIncidents Choreo.
 */
@interface TMBZendesk_Tickets_ListTicketIncidents_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setID:(NSString*)ID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTicketIncidents Choreo.
 */
@interface TMBZendesk_Tickets_ListTicketIncidents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all the incidents associated with a given ticket.
 */
@interface TMBZendesk_Tickets_ListTicketIncidents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tickets_ListTicketIncidents_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tickets_ListTicketIncidents Choreo */


/*! group TMBZendesk.Tickets.CreateTicketNewRequester Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateTicketNewRequester Choreo.
 */
@interface TMBZendesk_Tickets_CreateTicketNewRequester_Inputs : TMBChoreographyInputSet
	-(void)setComment:(NSString*)Comment;
	-(void)setEmail:(NSString*)Email;
	-(void)setLocaleID:(NSString*)LocaleID;
	-(void)setName:(NSString*)Name;
	-(void)setPassword:(NSString*)Password;
	-(void)setRequesterEmail:(NSString*)RequesterEmail;
	-(void)setServer:(NSString*)Server;
	-(void)setSubject:(NSString*)Subject;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTicketNewRequester Choreo.
 */
@interface TMBZendesk_Tickets_CreateTicketNewRequester_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new ticket as well as a new requester account.
 */
@interface TMBZendesk_Tickets_CreateTicketNewRequester : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tickets_CreateTicketNewRequester_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tickets_CreateTicketNewRequester Choreo */


/*! group TMBZendesk.Users.ListAllUsers Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListAllUsers Choreo.
 */
@interface TMBZendesk_Users_ListAllUsers_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setNumber:(NSString*)Number;
	-(void)setPage:(NSString*)Page;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllUsers Choreo.
 */
@interface TMBZendesk_Users_ListAllUsers_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all existing users.
 */
@interface TMBZendesk_Users_ListAllUsers : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_ListAllUsers_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_ListAllUsers Choreo */


/*! group TMBZendesk.Tickets.ListRecent Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListRecent Choreo.
 */
@interface TMBZendesk_Tickets_ListRecent_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRecent Choreo.
 */
@interface TMBZendesk_Tickets_ListRecent_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of all recent tickets.
 */
@interface TMBZendesk_Tickets_ListRecent : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tickets_ListRecent_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tickets_ListRecent Choreo */


/*! group TMBZendesk.Users.SuspendUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SuspendUser Choreo.
 */
@interface TMBZendesk_Users_SuspendUser_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
	-(void)setUserID:(NSString*)UserID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SuspendUser Choreo.
 */
@interface TMBZendesk_Users_SuspendUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Suspends an existing user.
 */
@interface TMBZendesk_Users_SuspendUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Users_SuspendUser_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Users_SuspendUser Choreo */


/*! group TMBZendesk.Tickets.ListTicketCollaborators Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListTicketCollaborators Choreo.
 */
@interface TMBZendesk_Tickets_ListTicketCollaborators_Inputs : TMBChoreographyInputSet
	-(void)setEmail:(NSString*)Email;
	-(void)setID:(NSString*)ID;
	-(void)setPassword:(NSString*)Password;
	-(void)setServer:(NSString*)Server;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTicketCollaborators Choreo.
 */
@interface TMBZendesk_Tickets_ListTicketCollaborators_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves all the collaborators associated with a given ticket.
 */
@interface TMBZendesk_Tickets_ListTicketCollaborators : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBZendesk_Tickets_ListTicketCollaborators_Inputs*)newInputSet;
@end

/*! group TMBZendesk.Tickets_ListTicketCollaborators Choreo */
