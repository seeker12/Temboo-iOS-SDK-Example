/*!
 * @TMBNYTimes.m
 *
 * Execute Choreographies from the Temboo NYTimes bundle.
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

#import "TMBNYTimes.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the PresidentialIndependentExpenditures Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value (e.g., Offset=40 displays results 41–60).
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PresidentialIndependentExpenditures Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves 20 of the most recent independent expenditures in support of or opposition to presidential candidates.
 */
@implementation TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/IndependentExpenditures/PresidentialIndependentExpenditures"] autorelease];
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
		TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures_ResultSet *results = [[[TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PresidentialIndependentExpenditures Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_IndependentExpenditures_PresidentialIndependentExpenditures_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetNewsItem Choreo.
 */
@implementation TMBNYTimes_TimesNewswire_GetNewsItem_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the URL input for this Choreo.
	*(required, string) The complete URL of a specific news item. This URL is returned in the output of the GetRecentNews Choreo.
	 */
	-(void)setURL:(NSString*)URL {
		[super setInput:@"URL" toValue:URL];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNewsItem Choreo.
 */
@implementation TMBNYTimes_TimesNewswire_GetNewsItem_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Queries the Newswire API for a specific news item.
 */
@implementation TMBNYTimes_TimesNewswire_GetNewsItem

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_TimesNewswire_GetNewsItem Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/TimesNewswire/GetNewsItem"] autorelease];
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
		TMBNYTimes_TimesNewswire_GetNewsItem_ResultSet *results = [[[TMBNYTimes_TimesNewswire_GetNewsItem_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetNewsItem Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_TimesNewswire_GetNewsItem_Inputs*)newInputSet {
		return [[[TMBNYTimes_TimesNewswire_GetNewsItem_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PresidentialStateZipTotals Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the Location input for this Choreo.
	*(required, string) Enter the location for which data will be retrieved. If ResourceType = states, use a two-letter state abbreviation (example: NY).  For zips, enter a five-digit zip code.
	 */
	-(void)setLocation:(NSString*)Location {
		[super setInput:@"Location" toValue:Location];
	}

	/*!
	 * Set the value of the ResourceType input for this Choreo.
	*(required, string) Specify the type of resource to use when retrieving donor data. Valid formats include: zips, or states.
	 */
	-(void)setResourceType:(NSString*)ResourceType {
		[super setInput:@"ResourceType" toValue:ResourceType];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PresidentialStateZipTotals Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve the total amount of donations aggregated by a specified location (by state and/or zipcode).
 */
@implementation TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/PresidentialCampaigns/PresidentialStateZipTotals"] autorelease];
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
		TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals_ResultSet *results = [[[TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PresidentialStateZipTotals Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialStateZipTotals_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSalesCounts Choreo.
 */
@implementation TMBNYTimes_RealEstate_GetSalesCounts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Bedrooms input for this Choreo.
	*(optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
	 */
	-(void)setBedrooms:(NSString*)Bedrooms {
		[super setInput:@"Bedrooms" toValue:Bedrooms];
	}

	/*!
	 * Set the value of the DateRange input for this Choreo.
	*(required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, 2010-10-01, etc)
	 */
	-(void)setDateRange:(NSString*)DateRange {
		[super setInput:@"DateRange" toValue:DateRange];
	}

	/*!
	 * Set the value of the GeoExtentLevel input for this Choreo.
	*(required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip)
	 */
	-(void)setGeoExtentLevel:(NSString*)GeoExtentLevel {
		[super setInput:@"GeoExtentLevel" toValue:GeoExtentLevel];
	}

	/*!
	 * Set the value of the GeoExtentValue input for this Choreo.
	*(required, string) Limits the search to a specific area.  For example, if GeoExtendLevel is borough, the value for GeoExtendValue could be Brooklyn.
	 */
	-(void)setGeoExtentValue:(NSString*)GeoExtentValue {
		[super setInput:@"GeoExtentValue" toValue:GeoExtentValue];
	}

	/*!
	 * Set the value of the GeoSummaryLevel input for this Choreo.
	*(required, string) The geographic unit for grouping the results (borough, neighborhood, or zip)
	 */
	-(void)setGeoSummaryLevel:(NSString*)GeoSummaryLevel {
		[super setInput:@"GeoSummaryLevel" toValue:GeoSummaryLevel];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSalesCounts Choreo.
 */
@implementation TMBNYTimes_RealEstate_GetSalesCounts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves counts of real estate sales from New York Times Web Service.
 */
@implementation TMBNYTimes_RealEstate_GetSalesCounts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_RealEstate_GetSalesCounts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/RealEstate/GetSalesCounts"] autorelease];
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
		TMBNYTimes_RealEstate_GetSalesCounts_ResultSet *results = [[[TMBNYTimes_RealEstate_GetSalesCounts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSalesCounts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_RealEstate_GetSalesCounts_Inputs*)newInputSet {
		return [[[TMBNYTimes_RealEstate_GetSalesCounts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeIndependentExpenditures Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the FECID input for this Choreo.
	*(required, string) Enter the FEC ID for the committee.  ID can be obtained by first running the CommitteeSearch Choreo.
	 */
	-(void)setFECID:(NSString*)FECID {
		[super setInput:@"FECID" toValue:FECID];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value (e.g., Offset=40 displays results 41–60).
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeIndependentExpenditures Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve the 20 most recent independent expenditures by a given committee, also known as "Super PACs."
 */
@implementation TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/IndependentExpenditures/CommitteeIndependentExpenditures"] autorelease];
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
		TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures_ResultSet *results = [[[TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CommitteeIndependentExpenditures Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_IndependentExpenditures_CommitteeIndependentExpenditures_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CandidateDetails Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_CandidateDetails_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the FECID input for this Choreo.
	*(required, string) Enter the FEC ID for the candidate.  ID can be obtained by first running the CandidateSearch Choreo.
	 */
	-(void)setFECID:(NSString*)FECID {
		[super setInput:@"FECID" toValue:FECID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CandidateDetails Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_CandidateDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain finance details for a Presidential or Congressional candidate.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_CandidateDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_Candidates_CandidateDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/Candidates/CandidateDetails"] autorelease];
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
		TMBNYTimes_CampaignFinance_Candidates_CandidateDetails_ResultSet *results = [[[TMBNYTimes_CampaignFinance_Candidates_CandidateDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CandidateDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_Candidates_CandidateDetails_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_Candidates_CandidateDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PresidentialDonorInformation Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(optional, string) Enter the first name of a donor.  This parameter can be used together with LastName and/or Zip
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(optional, string) Enter the last name of an individual donor to be retrieved.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Specify the starting point of the retrieved results, in multiples of 20.  By default, the first 20 results are returned.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(optional, integer) Enter a zipcode for which donor information wil be retrieved.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PresidentialDonorInformation Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve details about individual donors, or a summary of donors from a particular location to a presidential election campaign.
 */
@implementation TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/PresidentialCampaigns/PresidentialDonorInformation"] autorelease];
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
		TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation_ResultSet *results = [[[TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PresidentialDonorInformation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialDonorInformation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeFilings Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeFilings_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the CommitteeFECID input for this Choreo.
	*(required, string) Enter a committee's FEC ID.
	 */
	-(void)setCommitteeFECID:(NSString*)CommitteeFECID {
		[super setInput:@"CommitteeFECID" toValue:CommitteeFECID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeFilings Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeFilings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain a specific Political Action Committee's electronic filings.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeFilings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_Committees_CommitteeFilings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/Committees/CommitteeFilings"] autorelease];
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
		TMBNYTimes_CampaignFinance_Committees_CommitteeFilings_ResultSet *results = [[[TMBNYTimes_CampaignFinance_Committees_CommitteeFilings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CommitteeFilings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_Committees_CommitteeFilings_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_Committees_CommitteeFilings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByReviewer Choreo.
 */
@implementation TMBNYTimes_MovieReviews_SearchByReviewer_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CriticsPick input for this Choreo.
	*(optional, string) Set this parameter to Y to limt the results to NYT Critics' Picks. To get only those movies that have not been highlighted by Times critics, specify N.
	 */
	-(void)setCriticsPick:(NSString*)CriticsPick {
		[super setInput:@"CriticsPick" toValue:CriticsPick];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) A numeric value indicating the starting point of the result set. Used to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) Sets the sort order of the results. Accepted values are: by-title, by-publication-date, by-opening-date, by-dvd-release-date.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ReviewerName input for this Choreo.
	*(required, string) The name of the Times reviewer. Reviewer names should be separated by hyphens or dots (i.e. manohla-dargis or manohla.dargis).
	 */
	-(void)setReviewerName:(NSString*)ReviewerName {
		[super setInput:@"ReviewerName" toValue:ReviewerName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByReviewer Choreo.
 */
@implementation TMBNYTimes_MovieReviews_SearchByReviewer_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves reviews by a specific Times reviewer.
 */
@implementation TMBNYTimes_MovieReviews_SearchByReviewer

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_MovieReviews_SearchByReviewer Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/MovieReviews/SearchByReviewer"] autorelease];
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
		TMBNYTimes_MovieReviews_SearchByReviewer_ResultSet *results = [[[TMBNYTimes_MovieReviews_SearchByReviewer_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByReviewer Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_MovieReviews_SearchByReviewer_Inputs*)newInputSet {
		return [[[TMBNYTimes_MovieReviews_SearchByReviewer_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ContributionsByCandidate Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the CandidateFECID input for this Choreo.
	*(required, string) Enter a cadidate's nine-digit FEC ID. IDs can be obtained by first running the CandidateSearch Choreo.
	 */
	-(void)setCandidateFECID:(NSString*)CandidateFECID {
		[super setInput:@"CandidateFECID" toValue:CandidateFECID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ContributionsByCandidate Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve contributions made by individuals to a specific presidential candidate. 
 */
@implementation TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/IndividualContributors/ContributionsByCandidate"] autorelease];
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
		TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate_ResultSet *results = [[[TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ContributionsByCandidate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsByCandidate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ContributionsToPresidentialCandidates Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the CandidateFECID input for this Choreo.
	*(conditional, string) Enter a candidate's nine-digit FEC ID. IDs can be obtained by first running the CandidateSearch Choreo. Required unless providing the LastName input.
	 */
	-(void)setCandidateFECID:(NSString*)CandidateFECID {
		[super setInput:@"CandidateFECID" toValue:CandidateFECID];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(conditional, string) Enter the name of a presidential candidate for whom contributions will be obtained. Required unless providing the CandidateFECID input.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ContributionsToPresidentialCandidates Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve contributions made by individuals to a specific presidential candidate. 
 */
@implementation TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/IndividualContributors/ContributionsToPresidentialCandidates"] autorelease];
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
		TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates_ResultSet *results = [[[TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ContributionsToPresidentialCandidates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_IndividualContributors_ContributionsToPresidentialCandidates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRecentNewsItems Choreo.
 */
@implementation TMBNYTimes_TimesNewswire_GetRecentNewsItems_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to return. Defaults to 20.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Section input for this Choreo.
	*(optional, string) Limits the set of items by one or more sections. Separate sections by semicolons. Defaults to "all" to get all sections. See Choreo documentation for more options for this input.
	 */
	-(void)setSection:(NSString*)Section {
		[super setInput:@"Section" toValue:Section];
	}

	/*!
	 * Set the value of the Source input for this Choreo.
	*(optional, string) Limits the set of items by originating source. Set to "nyt" for New York Times items only and "iht" for International Herald Tribune items. Set to "all" for both (the default).
	 */
	-(void)setSource:(NSString*)Source {
		[super setInput:@"Source" toValue:Source];
	}

	/*!
	 * Set the value of the TimePeriod input for this Choreo.
	*(optional, integer) Limits the set of items by time published. Valid range is number of hours, 1–720 (in hours). Defaults to 24.
	 */
	-(void)setTimePeriod:(NSString*)TimePeriod {
		[super setInput:@"TimePeriod" toValue:TimePeriod];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRecentNewsItems Choreo.
 */
@implementation TMBNYTimes_TimesNewswire_GetRecentNewsItems_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves recent news items.
 */
@implementation TMBNYTimes_TimesNewswire_GetRecentNewsItems

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_TimesNewswire_GetRecentNewsItems Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/TimesNewswire/GetRecentNewsItems"] autorelease];
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
		TMBNYTimes_TimesNewswire_GetRecentNewsItems_ResultSet *results = [[[TMBNYTimes_TimesNewswire_GetRecentNewsItems_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRecentNewsItems Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_TimesNewswire_GetRecentNewsItems_Inputs*)newInputSet {
		return [[[TMBNYTimes_TimesNewswire_GetRecentNewsItems_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeSearch Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeSearch_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) Specify the name of the committee to be retireved. Partial names are also acceptable.  Examples: viacom.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeSearch Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search for a political action committee (PACs) by name, or partial name.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_Committees_CommitteeSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/Committees/CommitteeSearch"] autorelease];
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
		TMBNYTimes_CampaignFinance_Committees_CommitteeSearch_ResultSet *results = [[[TMBNYTimes_CampaignFinance_Committees_CommitteeSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CommitteeSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_Committees_CommitteeSearch_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_Committees_CommitteeSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeDetails Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeDetails_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the CommitteeFECID input for this Choreo.
	*(required, string) Enter a committee's FEC ID.
	 */
	-(void)setCommitteeFECID:(NSString*)CommitteeFECID {
		[super setInput:@"CommitteeFECID" toValue:CommitteeFECID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeDetails Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeDetails_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain details about a specific Political Action Committee.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeDetails

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_Committees_CommitteeDetails Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/Committees/CommitteeDetails"] autorelease];
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
		TMBNYTimes_CampaignFinance_Committees_CommitteeDetails_ResultSet *results = [[[TMBNYTimes_CampaignFinance_Committees_CommitteeDetails_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CommitteeDetails Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_Committees_CommitteeDetails_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_Committees_CommitteeDetails_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMostViewed Choreo.
 */
@implementation TMBNYTimes_MostPopular_GetMostViewed_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Section input for this Choreo.
	*(required, string) Limits the results by one or more sections (i.e. arts).  To get all sections, specify all-sections.
	 */
	-(void)setSection:(NSString*)Section {
		[super setInput:@"Section" toValue:Section];
	}

	/*!
	 * Set the value of the TimePeriod input for this Choreo.
	*(required, integer) Allowed integer values: 1, 7, or 30, which corresponds to a day (1) , a week (7), or a month (30) of content.
	 */
	-(void)setTimePeriod:(NSString*)TimePeriod {
		[super setInput:@"TimePeriod" toValue:TimePeriod];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMostViewed Choreo.
 */
@implementation TMBNYTimes_MostPopular_GetMostViewed_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for the blog posts and articles that are most frequently viewed.
 */
@implementation TMBNYTimes_MostPopular_GetMostViewed

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_MostPopular_GetMostViewed Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/MostPopular/GetMostViewed"] autorelease];
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
		TMBNYTimes_MostPopular_GetMostViewed_ResultSet *results = [[[TMBNYTimes_MostPopular_GetMostViewed_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMostViewed Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_MostPopular_GetMostViewed_Inputs*)newInputSet {
		return [[[TMBNYTimes_MostPopular_GetMostViewed_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the NewCandidates Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_NewCandidates_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NewCandidates Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_NewCandidates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves 20 of the most recently added political office candidates.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_NewCandidates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_Candidates_NewCandidates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/Candidates/NewCandidates"] autorelease];
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
		TMBNYTimes_CampaignFinance_Candidates_NewCandidates_ResultSet *results = [[[TMBNYTimes_CampaignFinance_Candidates_NewCandidates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the NewCandidates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_Candidates_NewCandidates_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_Candidates_NewCandidates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CandidateLeadersByCategory Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the Category input for this Choreo.
	*(required, string) Specify thecategory to be retrieved. Example: contribution-total, returns the total amount of financial contributions received by this candidate's campaign.  See Description for more info.
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CandidateLeadersByCategory Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of the 20 top candidates in terms of contributions received.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/Candidates/CandidateLeadersByCategory"] autorelease];
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
		TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory_ResultSet *results = [[[TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CandidateLeadersByCategory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_Candidates_CandidateLeadersByCategory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the PresidentialCandidateTotals Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the PresidentialCandidateTotals Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the total receipts and disbursements for all presidential candidates for a particular campaign cycle.
 */
@implementation TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/PresidentialCampaigns/PresidentialCandidateTotals"] autorelease];
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
		TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals_ResultSet *results = [[[TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the PresidentialCandidateTotals Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_PresidentialCampaigns_PresidentialCandidateTotals_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetPicks Choreo.
 */
@implementation TMBNYTimes_MovieReviews_GetPicks_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) A numeric value indicating the starting point of the result set. Used to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) Sets the sort order of the results. Accepted values are: by-title, by-publication-date, by-opening-date, by-dvd-release-date.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the ResourceType input for this Choreo.
	*(optional, string) Specify "picks" to get NYT Critics' Picks in theaters or "dvd-picks" to get NYT Critics' Picks on DVD. Specify "all" to retrieve all reviews.
	 */
	-(void)setResourceType:(NSString*)ResourceType {
		[super setInput:@"ResourceType" toValue:ResourceType];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPicks Choreo.
 */
@implementation TMBNYTimes_MovieReviews_GetPicks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves lists of reviews and NYT Critics' Picks.
 */
@implementation TMBNYTimes_MovieReviews_GetPicks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_MovieReviews_GetPicks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/MovieReviews/GetPicks"] autorelease];
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
		TMBNYTimes_MovieReviews_GetPicks_ResultSet *results = [[[TMBNYTimes_MovieReviews_GetPicks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetPicks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_MovieReviews_GetPicks_Inputs*)newInputSet {
		return [[[TMBNYTimes_MovieReviews_GetPicks_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LeadershipPACs Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_LeadershipPACs_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LeadershipPACs Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_LeadershipPACs_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve a list of PACs that have been designated by the FEC as "leadership PACs".
 */
@implementation TMBNYTimes_CampaignFinance_Committees_LeadershipPACs

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_Committees_LeadershipPACs Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/Committees/LeadershipPACs"] autorelease];
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
		TMBNYTimes_CampaignFinance_Committees_LeadershipPACs_ResultSet *results = [[[TMBNYTimes_CampaignFinance_Committees_LeadershipPACs_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LeadershipPACs Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_Committees_LeadershipPACs_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_Committees_LeadershipPACs_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReviewer Choreo.
 */
@implementation TMBNYTimes_MovieReviews_GetReviewer_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ResourceType input for this Choreo.
	*(optional, string) Specify "all", "full-time", or "part-time" for that subset. Specify a reviewer's name to get details about a reviewer. Names should be separated by hyphens or dots (i.e. manohla-dargis).
	 */
	-(void)setResourceType:(NSString*)ResourceType {
		[super setInput:@"ResourceType" toValue:ResourceType];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReviewer Choreo.
 */
@implementation TMBNYTimes_MovieReviews_GetReviewer_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves biographical information about reviewers.
 */
@implementation TMBNYTimes_MovieReviews_GetReviewer

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_MovieReviews_GetReviewer Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/MovieReviews/GetReviewer"] autorelease];
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
		TMBNYTimes_MovieReviews_GetReviewer_ResultSet *results = [[[TMBNYTimes_MovieReviews_GetReviewer_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReviewer Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_MovieReviews_GetReviewer_Inputs*)newInputSet {
		return [[[TMBNYTimes_MovieReviews_GetReviewer_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchWithinBoundedBox Choreo.
 */
@implementation TMBNYTimes_EventListings_SearchWithinBoundedBox_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DateRange input for this Choreo.
	*(optional, date) Start date to end date in the following format: YYYY-MM-DD:YYYY-MM-DD.
	 */
	-(void)setDateRange:(NSString*)DateRange {
		[super setInput:@"DateRange" toValue:DateRange];
	}

	/*!
	 * Set the value of the Filters input for this Choreo.
	*(optional, string) Filters search results using facet names and values. See Choreo documentation for examples.
	 */
	-(void)setFilters:(NSString*)Filters {
		[super setInput:@"Filters" toValue:Filters];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the NortheastLatitude input for this Choreo.
	*(conditional, decimal) The northeastern latitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
	 */
	-(void)setNortheastLatitude:(NSString*)NortheastLatitude {
		[super setInput:@"NortheastLatitude" toValue:NortheastLatitude];
	}

	/*!
	 * Set the value of the NortheastLongitude input for this Choreo.
	*(conditional, decimal) The northeastern longitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
	 */
	-(void)setNortheastLongitude:(NSString*)NortheastLongitude {
		[super setInput:@"NortheastLongitude" toValue:NortheastLongitude];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) Search keywords to perform a text search on the following fields: web_description, event_name and venue_name.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Radius input for this Choreo.
	*(optional, integer) The radius of the spacial search (in meters). Defaults to 1000.
	 */
	-(void)setRadius:(NSString*)Radius {
		[super setInput:@"Radius" toValue:Radius];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Can be set to json, xml, or sphp. Defaults to xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Allows you to sort results. Appending "+asc" or "+desc" to a facet will sort results on that value in ascending or descending order (i.e. dist+asc).
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the SouthwestLatitude input for this Choreo.
	*(conditional, decimal) The southwest latitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
	 */
	-(void)setSouthwestLatitude:(NSString*)SouthwestLatitude {
		[super setInput:@"SouthwestLatitude" toValue:SouthwestLatitude];
	}

	/*!
	 * Set the value of the SouthwestLongitude input for this Choreo.
	*(conditional, decimal) The southwest longitude of the bounding box to search. When searching within a bounded box, all four coordinates are required.
	 */
	-(void)setSouthwestLongitude:(NSString*)SouthwestLongitude {
		[super setInput:@"SouthwestLongitude" toValue:SouthwestLongitude];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchWithinBoundedBox Choreo.
 */
@implementation TMBNYTimes_EventListings_SearchWithinBoundedBox_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API. Valid values are: json (the default) and xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to do a spatial search for events within a box bounded by specified northeast and southwest points.
 */
@implementation TMBNYTimes_EventListings_SearchWithinBoundedBox

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_EventListings_SearchWithinBoundedBox Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/EventListings/SearchWithinBoundedBox"] autorelease];
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
		TMBNYTimes_EventListings_SearchWithinBoundedBox_ResultSet *results = [[[TMBNYTimes_EventListings_SearchWithinBoundedBox_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchWithinBoundedBox Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_EventListings_SearchWithinBoundedBox_Inputs*)newInputSet {
		return [[[TMBNYTimes_EventListings_SearchWithinBoundedBox_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchListings Choreo.
 */
@implementation TMBNYTimes_EventListings_SearchListings_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the DateRange input for this Choreo.
	*(optional, date) Start date to end date in the following format: YYYY-MM-DD:YYYY-MM-DD.
	 */
	-(void)setDateRange:(NSString*)DateRange {
		[super setInput:@"DateRange" toValue:DateRange];
	}

	/*!
	 * Set the value of the Filters input for this Choreo.
	*(optional, string) Filters search results using facet names and values. See Choreo documentation for examples.
	 */
	-(void)setFilters:(NSString*)Filters {
		[super setInput:@"Filters" toValue:Filters];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(optional, decimal) The latitude coordinate of the location to use in the event search. If specified, Longitude must also be provided.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(optional, decimal) The longitude coordinate of the location to use in the event search. If specified, Latitude must also be provided.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) Search keywords to perform a text search on the following fields: web_description, event_name and venue_name.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Radius input for this Choreo.
	*(optional, integer) The radius of the spacial search (in meters). Defaults to 1000.
	 */
	-(void)setRadius:(NSString*)Radius {
		[super setInput:@"Radius" toValue:Radius];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Allows you to sort results. Appending "+asc" or "+desc" to a facet will sort results on that value in ascending or descending order (i.e. dist+asc).
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchListings Choreo.
 */
@implementation TMBNYTimes_EventListings_SearchListings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API. Format corresponds to the ResponseFormat input. Defaults to xml.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches events by location, filters, or full text search.
 */
@implementation TMBNYTimes_EventListings_SearchListings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_EventListings_SearchListings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/EventListings/SearchListings"] autorelease];
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
		TMBNYTimes_EventListings_SearchListings_ResultSet *results = [[[TMBNYTimes_EventListings_SearchListings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchListings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_EventListings_SearchListings_Inputs*)newInputSet {
		return [[[TMBNYTimes_EventListings_SearchListings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the QueryArticles Choreo.
 */
@implementation TMBNYTimes_ArticleSearch_QueryArticles_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the BeginDate input for this Choreo.
	*(optional, date) Sets the starting point (which is inclusive) of the range of publication dates to return. Must be used with EndDate. Date should be formatted like YYYYMMDD.
	 */
	-(void)setBeginDate:(NSString*)BeginDate {
		[super setInput:@"BeginDate" toValue:BeginDate];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, date) Sets the end point (which is inclusive) of the range of publication dates to return. Must be used with BeginDate. Date should be formatted like YYYYMMDD.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Facets input for this Choreo.
	*(optional, string) A comma-delimited list of up to 5 facets. This indicates the sets of facet values to include in the response. See Choreo documentation for more information about accepted values for this input.
	 */
	-(void)setFacets:(NSString*)Facets {
		[super setInput:@"Facets" toValue:Facets];
	}

	/*!
	 * Set the value of the Fields input for this Choreo.
	*(optional, string) A comma-delimited list of fields to return. These fields are returned by default: body, byline, date, title, and url.
	 */
	-(void)setFields:(NSString*)Fields {
		[super setInput:@"Fields" toValue:Fields];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) This corresponds to which set of 10 results is returned. Used to page through results. Set to 0 to return records 0-9, set to 1 to return records 10-19, etc.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) Search keywords (optionally applied to specific fields) and/or facets. See Choreo documentation for syntax examples.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Rank input for this Choreo.
	*(optional, string) Sets the order of the results. Accepted values are: newest (the defaults), oldest, or closest.
	 */
	-(void)setRank:(NSString*)Rank {
		[super setInput:@"Rank" toValue:Rank];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the QueryArticles Choreo.
 */
@implementation TMBNYTimes_ArticleSearch_QueryArticles_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}








	
@end

/*!
 * Lets you query the Article Search API for New York Times articles.
 */
@implementation TMBNYTimes_ArticleSearch_QueryArticles

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_ArticleSearch_QueryArticles Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/ArticleSearch/QueryArticles"] autorelease];
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
		TMBNYTimes_ArticleSearch_QueryArticles_ResultSet *results = [[[TMBNYTimes_ArticleSearch_QueryArticles_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the QueryArticles Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_ArticleSearch_QueryArticles_Inputs*)newInputSet {
		return [[[TMBNYTimes_ArticleSearch_QueryArticles_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CandidateSearch Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_CandidateSearch_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(required, string) Enter the last name (or partial last name) of a Congressional or Presidential office candidate.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CandidateSearch Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_CandidateSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search for a Presidential or Congressional candidate by last name and election cycle.
 */
@implementation TMBNYTimes_CampaignFinance_Candidates_CandidateSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_Candidates_CandidateSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/Candidates/CandidateSearch"] autorelease];
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
		TMBNYTimes_CampaignFinance_Candidates_CandidateSearch_ResultSet *results = [[[TMBNYTimes_CampaignFinance_Candidates_CandidateSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CandidateSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_Candidates_CandidateSearch_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_Candidates_CandidateSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetListingsCounts Choreo.
 */
@implementation TMBNYTimes_RealEstate_GetListingsCounts_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Bedrooms input for this Choreo.
	*(optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
	 */
	-(void)setBedrooms:(NSString*)Bedrooms {
		[super setInput:@"Bedrooms" toValue:Bedrooms];
	}

	/*!
	 * Set the value of the DateRange input for this Choreo.
	*(required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, 2010-10-01, etc).
	 */
	-(void)setDateRange:(NSString*)DateRange {
		[super setInput:@"DateRange" toValue:DateRange];
	}

	/*!
	 * Set the value of the GeoExtentLevel input for this Choreo.
	*(required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip).
	 */
	-(void)setGeoExtentLevel:(NSString*)GeoExtentLevel {
		[super setInput:@"GeoExtentLevel" toValue:GeoExtentLevel];
	}

	/*!
	 * Set the value of the GeoExtentValue input for this Choreo.
	*(required, string) Limits the search to a specific area.  For example, if GeoExtentLevel is borough, the value for GeoExtentValue could be Brooklyn.
	 */
	-(void)setGeoExtentValue:(NSString*)GeoExtentValue {
		[super setInput:@"GeoExtentValue" toValue:GeoExtentValue];
	}

	/*!
	 * Set the value of the GeoSummaryLevel input for this Choreo.
	*(required, string) The geographic unit for grouping the results (borough, neighborhood, or zip).
	 */
	-(void)setGeoSummaryLevel:(NSString*)GeoSummaryLevel {
		[super setInput:@"GeoSummaryLevel" toValue:GeoSummaryLevel];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListingsCounts Choreo.
 */
@implementation TMBNYTimes_RealEstate_GetListingsCounts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves counts of real estate listings from New York Times Web Service.
 */
@implementation TMBNYTimes_RealEstate_GetListingsCounts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_RealEstate_GetListingsCounts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/RealEstate/GetListingsCounts"] autorelease];
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
		TMBNYTimes_RealEstate_GetListingsCounts_ResultSet *results = [[[TMBNYTimes_RealEstate_GetListingsCounts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetListingsCounts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_RealEstate_GetListingsCounts_Inputs*)newInputSet {
		return [[[TMBNYTimes_RealEstate_GetListingsCounts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetSalesPercentiles Choreo.
 */
@implementation TMBNYTimes_RealEstate_GetSalesPercentiles_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Bedrooms input for this Choreo.
	*(optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
	 */
	-(void)setBedrooms:(NSString*)Bedrooms {
		[super setInput:@"Bedrooms" toValue:Bedrooms];
	}

	/*!
	 * Set the value of the DateRange input for this Choreo.
	*(required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, etc)
	 */
	-(void)setDateRange:(NSString*)DateRange {
		[super setInput:@"DateRange" toValue:DateRange];
	}

	/*!
	 * Set the value of the GeoExtentLevel input for this Choreo.
	*(required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip)
	 */
	-(void)setGeoExtentLevel:(NSString*)GeoExtentLevel {
		[super setInput:@"GeoExtentLevel" toValue:GeoExtentLevel];
	}

	/*!
	 * Set the value of the GeoExtentValue input for this Choreo.
	*(required, string) Limits the search to a specific area.  For example, if GeoExtendLevel is borough, the value for GeoExtendValue could be Brooklyn.
	 */
	-(void)setGeoExtentValue:(NSString*)GeoExtentValue {
		[super setInput:@"GeoExtentValue" toValue:GeoExtentValue];
	}

	/*!
	 * Set the value of the GeoSummaryLevel input for this Choreo.
	*(required, string) The geographic unit for grouping the results (borough, neighborhood, or zip)
	 */
	-(void)setGeoSummaryLevel:(NSString*)GeoSummaryLevel {
		[super setInput:@"GeoSummaryLevel" toValue:GeoSummaryLevel];
	}

	/*!
	 * Set the value of the Percentile input for this Choreo.
	*(required, integer) Specify the percentile for sales prices you want to retrieve (i.e 50)
	 */
	-(void)setPercentile:(NSString*)Percentile {
		[super setInput:@"Percentile" toValue:Percentile];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSalesPercentiles Choreo.
 */
@implementation TMBNYTimes_RealEstate_GetSalesPercentiles_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves percentiles of real estate sales from New York Times Web Service.
 */
@implementation TMBNYTimes_RealEstate_GetSalesPercentiles

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_RealEstate_GetSalesPercentiles Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/RealEstate/GetSalesPercentiles"] autorelease];
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
		TMBNYTimes_RealEstate_GetSalesPercentiles_ResultSet *results = [[[TMBNYTimes_RealEstate_GetSalesPercentiles_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetSalesPercentiles Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_RealEstate_GetSalesPercentiles_Inputs*)newInputSet {
		return [[[TMBNYTimes_RealEstate_GetSalesPercentiles_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetElectronicFilingFormTypes Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetElectronicFilingFormTypes Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain a list of available form types used in FEC filings.
 */
@implementation TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/ElectronicFilings/GetElectronicFilingFormTypes"] autorelease];
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
		TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes_ResultSet *results = [[[TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetElectronicFilingFormTypes Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_ElectronicFilings_GetElectronicFilingFormTypes_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMostEmailed Choreo.
 */
@implementation TMBNYTimes_MostPopular_GetMostEmailed_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, string) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Section input for this Choreo.
	*(required, string) Limits the results by one or more sections (i.e. arts).  To get all sections, specify all-sections.
	 */
	-(void)setSection:(NSString*)Section {
		[super setInput:@"Section" toValue:Section];
	}

	/*!
	 * Set the value of the TimePeriod input for this Choreo.
	*(required, integer) Allowed integer values: 1, 7, or 30, which corresponds to a day (1) , a week (7), or a month (30) of content.
	 */
	-(void)setTimePeriod:(NSString*)TimePeriod {
		[super setInput:@"TimePeriod" toValue:TimePeriod];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMostEmailed Choreo.
 */
@implementation TMBNYTimes_MostPopular_GetMostEmailed_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for the blog posts and articles that are most frequently emailed.
 */
@implementation TMBNYTimes_MostPopular_GetMostEmailed

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_MostPopular_GetMostEmailed Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/MostPopular/GetMostEmailed"] autorelease];
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
		TMBNYTimes_MostPopular_GetMostEmailed_ResultSet *results = [[[TMBNYTimes_MostPopular_GetMostEmailed_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMostEmailed Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_MostPopular_GetMostEmailed_Inputs*)newInputSet {
		return [[[TMBNYTimes_MostPopular_GetMostEmailed_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the IndependentExpenditureOnlyCommittees Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year.
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value (e.g., Offset=40 displays results 41–60).
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the IndependentExpenditureOnlyCommittees Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves 20 of the most recent committees that have registered as independent expenditure-only (commonly known as "Super PACs").
 */
@implementation TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/IndependentExpenditures/IndependentExpenditureOnlyCommittees"] autorelease];
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
		TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees_ResultSet *results = [[[TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the IndependentExpenditureOnlyCommittees Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_IndependentExpenditures_IndependentExpenditureOnlyCommittees_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeContributions Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeContributions_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the CommitteeFECID input for this Choreo.
	*(conditional, string) Enter a political action committee's FEC ID.  Either CommitteeFECID, OR Name must be provided.
	 */
	-(void)setCommitteeFECID:(NSString*)CommitteeFECID {
		[super setInput:@"CommitteeFECID" toValue:CommitteeFECID];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(conditional, string) Enter the name of a political action committee (PAC) whose contributions will be obtained. Either Name or CommitteeFECID must be provided.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value (e.g., Offset=40 displays results 41–60).
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeContributions Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeContributions_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain contributions made by a Political Action Committee (PAC) in an election cycle.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeContributions

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_Committees_CommitteeContributions Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/Committees/CommitteeContributions"] autorelease];
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
		TMBNYTimes_CampaignFinance_Committees_CommitteeContributions_ResultSet *results = [[[TMBNYTimes_CampaignFinance_Committees_CommitteeContributions_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CommitteeContributions Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_Committees_CommitteeContributions_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_Committees_CommitteeContributions_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CommitteeContributionsToCandidate Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the CandidateFECID input for this Choreo.
	*(required, string) Enter a cadidate's FEC ID.
	 */
	-(void)setCandidateFECID:(NSString*)CandidateFECID {
		[super setInput:@"CandidateFECID" toValue:CandidateFECID];
	}

	/*!
	 * Set the value of the CommitteeFECID input for this Choreo.
	*(required, string) Enter a committee's FEC ID.
	 */
	-(void)setCommitteeFECID:(NSString*)CommitteeFECID {
		[super setInput:@"CommitteeFECID" toValue:CommitteeFECID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CommitteeContributionsToCandidate Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Obtain contributions made by a Political Action Committee (PAC) to a candidate.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/Committees/CommitteeContributionsToCandidate"] autorelease];
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
		TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate_ResultSet *results = [[[TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CommitteeContributionsToCandidate Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_Committees_CommitteeContributionsToCandidate_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetListingsPercentiles Choreo.
 */
@implementation TMBNYTimes_RealEstate_GetListingsPercentiles_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Bedrooms input for this Choreo.
	*(optional, integer) Limits the results by number of bedrooms to search for. Defaults to 1.
	 */
	-(void)setBedrooms:(NSString*)Bedrooms {
		[super setInput:@"Bedrooms" toValue:Bedrooms];
	}

	/*!
	 * Set the value of the DateRange input for this Choreo.
	*(required, string) Sets the quarter, month, week or day for the results (i.e. 2008-Q1, 2008-W52, 2007-07, 2010-10-01, etc).
	 */
	-(void)setDateRange:(NSString*)DateRange {
		[super setInput:@"DateRange" toValue:DateRange];
	}

	/*!
	 * Set the value of the GeoExtentLevel input for this Choreo.
	*(required, string) The geographical unit for the results (i.e. borough, neighborhood, or zip).
	 */
	-(void)setGeoExtentLevel:(NSString*)GeoExtentLevel {
		[super setInput:@"GeoExtentLevel" toValue:GeoExtentLevel];
	}

	/*!
	 * Set the value of the GeoExtentValue input for this Choreo.
	*(required, string) Limits the search to a specific area.  For example, if GeoExtentLevel is borough, the value for GeoExtentValue could be Brooklyn.
	 */
	-(void)setGeoExtentValue:(NSString*)GeoExtentValue {
		[super setInput:@"GeoExtentValue" toValue:GeoExtentValue];
	}

	/*!
	 * Set the value of the GeoSummaryLevel input for this Choreo.
	*(required, string) The geographic unit for grouping the results (borough, neighborhood, or zip).
	 */
	-(void)setGeoSummaryLevel:(NSString*)GeoSummaryLevel {
		[super setInput:@"GeoSummaryLevel" toValue:GeoSummaryLevel];
	}

	/*!
	 * Set the value of the Percentile input for this Choreo.
	*(required, integer) Specify a percentile for the listing prices you want to retrieve (i.e 50).
	 */
	-(void)setPercentile:(NSString*)Percentile {
		[super setInput:@"Percentile" toValue:Percentile];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetListingsPercentiles Choreo.
 */
@implementation TMBNYTimes_RealEstate_GetListingsPercentiles_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves percentiles of real estate listings from New York Times Web Service.
 */
@implementation TMBNYTimes_RealEstate_GetListingsPercentiles

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_RealEstate_GetListingsPercentiles Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/RealEstate/GetListingsPercentiles"] autorelease];
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
		TMBNYTimes_RealEstate_GetListingsPercentiles_ResultSet *results = [[[TMBNYTimes_RealEstate_GetListingsPercentiles_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetListingsPercentiles Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_RealEstate_GetListingsPercentiles_Inputs*)newInputSet {
		return [[[TMBNYTimes_RealEstate_GetListingsPercentiles_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByKeyword Choreo.
 */
@implementation TMBNYTimes_MovieReviews_SearchByKeyword_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CriticsPick input for this Choreo.
	*(optional, string) Set this parameter to Y to limt the results to NYT Critics' Picks. To get only those movies that have not been highlighted by Times critics, specify N.
	 */
	-(void)setCriticsPick:(NSString*)CriticsPick {
		[super setInput:@"CriticsPick" toValue:CriticsPick];
	}

	/*!
	 * Set the value of the DVD input for this Choreo.
	*(optional, string) Set this parameter to Y to limit the results to movies that have been released on DVD. To get only those movies that have not been released on DVD, specify N.
	 */
	-(void)setDVD:(NSString*)DVD {
		[super setInput:@"DVD" toValue:DVD];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of results to return.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) A numeric value indicating the starting point of the result set. This can be used in combination with the Limit input to page through results.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the OpeningDate input for this Choreo.
	*(optional, date) Limits by date or range of dates. The opening-date is the date the movie's opening date in the New York region. Format YYYY-MM-DD. Separate ranges with semicolons.
	 */
	-(void)setOpeningDate:(NSString*)OpeningDate {
		[super setInput:@"OpeningDate" toValue:OpeningDate];
	}

	/*!
	 * Set the value of the Order input for this Choreo.
	*(optional, string) Sets the sort order of the results. Accepted values are: by-title, by-publication-date, by-opening-date, by-dvd-release-date.
	 */
	-(void)setOrder:(NSString*)Order {
		[super setInput:@"Order" toValue:Order];
	}

	/*!
	 * Set the value of the PublicationDate input for this Choreo.
	*(optional, date) Limits by date or range of dates. The publication-date is the date the review was first publish.ed in The Times. Format YYYY-MM-DD. Separate ranges with semicolons.
	 */
	-(void)setPublicationDate:(NSString*)PublicationDate {
		[super setInput:@"PublicationDate" toValue:PublicationDate];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(conditional, string) A string of search keywords. Matches movie titles and indexed terms.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Reviewer input for this Choreo.
	*(optional, string) Limits results to reviews by a specific critic. Reviewer names should be hyphenated or concatenated with dots (i.e manohla.dargis).
	 */
	-(void)setReviewer:(NSString*)Reviewer {
		[super setInput:@"Reviewer" toValue:Reviewer];
	}

	/*!
	 * Set the value of the ThousandBest input for this Choreo.
	*(optional, string) Set this parameter to Y to limit the results to movies on the Times list of The Best 1,000 Movies Ever Made. To get only those movies that are not on the list, specify N.
	 */
	-(void)setThousandBest:(NSString*)ThousandBest {
		[super setInput:@"ThousandBest" toValue:ThousandBest];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByKeyword Choreo.
 */
@implementation TMBNYTimes_MovieReviews_SearchByKeyword_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches movie reviews by keyword and various filter parameters.
 */
@implementation TMBNYTimes_MovieReviews_SearchByKeyword

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_MovieReviews_SearchByKeyword Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/MovieReviews/SearchByKeyword"] autorelease];
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
		TMBNYTimes_MovieReviews_SearchByKeyword_ResultSet *results = [[[TMBNYTimes_MovieReviews_SearchByKeyword_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByKeyword Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_MovieReviews_SearchByKeyword_Inputs*)newInputSet {
		return [[[TMBNYTimes_MovieReviews_SearchByKeyword_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the NewCommittees Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_NewCommittees_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the CampaignCycle input for this Choreo.
	*(required, integer) Enter the campaign cycle year in YYYY format.  This must be an even year. 
	 */
	-(void)setCampaignCycle:(NSString*)CampaignCycle {
		[super setInput:@"CampaignCycle" toValue:CampaignCycle];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Enter json or xml.  Default is json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the NewCommittees Choreo.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_NewCommittees_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API corresponds to the setting (json, or xml) entered in the ResponseFormat variable.  Default is set to json.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves 20 of the most recently added committees.
 */
@implementation TMBNYTimes_CampaignFinance_Committees_NewCommittees

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_CampaignFinance_Committees_NewCommittees Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/CampaignFinance/Committees/NewCommittees"] autorelease];
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
		TMBNYTimes_CampaignFinance_Committees_NewCommittees_ResultSet *results = [[[TMBNYTimes_CampaignFinance_Committees_NewCommittees_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the NewCommittees Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_CampaignFinance_Committees_NewCommittees_Inputs*)newInputSet {
		return [[[TMBNYTimes_CampaignFinance_Committees_NewCommittees_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBestSellerHistory Choreo.
 */
@implementation TMBNYTimes_BestSellers_GetBestSellerHistory_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AgeGroup input for this Choreo.
	*(optional, string) The target age group for the best seller.
	 */
	-(void)setAgeGroup:(NSString*)AgeGroup {
		[super setInput:@"AgeGroup" toValue:AgeGroup];
	}

	/*!
	 * Set the value of the Author input for this Choreo.
	*(optional, string) The author of the best seller.
	 */
	-(void)setAuthor:(NSString*)Author {
		[super setInput:@"Author" toValue:Author];
	}

	/*!
	 * Set the value of the Contributor input for this Choreo.
	*(optional, string) The author of the best seller, as well as other contributors such as the illustrator.
	 */
	-(void)setContributor:(NSString*)Contributor {
		[super setInput:@"Contributor" toValue:Contributor];
	}

	/*!
	 * Set the value of the ISBN input for this Choreo.
	*(optional, string) International Standard Book Number, 10 or 13 digits.
	 */
	-(void)setISBN:(NSString*)ISBN {
		[super setInput:@"ISBN" toValue:ISBN];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the Price input for this Choreo.
	*(optional, decimal) The publisher's list price of the best seller, including decimal point.
	 */
	-(void)setPrice:(NSString*)Price {
		[super setInput:@"Price" toValue:Price];
	}

	/*!
	 * Set the value of the Publisher input for this Choreo.
	*(optional, string) The standardized name of the publisher.
	 */
	-(void)setPublisher:(NSString*)Publisher {
		[super setInput:@"Publisher" toValue:Publisher];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should bein. Valid values are: json (the default), and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) The column name to sort by. Valid values are: age-group, author, contributor, isbn, price, publisher, and title.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) The sort order. Valid values are: ASC and DESC.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(conditional, string) The title of the best seller to retrieve data for.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBestSellerHistory Choreo.
 */
@implementation TMBNYTimes_BestSellers_GetBestSellerHistory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about New York Times best-sellers that match a specified search criteria.
 */
@implementation TMBNYTimes_BestSellers_GetBestSellerHistory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_BestSellers_GetBestSellerHistory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/BestSellers/GetBestSellerHistory"] autorelease];
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
		TMBNYTimes_BestSellers_GetBestSellerHistory_ResultSet *results = [[[TMBNYTimes_BestSellers_GetBestSellerHistory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBestSellerHistory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_BestSellers_GetBestSellerHistory_Inputs*)newInputSet {
		return [[[TMBNYTimes_BestSellers_GetBestSellerHistory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetMostShared Choreo.
 */
@implementation TMBNYTimes_MostPopular_GetMostShared_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, string) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Section input for this Choreo.
	*(required, string) Limits the results by one or more sections (i.e. arts).  To get all sections, specify all-sections.
	 */
	-(void)setSection:(NSString*)Section {
		[super setInput:@"Section" toValue:Section];
	}

	/*!
	 * Set the value of the ShareTypes input for this Choreo.
	*(required, string) Limits the results by the method used to share the items.  Separate multiple share types by semicolons (i.e. facebook; twitter).
	 */
	-(void)setShareTypes:(NSString*)ShareTypes {
		[super setInput:@"ShareTypes" toValue:ShareTypes];
	}

	/*!
	 * Set the value of the TimePeriod input for this Choreo.
	*(required, integer) Allowed integer values: 1, 7, or 30, which corresponds to a day (1) , a week (7), or a month (30) of content.
	 */
	-(void)setTimePeriod:(NSString*)TimePeriod {
		[super setInput:@"TimePeriod" toValue:TimePeriod];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMostShared Choreo.
 */
@implementation TMBNYTimes_MostPopular_GetMostShared_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for the blog posts and articles that are most frequently shared.
 */
@implementation TMBNYTimes_MostPopular_GetMostShared

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_MostPopular_GetMostShared Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/MostPopular/GetMostShared"] autorelease];
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
		TMBNYTimes_MostPopular_GetMostShared_ResultSet *results = [[[TMBNYTimes_MostPopular_GetMostShared_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetMostShared Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_MostPopular_GetMostShared_Inputs*)newInputSet {
		return [[[TMBNYTimes_MostPopular_GetMostShared_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBestSellerList Choreo.
 */
@implementation TMBNYTimes_BestSellers_GetBestSellerList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by NY Times.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(required, date) The best-seller list publication date in YYYY-MM-DD format.
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the ListName input for this Choreo.
	*(required, string) The Times best-seller list to retrieve (i.e. e-book-fiction or hardcover-fiction).
	 */
	-(void)setListName:(NSString*)ListName {
		[super setInput:@"ListName" toValue:ListName];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) The first 20 results are shown by default. To page through the results, set Offset to the appropriate value.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SortBy input for this Choreo.
	*(optional, string) The column name to sort by. Valid values are: bestsellers-date, date, isbn, list, list-name, published-date, rank, rank-last-week, and weeks-on-list.
	 */
	-(void)setSortBy:(NSString*)SortBy {
		[super setInput:@"SortBy" toValue:SortBy];
	}

	/*!
	 * Set the value of the SortOrder input for this Choreo.
	*(optional, string) The sort order. Valid values are: ASC and DESC.
	 */
	-(void)setSortOrder:(NSString*)SortOrder {
		[super setInput:@"SortOrder" toValue:SortOrder];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBestSellerList Choreo.
 */
@implementation TMBNYTimes_BestSellers_GetBestSellerList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the NY Times API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves data from a New York Times best-seller list for a specified date.
 */
@implementation TMBNYTimes_BestSellers_GetBestSellerList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNYTimes_BestSellers_GetBestSellerList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NYTimes/BestSellers/GetBestSellerList"] autorelease];
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
		TMBNYTimes_BestSellers_GetBestSellerList_ResultSet *results = [[[TMBNYTimes_BestSellers_GetBestSellerList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBestSellerList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNYTimes_BestSellers_GetBestSellerList_Inputs*)newInputSet {
		return [[[TMBNYTimes_BestSellers_GetBestSellerList_Inputs alloc] init] autorelease];
	}
@end
	