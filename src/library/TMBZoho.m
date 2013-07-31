/*!
 * @TMBZoho.m
 *
 * Execute Choreographies from the Temboo Zoho bundle.
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

#import "TMBZoho.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ListPublicSpreadsheets Choreo.
 */
@implementation TMBZoho_Sheet_ListPublicSpreadsheets_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Zoho
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Sets the number of documents to be listed.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the LoginID input for this Choreo.
	*(required, string) Your Zoho username (or login id)
	 */
	-(void)setLoginID:(NSString*)LoginID {
		[super setInput:@"LoginID" toValue:LoginID];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order documents by createdTime, lastModifiedTime or name.
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zoho password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Sorting order: asc or desc. Default sort order is set to ascending.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartFrom input for this Choreo.
	*(optional, integer) Sets the initial document number from which the documents will be listed.
	 */
	-(void)setStartFrom:(NSString*)StartFrom {
		[super setInput:@"StartFrom" toValue:StartFrom];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPublicSpreadsheets Choreo.
 */
@implementation TMBZoho_Sheet_ListPublicSpreadsheets_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Corresponds to the ResponseFormat input. Defaults to XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists all the spreadsheets that have been made "public" from a user's Zoho Sheet  Account.
 */
@implementation TMBZoho_Sheet_ListPublicSpreadsheets

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_Sheet_ListPublicSpreadsheets Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/Sheet/ListPublicSpreadsheets"] autorelease];
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
		TMBZoho_Sheet_ListPublicSpreadsheets_ResultSet *results = [[[TMBZoho_Sheet_ListPublicSpreadsheets_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPublicSpreadsheets Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_Sheet_ListPublicSpreadsheets_Inputs*)newInputSet {
		return [[[TMBZoho_Sheet_ListPublicSpreadsheets_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSearchRecordsByPDC Choreo.
 */
@implementation TMBZoho_CRM_GetSearchRecordsByPDC_Inputs

	/*!
	 * Set the value of the AuthenticationToken input for this Choreo.
	*(required, string) A valid authentication token. Permanent authentication tokens can be generated by the GenerateAuthToken Choreo.
	 */
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken {
		[super setInput:@"AuthenticationToken" toValue:AuthenticationToken];
	}

	/*!
	 * Set the value of the FromIndex input for this Choreo.
	*(optional, integer) The beginning index of the result set to return. Defaults to 1.
	 */
	-(void)setFromIndex:(NSString*)FromIndex {
		[super setInput:@"FromIndex" toValue:FromIndex];
	}

	/*!
	 * Set the value of the Module input for this Choreo.
	*(required, string) The Zoho module you want to access. Defaults to 'Leads'.
	 */
	-(void)setModule:(NSString*)Module {
		[super setInput:@"Module" toValue:Module];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid formats are: json and xml (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SearchColumn input for this Choreo.
	*(required, string) The column name you want to search (such as "email", the column names used in this method are in lowercase)
	 */
	-(void)setSearchColumn:(NSString*)SearchColumn {
		[super setInput:@"SearchColumn" toValue:SearchColumn];
	}

	/*!
	 * Set the value of the SearchValue input for this Choreo.
	*(required, string) Specify a search value for the column you're searching
	 */
	-(void)setSearchValue:(NSString*)SearchValue {
		[super setInput:@"SearchValue" toValue:SearchValue];
	}

	/*!
	 * Set the value of the SelectColumns input for this Choreo.
	*(optional, string) The columns to return separated by commas (i.e. First Name,Last Name,Email). When left empty, only IDs are returned.
	 */
	-(void)setSelectColumns:(NSString*)SelectColumns {
		[super setInput:@"SelectColumns" toValue:SelectColumns];
	}

	/*!
	 * Set the value of the ToIndex input for this Choreo.
	*(optional, integer) The ending index of the result set to return. Defaults to 20. Max is 200.
	 */
	-(void)setToIndex:(NSString*)ToIndex {
		[super setInput:@"ToIndex" toValue:ToIndex];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSearchRecordsByPDC Choreo.
 */
@implementation TMBZoho_CRM_GetSearchRecordsByPDC_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Format corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves records from your Zoho CRM account and searches by predefined columns.
 */
@implementation TMBZoho_CRM_GetSearchRecordsByPDC

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_CRM_GetSearchRecordsByPDC Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/CRM/GetSearchRecordsByPDC"] autorelease];
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
		TMBZoho_CRM_GetSearchRecordsByPDC_ResultSet *results = [[[TMBZoho_CRM_GetSearchRecordsByPDC_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSearchRecordsByPDC Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_CRM_GetSearchRecordsByPDC_Inputs*)newInputSet {
		return [[[TMBZoho_CRM_GetSearchRecordsByPDC_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListSharedSpreadsheets Choreo.
 */
@implementation TMBZoho_Sheet_ListSharedSpreadsheets_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Zoho
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Sets the number of documents to be listed.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the LoginID input for this Choreo.
	*(required, string) Your Zoho username (or login id)
	 */
	-(void)setLoginID:(NSString*)LoginID {
		[super setInput:@"LoginID" toValue:LoginID];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order documents by createdTime, lastModifiedTime or name.
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zoho password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Sorting order: asc or desc. Default sort order is set to ascending.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartFrom input for this Choreo.
	*(optional, integer) Sets the initial document number from which the documents will be listed.
	 */
	-(void)setStartFrom:(NSString*)StartFrom {
		[super setInput:@"StartFrom" toValue:StartFrom];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSharedSpreadsheets Choreo.
 */
@implementation TMBZoho_Sheet_ListSharedSpreadsheets_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Corresponds to the ResponseFormat input. Defaults to XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists all the spreadsheets that have been "shared" to a user's Zoho Sheet Account.
 */
@implementation TMBZoho_Sheet_ListSharedSpreadsheets

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_Sheet_ListSharedSpreadsheets Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/Sheet/ListSharedSpreadsheets"] autorelease];
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
		TMBZoho_Sheet_ListSharedSpreadsheets_ResultSet *results = [[[TMBZoho_Sheet_ListSharedSpreadsheets_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListSharedSpreadsheets Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_Sheet_ListSharedSpreadsheets_Inputs*)newInputSet {
		return [[[TMBZoho_Sheet_ListSharedSpreadsheets_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GenerateAuthToken Choreo.
 */
@implementation TMBZoho_CRM_GenerateAuthToken_Inputs

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, string) Your Zoho password.
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the Username input for this Choreo.
	*(required, string) Your Zoho CRM username.
	 */
	-(void)setUsername:(NSString*)Username {
		[super setInput:@"Username" toValue:Username];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GenerateAuthToken Choreo.
 */
@implementation TMBZoho_CRM_GenerateAuthToken_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AuthenticationToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The authentication token returned from Zoho.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAuthenticationToken {
		return [super getOutputByName:@"AuthenticationToken"];
	}
	
@end

/*!
 * Generates an authentication token.
 */
@implementation TMBZoho_CRM_GenerateAuthToken

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_CRM_GenerateAuthToken Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/CRM/GenerateAuthToken"] autorelease];
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
		TMBZoho_CRM_GenerateAuthToken_ResultSet *results = [[[TMBZoho_CRM_GenerateAuthToken_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GenerateAuthToken Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_CRM_GenerateAuthToken_Inputs*)newInputSet {
		return [[[TMBZoho_CRM_GenerateAuthToken_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListTrashedSpreadsheets Choreo.
 */
@implementation TMBZoho_Sheet_ListTrashedSpreadsheets_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Zoho
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Sets the number of documents to be listed.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the LoginID input for this Choreo.
	*(required, string) Your Zoho username (or login id)
	 */
	-(void)setLoginID:(NSString*)LoginID {
		[super setInput:@"LoginID" toValue:LoginID];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order documents by createdTime, lastModifiedTime or name.
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zoho password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Sorting order: asc or desc. Default sort order is set to ascending.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartFrom input for this Choreo.
	*(optional, integer) Sets the initial document number from which the documents will be listed.
	 */
	-(void)setStartFrom:(NSString*)StartFrom {
		[super setInput:@"StartFrom" toValue:StartFrom];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTrashedSpreadsheets Choreo.
 */
@implementation TMBZoho_Sheet_ListTrashedSpreadsheets_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Corresponds to the ResponseFormat input. Defaults to XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists all the spreadsheets that have been "trashed" from a user's Zoho Sheet Account.
 */
@implementation TMBZoho_Sheet_ListTrashedSpreadsheets

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_Sheet_ListTrashedSpreadsheets Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/Sheet/ListTrashedSpreadsheets"] autorelease];
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
		TMBZoho_Sheet_ListTrashedSpreadsheets_ResultSet *results = [[[TMBZoho_Sheet_ListTrashedSpreadsheets_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListTrashedSpreadsheets Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_Sheet_ListTrashedSpreadsheets_Inputs*)newInputSet {
		return [[[TMBZoho_Sheet_ListTrashedSpreadsheets_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecords Choreo.
 */
@implementation TMBZoho_CRM_GetRecords_Inputs

	/*!
	 * Set the value of the AuthenticationToken input for this Choreo.
	*(required, string) A valid authentication token. Permanent authentication tokens can be generated by the GenerateAuthToken Choreo.
	 */
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken {
		[super setInput:@"AuthenticationToken" toValue:AuthenticationToken];
	}

	/*!
	 * Set the value of the FromIndex input for this Choreo.
	*(optional, integer) The beginning index of the result set to return. Defaults to 1.
	 */
	-(void)setFromIndex:(NSString*)FromIndex {
		[super setInput:@"FromIndex" toValue:FromIndex];
	}

	/*!
	 * Set the value of the LastModifiedTime input for this Choreo.
	*(optional, date) Used to return records with a created or modified date that is after the specified time.  (i.e. 2010-04-21 11:09:23)
	 */
	-(void)setLastModifiedTime:(NSString*)LastModifiedTime {
		[super setInput:@"LastModifiedTime" toValue:LastModifiedTime];
	}

	/*!
	 * Set the value of the Module input for this Choreo.
	*(optional, string) The Zoho module you want to access. Defaults to 'Leads'.
	 */
	-(void)setModule:(NSString*)Module {
		[super setInput:@"Module" toValue:Module];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid formats are: json and xml (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SelectColumns input for this Choreo.
	*(optional, string) The columns to return separated by commas (i.e. First Name,Last Name,Email). When left empty, only IDs are returned.
	 */
	-(void)setSelectColumns:(NSString*)SelectColumns {
		[super setInput:@"SelectColumns" toValue:SelectColumns];
	}

	/*!
	 * Set the value of the SortColumnString input for this Choreo.
	*(optional, string) Used to specify a column to sort by (in ascending order)
	 */
	-(void)setSortColumnString:(NSString*)SortColumnString {
		[super setInput:@"SortColumnString" toValue:SortColumnString];
	}

	/*!
	 * Set the value of the SortOrderString input for this Choreo.
	*(optional, string) Sorting order: asc or desc. Default sort order is set to ascending.
	 */
	-(void)setSortOrderString:(NSString*)SortOrderString {
		[super setInput:@"SortOrderString" toValue:SortOrderString];
	}

	/*!
	 * Set the value of the ToIndex input for this Choreo.
	*(optional, integer) The ending index of the result set to return. Defaults to 20. Max is 200.
	 */
	-(void)setToIndex:(NSString*)ToIndex {
		[super setInput:@"ToIndex" toValue:ToIndex];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecords Choreo.
 */
@implementation TMBZoho_CRM_GetRecords_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Format corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves all users data specified in the API request.
 */
@implementation TMBZoho_CRM_GetRecords

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_CRM_GetRecords Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/CRM/GetRecords"] autorelease];
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
		TMBZoho_CRM_GetRecords_ResultSet *results = [[[TMBZoho_CRM_GetRecords_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecords Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_CRM_GetRecords_Inputs*)newInputSet {
		return [[[TMBZoho_CRM_GetRecords_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DownloadDocument Choreo.
 */
@implementation TMBZoho_Writer_DownloadDocument_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Zoho
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DocumentId input for this Choreo.
	*(required, integer) Specifies the unique document id to download.
	 */
	-(void)setDocumentId:(NSString*)DocumentId {
		[super setInput:@"DocumentId" toValue:DocumentId];
	}

	/*!
	 * Set the value of the DownloadFormat input for this Choreo.
	*(required, string) Specifies the file format in which the documents need to be downloaded. Possible values for documents: doc, docx, pdf, html, sxw, odt, rtf.
	 */
	-(void)setDownloadFormat:(NSString*)DownloadFormat {
		[super setInput:@"DownloadFormat" toValue:DownloadFormat];
	}

	/*!
	 * Set the value of the LoginID input for this Choreo.
	*(required, string) Your Zoho username (or login id)
	 */
	-(void)setLoginID:(NSString*)LoginID {
		[super setInput:@"LoginID" toValue:LoginID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zoho password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DownloadDocument Choreo.
 */
@implementation TMBZoho_Writer_DownloadDocument_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Corresponds to the DownloadFormat input.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Downloads a specified document in a user's Zoho Writer Account.
 */
@implementation TMBZoho_Writer_DownloadDocument

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_Writer_DownloadDocument Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/Writer/DownloadDocument"] autorelease];
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
		TMBZoho_Writer_DownloadDocument_ResultSet *results = [[[TMBZoho_Writer_DownloadDocument_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DownloadDocument Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_Writer_DownloadDocument_Inputs*)newInputSet {
		return [[[TMBZoho_Writer_DownloadDocument_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListTrashedDocuments Choreo.
 */
@implementation TMBZoho_Writer_ListTrashedDocuments_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Zoho
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Sets the number of documents to be listed.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the LoginID input for this Choreo.
	*(required, string) Your Zoho username (or login id)
	 */
	-(void)setLoginID:(NSString*)LoginID {
		[super setInput:@"LoginID" toValue:LoginID];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order documents by createdTime, lastModifiedTime or name.
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zoho password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Sorting order: asc or desc. Default sort order is set to ascending.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartFrom input for this Choreo.
	*(optional, integer) Sets the initial document number from which the documents will be listed.
	 */
	-(void)setStartFrom:(NSString*)StartFrom {
		[super setInput:@"StartFrom" toValue:StartFrom];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTrashedDocuments Choreo.
 */
@implementation TMBZoho_Writer_ListTrashedDocuments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Corresponds to the ResponseFormat input. Defaults to XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists all the documents that have been "trashed" from a user's Zoho Writer Account.
 */
@implementation TMBZoho_Writer_ListTrashedDocuments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_Writer_ListTrashedDocuments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/Writer/ListTrashedDocuments"] autorelease];
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
		TMBZoho_Writer_ListTrashedDocuments_ResultSet *results = [[[TMBZoho_Writer_ListTrashedDocuments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListTrashedDocuments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_Writer_ListTrashedDocuments_Inputs*)newInputSet {
		return [[[TMBZoho_Writer_ListTrashedDocuments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ConvertLead Choreo.
 */
@implementation TMBZoho_CRM_ConvertLead_Inputs

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(conditional, decimal) Corresponds to the Amount field in Zoho. Required if CreatePotential is set to 1.
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the AssignTo input for this Choreo.
	*(optional, string) Corresponds to the Assign To field in Zoho
	 */
	-(void)setAssignTo:(NSString*)AssignTo {
		[super setInput:@"AssignTo" toValue:AssignTo];
	}

	/*!
	 * Set the value of the AuthenticationToken input for this Choreo.
	*(required, string) A valid authentication token. Permanent authentication tokens can be generated by the GenerateAuthToken Choreo.
	 */
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken {
		[super setInput:@"AuthenticationToken" toValue:AuthenticationToken];
	}

	/*!
	 * Set the value of the ClosingDate input for this Choreo.
	*(conditional, date) Corresponds to the Closing Date field in Zoho. Formatted like MM/dd/yyyy. Required if CreatePotential is set to 1.
	 */
	-(void)setClosingDate:(NSString*)ClosingDate {
		[super setInput:@"ClosingDate" toValue:ClosingDate];
	}

	/*!
	 * Set the value of the ContactRole input for this Choreo.
	*(conditional, string) Corresponds to the Contact Role field in Zoho. Required if CreatePotential is set to 1.
	 */
	-(void)setContactRole:(NSString*)ContactRole {
		[super setInput:@"ContactRole" toValue:ContactRole];
	}

	/*!
	 * Set the value of the CreatePotential input for this Choreo.
	*(optional, boolean) Whether or not to create a potential
	 */
	-(void)setCreatePotential:(NSString*)CreatePotential {
		[super setInput:@"CreatePotential" toValue:CreatePotential];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID for the lead that you wish to convert to a potential
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the NotifyLeadOwner input for this Choreo.
	*(optional, boolean) Whether or not to notifiy the lead owner. Defaults to 0 for false.
	 */
	-(void)setNotifyLeadOwner:(NSString*)NotifyLeadOwner {
		[super setInput:@"NotifyLeadOwner" toValue:NotifyLeadOwner];
	}

	/*!
	 * Set the value of the NotifyNewEntityOwner input for this Choreo.
	*(optional, boolean) Whether or not to notify the new entity owner. Defaults to 0 for false.
	 */
	-(void)setNotifyNewEntityOwner:(NSString*)NotifyNewEntityOwner {
		[super setInput:@"NotifyNewEntityOwner" toValue:NotifyNewEntityOwner];
	}

	/*!
	 * Set the value of the PotentialName input for this Choreo.
	*(conditional, string) Corresponds to the Potential Name field in Zoho. Required if CreatePotential is set to 1.
	 */
	-(void)setPotentialName:(NSString*)PotentialName {
		[super setInput:@"PotentialName" toValue:PotentialName];
	}

	/*!
	 * Set the value of the PotentialStage input for this Choreo.
	*(conditional, string) Corresponds to the Potential Stage field in Zoho. Required if CreatePotential is set to 1.
	 */
	-(void)setPotentialStage:(NSString*)PotentialStage {
		[super setInput:@"PotentialStage" toValue:PotentialStage];
	}

	/*!
	 * Set the value of the Probability input for this Choreo.
	*(conditional, integer) Corresponds to the Probability field in Zoho. Required if CreatePotential is set to 1.
	 */
	-(void)setProbability:(NSString*)Probability {
		[super setInput:@"Probability" toValue:Probability];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid formats are: json and xml (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ConvertLead Choreo.
 */
@implementation TMBZoho_CRM_ConvertLead_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Format corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Converts a lead to a potential, account, or contact in your Zoho CRM account.
 */
@implementation TMBZoho_CRM_ConvertLead

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_CRM_ConvertLead Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/CRM/ConvertLead"] autorelease];
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
		TMBZoho_CRM_ConvertLead_ResultSet *results = [[[TMBZoho_CRM_ConvertLead_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ConvertLead Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_CRM_ConvertLead_Inputs*)newInputSet {
		return [[[TMBZoho_CRM_ConvertLead_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRecords Choreo.
 */
@implementation TMBZoho_CRM_DeleteRecords_Inputs

	/*!
	 * Set the value of the AuthenticationToken input for this Choreo.
	*(required, string) A valid authentication token. Permanent authentication tokens can be generated by the GenerateAuthToken Choreo.
	 */
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken {
		[super setInput:@"AuthenticationToken" toValue:AuthenticationToken];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID for the record you want to delete
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Module input for this Choreo.
	*(optional, string) The Zoho module you want to access. Defaults to Leads.
	 */
	-(void)setModule:(NSString*)Module {
		[super setInput:@"Module" toValue:Module];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid formats are: json and xml (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRecords Choreo.
 */
@implementation TMBZoho_CRM_DeleteRecords_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Format corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified record from a Zoho CRM account.
 */
@implementation TMBZoho_CRM_DeleteRecords

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_CRM_DeleteRecords Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/CRM/DeleteRecords"] autorelease];
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
		TMBZoho_CRM_DeleteRecords_ResultSet *results = [[[TMBZoho_CRM_DeleteRecords_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRecords Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_CRM_DeleteRecords_Inputs*)newInputSet {
		return [[[TMBZoho_CRM_DeleteRecords_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMyRecords Choreo.
 */
@implementation TMBZoho_CRM_GetMyRecords_Inputs

	/*!
	 * Set the value of the AuthenticationToken input for this Choreo.
	*(required, string) A valid authentication token. Permanent authentication tokens can be generated by the GenerateAuthToken Choreo.
	 */
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken {
		[super setInput:@"AuthenticationToken" toValue:AuthenticationToken];
	}

	/*!
	 * Set the value of the FromIndex input for this Choreo.
	*(optional, integer) The beginning index of the result set to return. Defaults to 1.
	 */
	-(void)setFromIndex:(NSString*)FromIndex {
		[super setInput:@"FromIndex" toValue:FromIndex];
	}

	/*!
	 * Set the value of the LastModifiedTime input for this Choreo.
	*(optional, date) Used to return records with a created or modified date that is after the specified time.  (i.e. 2010-04-21 11:09:23)
	 */
	-(void)setLastModifiedTime:(NSString*)LastModifiedTime {
		[super setInput:@"LastModifiedTime" toValue:LastModifiedTime];
	}

	/*!
	 * Set the value of the Module input for this Choreo.
	*(optional, string) The Zoho module you want to access. Defaults to Leads.
	 */
	-(void)setModule:(NSString*)Module {
		[super setInput:@"Module" toValue:Module];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid formats are: json and xml (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SelectColumns input for this Choreo.
	*(optional, string) The columns to return separated by commas (i.e. First Name,Last Name,Email). When left empty, only IDs are returned.
	 */
	-(void)setSelectColumns:(NSString*)SelectColumns {
		[super setInput:@"SelectColumns" toValue:SelectColumns];
	}

	/*!
	 * Set the value of the SortColumnString input for this Choreo.
	*(optional, integer) Used to specify a column to sort by
	 */
	-(void)setSortColumnString:(NSString*)SortColumnString {
		[super setInput:@"SortColumnString" toValue:SortColumnString];
	}

	/*!
	 * Set the value of the SortOrderString input for this Choreo.
	*(optional, string) Sorting order: asc or desc. Default sort order is set to ascending.
	 */
	-(void)setSortOrderString:(NSString*)SortOrderString {
		[super setInput:@"SortOrderString" toValue:SortOrderString];
	}

	/*!
	 * Set the value of the ToIndex input for this Choreo.
	*(optional, integer) The ending index of the result set to return. Defaults to 20. Max is 200.
	 */
	-(void)setToIndex:(NSString*)ToIndex {
		[super setInput:@"ToIndex" toValue:ToIndex];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMyRecords Choreo.
 */
@implementation TMBZoho_CRM_GetMyRecords_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Format corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves data by owner of the authentication token specified.
 */
@implementation TMBZoho_CRM_GetMyRecords

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_CRM_GetMyRecords Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/CRM/GetMyRecords"] autorelease];
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
		TMBZoho_CRM_GetMyRecords_ResultSet *results = [[[TMBZoho_CRM_GetMyRecords_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMyRecords Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_CRM_GetMyRecords_Inputs*)newInputSet {
		return [[[TMBZoho_CRM_GetMyRecords_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPublicDocuments Choreo.
 */
@implementation TMBZoho_Writer_ListPublicDocuments_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Zoho
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Sets the number of documents to be listed.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the LoginID input for this Choreo.
	*(required, string) Your Zoho username (or login id)
	 */
	-(void)setLoginID:(NSString*)LoginID {
		[super setInput:@"LoginID" toValue:LoginID];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order documents by createdTime, lastModifiedTime or name.
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zoho password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Sorting order: asc or desc. Default sort order is set to ascending.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartFrom input for this Choreo.
	*(optional, integer) Sets the initial document number from which the documents will be listed.
	 */
	-(void)setStartFrom:(NSString*)StartFrom {
		[super setInput:@"StartFrom" toValue:StartFrom];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPublicDocuments Choreo.
 */
@implementation TMBZoho_Writer_ListPublicDocuments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Corresponds to the ResponseFormat input. Defaults to XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists all the documents that have been made "public" from a user's Zoho Writer Account.
 */
@implementation TMBZoho_Writer_ListPublicDocuments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_Writer_ListPublicDocuments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/Writer/ListPublicDocuments"] autorelease];
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
		TMBZoho_Writer_ListPublicDocuments_ResultSet *results = [[[TMBZoho_Writer_ListPublicDocuments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPublicDocuments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_Writer_ListPublicDocuments_Inputs*)newInputSet {
		return [[[TMBZoho_Writer_ListPublicDocuments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InsertRecords Choreo.
 */
@implementation TMBZoho_CRM_InsertRecords_Inputs

	/*!
	 * Set the value of the AnnualRevenue input for this Choreo.
	*(optional, string) Corresponds to the Annual Revenue field in Zoho
	 */
	-(void)setAnnualRevenue:(NSString*)AnnualRevenue {
		[super setInput:@"AnnualRevenue" toValue:AnnualRevenue];
	}

	/*!
	 * Set the value of the AuthenticationToken input for this Choreo.
	*(required, string) A valid authentication token. Permanent authentication tokens can be generated by the GenerateAuthToken Choreo.
	 */
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken {
		[super setInput:@"AuthenticationToken" toValue:AuthenticationToken];
	}

	/*!
	 * Set the value of the CampaignSource input for this Choreo.
	*(optional, string) Corresponds to the Campaign Source field in Zoho
	 */
	-(void)setCampaignSource:(NSString*)CampaignSource {
		[super setInput:@"CampaignSource" toValue:CampaignSource];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(optional, string) Corresponds to the City field in Zoho
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Company input for this Choreo.
	*(optional, string) Corresponds to the Company field in Zoho
	 */
	-(void)setCompany:(NSString*)Company {
		[super setInput:@"Company" toValue:Company];
	}

	/*!
	 * Set the value of the Country input for this Choreo.
	*(optional, string) Corresponds to the Country field in Zoho
	 */
	-(void)setCountry:(NSString*)Country {
		[super setInput:@"Country" toValue:Country];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) Corresponds to the Description field in Zoho
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the EmailOptOut input for this Choreo.
	*(optional, boolean) Corresponds to the Email Opt Out field in Zoho. Defaults to 0 for false.
	 */
	-(void)setEmailOptOut:(NSString*)EmailOptOut {
		[super setInput:@"EmailOptOut" toValue:EmailOptOut];
	}

	/*!
	 * Set the value of the Email input for this Choreo.
	*(optional, string) Corresponds to the Email field in Zoho
	 */
	-(void)setEmail:(NSString*)Email {
		[super setInput:@"Email" toValue:Email];
	}

	/*!
	 * Set the value of the Fax input for this Choreo.
	*(optional, string) Corresponds to the Fax field in Zoho
	 */
	-(void)setFax:(NSString*)Fax {
		[super setInput:@"Fax" toValue:Fax];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(optional, string) Corresponds to the First Name field in Zoho
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the Industry input for this Choreo.
	*(optional, string) Corresponds to the Industry field in Zoho
	 */
	-(void)setIndustry:(NSString*)Industry {
		[super setInput:@"Industry" toValue:Industry];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(required, string) Corresponds to the Last Name field in Zoho
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the LeadOwner input for this Choreo.
	*(optional, string) Corresponds to the Lead Owner field in Zoho
	 */
	-(void)setLeadOwner:(NSString*)LeadOwner {
		[super setInput:@"LeadOwner" toValue:LeadOwner];
	}

	/*!
	 * Set the value of the LeadSource input for this Choreo.
	*(optional, string) Corresponds to the Lead Source field in Zoho
	 */
	-(void)setLeadSource:(NSString*)LeadSource {
		[super setInput:@"LeadSource" toValue:LeadSource];
	}

	/*!
	 * Set the value of the LeadStatus input for this Choreo.
	*(optional, string) Corresponds to the Lead Status field in Zoho
	 */
	-(void)setLeadStatus:(NSString*)LeadStatus {
		[super setInput:@"LeadStatus" toValue:LeadStatus];
	}

	/*!
	 * Set the value of the Mobile input for this Choreo.
	*(optional, string) Corresponds to the Mobile field in Zoho
	 */
	-(void)setMobile:(NSString*)Mobile {
		[super setInput:@"Mobile" toValue:Mobile];
	}

	/*!
	 * Set the value of the Module input for this Choreo.
	*(optional, string) The Zoho module you want to access. Defaults to 'Leads'.
	 */
	-(void)setModule:(NSString*)Module {
		[super setInput:@"Module" toValue:Module];
	}

	/*!
	 * Set the value of the NumOfEmployees input for this Choreo.
	*(optional, string) Corresponds to the Num Of Employees field in Zoho
	 */
	-(void)setNumOfEmployees:(NSString*)NumOfEmployees {
		[super setInput:@"NumOfEmployees" toValue:NumOfEmployees];
	}

	/*!
	 * Set the value of the Phone input for this Choreo.
	*(optional, string) Corresponds to the Phone field in Zoho
	 */
	-(void)setPhone:(NSString*)Phone {
		[super setInput:@"Phone" toValue:Phone];
	}

	/*!
	 * Set the value of the Rating input for this Choreo.
	*(optional, string) Corresponds to the Rating field in Zoho
	 */
	-(void)setRating:(NSString*)Rating {
		[super setInput:@"Rating" toValue:Rating];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid formats are: json and xml (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Salutation input for this Choreo.
	*(optional, string) Corresponds to the Salutation field in Zoho
	 */
	-(void)setSalutation:(NSString*)Salutation {
		[super setInput:@"Salutation" toValue:Salutation];
	}

	/*!
	 * Set the value of the SkypeID input for this Choreo.
	*(optional, string) Corresponds to the Skype ID field in Zoho
	 */
	-(void)setSkypeID:(NSString*)SkypeID {
		[super setInput:@"SkypeID" toValue:SkypeID];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) Corresponds to the State field in Zoho
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Street input for this Choreo.
	*(optional, string) Corresponds to the Street field in Zoho
	 */
	-(void)setStreet:(NSString*)Street {
		[super setInput:@"Street" toValue:Street];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) Corresponds to the Title field in Zoho
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the Website input for this Choreo.
	*(optional, string) Corresponds to the Website field in Zoho
	 */
	-(void)setWebsite:(NSString*)Website {
		[super setInput:@"Website" toValue:Website];
	}

	/*!
	 * Set the value of the ZipCode input for this Choreo.
	*(optional, integer) Corresponds to the Zip Code field in Zoho
	 */
	-(void)setZipCode:(NSString*)ZipCode {
		[super setInput:@"ZipCode" toValue:ZipCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InsertRecords Choreo.
 */
@implementation TMBZoho_CRM_InsertRecords_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Format corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Inserts records into your Zoho CRM account.
 */
@implementation TMBZoho_CRM_InsertRecords

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_CRM_InsertRecords Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/CRM/InsertRecords"] autorelease];
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
		TMBZoho_CRM_InsertRecords_ResultSet *results = [[[TMBZoho_CRM_InsertRecords_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InsertRecords Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_CRM_InsertRecords_Inputs*)newInputSet {
		return [[[TMBZoho_CRM_InsertRecords_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecordsById Choreo.
 */
@implementation TMBZoho_CRM_GetRecordsById_Inputs

	/*!
	 * Set the value of the AuthenticationToken input for this Choreo.
	*(required, string) A valid authentication token. Permanent authentication tokens can be generated by the GenerateAuthToken Choreo.
	 */
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken {
		[super setInput:@"AuthenticationToken" toValue:AuthenticationToken];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, integer) The ID for the Zoho record to lookup
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Module input for this Choreo.
	*(optional, string) The Zoho module you want to access. Defaults to 'Leads'.
	 */
	-(void)setModule:(NSString*)Module {
		[super setInput:@"Module" toValue:Module];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid formats are: json and xml (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecordsById Choreo.
 */
@implementation TMBZoho_CRM_GetRecordsById_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Format corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves records from your Zoho CRM account by ID.
 */
@implementation TMBZoho_CRM_GetRecordsById

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_CRM_GetRecordsById Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/CRM/GetRecordsById"] autorelease];
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
		TMBZoho_CRM_GetRecordsById_ResultSet *results = [[[TMBZoho_CRM_GetRecordsById_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecordsById Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_CRM_GetRecordsById_Inputs*)newInputSet {
		return [[[TMBZoho_CRM_GetRecordsById_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSearchRecords Choreo.
 */
@implementation TMBZoho_CRM_GetSearchRecords_Inputs

	/*!
	 * Set the value of the AuthenticationToken input for this Choreo.
	*(required, string) A valid authentication token. Permanent authentication tokens can be generated by the GenerateAuthToken Choreo.
	 */
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken {
		[super setInput:@"AuthenticationToken" toValue:AuthenticationToken];
	}

	/*!
	 * Set the value of the FromIndex input for this Choreo.
	*(optional, integer) The beginning index of the result set to return. Defaults to 1.
	 */
	-(void)setFromIndex:(NSString*)FromIndex {
		[super setInput:@"FromIndex" toValue:FromIndex];
	}

	/*!
	 * Set the value of the Module input for this Choreo.
	*(optional, string) The Zoho module you want to access. Defaults to 'Leads'.
	 */
	-(void)setModule:(NSString*)Module {
		[super setInput:@"Module" toValue:Module];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid formats are: json and xml (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SearchColumn input for this Choreo.
	*(required, string) Specify the name of the column you want to search (i.e. Email)
	 */
	-(void)setSearchColumn:(NSString*)SearchColumn {
		[super setInput:@"SearchColumn" toValue:SearchColumn];
	}

	/*!
	 * Set the value of the SearchExpression input for this Choreo.
	*(required, string) Specify an expression to use in your search (i.e. =, <>, contains, starts with, ends with, doesn't contain, <, >, <=, =>)
	 */
	-(void)setSearchExpression:(NSString*)SearchExpression {
		[super setInput:@"SearchExpression" toValue:SearchExpression];
	}

	/*!
	 * Set the value of the SearchString input for this Choreo.
	*(required, string) Specify a search string to use in the search (i.e. *gmail.com*)
	 */
	-(void)setSearchString:(NSString*)SearchString {
		[super setInput:@"SearchString" toValue:SearchString];
	}

	/*!
	 * Set the value of the SelectColumns input for this Choreo.
	*(optional, string) The columns to return separated by commas (i.e. First Name,Last Name,Email). When left empty, only IDs are returned.
	 */
	-(void)setSelectColumns:(NSString*)SelectColumns {
		[super setInput:@"SelectColumns" toValue:SelectColumns];
	}

	/*!
	 * Set the value of the ToIndex input for this Choreo.
	*(optional, integer) The ending index of the result set to return. Defaults to 20. Max is 200.
	 */
	-(void)setToIndex:(NSString*)ToIndex {
		[super setInput:@"ToIndex" toValue:ToIndex];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSearchRecords Choreo.
 */
@implementation TMBZoho_CRM_GetSearchRecords_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Format corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lets you to search your Zoho CRM account for records based on Zoho's search expressions.
 */
@implementation TMBZoho_CRM_GetSearchRecords

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_CRM_GetSearchRecords Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/CRM/GetSearchRecords"] autorelease];
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
		TMBZoho_CRM_GetSearchRecords_ResultSet *results = [[[TMBZoho_CRM_GetSearchRecords_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSearchRecords Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_CRM_GetSearchRecords_Inputs*)newInputSet {
		return [[[TMBZoho_CRM_GetSearchRecords_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllSpreadsheets Choreo.
 */
@implementation TMBZoho_Sheet_ListAllSpreadsheets_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Zoho
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Sets the number of documents to be listed.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the LoginID input for this Choreo.
	*(required, string) Your Zoho username (or login id)
	 */
	-(void)setLoginID:(NSString*)LoginID {
		[super setInput:@"LoginID" toValue:LoginID];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order documents by createdTime, lastModifiedTime or name.
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zoho password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Sorting order: asc or desc. Default sort order is set to ascending.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartFrom input for this Choreo.
	*(optional, integer) Sets the initial document number from which the documents will be listed.
	 */
	-(void)setStartFrom:(NSString*)StartFrom {
		[super setInput:@"StartFrom" toValue:StartFrom];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllSpreadsheets Choreo.
 */
@implementation TMBZoho_Sheet_ListAllSpreadsheets_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Corresponds to the ResponseFormat input. Defaults to XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists all the spreadsheets associated with a user's Zoho Sheet Account.
 */
@implementation TMBZoho_Sheet_ListAllSpreadsheets

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_Sheet_ListAllSpreadsheets Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/Sheet/ListAllSpreadsheets"] autorelease];
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
		TMBZoho_Sheet_ListAllSpreadsheets_ResultSet *results = [[[TMBZoho_Sheet_ListAllSpreadsheets_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllSpreadsheets Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_Sheet_ListAllSpreadsheets_Inputs*)newInputSet {
		return [[[TMBZoho_Sheet_ListAllSpreadsheets_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DownloadSpreadsheet Choreo.
 */
@implementation TMBZoho_Sheet_DownloadSpreadsheet_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Zoho
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the BookId input for this Choreo.
	*(required, integer) Specifies the unique spreadsheet id to download.
	 */
	-(void)setBookId:(NSString*)BookId {
		[super setInput:@"BookId" toValue:BookId];
	}

	/*!
	 * Set the value of the DownloadFormat input for this Choreo.
	*(required, string) Specifies the file format in which the documents need to be downloaded. Possible values for documents: xls, xlsx, ods, sxc, pdf, html, csv, tsv.
	 */
	-(void)setDownloadFormat:(NSString*)DownloadFormat {
		[super setInput:@"DownloadFormat" toValue:DownloadFormat];
	}

	/*!
	 * Set the value of the LoginID input for this Choreo.
	*(required, string) Your Zoho username (or login id)
	 */
	-(void)setLoginID:(NSString*)LoginID {
		[super setInput:@"LoginID" toValue:LoginID];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zoho password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DownloadSpreadsheet Choreo.
 */
@implementation TMBZoho_Sheet_DownloadSpreadsheet_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Corresponds to the DownloadFormat input.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Downloads a specified spreadsheet in a user's Zoho Sheet Account.
 */
@implementation TMBZoho_Sheet_DownloadSpreadsheet

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_Sheet_DownloadSpreadsheet Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/Sheet/DownloadSpreadsheet"] autorelease];
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
		TMBZoho_Sheet_DownloadSpreadsheet_ResultSet *results = [[[TMBZoho_Sheet_DownloadSpreadsheet_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DownloadSpreadsheet Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_Sheet_DownloadSpreadsheet_Inputs*)newInputSet {
		return [[[TMBZoho_Sheet_DownloadSpreadsheet_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCVRecord Choreo.
 */
@implementation TMBZoho_CRM_GetCVRecord_Inputs

	/*!
	 * Set the value of the AuthenticationToken input for this Choreo.
	*(required, string) A valid authentication token. Permanent authentication tokens can be generated by the GenerateAuthToken Choreo.
	 */
	-(void)setAuthenticationToken:(NSString*)AuthenticationToken {
		[super setInput:@"AuthenticationToken" toValue:AuthenticationToken];
	}

	/*!
	 * Set the value of the CVName input for this Choreo.
	*(optional, string) Used to retrieve records from a specific customer view. Defaults to 'All Open Leads'.
	 */
	-(void)setCVName:(NSString*)CVName {
		[super setInput:@"CVName" toValue:CVName];
	}

	/*!
	 * Set the value of the FromIndex input for this Choreo.
	*(optional, integer) The beginning index of the result set to return. Defaults to 1.
	 */
	-(void)setFromIndex:(NSString*)FromIndex {
		[super setInput:@"FromIndex" toValue:FromIndex];
	}

	/*!
	 * Set the value of the LastModifiedDate input for this Choreo.
	*(optional, date) Used to return records with a created or modified date that is after the specified time.  (i.e. 2010-04-21 11:09:23)
	 */
	-(void)setLastModifiedDate:(NSString*)LastModifiedDate {
		[super setInput:@"LastModifiedDate" toValue:LastModifiedDate];
	}

	/*!
	 * Set the value of the Module input for this Choreo.
	*(optional, string) The Zoho module you want to access. Defaults to Leads.
	 */
	-(void)setModule:(NSString*)Module {
		[super setInput:@"Module" toValue:Module];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid formats are: json and xml (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ToIndex input for this Choreo.
	*(optional, integer) The ending index of the result set to return. Defaults to 20. Max is 200.
	 */
	-(void)setToIndex:(NSString*)ToIndex {
		[super setInput:@"ToIndex" toValue:ToIndex];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCVRecord Choreo.
 */
@implementation TMBZoho_CRM_GetCVRecord_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Format corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves data with respect to the Custom View in Zoho CRM.
 */
@implementation TMBZoho_CRM_GetCVRecord

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_CRM_GetCVRecord Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/CRM/GetCVRecord"] autorelease];
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
		TMBZoho_CRM_GetCVRecord_ResultSet *results = [[[TMBZoho_CRM_GetCVRecord_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCVRecord Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_CRM_GetCVRecord_Inputs*)newInputSet {
		return [[[TMBZoho_CRM_GetCVRecord_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListAllDocuments Choreo.
 */
@implementation TMBZoho_Writer_ListAllDocuments_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Zoho
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Sets the number of documents to be listed.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the LoginID input for this Choreo.
	*(required, string) Your Zoho username (or login id)
	 */
	-(void)setLoginID:(NSString*)LoginID {
		[super setInput:@"LoginID" toValue:LoginID];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order documents by createdTime, lastModifiedTime or name.
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zoho password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Sorting order: asc or desc. Default sort order is set to ascending.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartFrom input for this Choreo.
	*(optional, integer) Sets the initial document number from which the documents will be listed.
	 */
	-(void)setStartFrom:(NSString*)StartFrom {
		[super setInput:@"StartFrom" toValue:StartFrom];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListAllDocuments Choreo.
 */
@implementation TMBZoho_Writer_ListAllDocuments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Corresponds to the ResponseFormat input. Defaults to XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists all the documents associated with a user's Zoho Writer Account.
 */
@implementation TMBZoho_Writer_ListAllDocuments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_Writer_ListAllDocuments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/Writer/ListAllDocuments"] autorelease];
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
		TMBZoho_Writer_ListAllDocuments_ResultSet *results = [[[TMBZoho_Writer_ListAllDocuments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListAllDocuments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_Writer_ListAllDocuments_Inputs*)newInputSet {
		return [[[TMBZoho_Writer_ListAllDocuments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListSharedDocuments Choreo.
 */
@implementation TMBZoho_Writer_ListSharedDocuments_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Zoho
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Sets the number of documents to be listed.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the LoginID input for this Choreo.
	*(required, string) Your Zoho username (or login id)
	 */
	-(void)setLoginID:(NSString*)LoginID {
		[super setInput:@"LoginID" toValue:LoginID];
	}

	/*!
	 * Set the value of the OrderBy input for this Choreo.
	*(optional, string) Order documents by createdTime, lastModifiedTime or name.
	 */
	-(void)setOrderBy:(NSString*)OrderBy {
		[super setInput:@"OrderBy" toValue:OrderBy];
	}

	/*!
	 * Set the value of the Password input for this Choreo.
	*(required, password) Your Zoho password
	 */
	-(void)setPassword:(NSString*)Password {
		[super setInput:@"Password" toValue:Password];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that response should be in. Can be set to xml or json. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) Sorting order: asc or desc. Default sort order is set to ascending.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the StartFrom input for this Choreo.
	*(optional, integer) Sets the initial document number from which the documents will be listed.
	 */
	-(void)setStartFrom:(NSString*)StartFrom {
		[super setInput:@"StartFrom" toValue:StartFrom];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListSharedDocuments Choreo.
 */
@implementation TMBZoho_Writer_ListSharedDocuments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Zoho. Corresponds to the ResponseFormat input. Defaults to XML.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists all the documents that have been "shared" to a user's Zoho Writer Account.
 */
@implementation TMBZoho_Writer_ListSharedDocuments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBZoho_Writer_ListSharedDocuments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Zoho/Writer/ListSharedDocuments"] autorelease];
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
		TMBZoho_Writer_ListSharedDocuments_ResultSet *results = [[[TMBZoho_Writer_ListSharedDocuments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListSharedDocuments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBZoho_Writer_ListSharedDocuments_Inputs*)newInputSet {
		return [[[TMBZoho_Writer_ListSharedDocuments_Inputs alloc] init] autorelease];
	}
@end
	