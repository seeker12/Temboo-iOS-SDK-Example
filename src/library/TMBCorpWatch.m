/*!
 * @TMBCorpWatch.m
 *
 * Execute Choreographies from the Temboo CorpWatch bundle.
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

#import "TMBCorpWatch.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the CompoundSearch Choreo.
 */
@implementation TMBCorpWatch_Search_CompoundSearch_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Address input for this Choreo.
	*(conditional, string) Specific fragment of an address to be searched, such as "empire" or "Main Street."
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the CountryCode input for this Choreo.
	*(optional, string) Two-letter country code (e.g. VI for Virgin Islands).
	 */
	-(void)setCountryCode:(NSString*)CountryCode {
		[super setInput:@"CountryCode" toValue:CountryCode];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the IndustryCode input for this Choreo.
	*(conditional, integer) Standard Industrial Classification (SIC) code.
	 */
	-(void)setIndustryCode:(NSString*)IndustryCode {
		[super setInput:@"IndustryCode" toValue:IndustryCode];
	}

	/*!
	 * Set the value of the IndustrySector input for this Choreo.
	*(conditional, integer) Standard Industrial Classification (SIC) sector code.
	 */
	-(void)setIndustrySector:(NSString*)IndustrySector {
		[super setInput:@"IndustrySector" toValue:IndustrySector];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Match input for this Choreo.
	*(optional, integer) By default search terms match against complete words. Use 1 to return cases where the search string matches anywhere in the Name or Address field. Performance is significantly affected when enabled.
	 */
	-(void)setMatch:(NSString*)Match {
		[super setInput:@"Match" toValue:Match];
	}

	/*!
	 * Set the value of the MaxYear input for this Choreo.
	*(optional, integer) Indicate desired year of the most recent appearance in SEC filing data (e.g. indicating 2007 will search for companies that ceased filing in 2007).
	 */
	-(void)setMaxYear:(NSString*)MaxYear {
		[super setInput:@"MaxYear" toValue:MaxYear];
	}

	/*!
	 * Set the value of the MinYear input for this Choreo.
	*(optional, integer) Indicate desired year of the most recent appearance in SEC filing data (e.g. indicating 2007 will search for companies that ceased filing in 2007).
	 */
	-(void)setMinYear:(NSString*)MinYear {
		[super setInput:@"MinYear" toValue:MinYear];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(conditional, string) Company name to search. Words in the search query must match to full words in the name. See documentation for more details.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the NumChildren input for this Choreo.
	*(optional, integer) Limit results to those with a specified number of listed subsidiaries, or "children." (Only immediate relationships are counted.
	 */
	-(void)setNumChildren:(NSString*)NumChildren {
		[super setInput:@"NumChildren" toValue:NumChildren];
	}

	/*!
	 * Set the value of the NumParents input for this Choreo.
	*(optional, integer) Limit results to those with a specified number of listed parent companies (only immediate relationships are counted).
	 */
	-(void)setNumParents:(NSString*)NumParents {
		[super setInput:@"NumParents" toValue:NumParents];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the SourceType input for this Choreo.
	*(optional, string) Indicate "filers" to restrict results to those of companies that appeared as a filer on SEC documents, or "relationships" for companies that only appear as subsidiaries on filings.
	 */
	-(void)setSourceType:(NSString*)SourceType {
		[super setInput:@"SourceType" toValue:SourceType];
	}

	/*!
	 * Set the value of the SubdivisionCode input for this Choreo.
	*(optional, string) Two-letter abbreviation for the subdivision of the area to be searched (e.g. "OR" for Oregon when CountryCode is set to "US").
	 */
	-(void)setSubdivisionCode:(NSString*)SubdivisionCode {
		[super setInput:@"SubdivisionCode" toValue:SubdivisionCode];
	}

	/*!
	 * Set the value of the TopParent input for this Choreo.
	*(optional, integer) Limit results by he CWID of the highest-level owning parent of a family of corprorations (or Top Parent). Most company records contain a field for top_parent_id.
	 */
	-(void)setTopParent:(NSString*)TopParent {
		[super setInput:@"TopParent" toValue:TopParent];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(optional, integer) If a year is specified, only records for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompoundSearch Choreo.
 */
@implementation TMBCorpWatch_Search_CompoundSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of companies according to several search parameters such as industry, location, date range, company name, etc.
 */
@implementation TMBCorpWatch_Search_CompoundSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Search_CompoundSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Search/CompoundSearch"] autorelease];
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
		TMBCorpWatch_Search_CompoundSearch_ResultSet *results = [[[TMBCorpWatch_Search_CompoundSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CompoundSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Search_CompoundSearch_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Search_CompoundSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyByEIN Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyByEIN_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the EIN input for this Choreo.
	*(required, string) The IRS Employer Identification Number (tax ID) of a company.
	 */
	-(void)setEIN:(NSString*)EIN {
		[super setInput:@"EIN" toValue:EIN];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(optional, integer) If a year is specified, only records for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyByEIN Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyByEIN_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a company record for a given IRS Employer Identification Number (tax ID).
 */
@implementation TMBCorpWatch_Company_GetCompanyByEIN

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Company_GetCompanyByEIN Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Company/GetCompanyByEIN"] autorelease];
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
		TMBCorpWatch_Company_GetCompanyByEIN_ResultSet *results = [[[TMBCorpWatch_Company_GetCompanyByEIN_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompanyByEIN Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Company_GetCompanyByEIN_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Company_GetCompanyByEIN_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListLocations Choreo.
 */
@implementation TMBCorpWatch_Lists_ListLocations_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Address input for this Choreo.
	*(optional, string) Enter an address fragment to search for. This can be either a street address, city, or state/subregion.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the CountryCode input for this Choreo.
	*(optional, string) Enter an ISO-3166 formatted country code. 
	 */
	-(void)setCountryCode:(NSString*)CountryCode {
		[super setInput:@"CountryCode" toValue:CountryCode];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MaxYear input for this Choreo.
	*(optional, integer) Indicate desired year of the most recent appearance in SEC filing data (e.g. indicating 2007 will search for companies that ceased filing in 2007).
	 */
	-(void)setMaxYear:(NSString*)MaxYear {
		[super setInput:@"MaxYear" toValue:MaxYear];
	}

	/*!
	 * Set the value of the MinYear input for this Choreo.
	*(optional, integer) Indicate desired year of the earliest appearance in SEC filing data (e.g. indicating 2004 will search for companies that started filing in 2004).
	 */
	-(void)setMinYear:(NSString*)MinYear {
		[super setInput:@"MinYear" toValue:MinYear];
	}

	/*!
	 * Set the value of the PostalCode input for this Choreo.
	*(optional, integer) Enter a postal code to be searched.
	 */
	-(void)setPostalCode:(NSString*)PostalCode {
		[super setInput:@"PostalCode" toValue:PostalCode];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) Indicates the origin of the location information found. Acceptable values: relation_loc, business, mailing, state_of_incorp. See documentation for more info.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(optional, integer) If a year is specified, only records for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListLocations Choreo.
 */
@implementation TMBCorpWatch_Lists_ListLocations_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of locations of companies matching the given query.
 */
@implementation TMBCorpWatch_Lists_ListLocations

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Lists_ListLocations Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Lists/ListLocations"] autorelease];
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
		TMBCorpWatch_Lists_ListLocations_ResultSet *results = [[[TMBCorpWatch_Lists_ListLocations_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListLocations Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Lists_ListLocations_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Lists_ListLocations_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListNames Choreo.
 */
@implementation TMBCorpWatch_Lists_ListNames_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MaxYear input for this Choreo.
	*(optional, integer) Indicate desired year of the most recent appearance in SEC filing data (e.g. indicating 2007 will search for companies that ceased filing in 2007).
	 */
	-(void)setMaxYear:(NSString*)MaxYear {
		[super setInput:@"MaxYear" toValue:MaxYear];
	}

	/*!
	 * Set the value of the MinYear input for this Choreo.
	*(optional, integer) Indicate desired year of the earliest appearance in SEC filing data (e.g. indicating 2004 will search for companies that started filing in 2004).
	 */
	-(void)setMinYear:(NSString*)MinYear {
		[super setInput:@"MinYear" toValue:MinYear];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) Name to be searched.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Source input for this Choreo.
	*(optional, string) Indicates how the name was derived. See documentation for more information on this parameter.
	 */
	-(void)setSource:(NSString*)Source {
		[super setInput:@"Source" toValue:Source];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(optional, integer) If a year is specified, only records for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListNames Choreo.
 */
@implementation TMBCorpWatch_Lists_ListNames_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of names (companies or individuals) matching a given name query.
 */
@implementation TMBCorpWatch_Lists_ListNames

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Lists_ListNames Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Lists/ListNames"] autorelease];
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
		TMBCorpWatch_Lists_ListNames_ResultSet *results = [[[TMBCorpWatch_Lists_ListNames_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListNames Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Lists_ListNames_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Lists_ListNames_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyNames Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyNames_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CWID input for this Choreo.
	*(required, string) CoprWatch ID for the company. Format looks like: cw_8484.
	 */
	-(void)setCWID:(NSString*)CWID {
		[super setInput:@"CWID" toValue:CWID];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyNames Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyNames_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a complete list of company names associated with a given company record, including its aliases, former names, and normalized forms.
 */
@implementation TMBCorpWatch_Company_GetCompanyNames

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Company_GetCompanyNames Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Company/GetCompanyNames"] autorelease];
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
		TMBCorpWatch_Company_GetCompanyNames_ResultSet *results = [[[TMBCorpWatch_Company_GetCompanyNames_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompanyNames Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Company_GetCompanyNames_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Company_GetCompanyNames_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyHistory Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyHistory_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CWID input for this Choreo.
	*(required, string) CoprWatch ID for the company. Format looks like: cw_8484.
	 */
	-(void)setCWID:(NSString*)CWID {
		[super setInput:@"CWID" toValue:CWID];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyHistory Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyHistory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a complete set of basic records for a given company, covering all the years for which information is available.
 */
@implementation TMBCorpWatch_Company_GetCompanyHistory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Company_GetCompanyHistory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Company/GetCompanyHistory"] autorelease];
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
		TMBCorpWatch_Company_GetCompanyHistory_ResultSet *results = [[[TMBCorpWatch_Company_GetCompanyHistory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompanyHistory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Company_GetCompanyHistory_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Company_GetCompanyHistory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyFilings Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyFilings_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CWID input for this Choreo.
	*(required, string) CoprWatch ID for the company. Format looks like: cw_8484.
	 */
	-(void)setCWID:(NSString*)CWID {
		[super setInput:@"CWID" toValue:CWID];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyFilings Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyFilings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the official SEC documents from which a company's information was extracted in order to check the accuracy of data.
 */
@implementation TMBCorpWatch_Company_GetCompanyFilings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Company_GetCompanyFilings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Company/GetCompanyFilings"] autorelease];
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
		TMBCorpWatch_Company_GetCompanyFilings_ResultSet *results = [[[TMBCorpWatch_Company_GetCompanyFilings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompanyFilings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Company_GetCompanyFilings_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Company_GetCompanyFilings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyLocations Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyLocations_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CWID input for this Choreo.
	*(required, string) CoprWatch ID for the company. Format looks like: cw_8484.
	 */
	-(void)setCWID:(NSString*)CWID {
		[super setInput:@"CWID" toValue:CWID];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyLocations Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyLocations_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of mailing addresses, business addresses, and jurisdiction of incorporation associated with a given company.
 */
@implementation TMBCorpWatch_Company_GetCompanyLocations

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Company_GetCompanyLocations Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Company/GetCompanyLocations"] autorelease];
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
		TMBCorpWatch_Company_GetCompanyLocations_ResultSet *results = [[[TMBCorpWatch_Company_GetCompanyLocations_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompanyLocations Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Company_GetCompanyLocations_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Company_GetCompanyLocations_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyByCWID Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyByCWID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CWID input for this Choreo.
	*(required, string) CoprWatch ID for the company. Format looks like: cw_8484.
	 */
	-(void)setCWID:(NSString*)CWID {
		[super setInput:@"CWID" toValue:CWID];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(optional, integer) Specify the year for which you want company information. When none is specified, returns the most recent record available for that company.
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyByCWID Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyByCWID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns basic information for a specifiied company.
 */
@implementation TMBCorpWatch_Company_GetCompanyByCWID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Company_GetCompanyByCWID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Company/GetCompanyByCWID"] autorelease];
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
		TMBCorpWatch_Company_GetCompanyByCWID_ResultSet *results = [[[TMBCorpWatch_Company_GetCompanyByCWID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompanyByCWID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Company_GetCompanyByCWID_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Company_GetCompanyByCWID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TopParent Choreo.
 */
@implementation TMBCorpWatch_Relationships_TopParent_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CWID input for this Choreo.
	*(required, string) The CWID of the highest-level owning parent of a family of corprorations (or Top Parent). Most company records contain a field for top_parent_id.
	 */
	-(void)setCWID:(NSString*)CWID {
		[super setInput:@"CWID" toValue:CWID];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(optional, integer) If a year is specified, only subsidiaries for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopParent Choreo.
 */
@implementation TMBCorpWatch_Relationships_TopParent_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * For a given ID of the highest-level owning parent of a family of corporations, retrieves all of the companies that are "below" it in the hierarchy.
 */
@implementation TMBCorpWatch_Relationships_TopParent

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Relationships_TopParent Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Relationships/TopParent"] autorelease];
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
		TMBCorpWatch_Relationships_TopParent_ResultSet *results = [[[TMBCorpWatch_Relationships_TopParent_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TopParent Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Relationships_TopParent_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Relationships_TopParent_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListCountryCodes Choreo.
 */
@implementation TMBCorpWatch_Lists_ListCountryCodes_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCountryCodes Choreo.
 */
@implementation TMBCorpWatch_Lists_ListCountryCodes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a complete list of ISO-3166 standard country and subdivision codes.
 */
@implementation TMBCorpWatch_Lists_ListCountryCodes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Lists_ListCountryCodes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Lists/ListCountryCodes"] autorelease];
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
		TMBCorpWatch_Lists_ListCountryCodes_ResultSet *results = [[[TMBCorpWatch_Lists_ListCountryCodes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListCountryCodes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Lists_ListCountryCodes_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Lists_ListCountryCodes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListIndustryCodes Choreo.
 */
@implementation TMBCorpWatch_Lists_ListIndustryCodes_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListIndustryCodes Choreo.
 */
@implementation TMBCorpWatch_Lists_ListIndustryCodes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a complete list of all Standard Industrial Classification (SIC) codes and sectors.
 */
@implementation TMBCorpWatch_Lists_ListIndustryCodes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Lists_ListIndustryCodes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Lists/ListIndustryCodes"] autorelease];
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
		TMBCorpWatch_Lists_ListIndustryCodes_ResultSet *results = [[[TMBCorpWatch_Lists_ListIndustryCodes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListIndustryCodes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Lists_ListIndustryCodes_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Lists_ListIndustryCodes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCompanyByCIK Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyByCIK_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CIK input for this Choreo.
	*(required, string) The SEC's CIK identification number.
	 */
	-(void)setCIK:(NSString*)CIK {
		[super setInput:@"CIK" toValue:CIK];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(optional, integer) If a year is specified, only records for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCompanyByCIK Choreo.
 */
@implementation TMBCorpWatch_Company_GetCompanyByCIK_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a company record for a given SEC CIK identification number.
 */
@implementation TMBCorpWatch_Company_GetCompanyByCIK

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Company_GetCompanyByCIK Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Company/GetCompanyByCIK"] autorelease];
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
		TMBCorpWatch_Company_GetCompanyByCIK_ResultSet *results = [[[TMBCorpWatch_Company_GetCompanyByCIK_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCompanyByCIK Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Company_GetCompanyByCIK_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Company_GetCompanyByCIK_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CompanyParents Choreo.
 */
@implementation TMBCorpWatch_Relationships_CompanyParents_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CWID input for this Choreo.
	*(required, string) CoprWatch ID for the company. Format looks like: cw_8484.
	 */
	-(void)setCWID:(NSString*)CWID {
		[super setInput:@"CWID" toValue:CWID];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(optional, integer) If a year is specified, only parents for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to most recent.
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompanyParents Choreo.
 */
@implementation TMBCorpWatch_Relationships_CompanyParents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of principal owning companies, or "parents," of a company.
 */
@implementation TMBCorpWatch_Relationships_CompanyParents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Relationships_CompanyParents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Relationships/CompanyParents"] autorelease];
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
		TMBCorpWatch_Relationships_CompanyParents_ResultSet *results = [[[TMBCorpWatch_Relationships_CompanyParents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CompanyParents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Relationships_CompanyParents_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Relationships_CompanyParents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CompanyChildren Choreo.
 */
@implementation TMBCorpWatch_Relationships_CompanyChildren_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The APIKey from CorpWatch if you have one.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CWID input for this Choreo.
	*(required, string) CoprWatch ID for the company. Format looks like: cw_8484.
	 */
	-(void)setCWID:(NSString*)CWID {
		[super setInput:@"CWID" toValue:CWID];
	}

	/*!
	 * Set the value of the Index input for this Choreo.
	*(optional, integer) Set the index number of the first result to be returned. The index of the first result is 0.
	 */
	-(void)setIndex:(NSString*)Index {
		[super setInput:@"Index" toValue:Index];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to be returned. Defaults to 100. Maximum is 5000.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Specify json or xml for the type of response to be returned. Defaults to xml.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Year input for this Choreo.
	*(conditional, integer) If a year is specified, only subsidiaries for that year will be returned and the data in the company objects returned will be set appropriately for the request year. Defaults to 2012 (most recent yr).
	 */
	-(void)setYear:(NSString*)Year {
		[super setInput:@"Year" toValue:Year];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompanyChildren Choreo.
 */
@implementation TMBCorpWatch_Relationships_CompanyChildren_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from CorpWatch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of the subsidiaries, or "children," of a company.
 */
@implementation TMBCorpWatch_Relationships_CompanyChildren

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBCorpWatch_Relationships_CompanyChildren Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/CorpWatch/Relationships/CompanyChildren"] autorelease];
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
		TMBCorpWatch_Relationships_CompanyChildren_ResultSet *results = [[[TMBCorpWatch_Relationships_CompanyChildren_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CompanyChildren Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBCorpWatch_Relationships_CompanyChildren_Inputs*)newInputSet {
		return [[[TMBCorpWatch_Relationships_CompanyChildren_Inputs alloc] init] autorelease];
	}
@end
	