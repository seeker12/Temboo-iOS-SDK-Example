/*!
 * @TMBSalesforce.m
 *
 * Execute Choreographies from the Temboo Salesforce bundle.
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

#import "TMBSalesforce.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the CreateAccountObject Choreo.
 */
@implementation TMBSalesforce_CreateAccountObject_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) The name of the account to create
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Salesforce password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SecurityToken input for this Choreo.
	*(required, string) Your Salesforce security token used for making API calls.
	 */
	-(void)setSecurityToken:(NSString*)SecurityToken {
		[super setInput:@"SecurityToken" toValue:SecurityToken];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Salesforce username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateAccountObject Choreo.
 */
@implementation TMBSalesforce_CreateAccountObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The full response from Salesforce
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates new account object.
 */
@implementation TMBSalesforce_CreateAccountObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSalesforce_CreateAccountObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Salesforce/CreateAccountObject"] autorelease];
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
		TMBSalesforce_CreateAccountObject_ResultSet *results = [[[TMBSalesforce_CreateAccountObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateAccountObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSalesforce_CreateAccountObject_Inputs*)newInputSet {
		return [[[TMBSalesforce_CreateAccountObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Query Choreo.
 */
@implementation TMBSalesforce_Query_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Salesforce password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) The query to submit to Salesforce. This should be SOQL which differs from standard SQL in some cases (select FirstName, LastName from Lead limit 1).
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the SecurityToken input for this Choreo.
	*(required, string) Your Salesforce security token for making API calls.
	 */
	-(void)setSecurityToken:(NSString*)SecurityToken {
		[super setInput:@"SecurityToken" toValue:SecurityToken];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Salesforce username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Query Choreo.
 */
@implementation TMBSalesforce_Query_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from the Salesforce query
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Executes a query against a Salesforce object and returns data that matches the specified criteria.
 */
@implementation TMBSalesforce_Query

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSalesforce_Query Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Salesforce/Query"] autorelease];
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
		TMBSalesforce_Query_ResultSet *results = [[[TMBSalesforce_Query_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Query Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSalesforce_Query_Inputs*)newInputSet {
		return [[[TMBSalesforce_Query_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAccountObject Choreo.
 */
@implementation TMBSalesforce_UpdateAccountObject_Inputs

	/*!
	 * Set the value of the AccountId input for this Choreo.
	*(required, string) The ID for the account you want to update
	 */
	-(void)setAccountId:(NSString*)AccountId {
		[super setInput:@"AccountId" toValue:AccountId];
	}

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(required, string) A new name to update the Account with
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Salesforce password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SecurityToken input for this Choreo.
	*(required, string) Your Salesforce security token used for making API calls.
	 */
	-(void)setSecurityToken:(NSString*)SecurityToken {
		[super setInput:@"SecurityToken" toValue:SecurityToken];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Salesforce username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAccountObject Choreo.
 */
@implementation TMBSalesforce_UpdateAccountObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Salesforce
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Updates an Account Object name.
 */
@implementation TMBSalesforce_UpdateAccountObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSalesforce_UpdateAccountObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Salesforce/UpdateAccountObject"] autorelease];
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
		TMBSalesforce_UpdateAccountObject_ResultSet *results = [[[TMBSalesforce_UpdateAccountObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateAccountObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSalesforce_UpdateAccountObject_Inputs*)newInputSet {
		return [[[TMBSalesforce_UpdateAccountObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteObject Choreo.
 */
@implementation TMBSalesforce_DeleteObject_Inputs

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The ID of the Object you wish to delete
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Salesforce password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SecurityToken input for this Choreo.
	*(required, string) Your Salesforce security token used for API calls.
	 */
	-(void)setSecurityToken:(NSString*)SecurityToken {
		[super setInput:@"SecurityToken" toValue:SecurityToken];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Salesforce username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteObject Choreo.
 */
@implementation TMBSalesforce_DeleteObject_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The full response from Salesforce
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified Salesforce Object.
 */
@implementation TMBSalesforce_DeleteObject

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSalesforce_DeleteObject Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Salesforce/DeleteObject"] autorelease];
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
		TMBSalesforce_DeleteObject_ResultSet *results = [[[TMBSalesforce_DeleteObject_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteObject Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSalesforce_DeleteObject_Inputs*)newInputSet {
		return [[[TMBSalesforce_DeleteObject_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the BatchCSVInsert Choreo.
 */
@implementation TMBSalesforce_BatchCSVInsert_Inputs

	/*!
	 * Set the value of the CSVInput input for this Choreo.
	*(conditional, multiline) CSV data to insert. Column names must match Salesforce field names exactly. Required unless using the VaultFile alias (an advanced option used when running Choreos in the Temboo Designer).
	 */
	-(void)setCSVInput:(NSString*)CSVInput {
		[super setInput:@"CSVInput" toValue:CSVInput];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Salesforce password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the SalesforceObjectType input for this Choreo.
	*(optional, string) The object type that you are inserting (i.e.Lead, Contact, Account). Defaults to Lead.
	 */
	-(void)setSalesforceObjectType:(NSString*)SalesforceObjectType {
		[super setInput:@"SalesforceObjectType" toValue:SalesforceObjectType];
	}

	/*!
	 * Set the value of the SecurityToken input for this Choreo.
	*(required, string) Your Salesforce security token for making API calls.
	 */
	-(void)setSecurityToken:(NSString*)SecurityToken {
		[super setInput:@"SecurityToken" toValue:SecurityToken];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Salesforce username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}

	/*!
	 * Set the value of the VaultCSVFile input for this Choreo.
	*A path to a CSV file in the vault. Required unless specifying your data in CSVInput.
	 */
	-(void)setVaultCSVFile:(NSString*)VaultCSVFile {
		[super setInput:@"VaultCSVFile" toValue:VaultCSVFile];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BatchCSVInsert Choreo.
 */
@implementation TMBSalesforce_BatchCSVInsert_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Salesforce
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Create Salesforce Objects of any type (Account, Lead, Contact, etc) by specifying rows in CSV format.
 */
@implementation TMBSalesforce_BatchCSVInsert

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSalesforce_BatchCSVInsert Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Salesforce/BatchCSVInsert"] autorelease];
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
		TMBSalesforce_BatchCSVInsert_ResultSet *results = [[[TMBSalesforce_BatchCSVInsert_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the BatchCSVInsert Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSalesforce_BatchCSVInsert_Inputs*)newInputSet {
		return [[[TMBSalesforce_BatchCSVInsert_Inputs alloc] init] autorelease];
	}
@end
	