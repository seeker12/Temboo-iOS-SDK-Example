/*!
 * @TMBKiva.m
 *
 * Execute Choreographies from the Temboo Kiva bundle.
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

#import "TMBKiva.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetLenders Choreo.
 */
@implementation TMBKiva_Loans_GetLenders_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the LoanID input for this Choreo.
	*(required, string) The ID of the loan for which to get details.
	 */
	-(void)setLoanID:(NSString*)LoanID {
		[super setInput:@"LoanID" toValue:LoanID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLenders Choreo.
 */
@implementation TMBKiva_Loans_GetLenders_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of public lenders to a loan.
 */
@implementation TMBKiva_Loans_GetLenders

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Loans_GetLenders Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Loans/GetLenders"] autorelease];
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
		TMBKiva_Loans_GetLenders_ResultSet *results = [[[TMBKiva_Loans_GetLenders_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLenders Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Loans_GetLenders_Inputs*)newInputSet {
		return [[[TMBKiva_Loans_GetLenders_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLoanDetails Choreo.
 */
@implementation TMBKiva_Loans_GetLoanDetails_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the LoanID input for this Choreo.
	*(required, string) A comma-delimited list of the loan IDs for which to get details. Maximum list items: 10.
	 */
	-(void)setLoanID:(NSString*)LoanID {
		[super setInput:@"LoanID" toValue:LoanID];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLoanDetails Choreo.
 */
@implementation TMBKiva_Loans_GetLoanDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns detailed information for multiple loans.
 */
@implementation TMBKiva_Loans_GetLoanDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Loans_GetLoanDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Loans/GetLoanDetails"] autorelease];
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
		TMBKiva_Loans_GetLoanDetails_ResultSet *results = [[[TMBKiva_Loans_GetLoanDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLoanDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Loans_GetLoanDetails_Inputs*)newInputSet {
		return [[[TMBKiva_Loans_GetLoanDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLenderLoans Choreo.
 */
@implementation TMBKiva_Lenders_GetLenderLoans_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the LenderName input for this Choreo.
	*(required, string) The lender name for which to return details.
	 */
	-(void)setLenderName:(NSString*)LenderName {
		[super setInput:@"LenderName" toValue:LenderName];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) The order by which to sort results. Acceptable values: oldest, newest. Defaults to newest.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLenderLoans Choreo.
 */
@implementation TMBKiva_Lenders_GetLenderLoans_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns loans belonging to a particular lender.
 */
@implementation TMBKiva_Lenders_GetLenderLoans

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Lenders_GetLenderLoans Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Lenders/GetLenderLoans"] autorelease];
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
		TMBKiva_Lenders_GetLenderLoans_ResultSet *results = [[[TMBKiva_Lenders_GetLenderLoans_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLenderLoans Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Lenders_GetLenderLoans_Inputs*)newInputSet {
		return [[[TMBKiva_Lenders_GetLenderLoans_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTeams Choreo.
 */
@implementation TMBKiva_Teams_GetTeams_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the TeamID input for this Choreo.
	*(required, string) A list of team IDs for which details are to be returned. Max list items: 20.
	 */
	-(void)setTeamID:(NSString*)TeamID {
		[super setInput:@"TeamID" toValue:TeamID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTeams Choreo.
 */
@implementation TMBKiva_Teams_GetTeams_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns detailed information about one or more lending teams.
 */
@implementation TMBKiva_Teams_GetTeams

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Teams_GetTeams Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Teams/GetTeams"] autorelease];
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
		TMBKiva_Teams_GetTeams_ResultSet *results = [[[TMBKiva_Teams_GetTeams_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTeams Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Teams_GetTeams_Inputs*)newInputSet {
		return [[[TMBKiva_Teams_GetTeams_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPartners Choreo.
 */
@implementation TMBKiva_Partners_GetPartners_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPartners Choreo.
 */
@implementation TMBKiva_Partners_GetPartners_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns detailed listings of all Kiva field partners.
 */
@implementation TMBKiva_Partners_GetPartners

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Partners_GetPartners Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Partners/GetPartners"] autorelease];
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
		TMBKiva_Partners_GetPartners_ResultSet *results = [[[TMBKiva_Partners_GetPartners_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPartners Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Partners_GetPartners_Inputs*)newInputSet {
		return [[[TMBKiva_Partners_GetPartners_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLenderTeams Choreo.
 */
@implementation TMBKiva_Lenders_GetLenderTeams_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the LenderName input for this Choreo.
	*(required, string) The lender name for which to return details.
	 */
	-(void)setLenderName:(NSString*)LenderName {
		[super setInput:@"LenderName" toValue:LenderName];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLenderTeams Choreo.
 */
@implementation TMBKiva_Lenders_GetLenderTeams_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns teams that a particular lender is part of.
 */
@implementation TMBKiva_Lenders_GetLenderTeams

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Lenders_GetLenderTeams Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Lenders/GetLenderTeams"] autorelease];
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
		TMBKiva_Lenders_GetLenderTeams_ResultSet *results = [[[TMBKiva_Lenders_GetLenderTeams_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLenderTeams Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Lenders_GetLenderTeams_Inputs*)newInputSet {
		return [[[TMBKiva_Lenders_GetLenderTeams_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLoanUpdates Choreo.
 */
@implementation TMBKiva_Loans_GetLoanUpdates_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the LoanID input for this Choreo.
	*(required, string) The ID of the loan for which to get details.
	 */
	-(void)setLoanID:(NSString*)LoanID {
		[super setInput:@"LoanID" toValue:LoanID];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLoanUpdates Choreo.
 */
@implementation TMBKiva_Loans_GetLoanUpdates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns all status updates for a loan, newest first.
 */
@implementation TMBKiva_Loans_GetLoanUpdates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Loans_GetLoanUpdates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Loans/GetLoanUpdates"] autorelease];
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
		TMBKiva_Loans_GetLoanUpdates_ResultSet *results = [[[TMBKiva_Loans_GetLoanUpdates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLoanUpdates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Loans_GetLoanUpdates_Inputs*)newInputSet {
		return [[[TMBKiva_Loans_GetLoanUpdates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetNewestLenders Choreo.
 */
@implementation TMBKiva_Lenders_GetNewestLenders_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewestLenders Choreo.
 */
@implementation TMBKiva_Lenders_GetNewestLenders_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns listings for the lenders who have most recently joined Kiva.
 */
@implementation TMBKiva_Lenders_GetNewestLenders

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Lenders_GetNewestLenders Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Lenders/GetNewestLenders"] autorelease];
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
		TMBKiva_Lenders_GetNewestLenders_ResultSet *results = [[[TMBKiva_Lenders_GetNewestLenders_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetNewestLenders Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Lenders_GetNewestLenders_Inputs*)newInputSet {
		return [[[TMBKiva_Lenders_GetNewestLenders_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchLoans Choreo.
 */
@implementation TMBKiva_Loans_SearchLoans_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the CountryCode input for this Choreo.
	*(optional, string) A list of two-character ISO codes of countries by which to filter results.
	 */
	-(void)setCountryCode:(NSString*)CountryCode {
		[super setInput:@"CountryCode" toValue:CountryCode];
	}

	/*!
	 * Set the value of the Gender input for this Choreo.
	*(optional, string) If supplied, results are filtered to loans with entrepreneurs of the specified gender. In the case of group loans, this matches against the predominate gender in the group: male or female.
	 */
	-(void)setGender:(NSString*)Gender {
		[super setInput:@"Gender" toValue:Gender];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Partner input for this Choreo.
	*(optional, string) A list of partner IDs for which to filter results.
	 */
	-(void)setPartner:(NSString*)Partner {
		[super setInput:@"Partner" toValue:Partner];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A query string against which results should be returned.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Region input for this Choreo.
	*(optional, string) List of two-letter codes corresponding to regions in which Kiva operates. If supplied, results are filtered to loans only from the specified regions: na, ca, sa, af, as, me, ee.
	 */
	-(void)setRegion:(NSString*)Region {
		[super setInput:@"Region" toValue:Region];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Sector input for this Choreo.
	*(optional, string) A list of business sectors for which to filter results.
	 */
	-(void)setSector:(NSString*)Sector {
		[super setInput:@"Sector" toValue:Sector];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) The order by which to sort results. Acceptable values: popularity, loan_amount, oldest, expiration, newest, amount_remaining, repayment_term. Defaults to newest.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the Status input for this Choreo.
	*(optional, string) The status of loans to return: fundraising, funded, in_repayment, paid, ended_with_loss.
	 */
	-(void)setStatus:(NSString*)Status {
		[super setInput:@"Status" toValue:Status];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchLoans Choreo.
 */
@implementation TMBKiva_Loans_SearchLoans_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a keyword search for loan listings by multiple criteria.
 */
@implementation TMBKiva_Loans_SearchLoans

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Loans_SearchLoans Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Loans/SearchLoans"] autorelease];
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
		TMBKiva_Loans_SearchLoans_ResultSet *results = [[[TMBKiva_Loans_SearchLoans_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchLoans Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Loans_SearchLoans_Inputs*)newInputSet {
		return [[[TMBKiva_Loans_SearchLoans_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTeamLenders Choreo.
 */
@implementation TMBKiva_Teams_GetTeamLenders_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) The order by which to sort results: oldest  or newest. Defaults to newest.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the TeamID input for this Choreo.
	*(required, string) The TeamID for which to return lenders.
	 */
	-(void)setTeamID:(NSString*)TeamID {
		[super setInput:@"TeamID" toValue:TeamID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTeamLenders Choreo.
 */
@implementation TMBKiva_Teams_GetTeamLenders_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of public lenders belonging to a specific team.
 */
@implementation TMBKiva_Teams_GetTeamLenders

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Teams_GetTeamLenders Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Teams/GetTeamLenders"] autorelease];
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
		TMBKiva_Teams_GetTeamLenders_ResultSet *results = [[[TMBKiva_Teams_GetTeamLenders_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTeamLenders Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Teams_GetTeamLenders_Inputs*)newInputSet {
		return [[[TMBKiva_Teams_GetTeamLenders_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTeamByShortname Choreo.
 */
@implementation TMBKiva_Teams_GetTeamByShortname_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the TeamShortname input for this Choreo.
	*(required, string) The Team shortname for which to return details.
	 */
	-(void)setTeamShortname:(NSString*)TeamShortname {
		[super setInput:@"TeamShortname" toValue:TeamShortname];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTeamByShortname Choreo.
 */
@implementation TMBKiva_Teams_GetTeamByShortname_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns detailed information about one or more teams, using team shortnames.
 */
@implementation TMBKiva_Teams_GetTeamByShortname

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Teams_GetTeamByShortname Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Teams/GetTeamByShortname"] autorelease];
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
		TMBKiva_Teams_GetTeamByShortname_ResultSet *results = [[[TMBKiva_Teams_GetTeamByShortname_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTeamByShortname Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Teams_GetTeamByShortname_Inputs*)newInputSet {
		return [[[TMBKiva_Teams_GetTeamByShortname_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLenderDetails Choreo.
 */
@implementation TMBKiva_Lenders_GetLenderDetails_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the LenderName input for this Choreo.
	*(required, string) List of comma-delimited lender names for which to return details. Maximum list items: 50.
	 */
	-(void)setLenderName:(NSString*)LenderName {
		[super setInput:@"LenderName" toValue:LenderName];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLenderDetails Choreo.
 */
@implementation TMBKiva_Lenders_GetLenderDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns details for lenders.
 */
@implementation TMBKiva_Lenders_GetLenderDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Lenders_GetLenderDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Lenders/GetLenderDetails"] autorelease];
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
		TMBKiva_Lenders_GetLenderDetails_ResultSet *results = [[[TMBKiva_Lenders_GetLenderDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLenderDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Lenders_GetLenderDetails_Inputs*)newInputSet {
		return [[[TMBKiva_Lenders_GetLenderDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetComments Choreo.
 */
@implementation TMBKiva_JournalEntries_GetComments_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the JournalID input for this Choreo.
	*(required, integer) The ID number of the journal entry for which you want comments.
	 */
	-(void)setJournalID:(NSString*)JournalID {
		[super setInput:@"JournalID" toValue:JournalID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetComments Choreo.
 */
@implementation TMBKiva_JournalEntries_GetComments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns comments for a specified journal entry.
 */
@implementation TMBKiva_JournalEntries_GetComments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_JournalEntries_GetComments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/JournalEntries/GetComments"] autorelease];
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
		TMBKiva_JournalEntries_GetComments_ResultSet *results = [[[TMBKiva_JournalEntries_GetComments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetComments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_JournalEntries_GetComments_Inputs*)newInputSet {
		return [[[TMBKiva_JournalEntries_GetComments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchTeams Choreo.
 */
@implementation TMBKiva_Teams_SearchTeams_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the MembershipType input for this Choreo.
	*(optional, string) If supplied, only teams with the specified membership policy are returned: open or closed.
	 */
	-(void)setMembershipType:(NSString*)MembershipType {
		[super setInput:@"MembershipType" toValue:MembershipType];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A query string against which results should be returned.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) The order by which to sort results. Acceptable values: popularity, loan_amount, oldest, expiration, newest, amount_remaining, repayment_term. Defaults to newest.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchTeams Choreo.
 */
@implementation TMBKiva_Teams_SearchTeams_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a keyword search of all lending teams using multiple criteria.
 */
@implementation TMBKiva_Teams_SearchTeams

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Teams_SearchTeams Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Teams/SearchTeams"] autorelease];
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
		TMBKiva_Teams_SearchTeams_ResultSet *results = [[[TMBKiva_Teams_SearchTeams_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchTeams Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Teams_SearchTeams_Inputs*)newInputSet {
		return [[[TMBKiva_Teams_SearchTeams_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchLenders Choreo.
 */
@implementation TMBKiva_Lenders_SearchLenders_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the CountryCode input for this Choreo.
	*(optional, string) An ISO country code by which to filter results.
	 */
	-(void)setCountryCode:(NSString*)CountryCode {
		[super setInput:@"CountryCode" toValue:CountryCode];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(conditional, string) A general search query parameter which matches against lenders’ names occupations, whereabouts, and reasons for lending.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) The order by which to sort results. Acceptable values: oldest, newest. Defaults to newest.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchLenders Choreo.
 */
@implementation TMBKiva_Lenders_SearchLenders_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a keyword search for lenders based on multiple criteria.
 */
@implementation TMBKiva_Lenders_SearchLenders

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Lenders_SearchLenders Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Lenders/SearchLenders"] autorelease];
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
		TMBKiva_Lenders_SearchLenders_ResultSet *results = [[[TMBKiva_Lenders_SearchLenders_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchLenders Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Lenders_SearchLenders_Inputs*)newInputSet {
		return [[[TMBKiva_Lenders_SearchLenders_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchJournalEntries Choreo.
 */
@implementation TMBKiva_JournalEntries_SearchJournalEntries_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) Word or phrase used to search for in the journals' content.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) The order by which to return the results. Acceptable values: newest, oldest, recommendation_count, comment_count. Defaults to newest.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchJournalEntries Choreo.
 */
@implementation TMBKiva_JournalEntries_SearchJournalEntries_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a keyword search of all journal entries.
 */
@implementation TMBKiva_JournalEntries_SearchJournalEntries

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_JournalEntries_SearchJournalEntries Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/JournalEntries/SearchJournalEntries"] autorelease];
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
		TMBKiva_JournalEntries_SearchJournalEntries_ResultSet *results = [[[TMBKiva_JournalEntries_SearchJournalEntries_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchJournalEntries Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_JournalEntries_SearchJournalEntries_Inputs*)newInputSet {
		return [[[TMBKiva_JournalEntries_SearchJournalEntries_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetNewestLoans Choreo.
 */
@implementation TMBKiva_Loans_GetNewestLoans_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewestLoans Choreo.
 */
@implementation TMBKiva_Loans_GetNewestLoans_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of the most recent fundraising loans.
 */
@implementation TMBKiva_Loans_GetNewestLoans

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Loans_GetNewestLoans Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Loans/GetNewestLoans"] autorelease];
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
		TMBKiva_Loans_GetNewestLoans_ResultSet *results = [[[TMBKiva_Loans_GetNewestLoans_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetNewestLoans Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Loans_GetNewestLoans_Inputs*)newInputSet {
		return [[[TMBKiva_Loans_GetNewestLoans_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTeamLoans Choreo.
 */
@implementation TMBKiva_Teams_GetTeamLoans_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page position of results to return. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) The order by which to sort results: oldest  or newest. Defaults to newest.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the TeamID input for this Choreo.
	*(required, string) The TeamID for which to return lenders.
	 */
	-(void)setTeamID:(NSString*)TeamID {
		[super setInput:@"TeamID" toValue:TeamID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTeamLoans Choreo.
 */
@implementation TMBKiva_Teams_GetTeamLoans_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns loans belonging to a particular team.
 */
@implementation TMBKiva_Teams_GetTeamLoans

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_Teams_GetTeamLoans Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/Teams/GetTeamLoans"] autorelease];
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
		TMBKiva_Teams_GetTeamLoans_ResultSet *results = [[[TMBKiva_Teams_GetTeamLoans_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTeamLoans Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_Teams_GetTeamLoans_Inputs*)newInputSet {
		return [[[TMBKiva_Teams_GetTeamLoans_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentLending Choreo.
 */
@implementation TMBKiva_LendingActions_GetRecentLending_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) Your unique application ID, usually in reverse DNS notation.
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Output returned can be XML or JSON. Defaults to JSON.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentLending Choreo.
 */
@implementation TMBKiva_LendingActions_GetRecentLending_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Kiva.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the 100 most recent loans made on Kiva by public lenders.
 */
@implementation TMBKiva_LendingActions_GetRecentLending

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBKiva_LendingActions_GetRecentLending Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Kiva/LendingActions/GetRecentLending"] autorelease];
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
		TMBKiva_LendingActions_GetRecentLending_ResultSet *results = [[[TMBKiva_LendingActions_GetRecentLending_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecentLending Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBKiva_LendingActions_GetRecentLending_Inputs*)newInputSet {
		return [[[TMBKiva_LendingActions_GetRecentLending_Inputs alloc] init] autorelease];
	}
@end
	