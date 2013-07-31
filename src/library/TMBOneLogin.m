/*!
 * @TMBOneLogin.m
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

#import "TMBOneLogin.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ShowGroup Choreo.
 */
@implementation TMBOneLogin_Groups_ShowGroup_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The id the group you want to return.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowGroup Choreo.
 */
@implementation TMBOneLogin_Groups_ShowGroup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a single group.
 */
@implementation TMBOneLogin_Groups_ShowGroup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Groups_ShowGroup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Groups/ShowGroup"] autorelease];
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
		TMBOneLogin_Groups_ShowGroup_ResultSet *results = [[[TMBOneLogin_Groups_ShowGroup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowGroup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Groups_ShowGroup_Inputs*)newInputSet {
		return [[[TMBOneLogin_Groups_ShowGroup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateUser Choreo.
 */
@implementation TMBOneLogin_Users_CreateUser_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Address input for this Choreo.
	*(conditional, string) The street address for the new account.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) The email address for the new user.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(conditional, string) The first name of the new user.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the GroupID input for this Choreo.
	*(optional, string) The group id associated with the new user.
	 */
	-(void)setGroupID:(NSString*)GroupID {
		[super setInput:@"GroupID" toValue:GroupID];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(conditional, string) The last name of the new user.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the OpenIDName input for this Choreo.
	*(conditional, string) The open id name.
	 */
	-(void)setOpenIDName:(NSString*)OpenIDName {
		[super setInput:@"OpenIDName" toValue:OpenIDName];
	}

	/*!
	 * Set the value of the Phone input for this Choreo.
	*(conditional, string) The phone number of the new user.
	 */
	-(void)setPhone:(NSString*)Phone {
		[super setInput:@"Phone" toValue:Phone];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateUser Choreo.
 */
@implementation TMBOneLogin_Users_CreateUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new user.
 */
@implementation TMBOneLogin_Users_CreateUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Users_CreateUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Users/CreateUser"] autorelease];
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
		TMBOneLogin_Users_CreateUser_ResultSet *results = [[[TMBOneLogin_Users_CreateUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Users_CreateUser_Inputs*)newInputSet {
		return [[[TMBOneLogin_Users_CreateUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAll Choreo.
 */
@implementation TMBOneLogin_Accounts_ListAll_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAll Choreo.
 */
@implementation TMBOneLogin_Accounts_ListAll_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all accounts.
 */
@implementation TMBOneLogin_Accounts_ListAll

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Accounts_ListAll Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Accounts/ListAll"] autorelease];
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
		TMBOneLogin_Accounts_ListAll_ResultSet *results = [[[TMBOneLogin_Accounts_ListAll_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAll Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Accounts_ListAll_Inputs*)newInputSet {
		return [[[TMBOneLogin_Accounts_ListAll_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAll Choreo.
 */
@implementation TMBOneLogin_Groups_ListAll_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAll Choreo.
 */
@implementation TMBOneLogin_Groups_ListAll_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all groups.
 */
@implementation TMBOneLogin_Groups_ListAll

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Groups_ListAll Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Groups/ListAll"] autorelease];
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
		TMBOneLogin_Groups_ListAll_ResultSet *results = [[[TMBOneLogin_Groups_ListAll_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAll Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Groups_ListAll_Inputs*)newInputSet {
		return [[[TMBOneLogin_Groups_ListAll_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteUser Choreo.
 */
@implementation TMBOneLogin_Users_DeleteUser_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The id the user you want to delete.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteUser Choreo.
 */
@implementation TMBOneLogin_Users_DeleteUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes an existing user.
 */
@implementation TMBOneLogin_Users_DeleteUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Users_DeleteUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Users/DeleteUser"] autorelease];
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
		TMBOneLogin_Users_DeleteUser_ResultSet *results = [[[TMBOneLogin_Users_DeleteUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Users_DeleteUser_Inputs*)newInputSet {
		return [[[TMBOneLogin_Users_DeleteUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccount Choreo.
 */
@implementation TMBOneLogin_Accounts_UpdateAccount_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The account name.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Address input for this Choreo.
	*(optional, string) The street address for the new account.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(optional, string) The city associated with the address.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(optional, string) The country associated with the address of the new account.
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address for the new account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(required, string) The first name on the new account.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The id of the account to update.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(required, string) The last name on the new account.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the Phone input for this Choreo.
	*(optional, string) The phone number for the new account.
	 */
	-(void)setPhone:(NSString*)Phone {
		[super setInput:@"Phone" toValue:Phone];
	}

	/*!
	 * Set the value of the Plan input for this Choreo.
	*(required, string) Indicates which plan the new account has (i.e. enterprise).
	 */
	-(void)setPlan:(NSString*)Plan {
		[super setInput:@"Plan" toValue:Plan];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state associated with the address of the new account.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(optional, string) The postal code associated with the address of the new account.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccount Choreo.
 */
@implementation TMBOneLogin_Accounts_UpdateAccount_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing account.
 */
@implementation TMBOneLogin_Accounts_UpdateAccount

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Accounts_UpdateAccount Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Accounts/UpdateAccount"] autorelease];
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
		TMBOneLogin_Accounts_UpdateAccount_ResultSet *results = [[[TMBOneLogin_Accounts_UpdateAccount_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateAccount Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Accounts_UpdateAccount_Inputs*)newInputSet {
		return [[[TMBOneLogin_Accounts_UpdateAccount_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAll Choreo.
 */
@implementation TMBOneLogin_Users_ListAll_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAll Choreo.
 */
@implementation TMBOneLogin_Users_ListAll_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all users.
 */
@implementation TMBOneLogin_Users_ListAll

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Users_ListAll Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Users/ListAll"] autorelease];
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
		TMBOneLogin_Users_ListAll_ResultSet *results = [[[TMBOneLogin_Users_ListAll_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAll Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Users_ListAll_Inputs*)newInputSet {
		return [[[TMBOneLogin_Users_ListAll_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateUser Choreo.
 */
@implementation TMBOneLogin_Users_UpdateUser_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Address input for this Choreo.
	*(conditional, string) The street address for the new account.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(conditional, string) The email address for the new user.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(conditional, string) The first name of the new user.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the GroupID input for this Choreo.
	*(optional, string) The group id associated with the new user.
	 */
	-(void)setGroupID:(NSString*)GroupID {
		[super setInput:@"GroupID" toValue:GroupID];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The id of the user you want to update.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(conditional, string) The last name of the new user.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the OpenIDName input for this Choreo.
	*(conditional, string) The open id name.
	 */
	-(void)setOpenIDName:(NSString*)OpenIDName {
		[super setInput:@"OpenIDName" toValue:OpenIDName];
	}

	/*!
	 * Set the value of the Phone input for this Choreo.
	*(conditional, string) The phone number of the new user.
	 */
	-(void)setPhone:(NSString*)Phone {
		[super setInput:@"Phone" toValue:Phone];
	}

	/*!
	 * Set the value of the Role input for this Choreo.
	*(optional, string) Updates a user's role.
	 */
	-(void)setRole:(NSString*)Role {
		[super setInput:@"Role" toValue:Role];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateUser Choreo.
 */
@implementation TMBOneLogin_Users_UpdateUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an existing user.
 */
@implementation TMBOneLogin_Users_UpdateUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Users_UpdateUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Users/UpdateUser"] autorelease];
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
		TMBOneLogin_Users_UpdateUser_ResultSet *results = [[[TMBOneLogin_Users_UpdateUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Users_UpdateUser_Inputs*)newInputSet {
		return [[[TMBOneLogin_Users_UpdateUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAll Choreo.
 */
@implementation TMBOneLogin_Events_ListAll_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAll Choreo.
 */
@implementation TMBOneLogin_Events_ListAll_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all events (aka activities).
 */
@implementation TMBOneLogin_Events_ListAll

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Events_ListAll Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Events/ListAll"] autorelease];
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
		TMBOneLogin_Events_ListAll_ResultSet *results = [[[TMBOneLogin_Events_ListAll_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAll Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Events_ListAll_Inputs*)newInputSet {
		return [[[TMBOneLogin_Events_ListAll_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowUser Choreo.
 */
@implementation TMBOneLogin_Users_ShowUser_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The id the user you want to return.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowUser Choreo.
 */
@implementation TMBOneLogin_Users_ShowUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a single user.
 */
@implementation TMBOneLogin_Users_ShowUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Users_ShowUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Users/ShowUser"] autorelease];
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
		TMBOneLogin_Users_ShowUser_ResultSet *results = [[[TMBOneLogin_Users_ShowUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Users_ShowUser_Inputs*)newInputSet {
		return [[[TMBOneLogin_Users_ShowUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowEvent Choreo.
 */
@implementation TMBOneLogin_Events_ShowEvent_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The id the event you want to return.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowEvent Choreo.
 */
@implementation TMBOneLogin_Events_ShowEvent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a single event.
 */
@implementation TMBOneLogin_Events_ShowEvent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Events_ShowEvent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Events/ShowEvent"] autorelease];
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
		TMBOneLogin_Events_ShowEvent_ResultSet *results = [[[TMBOneLogin_Events_ShowEvent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowEvent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Events_ShowEvent_Inputs*)newInputSet {
		return [[[TMBOneLogin_Events_ShowEvent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateEvent Choreo.
 */
@implementation TMBOneLogin_Events_CreateEvent_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EventTypeID input for this Choreo.
	*(required, integer) The id for the type of event you want to create. Note that depending on the event type id specified, you may need to provide the ObjectName and ObjectID that is being affected.
	 */
	-(void)setEventTypeID:(NSString*)EventTypeID {
		[super setInput:@"EventTypeID" toValue:EventTypeID];
	}

	/*!
	 * Set the value of the ObjectID input for this Choreo.
	*(conditional, integer) The object id that is being affected. Required for certain event types. When specified, ObjectName must also be provided.
	 */
	-(void)setObjectID:(NSString*)ObjectID {
		[super setInput:@"ObjectID" toValue:ObjectID];
	}

	/*!
	 * Set the value of the ObjectName input for this Choreo.
	*(conditional, string) The object name that is being affected (i.e. user-id). Required for certain event types. When specified, ObjectID must also be provided.
	 */
	-(void)setObjectName:(NSString*)ObjectName {
		[super setInput:@"ObjectName" toValue:ObjectName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateEvent Choreo.
 */
@implementation TMBOneLogin_Events_CreateEvent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new event.
 */
@implementation TMBOneLogin_Events_CreateEvent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Events_CreateEvent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Events/CreateEvent"] autorelease];
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
		TMBOneLogin_Events_CreateEvent_ResultSet *results = [[[TMBOneLogin_Events_CreateEvent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateEvent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Events_CreateEvent_Inputs*)newInputSet {
		return [[[TMBOneLogin_Events_CreateEvent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowAccount Choreo.
 */
@implementation TMBOneLogin_Accounts_ShowAccount_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The id the account you want to return.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowAccount Choreo.
 */
@implementation TMBOneLogin_Accounts_ShowAccount_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a single account.
 */
@implementation TMBOneLogin_Accounts_ShowAccount

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Accounts_ShowAccount Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Accounts/ShowAccount"] autorelease];
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
		TMBOneLogin_Accounts_ShowAccount_ResultSet *results = [[[TMBOneLogin_Accounts_ShowAccount_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowAccount Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Accounts_ShowAccount_Inputs*)newInputSet {
		return [[[TMBOneLogin_Accounts_ShowAccount_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccount Choreo.
 */
@implementation TMBOneLogin_Accounts_CreateAccount_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The account name.
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Address input for this Choreo.
	*(optional, string) The street address for the new account.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(optional, string) The city associated with the address.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(optional, string) The country associated with the address of the new account.
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(required, string) The email address for the new account.
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(required, string) The first name on the new account.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(required, string) The last name on the new account.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the Phone input for this Choreo.
	*(optional, string) The phone number for the new account.
	 */
	-(void)setPhone:(NSString*)Phone {
		[super setInput:@"Phone" toValue:Phone];
	}

	/*!
	 * Set the value of the Plan input for this Choreo.
	*(required, string) Indicates which plan the new account has (i.e. enterprise).
	 */
	-(void)setPlan:(NSString*)Plan {
		[super setInput:@"Plan" toValue:Plan];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) The state associated with the address of the new account.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(optional, string) The postal code associated with the address of the new account.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccount Choreo.
 */
@implementation TMBOneLogin_Accounts_CreateAccount_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new account.
 */
@implementation TMBOneLogin_Accounts_CreateAccount

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Accounts_CreateAccount Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Accounts/CreateAccount"] autorelease];
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
		TMBOneLogin_Accounts_CreateAccount_ResultSet *results = [[[TMBOneLogin_Accounts_CreateAccount_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAccount Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Accounts_CreateAccount_Inputs*)newInputSet {
		return [[[TMBOneLogin_Accounts_CreateAccount_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAll Choreo.
 */
@implementation TMBOneLogin_Roles_ListAll_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAll Choreo.
 */
@implementation TMBOneLogin_Roles_ListAll_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of all roles.
 */
@implementation TMBOneLogin_Roles_ListAll

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Roles_ListAll Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Roles/ListAll"] autorelease];
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
		TMBOneLogin_Roles_ListAll_ResultSet *results = [[[TMBOneLogin_Roles_ListAll_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAll Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Roles_ListAll_Inputs*)newInputSet {
		return [[[TMBOneLogin_Roles_ListAll_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ShowRole Choreo.
 */
@implementation TMBOneLogin_Roles_ShowRole_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by OneLogin.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The id the role you want to return.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ShowRole Choreo.
 */
@implementation TMBOneLogin_Roles_ShowRole_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from OneLogin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a single role.
 */
@implementation TMBOneLogin_Roles_ShowRole

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBOneLogin_Roles_ShowRole Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/OneLogin/Roles/ShowRole"] autorelease];
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
		TMBOneLogin_Roles_ShowRole_ResultSet *results = [[[TMBOneLogin_Roles_ShowRole_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ShowRole Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBOneLogin_Roles_ShowRole_Inputs*)newInputSet {
		return [[[TMBOneLogin_Roles_ShowRole_Inputs alloc] init] autorelease];
	}
@end
	