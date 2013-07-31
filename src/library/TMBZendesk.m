/*!
 * @TMBZendesk.m
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

#import "TMBZendesk.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ListUsersByOrganization Choreo.
 */
@implementation TMBZendesk_Users_ListUsersByOrganization_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the OrganizationID input for this Choreo.
	*(required, integer) The ID number of the organization.
	 */
	-(void)setOrganizationID:(NSString*)OrganizationID {
		[super setInput:@"OrganizationID" toValue:OrganizationID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUsersByOrganization Choreo.
 */
@implementation TMBZendesk_Users_ListUsersByOrganization_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all tickets involving a specified organization.
 */
@implementation TMBZendesk_Users_ListUsersByOrganization

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_ListUsersByOrganization Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/ListUsersByOrganization"] autorelease];
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
		TMBZendesk_Users_ListUsersByOrganization_ResultSet *results = [[[TMBZendesk_Users_ListUsersByOrganization_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListUsersByOrganization Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_ListUsersByOrganization_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_ListUsersByOrganization_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListTicketsByOrganization Choreo.
 */
@implementation TMBZendesk_Tickets_ListTicketsByOrganization_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the OrganizationID input for this Choreo.
	*(required, integer) The ID number of the organization.
	 */
	-(void)setOrganizationID:(NSString*)OrganizationID {
		[super setInput:@"OrganizationID" toValue:OrganizationID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTicketsByOrganization Choreo.
 */
@implementation TMBZendesk_Tickets_ListTicketsByOrganization_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all tickets involving a specified organization.
 */
@implementation TMBZendesk_Tickets_ListTicketsByOrganization

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tickets_ListTicketsByOrganization Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tickets/ListTicketsByOrganization"] autorelease];
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
		TMBZendesk_Tickets_ListTicketsByOrganization_ResultSet *results = [[[TMBZendesk_Tickets_ListTicketsByOrganization_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListTicketsByOrganization Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tickets_ListTicketsByOrganization_Inputs*)newInputSet {
		return [[[TMBZendesk_Tickets_ListTicketsByOrganization_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListTags Choreo.
 */
@implementation TMBZendesk_Tags_ListTags_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTags Choreo.
 */
@implementation TMBZendesk_Tags_ListTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the most popular recent tags in decreasing popularity.
 */
@implementation TMBZendesk_Tags_ListTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tags_ListTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tags/ListTags"] autorelease];
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
		TMBZendesk_Tags_ListTags_ResultSet *results = [[[TMBZendesk_Tags_ListTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tags_ListTags_Inputs*)newInputSet {
		return [[[TMBZendesk_Tags_ListTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTicket Choreo.
 */
@implementation TMBZendesk_Tickets_GetTicket_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID number of a ticket.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTicket Choreo.
 */
@implementation TMBZendesk_Tickets_GetTicket_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about a ticket using its ID.
 */
@implementation TMBZendesk_Tickets_GetTicket

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tickets_GetTicket Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tickets/GetTicket"] autorelease];
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
		TMBZendesk_Tickets_GetTicket_ResultSet *results = [[[TMBZendesk_Tickets_GetTicket_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTicket Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tickets_GetTicket_Inputs*)newInputSet {
		return [[[TMBZendesk_Tickets_GetTicket_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchUsers Choreo.
 */
@implementation TMBZendesk_Users_SearchUsers_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) Perform a search across usernames or email addresses.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchUsers Choreo.
 */
@implementation TMBZendesk_Users_SearchUsers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of users who match the search parameters.
 */
@implementation TMBZendesk_Users_SearchUsers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_SearchUsers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/SearchUsers"] autorelease];
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
		TMBZendesk_Users_SearchUsers_ResultSet *results = [[[TMBZendesk_Users_SearchUsers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchUsers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_SearchUsers_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_SearchUsers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUser Choreo.
 */
@implementation TMBZendesk_Users_UpdateUser_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address you use to login to your Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zendesk password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) Your Zendesk domain and subdomain (i.e. temboocare.zendesk.com).
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the UserData input for this Choreo.
	*(required, json) A JSON string containing the updated user data. See documentation for formatting details.
	 */
	-(void)setUserData:(NSString*)UserData {
		[super setInput:@"UserData" toValue:UserData];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, integer) The id of the user being updated.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUser Choreo.
 */
@implementation TMBZendesk_Users_UpdateUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing user.
 */
@implementation TMBZendesk_Users_UpdateUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_UpdateUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/UpdateUser"] autorelease];
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
		TMBZendesk_Users_UpdateUser_ResultSet *results = [[[TMBZendesk_Users_UpdateUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_UpdateUser_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_UpdateUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateUser Choreo.
 */
@implementation TMBZendesk_Users_CreateUser_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address you use to login to your Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zendesk password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) Your Zendesk domain and subdomain (i.e. support.temboo.com or temboo.zendesk.com).
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the UserData input for this Choreo.
	*(required, json) A JSON string containing the new user's information. See documentation for formatting details.
	 */
	-(void)setUserData:(NSString*)UserData {
		[super setInput:@"UserData" toValue:UserData];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateUser Choreo.
 */
@implementation TMBZendesk_Users_CreateUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new user.
 */
@implementation TMBZendesk_Users_CreateUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_CreateUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/CreateUser"] autorelease];
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
		TMBZendesk_Users_CreateUser_ResultSet *results = [[[TMBZendesk_Users_CreateUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_CreateUser_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_CreateUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllTickets Choreo.
 */
@implementation TMBZendesk_Tickets_ListAllTickets_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Number input for this Choreo.
	*(optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
	 */
	-(void)setNumber:(NSString*)Number {
		[super setInput:@"Number" toValue:Number];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number of the results to be returned. Used together with the Number parameter to paginate a large set of results.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllTickets Choreo.
 */
@implementation TMBZendesk_Tickets_ListAllTickets_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all existing tickets.
 */
@implementation TMBZendesk_Tickets_ListAllTickets

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tickets_ListAllTickets Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tickets/ListAllTickets"] autorelease];
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
		TMBZendesk_Tickets_ListAllTickets_ResultSet *results = [[[TMBZendesk_Tickets_ListAllTickets_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllTickets Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tickets_ListAllTickets_Inputs*)newInputSet {
		return [[[TMBZendesk_Tickets_ListAllTickets_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ApplyMacroToAllTickets Choreo.
 */
@implementation TMBZendesk_Macros_ApplyMacroToAllTickets_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the MacroID input for this Choreo.
	*(required, integer) The ID of the macro to apply.
	 */
	-(void)setMacroID:(NSString*)MacroID {
		[super setInput:@"MacroID" toValue:MacroID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ApplyMacroToAllTickets Choreo.
 */
@implementation TMBZendesk_Macros_ApplyMacroToAllTickets_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Applies a given macro to all applicable tickets.
 */
@implementation TMBZendesk_Macros_ApplyMacroToAllTickets

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Macros_ApplyMacroToAllTickets Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Macros/ApplyMacroToAllTickets"] autorelease];
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
		TMBZendesk_Macros_ApplyMacroToAllTickets_ResultSet *results = [[[TMBZendesk_Macros_ApplyMacroToAllTickets_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ApplyMacroToAllTickets Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Macros_ApplyMacroToAllTickets_Inputs*)newInputSet {
		return [[[TMBZendesk_Macros_ApplyMacroToAllTickets_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ApplyMacroToTicket Choreo.
 */
@implementation TMBZendesk_Macros_ApplyMacroToTicket_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the MacroID input for this Choreo.
	*(required, integer) The ID of the macro to apply.
	 */
	-(void)setMacroID:(NSString*)MacroID {
		[super setInput:@"MacroID" toValue:MacroID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the TicketID input for this Choreo.
	*(required, string) The ID of the ticket.
	 */
	-(void)setTicketID:(NSString*)TicketID {
		[super setInput:@"TicketID" toValue:TicketID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ApplyMacroToTicket Choreo.
 */
@implementation TMBZendesk_Macros_ApplyMacroToTicket_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Applies a macro to a given ticket.
 */
@implementation TMBZendesk_Macros_ApplyMacroToTicket

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Macros_ApplyMacroToTicket Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Macros/ApplyMacroToTicket"] autorelease];
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
		TMBZendesk_Macros_ApplyMacroToTicket_ResultSet *results = [[[TMBZendesk_Macros_ApplyMacroToTicket_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ApplyMacroToTicket Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Macros_ApplyMacroToTicket_Inputs*)newInputSet {
		return [[[TMBZendesk_Macros_ApplyMacroToTicket_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateTicket Choreo.
 */
@implementation TMBZendesk_Tickets_CreateTicket_Inputs

	/*!
	 * Set the value of the Comment input for this Choreo.
	*(conditional, string) The comment for the ticket that is being created.
	 */
	-(void)setComment:(NSString*)Comment {
		[super setInput:@"Comment" toValue:Comment];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address you use to login to your Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zendesk password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) Your Zendesk domain and subdomain (i.e. temboocare.zendesk.com).
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(conditional, string) The subject for the ticket that is being created.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}

	/*!
	 * Set the value of the TicketData input for this Choreo.
	*(optional, json) A JSON string containing the ticket information. This can be used as an alternative to the serialized ticket inputs in case you need to create tickets using custom fields.
	 */
	-(void)setTicketData:(NSString*)TicketData {
		[super setInput:@"TicketData" toValue:TicketData];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(optional, string) The token associated with an upload to attach to this ticket. Note that tokens can be retrieved by running the UploadFile Choreo.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTicket Choreo.
 */
@implementation TMBZendesk_Tickets_CreateTicket_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new ticket.
 */
@implementation TMBZendesk_Tickets_CreateTicket

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tickets_CreateTicket Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tickets/CreateTicket"] autorelease];
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
		TMBZendesk_Tickets_CreateTicket_ResultSet *results = [[[TMBZendesk_Tickets_CreateTicket_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateTicket Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tickets_CreateTicket_Inputs*)newInputSet {
		return [[[TMBZendesk_Tickets_CreateTicket_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUserImage Choreo.
 */
@implementation TMBZendesk_Users_UpdateUserImage_Inputs

	/*!
	 * Set the value of the Response input for this Choreo.
	*(required, json) The response from Zendesk.
	 */
	-(void)setResponse:(NSString*)Response {
		[super setInput:@"Response" toValue:Response];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address you use to login to your Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ImageURL input for this Choreo.
	*(required, string) Set the URL of the image.
	 */
	-(void)setImageURL:(NSString*)ImageURL {
		[super setInput:@"ImageURL" toValue:ImageURL];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zendesk password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) Your Zendesk domain and subdomain (i.e. temboocare.zendesk.com).
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, integer) The id of the user being updated.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUserImage Choreo.
 */
@implementation TMBZendesk_Users_UpdateUserImage_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (required, json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates a user's profile image.
 */
@implementation TMBZendesk_Users_UpdateUserImage

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_UpdateUserImage Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/UpdateUserImage"] autorelease];
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
		TMBZendesk_Users_UpdateUserImage_ResultSet *results = [[[TMBZendesk_Users_UpdateUserImage_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateUserImage Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_UpdateUserImage_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_UpdateUserImage_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateTicket Choreo.
 */
@implementation TMBZendesk_Tickets_UpdateTicket_Inputs

	/*!
	 * Set the value of the Comment input for this Choreo.
	*(conditional, string) The text for a ticket comment.
	 */
	-(void)setComment:(NSString*)Comment {
		[super setInput:@"Comment" toValue:Comment];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address you use to login to your Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Metadata input for this Choreo.
	*(optional, json) Ticket metadata formatted in JSON. See docs for more information on the input format.
	 */
	-(void)setMetadata:(NSString*)Metadata {
		[super setInput:@"Metadata" toValue:Metadata];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zendesk password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Public input for this Choreo.
	*(optional, boolean) A flag indicating if this update is public or not. Defaults to "true"
	 */
	-(void)setPublic:(NSString*)Public {
		[super setInput:@"Public" toValue:Public];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) Your Zendesk domain and subdomain (i.e. temboocare.zendesk.com).
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(conditional, string) The status of the ticket (i.e. solved, pending, open).
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}

	/*!
	 * Set the value of the TicketData input for this Choreo.
	*(optional, json) A JSON string containing the ticket information. This can be used as an alternative to the serialized ticket inputs in case you need to update tickets that have custom fields.
	 */
	-(void)setTicketData:(NSString*)TicketData {
		[super setInput:@"TicketData" toValue:TicketData];
	}

	/*!
	 * Set the value of the TicketID input for this Choreo.
	*(required, integer) The id of the ticket being updated.
	 */
	-(void)setTicketID:(NSString*)TicketID {
		[super setInput:@"TicketID" toValue:TicketID];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(optional, string) The token associated with an upload to attach to this ticket. Note that tokens can be retrieved by running the UploadFile Choreo.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateTicket Choreo.
 */
@implementation TMBZendesk_Tickets_UpdateTicket_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing ticket.
 */
@implementation TMBZendesk_Tickets_UpdateTicket

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tickets_UpdateTicket Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tickets/UpdateTicket"] autorelease];
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
		TMBZendesk_Tickets_UpdateTicket_ResultSet *results = [[[TMBZendesk_Tickets_UpdateTicket_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateTicket Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tickets_UpdateTicket_Inputs*)newInputSet {
		return [[[TMBZendesk_Tickets_UpdateTicket_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowActivity Choreo.
 */
@implementation TMBZendesk_ActivityStream_ShowActivity_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) ID of the agent executing the request.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowActivity Choreo.
 */
@implementation TMBZendesk_ActivityStream_ShowActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns only a list of activities pertaining to the agent executing the request.
 */
@implementation TMBZendesk_ActivityStream_ShowActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_ActivityStream_ShowActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/ActivityStream/ShowActivity"] autorelease];
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
		TMBZendesk_ActivityStream_ShowActivity_ResultSet *results = [[[TMBZendesk_ActivityStream_ShowActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_ActivityStream_ShowActivity_Inputs*)newInputSet {
		return [[[TMBZendesk_ActivityStream_ShowActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchAnonymous Choreo.
 */
@implementation TMBZendesk_Search_SearchAnonymous_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) Perform a search across usernames or email addresses.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) Acceptable values: updated_at, created_at, priority, status, ticket_type.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Indicate either: relevance, asc (for ascending), desc (for descending). Defaults to relevance.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchAnonymous Choreo.
 */
@implementation TMBZendesk_Search_SearchAnonymous_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows anonymous users to search public forums.
 */
@implementation TMBZendesk_Search_SearchAnonymous

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Search_SearchAnonymous Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Search/SearchAnonymous"] autorelease];
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
		TMBZendesk_Search_SearchAnonymous_ResultSet *results = [[[TMBZendesk_Search_SearchAnonymous_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchAnonymous Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Search_SearchAnonymous_Inputs*)newInputSet {
		return [[[TMBZendesk_Search_SearchAnonymous_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListActivity Choreo.
 */
@implementation TMBZendesk_ActivityStream_ListActivity_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListActivity Choreo.
 */
@implementation TMBZendesk_ActivityStream_ListActivity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of activities pertaining to the agent executing the request.
 */
@implementation TMBZendesk_ActivityStream_ListActivity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_ActivityStream_ListActivity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/ActivityStream/ListActivity"] autorelease];
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
		TMBZendesk_ActivityStream_ListActivity_ResultSet *results = [[[TMBZendesk_ActivityStream_ListActivity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListActivity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_ActivityStream_ListActivity_Inputs*)newInputSet {
		return [[[TMBZendesk_ActivityStream_ListActivity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteTicket Choreo.
 */
@implementation TMBZendesk_Tickets_DeleteTicket_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID number of a ticket.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteTicket Choreo.
 */
@implementation TMBZendesk_Tickets_DeleteTicket_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes an existing ticket.
 */
@implementation TMBZendesk_Tickets_DeleteTicket

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tickets_DeleteTicket Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tickets/DeleteTicket"] autorelease];
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
		TMBZendesk_Tickets_DeleteTicket_ResultSet *results = [[[TMBZendesk_Tickets_DeleteTicket_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteTicket Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tickets_DeleteTicket_Inputs*)newInputSet {
		return [[[TMBZendesk_Tickets_DeleteTicket_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchAll Choreo.
 */
@implementation TMBZendesk_Search_SearchAll_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) Perform a search across usernames or email addresses.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) Acceptable values: updated_at, created_at, priority, status, ticket_type.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Indicate either: relevance, asc (for ascending), desc (for descending). Defaults to relevance.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchAll Choreo.
 */
@implementation TMBZendesk_Search_SearchAll_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns search results across all ticket fields.
 */
@implementation TMBZendesk_Search_SearchAll

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Search_SearchAll Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Search/SearchAll"] autorelease];
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
		TMBZendesk_Search_SearchAll_ResultSet *results = [[[TMBZendesk_Search_SearchAll_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchAll Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Search_SearchAll_Inputs*)newInputSet {
		return [[[TMBZendesk_Search_SearchAll_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UploadAttachment Choreo.
 */
@implementation TMBZendesk_Attachments_UploadAttachment_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address you use to login to your Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ExistingToken input for this Choreo.
	*(optional, string) Allows you to pass in an existing token when uploading multiple attachments to associate with a ticket creation.
	 */
	-(void)setExistingToken:(NSString*)ExistingToken {
		[super setInput:@"ExistingToken" toValue:ExistingToken];
	}

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(required, string) The Base64 encoded file contents of the attachment you want to upload.
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) 
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zendesk password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) Your Zendesk domain and subdomain (i.e. support.temboo.com or temboo.zendesk.com).
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the VaultFile input for this Choreo.
	*The path to a vault file to upload. Can be used as an alternative to the FileContents input.
	 */
	-(void)setVaultFile:(NSString*)VaultFile {
		[super setInput:@"VaultFile" toValue:VaultFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UploadAttachment Choreo.
 */
@implementation TMBZendesk_Attachments_UploadAttachment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "Token" output from an execution of this Choreo.
	 * @return - NSString* (string) The token returned from Zendesk for the upload. This can be passed to the ExistingToken input when associating  multiple attachments to the same upload token.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getToken {
		return [super getOutputByName:@"Token"];
	}
	
@end

/*!
 * Uploads a file to be used as an attachment to a ticket.
 */
@implementation TMBZendesk_Attachments_UploadAttachment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Attachments_UploadAttachment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Attachments/UploadAttachment"] autorelease];
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
		TMBZendesk_Attachments_UploadAttachment_ResultSet *results = [[[TMBZendesk_Attachments_UploadAttachment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UploadAttachment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Attachments_UploadAttachment_Inputs*)newInputSet {
		return [[[TMBZendesk_Attachments_UploadAttachment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListMacros Choreo.
 */
@implementation TMBZendesk_Macros_ListMacros_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListMacros Choreo.
 */
@implementation TMBZendesk_Macros_ListMacros_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all active macros available to the current user.
 */
@implementation TMBZendesk_Macros_ListMacros

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Macros_ListMacros Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Macros/ListMacros"] autorelease];
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
		TMBZendesk_Macros_ListMacros_ResultSet *results = [[[TMBZendesk_Macros_ListMacros_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListMacros Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Macros_ListMacros_Inputs*)newInputSet {
		return [[[TMBZendesk_Macros_ListMacros_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowUser Choreo.
 */
@implementation TMBZendesk_Users_ShowUser_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID number of a user.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowUser Choreo.
 */
@implementation TMBZendesk_Users_ShowUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about given user.
 */
@implementation TMBZendesk_Users_ShowUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_ShowUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/ShowUser"] autorelease];
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
		TMBZendesk_Users_ShowUser_ResultSet *results = [[[TMBZendesk_Users_ShowUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_ShowUser_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_ShowUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUser Choreo.
 */
@implementation TMBZendesk_Users_DeleteUser_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID of the user to delete.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUser Choreo.
 */
@implementation TMBZendesk_Users_DeleteUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a given user.
 */
@implementation TMBZendesk_Users_DeleteUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_DeleteUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/DeleteUser"] autorelease];
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
		TMBZendesk_Users_DeleteUser_ResultSet *results = [[[TMBZendesk_Users_DeleteUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_DeleteUser_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_DeleteUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowCurrentUser Choreo.
 */
@implementation TMBZendesk_Users_ShowCurrentUser_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowCurrentUser Choreo.
 */
@implementation TMBZendesk_Users_ShowCurrentUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about the currently authenticated user.
 */
@implementation TMBZendesk_Users_ShowCurrentUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_ShowCurrentUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/ShowCurrentUser"] autorelease];
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
		TMBZendesk_Users_ShowCurrentUser_ResultSet *results = [[[TMBZendesk_Users_ShowCurrentUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowCurrentUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_ShowCurrentUser_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_ShowCurrentUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateManyUsers Choreo.
 */
@implementation TMBZendesk_Users_CreateManyUsers_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address you use to login to your Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zendesk password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) Your Zendesk domain and subdomain (i.e. support.temboo.com or temboo.zendesk.com).
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Users input for this Choreo.
	*(required, json) The JSON formatted list of new users. See documentation for required format.
	 */
	-(void)setUsers:(NSString*)Users {
		[super setInput:@"Users" toValue:Users];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateManyUsers Choreo.
 */
@implementation TMBZendesk_Users_CreateManyUsers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates many new users at one time.
 */
@implementation TMBZendesk_Users_CreateManyUsers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_CreateManyUsers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/CreateManyUsers"] autorelease];
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
		TMBZendesk_Users_CreateManyUsers_ResultSet *results = [[[TMBZendesk_Users_CreateManyUsers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateManyUsers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_CreateManyUsers_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_CreateManyUsers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListUsersByGroup Choreo.
 */
@implementation TMBZendesk_Users_ListUsersByGroup_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the GroupID input for this Choreo.
	*(required, integer) The ID number of the group.
	 */
	-(void)setGroupID:(NSString*)GroupID {
		[super setInput:@"GroupID" toValue:GroupID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUsersByGroup Choreo.
 */
@implementation TMBZendesk_Users_ListUsersByGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all users in a specified group.
 */
@implementation TMBZendesk_Users_ListUsersByGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_ListUsersByGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/ListUsersByGroup"] autorelease];
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
		TMBZendesk_Users_ListUsersByGroup_ResultSet *results = [[[TMBZendesk_Users_ListUsersByGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListUsersByGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_ListUsersByGroup_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_ListUsersByGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListTicketsByUser Choreo.
 */
@implementation TMBZendesk_Tickets_ListTicketsByUser_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, integer) The ID number of the user.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}

	/*!
	 * Set the value of the UserType input for this Choreo.
	*(optional, string) Specify "requested" to find tickets that the given user requested and "ccd" to find tickets on which a given user was CC'd. Defaults to searching for tickets that the user requested.
	 */
	-(void)setUserType:(NSString*)UserType {
		[super setInput:@"UserType" toValue:UserType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTicketsByUser Choreo.
 */
@implementation TMBZendesk_Tickets_ListTicketsByUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * 
 */
@implementation TMBZendesk_Tickets_ListTicketsByUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tickets_ListTicketsByUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tickets/ListTicketsByUser"] autorelease];
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
		TMBZendesk_Tickets_ListTicketsByUser_ResultSet *results = [[[TMBZendesk_Tickets_ListTicketsByUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListTicketsByUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tickets_ListTicketsByUser_Inputs*)newInputSet {
		return [[[TMBZendesk_Tickets_ListTicketsByUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListTicketIncidents Choreo.
 */
@implementation TMBZendesk_Tickets_ListTicketIncidents_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID number of a ticket.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTicketIncidents Choreo.
 */
@implementation TMBZendesk_Tickets_ListTicketIncidents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all the incidents associated with a given ticket.
 */
@implementation TMBZendesk_Tickets_ListTicketIncidents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tickets_ListTicketIncidents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tickets/ListTicketIncidents"] autorelease];
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
		TMBZendesk_Tickets_ListTicketIncidents_ResultSet *results = [[[TMBZendesk_Tickets_ListTicketIncidents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListTicketIncidents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tickets_ListTicketIncidents_Inputs*)newInputSet {
		return [[[TMBZendesk_Tickets_ListTicketIncidents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateTicketNewRequester Choreo.
 */
@implementation TMBZendesk_Tickets_CreateTicketNewRequester_Inputs

	/*!
	 * Set the value of the Comment input for this Choreo.
	*(required, string) The comment for the ticket that is being created.
	 */
	-(void)setComment:(NSString*)Comment {
		[super setInput:@"Comment" toValue:Comment];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address you use to login to your Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the LocaleID input for this Choreo.
	*(required, integer) LocaleID for the new requester. Indicate 1 for English, 8 for Deutsch, etc.
	 */
	-(void)setLocaleID:(NSString*)LocaleID {
		[super setInput:@"LocaleID" toValue:LocaleID];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) Name of new requester.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zendesk password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the RequesterEmail input for this Choreo.
	*(required, string) Email of new requester.
	 */
	-(void)setRequesterEmail:(NSString*)RequesterEmail {
		[super setInput:@"RequesterEmail" toValue:RequesterEmail];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) Your Zendesk domain and subdomain (i.e. temboocare.zendesk.com).
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the Subject input for this Choreo.
	*(required, string) The subject for the ticket that is being created.
	 */
	-(void)setSubject:(NSString*)Subject {
		[super setInput:@"Subject" toValue:Subject];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(optional, string) The token associated with an upload to attach to this ticket. Note that tokens can be retrieved by running the UploadFile Choreo.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTicketNewRequester Choreo.
 */
@implementation TMBZendesk_Tickets_CreateTicketNewRequester_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new ticket as well as a new requester account.
 */
@implementation TMBZendesk_Tickets_CreateTicketNewRequester

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tickets_CreateTicketNewRequester Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tickets/CreateTicketNewRequester"] autorelease];
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
		TMBZendesk_Tickets_CreateTicketNewRequester_ResultSet *results = [[[TMBZendesk_Tickets_CreateTicketNewRequester_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateTicketNewRequester Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tickets_CreateTicketNewRequester_Inputs*)newInputSet {
		return [[[TMBZendesk_Tickets_CreateTicketNewRequester_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllUsers Choreo.
 */
@implementation TMBZendesk_Users_ListAllUsers_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Number input for this Choreo.
	*(optional, integer) The number of results to return per page. Maximum is 100 and default is 100.
	 */
	-(void)setNumber:(NSString*)Number {
		[super setInput:@"Number" toValue:Number];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number of the results to be returned. Used together with the Number parameter to paginate a large set of results.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllUsers Choreo.
 */
@implementation TMBZendesk_Users_ListAllUsers_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all existing users.
 */
@implementation TMBZendesk_Users_ListAllUsers

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_ListAllUsers Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/ListAllUsers"] autorelease];
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
		TMBZendesk_Users_ListAllUsers_ResultSet *results = [[[TMBZendesk_Users_ListAllUsers_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllUsers Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_ListAllUsers_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_ListAllUsers_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListRecent Choreo.
 */
@implementation TMBZendesk_Tickets_ListRecent_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListRecent Choreo.
 */
@implementation TMBZendesk_Tickets_ListRecent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all recent tickets.
 */
@implementation TMBZendesk_Tickets_ListRecent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tickets_ListRecent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tickets/ListRecent"] autorelease];
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
		TMBZendesk_Tickets_ListRecent_ResultSet *results = [[[TMBZendesk_Tickets_ListRecent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListRecent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tickets_ListRecent_Inputs*)newInputSet {
		return [[[TMBZendesk_Tickets_ListRecent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SuspendUser Choreo.
 */
@implementation TMBZendesk_Users_SuspendUser_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address you use to login to your Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zendesk password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) Your Zendesk domain and subdomain (i.e. temboocare.zendesk.com).
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}

	/*!
	 * Set the value of the UserID input for this Choreo.
	*(required, integer) The id of the user being updated.
	 */
	-(void)setUserID:(NSString*)UserID {
		[super setInput:@"UserID" toValue:UserID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SuspendUser Choreo.
 */
@implementation TMBZendesk_Users_SuspendUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Suspends an existing user.
 */
@implementation TMBZendesk_Users_SuspendUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Users_SuspendUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Users/SuspendUser"] autorelease];
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
		TMBZendesk_Users_SuspendUser_ResultSet *results = [[[TMBZendesk_Users_SuspendUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SuspendUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Users_SuspendUser_Inputs*)newInputSet {
		return [[[TMBZendesk_Users_SuspendUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListTicketCollaborators Choreo.
 */
@implementation TMBZendesk_Tickets_ListTicketCollaborators_Inputs

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email to authenticate the Zendesk account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID number of a ticket.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) The password matching the email to authenticate the Zendesk account.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Server input for this Choreo.
	*(required, string) The server URL associated with your Zendesk account. In many cases this looks like: temboo.zendesk.com but may also be customized: support.temboo.com
	 */
	-(void)setServer:(NSString*)Server {
		[super setInput:@"Server" toValue:Server];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTicketCollaborators Choreo.
 */
@implementation TMBZendesk_Tickets_ListTicketCollaborators_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Zendesk.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all the collaborators associated with a given ticket.
 */
@implementation TMBZendesk_Tickets_ListTicketCollaborators

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZendesk_Tickets_ListTicketCollaborators Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zendesk/Tickets/ListTicketCollaborators"] autorelease];
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
		TMBZendesk_Tickets_ListTicketCollaborators_ResultSet *results = [[[TMBZendesk_Tickets_ListTicketCollaborators_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListTicketCollaborators Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZendesk_Tickets_ListTicketCollaborators_Inputs*)newInputSet {
		return [[[TMBZendesk_Tickets_ListTicketCollaborators_Inputs alloc] init] autorelease];
	}
@end
	