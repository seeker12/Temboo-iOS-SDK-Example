/*!
 * @TMBInfluenceExplorer.m
 *
 * Execute Choreographies from the Temboo InfluenceExplorer bundle.
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

#import "TMBInfluenceExplorer.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the LocalBreakdown Choreo.
 */
@implementation TMBInfluenceExplorer_LocalBreakdown_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LocalBreakdown Choreo.
 */
@implementation TMBInfluenceExplorer_LocalBreakdown_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a breakdown of how much of the money raised was from contributors in the politician's state versus outside the politician's state.
 */
@implementation TMBInfluenceExplorer_LocalBreakdown

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_LocalBreakdown Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/LocalBreakdown"] autorelease];
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
		TMBInfluenceExplorer_LocalBreakdown_ResultSet *results = [[[TMBInfluenceExplorer_LocalBreakdown_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LocalBreakdown Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_LocalBreakdown_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_LocalBreakdown_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TopSectors Choreo.
 */
@implementation TMBInfluenceExplorer_TopSectors_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopSectors Choreo.
 */
@implementation TMBInfluenceExplorer_TopSectors_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the contribution amounts that each sector gave to the politician.
 */
@implementation TMBInfluenceExplorer_TopSectors

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_TopSectors Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/TopSectors"] autorelease];
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
		TMBInfluenceExplorer_TopSectors_ResultSet *results = [[[TMBInfluenceExplorer_TopSectors_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TopSectors Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_TopSectors_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_TopSectors_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FederalGrants Choreo.
 */
@implementation TMBInfluenceExplorer_FederalGrants_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AgencyName input for this Choreo.
	*(optional, string) Full-text search on the reported name of the federal agency awarding the grant.
	 */
	-(void)setAgencyName:(NSString*)AgencyName {
		[super setInput:@"AgencyName" toValue:AgencyName];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(optional, string) The grant amount. Valid formats include: 500 (exactly $500); >|500 (greater than, or equal to 500); <|500 (less than or equal to 500).
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the AssistanceType input for this Choreo.
	*(optional, integer) A numeric code for the type of grant awarded. See documentation for more details for this parameter.
	 */
	-(void)setAssistanceType:(NSString*)AssistanceType {
		[super setInput:@"AssistanceType" toValue:AssistanceType];
	}

	/*!
	 * Set the value of the FiscalYear input for this Choreo.
	*(optional, date) The year in which the grant was awarded. A YYYY formatted year. You can also specify a range by separating years with a pipe (i.e. 2008|2012).
	 */
	-(void)setFiscalYear:(NSString*)FiscalYear {
		[super setInput:@"FiscalYear" toValue:FiscalYear];
	}

	/*!
	 * Set the value of the RecipientName input for this Choreo.
	*(optional, string) Full-text search on the reported name of the grant recipient.
	 */
	-(void)setRecipientName:(NSString*)RecipientName {
		[super setInput:@"RecipientName" toValue:RecipientName];
	}

	/*!
	 * Set the value of the RecipientState input for this Choreo.
	*(optional, string) Two-letter abbreviation of the state in which the grant was awarded.
	 */
	-(void)setRecipientState:(NSString*)RecipientState {
		[super setInput:@"RecipientState" toValue:RecipientState];
	}

	/*!
	 * Set the value of the RecipientType input for this Choreo.
	*(optional, integer) The numeric code representing the type of entity that received the grant. See documentation for more details about this parameter.
	 */
	-(void)setRecipientType:(NSString*)RecipientType {
		[super setInput:@"RecipientType" toValue:RecipientType];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Indicates the desired format for the response. Accepted values are: json (the default), csv, and xls. Note when specifying xls, restults are returned as Base64 encoded data.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FederalGrants Choreo.
 */
@implementation TMBInfluenceExplorer_FederalGrants_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Influence Explorer. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns information about federal grants awarded.
 */
@implementation TMBInfluenceExplorer_FederalGrants

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_FederalGrants Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/FederalGrants"] autorelease];
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
		TMBInfluenceExplorer_FederalGrants_ResultSet *results = [[[TMBInfluenceExplorer_FederalGrants_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FederalGrants Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_FederalGrants_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_FederalGrants_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the StateFederalBreakdown Choreo.
 */
@implementation TMBInfluenceExplorer_StateFederalBreakdown_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StateFederalBreakdown Choreo.
 */
@implementation TMBInfluenceExplorer_StateFederalBreakdown_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the portion of contribution given by an individual or organization that went to state versus federal candidates.
 */
@implementation TMBInfluenceExplorer_StateFederalBreakdown

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_StateFederalBreakdown Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/StateFederalBreakdown"] autorelease];
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
		TMBInfluenceExplorer_StateFederalBreakdown_ResultSet *results = [[[TMBInfluenceExplorer_StateFederalBreakdown_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the StateFederalBreakdown Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_StateFederalBreakdown_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_StateFederalBreakdown_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TopRecipientPoliticians Choreo.
 */
@implementation TMBInfluenceExplorer_TopRecipientPoliticians_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of resutls to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopRecipientPoliticians Choreo.
 */
@implementation TMBInfluenceExplorer_TopRecipientPoliticians_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the top politicians to which this individual has given money.
 */
@implementation TMBInfluenceExplorer_TopRecipientPoliticians

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_TopRecipientPoliticians Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/TopRecipientPoliticians"] autorelease];
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
		TMBInfluenceExplorer_TopRecipientPoliticians_ResultSet *results = [[[TMBInfluenceExplorer_TopRecipientPoliticians_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TopRecipientPoliticians Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_TopRecipientPoliticians_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_TopRecipientPoliticians_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FederalLobbying Choreo.
 */
@implementation TMBInfluenceExplorer_FederalLobbying_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(optional, string) Enter the amount of dollars spent on lobbying.  Valid formats include: 500 (exactly $500); >|500 (greater than, or equal to 500); <|500 (less than or equal to 500).
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the ClientParentOrganization input for this Choreo.
	*(optional, string) Specify a full-text search of a client's parent organizationfor.
	 */
	-(void)setClientParentOrganization:(NSString*)ClientParentOrganization {
		[super setInput:@"ClientParentOrganization" toValue:ClientParentOrganization];
	}

	/*!
	 * Set the value of the ClientSearch input for this Choreo.
	*(optional, string) Enter the name of the client for whom this lobbyist is working. This parameter executes a full-text search.
	 */
	-(void)setClientSearch:(NSString*)ClientSearch {
		[super setInput:@"ClientSearch" toValue:ClientSearch];
	}

	/*!
	 * Set the value of the FilingType input for this Choreo.
	*(optional, string) Specify the type of filing as identified by CRP.  Example: n, for non-self filer parent.  For more info, go here: http://data.influenceexplorer.com/api/lobbying/
	 */
	-(void)setFilingType:(NSString*)FilingType {
		[super setInput:@"FilingType" toValue:FilingType];
	}

	/*!
	 * Set the value of the LobbyistSearch input for this Choreo.
	*(optional, string) Specify a full-text search of a lobbyist's name.
	 */
	-(void)setLobbyistSearch:(NSString*)LobbyistSearch {
		[super setInput:@"LobbyistSearch" toValue:LobbyistSearch];
	}

	/*!
	 * Set the value of the RegistrantSearch input for this Choreo.
	*(optional, string) Specify a full-text search of an organization or a person, who is fling the lobbyist registration.
	 */
	-(void)setRegistrantSearch:(NSString*)RegistrantSearch {
		[super setInput:@"RegistrantSearch" toValue:RegistrantSearch];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Indicates the desired format for the response. Accepted values are: json (the default), csv, and xls. Note when specifying xls, restults are returned as Base64 encoded data.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TransactionID input for this Choreo.
	*(optional, string) Enter the report ID given by the Senate Office of Public Records.
	 */
	-(void)setTransactionID:(NSString*)TransactionID {
		[super setInput:@"TransactionID" toValue:TransactionID];
	}

	/*!
	 * Set the value of the TransactionType input for this Choreo.
	*(optional, string) Enter the type of filing as reported by the Senate Office of Public Records. See here for additional info: http://assets.transparencydata.org.s3.amazonaws.com/docs/transaction_types-20100402.csv
	 */
	-(void)setTransactionType:(NSString*)TransactionType {
		[super setInput:@"TransactionType" toValue:TransactionType];
	}

	/*!
	 * Set the value of the YearFiled input for this Choreo.
	*(optional, string) Specify the year in which a registration was filed. Use the following format: yyyy. Example: 2011. Logical OR is also possible by using the | (pipe) symbol.  Example: 2008|2012.
	 */
	-(void)setYearFiled:(NSString*)YearFiled {
		[super setInput:@"YearFiled" toValue:YearFiled];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FederalLobbying Choreo.
 */
@implementation TMBInfluenceExplorer_FederalLobbying_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Influence Explorer. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain detailed lobbying information.
 */
@implementation TMBInfluenceExplorer_FederalLobbying

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_FederalLobbying Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/FederalLobbying"] autorelease];
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
		TMBInfluenceExplorer_FederalLobbying_ResultSet *results = [[[TMBInfluenceExplorer_FederalLobbying_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FederalLobbying Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_FederalLobbying_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_FederalLobbying_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByName Choreo.
 */
@implementation TMBInfluenceExplorer_SearchByName_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Search input for this Choreo.
	*(required, string) The query string.
	 */
	-(void)setSearch:(NSString*)Search {
		[super setInput:@"Search" toValue:Search];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByName Choreo.
 */
@implementation TMBInfluenceExplorer_SearchByName_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for politicians, individuals, or organizations with the given name. Returns basic information about the the contributions to and from the entity that is specified.
 */
@implementation TMBInfluenceExplorer_SearchByName

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_SearchByName Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/SearchByName"] autorelease];
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
		TMBInfluenceExplorer_SearchByName_ResultSet *results = [[[TMBInfluenceExplorer_SearchByName_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByName Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_SearchByName_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_SearchByName_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TopContributors Choreo.
 */
@implementation TMBInfluenceExplorer_TopContributors_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopContributors Choreo.
 */
@implementation TMBInfluenceExplorer_TopContributors_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the top contributing organizations for a particular politician, ranked by total dollars given.
 */
@implementation TMBInfluenceExplorer_TopContributors

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_TopContributors Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/TopContributors"] autorelease];
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
		TMBInfluenceExplorer_TopContributors_ResultSet *results = [[[TMBInfluenceExplorer_TopContributors_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TopContributors Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_TopContributors_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_TopContributors_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the IDLookup Choreo.
 */
@implementation TMBInfluenceExplorer_IDLookup_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The ID of the Entity in the given namespace.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Namespace input for this Choreo.
	*(required, string) The dataset and data type of the ID. Accepted values are: urn:crp:individual, urn:crp:organization, urn:crp:recipient, urn:nimsp:organization, urn:nimsp:recipient. See documentation for more details.
	 */
	-(void)setNamespace:(NSString*)Namespace {
		[super setInput:@"Namespace" toValue:Namespace];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the IDLookup Choreo.
 */
@implementation TMBInfluenceExplorer_IDLookup_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Looks up the entity ID based on an ID from a different data set. Currently Influence Explorer provides a mapping from the ID schemes used by Center for Reponsive Politics (CRP) and the National Institute for Money in State Politics (NIMSP).
 */
@implementation TMBInfluenceExplorer_IDLookup

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_IDLookup Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/IDLookup"] autorelease];
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
		TMBInfluenceExplorer_IDLookup_ResultSet *results = [[[TMBInfluenceExplorer_IDLookup_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the IDLookup Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_IDLookup_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_IDLookup_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PartyBreakdown Choreo.
 */
@implementation TMBInfluenceExplorer_PartyBreakdown_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ContributorType input for this Choreo.
	*(required, string) This indicates whether the contributor is an individual or orgnaization. Accepted values are: "indiv" or "org". Defaults to "org".
	 */
	-(void)setContributorType:(NSString*)ContributorType {
		[super setInput:@"ContributorType" toValue:ContributorType];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PartyBreakdown Choreo.
 */
@implementation TMBInfluenceExplorer_PartyBreakdown_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns how much an individual or organization gave to each party.
 */
@implementation TMBInfluenceExplorer_PartyBreakdown

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_PartyBreakdown Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/PartyBreakdown"] autorelease];
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
		TMBInfluenceExplorer_PartyBreakdown_ResultSet *results = [[[TMBInfluenceExplorer_PartyBreakdown_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PartyBreakdown Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_PartyBreakdown_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_PartyBreakdown_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ContributorTypeBreakdown Choreo.
 */
@implementation TMBInfluenceExplorer_ContributorTypeBreakdown_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ContributorTypeBreakdown Choreo.
 */
@implementation TMBInfluenceExplorer_ContributorTypeBreakdown_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a breakdown, for a given candidate, of how much of the money raised came from individuals versus organizations (PACs).
 */
@implementation TMBInfluenceExplorer_ContributorTypeBreakdown

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_ContributorTypeBreakdown Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/ContributorTypeBreakdown"] autorelease];
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
		TMBInfluenceExplorer_ContributorTypeBreakdown_ResultSet *results = [[[TMBInfluenceExplorer_ContributorTypeBreakdown_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ContributorTypeBreakdown Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_ContributorTypeBreakdown_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_ContributorTypeBreakdown_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EntityOverview Choreo.
 */
@implementation TMBInfluenceExplorer_EntityOverview_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Cycle input for this Choreo.
	*(optional, date) Specify a yyyy-formatted election cycle. Example: 2012, or 2008|2012 to limit results between 2008 and 2012.
	 */
	-(void)setCycle:(NSString*)Cycle {
		[super setInput:@"Cycle" toValue:Cycle];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EntityOverview Choreo.
 */
@implementation TMBInfluenceExplorer_EntityOverview_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns general information about a particular politician, individual, or organization with a given entity id.
 */
@implementation TMBInfluenceExplorer_EntityOverview

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_EntityOverview Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/EntityOverview"] autorelease];
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
		TMBInfluenceExplorer_EntityOverview_ResultSet *results = [[[TMBInfluenceExplorer_EntityOverview_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EntityOverview Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_EntityOverview_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_EntityOverview_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TopRecipients Choreo.
 */
@implementation TMBInfluenceExplorer_TopRecipients_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of resutls to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopRecipients Choreo.
 */
@implementation TMBInfluenceExplorer_TopRecipients_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the top recipients of money from a specified organization.
 */
@implementation TMBInfluenceExplorer_TopRecipients

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_TopRecipients Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/TopRecipients"] autorelease];
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
		TMBInfluenceExplorer_TopRecipients_ResultSet *results = [[[TMBInfluenceExplorer_TopRecipients_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TopRecipients Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_TopRecipients_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_TopRecipients_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CampaignContribution Choreo.
 */
@implementation TMBInfluenceExplorer_CampaignContribution_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Amount input for this Choreo.
	*(conditional, string) Enter the amount of dollars spent on lobbying.  Valid formats include: 500 (exactly $500); >|500 (greater than, or equal to 500); <|500 (less than or equal to 500).
	 */
	-(void)setAmount:(NSString*)Amount {
		[super setInput:@"Amount" toValue:Amount];
	}

	/*!
	 * Set the value of the ContributorName input for this Choreo.
	*(conditional, string) Specfiy the name of an individual, PAC, organization, or employer for which a full-text search will be performed.
	 */
	-(void)setContributorName:(NSString*)ContributorName {
		[super setInput:@"ContributorName" toValue:ContributorName];
	}

	/*!
	 * Set the value of the ContributorsByState input for this Choreo.
	*(conditional, string) Enter a two-letter state designation from which the contribution is made.
	 */
	-(void)setContributorsByState:(NSString*)ContributorsByState {
		[super setInput:@"ContributorsByState" toValue:ContributorsByState];
	}

	/*!
	 * Set the value of the Cycle input for this Choreo.
	*(conditional, string) Specify a yyyy-formatted election cycle. Example: 2012, or 2008|2012 to limit results between 2008 and 2012.
	 */
	-(void)setCycle:(NSString*)Cycle {
		[super setInput:@"Cycle" toValue:Cycle];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(conditional, string) Specify a date of the contribution in ISO date format.  For example: 2006-08-06.  Or, ><|2006-08-06|2006-09-12 to limit results between specific dates.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the OrganizationName input for this Choreo.
	*(conditional, string) Specify a full-text search on employer, organization, and parent organization.
	 */
	-(void)setOrganizationName:(NSString*)OrganizationName {
		[super setInput:@"OrganizationName" toValue:OrganizationName];
	}

	/*!
	 * Set the value of the RecipientName input for this Choreo.
	*(conditional, string) Enter the full-text search on name of PAC or candidate receiving the contribution.
	 */
	-(void)setRecipientName:(NSString*)RecipientName {
		[super setInput:@"RecipientName" toValue:RecipientName];
	}

	/*!
	 * Set the value of the RecipientState input for this Choreo.
	*(conditional, string) Specify a two-letter state abbreviation for the state in which the recipient of contributions is running a campaign.
	 */
	-(void)setRecipientState:(NSString*)RecipientState {
		[super setInput:@"RecipientState" toValue:RecipientState];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Indicates the desired format for the response. Accepted values are: json (the default), csv, and xls. Note when specifying xls, restults are returned as Base64 encoded data.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Seat input for this Choreo.
	*(conditional, string) Specify the type of political office being sought.  Examples: federal:senate (US Senate), federal:president (US President), state:governor.  For more info see documentation.
	 */
	-(void)setSeat:(NSString*)Seat {
		[super setInput:@"Seat" toValue:Seat];
	}

	/*!
	 * Set the value of the TransactionNamespace input for this Choreo.
	*(optional, string) Filters on federal or state contributions. Valid namespaces are: urn:fec:transaction (for federal) or urn:nimsp:transaction (for state).
	 */
	-(void)setTransactionNamespace:(NSString*)TransactionNamespace {
		[super setInput:@"TransactionNamespace" toValue:TransactionNamespace];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CampaignContribution Choreo.
 */
@implementation TMBInfluenceExplorer_CampaignContribution_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Influence Explorer. Corresponds to the ResponseFormat input. Defaults to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve detailed information on political campaign contributions, filtered by date, contributor, state, employer, campaign, etc.
 */
@implementation TMBInfluenceExplorer_CampaignContribution

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_CampaignContribution Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/CampaignContribution"] autorelease];
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
		TMBInfluenceExplorer_CampaignContribution_ResultSet *results = [[[TMBInfluenceExplorer_CampaignContribution_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CampaignContribution Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_CampaignContribution_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_CampaignContribution_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TopRecipientOrganizations Choreo.
 */
@implementation TMBInfluenceExplorer_TopRecipientOrganizations_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API key provided by Sunlight Data Services.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EntityID input for this Choreo.
	*(required, string) The ID for the Entity that you want to return information for. This ID can be retrieved by running the SearchByName Choreo.
	 */
	-(void)setEntityID:(NSString*)EntityID {
		[super setInput:@"EntityID" toValue:EntityID];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of resutls to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopRecipientOrganizations Choreo.
 */
@implementation TMBInfluenceExplorer_TopRecipientOrganizations_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Influence Explorer.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the top organizations to which the specified individual has given money.
 */
@implementation TMBInfluenceExplorer_TopRecipientOrganizations

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBInfluenceExplorer_TopRecipientOrganizations Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/InfluenceExplorer/TopRecipientOrganizations"] autorelease];
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
		TMBInfluenceExplorer_TopRecipientOrganizations_ResultSet *results = [[[TMBInfluenceExplorer_TopRecipientOrganizations_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TopRecipientOrganizations Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBInfluenceExplorer_TopRecipientOrganizations_Inputs*)newInputSet {
		return [[[TMBInfluenceExplorer_TopRecipientOrganizations_Inputs alloc] init] autorelease];
	}
@end
	