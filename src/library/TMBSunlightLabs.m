/*!
 * @TMBSunlightLabs.m
 *
 * Execute Choreographies from the Temboo SunlightLabs bundle.
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

#import "TMBSunlightLabs.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetByZip Choreo.
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetByZip_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
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
	 * Set the value of the Zip input for this Choreo.
	*(required, string) A valid zip code used to return all legislators that currently represent some portion of a zip code.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetByZip Choreo.
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetByZip_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Sunlight Congress API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns all legislators that currently represent some portion of a given zipcode.
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetByZip

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_Congress_Legislator_GetByZip Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/Congress/Legislator/GetByZip"] autorelease];
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
		TMBSunlightLabs_Congress_Legislator_GetByZip_ResultSet *results = [[[TMBSunlightLabs_Congress_Legislator_GetByZip_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetByZip Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_Congress_Legislator_GetByZip_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_Congress_Legislator_GetByZip_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@implementation TMBSunlightLabs_Congress_Legislator_Search_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AllLegislators input for this Choreo.
	*(optional, boolean) A boolean flag indicating to search for all legislators even when they are no longer in office.
	 */
	-(void)setAllLegislators:(NSString*)AllLegislators {
		[super setInput:@"AllLegislators" toValue:AllLegislators];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) A name to search for.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
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
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@implementation TMBSunlightLabs_Congress_Legislator_Search_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Sunlight Congress API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Provides a fuzzy-matching text search of the legislators.
 */
@implementation TMBSunlightLabs_Congress_Legislator_Search

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_Congress_Legislator_Search Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/Congress/Legislator/Search"] autorelease];
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
		TMBSunlightLabs_Congress_Legislator_Search_ResultSet *results = [[[TMBSunlightLabs_Congress_Legislator_Search_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Search Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_Congress_Legislator_Search_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_Congress_Legislator_Search_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Dates Choreo.
 */
@implementation TMBSunlightLabs_CapitolWords_Dates_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the BioguideID input for this Choreo.
	*(optional, string) Limit results to the member of Congress with the given Bioguide ID. The Bioguide ID of any current or past congressional member can be found at bioguide.congress.gov.
	 */
	-(void)setBioguideID:(NSString*)BioguideID {
		[super setInput:@"BioguideID" toValue:BioguideID];
	}

	/*!
	 * Set the value of the Chamber input for this Choreo.
	*(optional, string) Limit results to a particular chamber. Valid values: house, senate, extensions.
	 */
	-(void)setChamber:(NSString*)Chamber {
		[super setInput:@"Chamber" toValue:Chamber];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) Show results for only the given date. Format: YYYY-MM-DD
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) Limit results to those on or before the given date. Format: YYYY-MM-DD.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Granularity input for this Choreo.
	*(optional, string) The length of time covered by each result. Valid values: year, month, day. Defaults to day.
	 */
	-(void)setGranularity:(NSString*)Granularity {
		[super setInput:@"Granularity" toValue:Granularity];
	}

	/*!
	 * Set the value of the MinCount input for this Choreo.
	*(optional, boolean) Only returns results where mentions are at or above the supplied threshold.
	 */
	-(void)setMinCount:(NSString*)MinCount {
		[super setInput:@"MinCount" toValue:MinCount];
	}

	/*!
	 * Set the value of the Party input for this Choreo.
	*(optional, string) Limit results to members of congress from a given party. Valid values: R, D, I.
	 */
	-(void)setParty:(NSString*)Party {
		[super setInput:@"Party" toValue:Party];
	}

	/*!
	 * Set the value of the Percentages input for this Choreo.
	*(optional, string) Include the percentage of mentions versus total words in the result objects. Valid values: true, false. Defaults to false.
	 */
	-(void)setPercentages:(NSString*)Percentages {
		[super setInput:@"Percentages" toValue:Percentages];
	}

	/*!
	 * Set the value of the Phrase input for this Choreo.
	*(required, string) The phrase to search for.
	 */
	-(void)setPhrase:(NSString*)Phrase {
		[super setInput:@"Phrase" toValue:Phrase];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Output formats inlcude json and xml. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) Limit results to those on or after the given date. Format: YYYY-MM-DD
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) Limit results to members from a particular state. Format: 2-letter state abbreviation (e.g. MD, RI, NY)
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Dates Choreo.
 */
@implementation TMBSunlightLabs_CapitolWords_Dates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CapitolWords.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the popularity of a given phrase in the Congressional Record over time.
 */
@implementation TMBSunlightLabs_CapitolWords_Dates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_CapitolWords_Dates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/CapitolWords/Dates"] autorelease];
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
		TMBSunlightLabs_CapitolWords_Dates_ResultSet *results = [[[TMBSunlightLabs_CapitolWords_Dates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Dates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_CapitolWords_Dates_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_CapitolWords_Dates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetByCoordinates Choreo.
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetByCoordinates_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude coordinate of the area that a legislator represents.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude coordinate of the area that a legislator represents.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
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
 * Results object with appropriate getters for retrieving outputs from the GetByCoordinates Choreo.
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Sunlight Congress API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns all legislators that currently represent an area (district or state) that contains a given Geo point. 
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_Congress_Legislator_GetByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/Congress/Legislator/GetByCoordinates"] autorelease];
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
		TMBSunlightLabs_Congress_Legislator_GetByCoordinates_ResultSet *results = [[[TMBSunlightLabs_Congress_Legislator_GetByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_Congress_Legislator_GetByCoordinates_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_Congress_Legislator_GetByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FullTextSearch Choreo.
 */
@implementation TMBSunlightLabs_CapitolWords_FullTextSearch_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the BioguideID input for this Choreo.
	*(optional, string) Limit results to the member of Congress with the given Bioguide ID. The Bioguide ID of any current or past congressonal member can be found at bioguide.congress.gov.
	 */
	-(void)setBioguideID:(NSString*)BioguideID {
		[super setInput:@"BioguideID" toValue:BioguideID];
	}

	/*!
	 * Set the value of the CRPages input for this Choreo.
	*(optional, string) The pages in the Congressional Record to search.
	 */
	-(void)setCRPages:(NSString*)CRPages {
		[super setInput:@"CRPages" toValue:CRPages];
	}

	/*!
	 * Set the value of the Chamber input for this Choreo.
	*(optional, string) Limit results to a particular chamber. Valid values: house, senate, extensions.
	 */
	-(void)setChamber:(NSString*)Chamber {
		[super setInput:@"Chamber" toValue:Chamber];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) Show results for only the given date. Format: YYYY-MM-DD
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) Limit results to those on or before the given date. Format: YYYY-MM-DD.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to show. 100 shown at a time.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Party input for this Choreo.
	*(optional, string) Limit results to members of congress from a given party. Valid values: R, D, I.
	 */
	-(void)setParty:(NSString*)Party {
		[super setInput:@"Party" toValue:Party];
	}

	/*!
	 * Set the value of the Phrase input for this Choreo.
	*(required, string) A phrase to search the body of each Congressional Record document for. Either Phrase or Title inputs are required.
	 */
	-(void)setPhrase:(NSString*)Phrase {
		[super setInput:@"Phrase" toValue:Phrase];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Output formats inlcude json and xml. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) Limit results to those on or after the given date. Format: YYYY-MM-DD
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) Limit results to members from a particular state. Format: 2-letter state abbreviation (e.g. MD, RI, NY)
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, integer) A phrase to search the title of each Congressional Record document for. Either Phrase or Title are required.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FullTextSearch Choreo.
 */
@implementation TMBSunlightLabs_CapitolWords_FullTextSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CapitolWords.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of Congressional Record documents in which the given phrase appears.
 */
@implementation TMBSunlightLabs_CapitolWords_FullTextSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_CapitolWords_FullTextSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/CapitolWords/FullTextSearch"] autorelease];
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
		TMBSunlightLabs_CapitolWords_FullTextSearch_ResultSet *results = [[[TMBSunlightLabs_CapitolWords_FullTextSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FullTextSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_CapitolWords_FullTextSearch_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_CapitolWords_FullTextSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetDistrictsByCoordinates Choreo.
 */
@implementation TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude coordinate of the area that a legislator represents.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude coordinate of the area that a legislator represents.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
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
 * Results object with appropriate getters for retrieving outputs from the GetDistrictsByCoordinates Choreo.
 */
@implementation TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Sunlight Congress API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the district that a set of latitude/longitude coordinates falls within.
 */
@implementation TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/Congress/District/GetDistrictsByCoordinates"] autorelease];
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
		TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates_ResultSet *results = [[[TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDistrictsByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_Congress_District_GetDistrictsByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetLegislator Choreo.
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetLegislator_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AllLegislators input for this Choreo.
	*(optional, boolean) A boolean flag indicating to search for all legislators even when they are no longer in office.
	 */
	-(void)setAllLegislators:(NSString*)AllLegislators {
		[super setInput:@"AllLegislators" toValue:AllLegislators];
	}

	/*!
	 * Set the value of the BioguideID input for this Choreo.
	*(optional, string) The bioguide_id of the legislator to return.
	 */
	-(void)setBioguideID:(NSString*)BioguideID {
		[super setInput:@"BioguideID" toValue:BioguideID];
	}

	/*!
	 * Set the value of the CRPID input for this Choreo.
	*(optional, string) The crp_id associated with a legislator to return.
	 */
	-(void)setCRPID:(NSString*)CRPID {
		[super setInput:@"CRPID" toValue:CRPID];
	}

	/*!
	 * Set the value of the District input for this Choreo.
	*(optional, integer) Narrows the search result by district number.
	 */
	-(void)setDistrict:(NSString*)District {
		[super setInput:@"District" toValue:District];
	}

	/*!
	 * Set the value of the FECID input for this Choreo.
	*(optional, string) The fec_id associated with the legislator to return.
	 */
	-(void)setFECID:(NSString*)FECID {
		[super setInput:@"FECID" toValue:FECID];
	}

	/*!
	 * Set the value of the FacebookID input for this Choreo.
	*(optional, string) The facebook id of a legislator to return.
	 */
	-(void)setFacebookID:(NSString*)FacebookID {
		[super setInput:@"FacebookID" toValue:FacebookID];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(optional, string) The first name of a legislator to return.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the Gender input for this Choreo.
	*(optional, string) Narrows the search result by gender.
	 */
	-(void)setGender:(NSString*)Gender {
		[super setInput:@"Gender" toValue:Gender];
	}

	/*!
	 * Set the value of the GovTrackID input for this Choreo.
	*(optional, string) The govetrack_id associated with a legistlator to return.
	 */
	-(void)setGovTrackID:(NSString*)GovTrackID {
		[super setInput:@"GovTrackID" toValue:GovTrackID];
	}

	/*!
	 * Set the value of the InOffice input for this Choreo.
	*(optional, boolean) Whether or not the individual is in office currently. Valid values are true or false.
	 */
	-(void)setInOffice:(NSString*)InOffice {
		[super setInput:@"InOffice" toValue:InOffice];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(conditional, string) The last name of the legislator to return.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the Party input for this Choreo.
	*(optional, string) Narrows the search result by party (i.e. "D" or "R").
	 */
	-(void)setParty:(NSString*)Party {
		[super setInput:@"Party" toValue:Party];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) A state abbreviation to narrow the search results.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) The title associated with the individual to return.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the TwitterID input for this Choreo.
	*(optional, string) The twitter id of the legislator to return (note, this can be a twitter screen name).
	 */
	-(void)setTwitterID:(NSString*)TwitterID {
		[super setInput:@"TwitterID" toValue:TwitterID];
	}

	/*!
	 * Set the value of the VoteSmartID input for this Choreo.
	*(optional, integer) The votesmart_id of a legislator to return.
	 */
	-(void)setVoteSmartID:(NSString*)VoteSmartID {
		[super setInput:@"VoteSmartID" toValue:VoteSmartID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLegislator Choreo.
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetLegislator_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Sunlight Congress API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to search for information on an individual legislator.
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetLegislator

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_Congress_Legislator_GetLegislator Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/Congress/Legislator/GetLegislator"] autorelease];
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
		TMBSunlightLabs_Congress_Legislator_GetLegislator_ResultSet *results = [[[TMBSunlightLabs_Congress_Legislator_GetLegislator_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetLegislator Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_Congress_Legislator_GetLegislator_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_Congress_Legislator_GetLegislator_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCommitteesByLegislator Choreo.
 */
@implementation TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the BioGuideID input for this Choreo.
	*(required, string) A legislator's bioguide_id. Note that this can be retrieved by running the Choreos within the Congress.Legislator bundle.
	 */
	-(void)setBioGuideID:(NSString*)BioGuideID {
		[super setInput:@"BioGuideID" toValue:BioGuideID];
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
 * Results object with appropriate getters for retrieving outputs from the GetCommitteesByLegislator Choreo.
 */
@implementation TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Sunlight Congress API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of all committees that a specified member serves on, including subcommittes.
 */
@implementation TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/Congress/Committee/GetCommitteesByLegislator"] autorelease];
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
		TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator_ResultSet *results = [[[TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCommitteesByLegislator Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_Congress_Committee_GetCommitteesByLegislator_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetList Choreo.
 */
@implementation TMBSunlightLabs_Congress_Committee_GetList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Chamber input for this Choreo.
	*(required, string) A chamber to list committees for. Valid values are: House, Senate, or Joint.
	 */
	-(void)setChamber:(NSString*)Chamber {
		[super setInput:@"Chamber" toValue:Chamber];
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
 * Results object with appropriate getters for retrieving outputs from the GetList Choreo.
 */
@implementation TMBSunlightLabs_Congress_Committee_GetList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Sunlight Congress API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of all committees for a given chamber along with their subcommittees.
 */
@implementation TMBSunlightLabs_Congress_Committee_GetList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_Congress_Committee_GetList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/Congress/Committee/GetList"] autorelease];
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
		TMBSunlightLabs_Congress_Committee_GetList_ResultSet *results = [[[TMBSunlightLabs_Congress_Committee_GetList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_Congress_Committee_GetList_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_Congress_Committee_GetList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Phrases Choreo.
 */
@implementation TMBSunlightLabs_CapitolWords_Phrases_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Chamber input for this Choreo.
	*(optional, string) Limit results to a particular chamber. Valid values: house, senate, extensions.
	 */
	-(void)setChamber:(NSString*)Chamber {
		[super setInput:@"Chamber" toValue:Chamber];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) Show results for only the given date. Format: YYYY-MM-DD
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) Limit results to those on or before the given date. Format: YYYY-MM-DD.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the EntityType input for this Choreo.
	*(required, string) The entity type to get top phrases for. Acceptable values: date, month, state, legislator.
	 */
	-(void)setEntityType:(NSString*)EntityType {
		[super setInput:@"EntityType" toValue:EntityType];
	}

	/*!
	 * Set the value of the EntityValue input for this Choreo.
	*(required, string) The value of the entity to get top phrases for. Acceptable formats as follows for each EntityType: (date) 2011-11-09, (month) 201111, (state) NY. For the legislator EntityType, enter Bioguide ID here.
	 */
	-(void)setEntityValue:(NSString*)EntityValue {
		[super setInput:@"EntityValue" toValue:EntityValue];
	}

	/*!
	 * Set the value of the Length input for this Choreo.
	*(optional, integer) The length of the phrase, in words, to search for (up to 5).
	 */
	-(void)setLength:(NSString*)Length {
		[super setInput:@"Length" toValue:Length];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page of results to show. 100 results are shown at a time. To see more results use the page parameter.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Party input for this Choreo.
	*(optional, string) Limit results to members of congress from a given party. Valid values: R, D, I.
	 */
	-(void)setParty:(NSString*)Party {
		[super setInput:@"Party" toValue:Party];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Output formats inlcude json and xml. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) The metric and direction to sort by. Acceptable values: tfidf asc (default), tfidf desc, count asc, count desc.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) Limit results to those on or after the given date. Format: YYYY-MM-DD
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) Limit results to members from a particular state. Format: 2-letter state abbreviation (e.g. MD, RI, NY)
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Phrases Choreo.
 */
@implementation TMBSunlightLabs_CapitolWords_Phrases_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CapitolWords.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of the top phrases in the Congressional Record, which are searchable by day, month, state, or legislator.
 */
@implementation TMBSunlightLabs_CapitolWords_Phrases

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_CapitolWords_Phrases Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/CapitolWords/Phrases"] autorelease];
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
		TMBSunlightLabs_CapitolWords_Phrases_ResultSet *results = [[[TMBSunlightLabs_CapitolWords_Phrases_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Phrases Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_CapitolWords_Phrases_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_CapitolWords_Phrases_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetDistrictsByZip Choreo.
 */
@implementation TMBSunlightLabs_Congress_District_GetDistrictsByZip_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
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
	 * Set the value of the Zip input for this Choreo.
	*(required, string) The zip code for the districts to return.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDistrictsByZip Choreo.
 */
@implementation TMBSunlightLabs_Congress_District_GetDistrictsByZip_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Sunlight Congress API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns all districts that overlap the area for a given zip code.
 */
@implementation TMBSunlightLabs_Congress_District_GetDistrictsByZip

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_Congress_District_GetDistrictsByZip Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/Congress/District/GetDistrictsByZip"] autorelease];
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
		TMBSunlightLabs_Congress_District_GetDistrictsByZip_ResultSet *results = [[[TMBSunlightLabs_Congress_District_GetDistrictsByZip_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDistrictsByZip Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_Congress_District_GetDistrictsByZip_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_Congress_District_GetDistrictsByZip_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetList Choreo.
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetList_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the AllLegislators input for this Choreo.
	*(optional, boolean) A boolean flag indicating to search for all legislators even when they are no longer in office.
	 */
	-(void)setAllLegislators:(NSString*)AllLegislators {
		[super setInput:@"AllLegislators" toValue:AllLegislators];
	}

	/*!
	 * Set the value of the BioguideID input for this Choreo.
	*(optional, string) The bioguide_id of the legislator to return.
	 */
	-(void)setBioguideID:(NSString*)BioguideID {
		[super setInput:@"BioguideID" toValue:BioguideID];
	}

	/*!
	 * Set the value of the CRPID input for this Choreo.
	*(optional, string) The crp_id associated with a legislator to return.
	 */
	-(void)setCRPID:(NSString*)CRPID {
		[super setInput:@"CRPID" toValue:CRPID];
	}

	/*!
	 * Set the value of the District input for this Choreo.
	*(optional, integer) Narrows the search result by district number.
	 */
	-(void)setDistrict:(NSString*)District {
		[super setInput:@"District" toValue:District];
	}

	/*!
	 * Set the value of the FECID input for this Choreo.
	*(optional, string) The fec_id associated with the legislator to return.
	 */
	-(void)setFECID:(NSString*)FECID {
		[super setInput:@"FECID" toValue:FECID];
	}

	/*!
	 * Set the value of the FacebookID input for this Choreo.
	*(optional, string) The facebook id of a legislator to return.
	 */
	-(void)setFacebookID:(NSString*)FacebookID {
		[super setInput:@"FacebookID" toValue:FacebookID];
	}

	/*!
	 * Set the value of the FirstName input for this Choreo.
	*(optional, string) The first name of a legislator to return.
	 */
	-(void)setFirstName:(NSString*)FirstName {
		[super setInput:@"FirstName" toValue:FirstName];
	}

	/*!
	 * Set the value of the Gender input for this Choreo.
	*(optional, string) Narrows the search result by gender.
	 */
	-(void)setGender:(NSString*)Gender {
		[super setInput:@"Gender" toValue:Gender];
	}

	/*!
	 * Set the value of the GovTrackID input for this Choreo.
	*(optional, string) The govetrack_id associated with a legistlator to return.
	 */
	-(void)setGovTrackID:(NSString*)GovTrackID {
		[super setInput:@"GovTrackID" toValue:GovTrackID];
	}

	/*!
	 * Set the value of the InOffice input for this Choreo.
	*(optional, boolean) Whether or not the individual is in office currently. Valid values are true or false.
	 */
	-(void)setInOffice:(NSString*)InOffice {
		[super setInput:@"InOffice" toValue:InOffice];
	}

	/*!
	 * Set the value of the LastName input for this Choreo.
	*(optional, string) The last name of the legislator to return.
	 */
	-(void)setLastName:(NSString*)LastName {
		[super setInput:@"LastName" toValue:LastName];
	}

	/*!
	 * Set the value of the Party input for this Choreo.
	*(optional, string) Narrows the search result by party (i.e. "D" or "R").
	 */
	-(void)setParty:(NSString*)Party {
		[super setInput:@"Party" toValue:Party];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) A state abbreviation to narrow the search results.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the Title input for this Choreo.
	*(optional, string) The title associated with the individual to return.
	 */
	-(void)setTitle:(NSString*)Title {
		[super setInput:@"Title" toValue:Title];
	}

	/*!
	 * Set the value of the TwitterID input for this Choreo.
	*(optional, string) The twitter id of the legislator to return (note, this can be a twitter screen name).
	 */
	-(void)setTwitterID:(NSString*)TwitterID {
		[super setInput:@"TwitterID" toValue:TwitterID];
	}

	/*!
	 * Set the value of the VoteSmartID input for this Choreo.
	*(optional, integer) The votesmart_id of a legislator to return.
	 */
	-(void)setVoteSmartID:(NSString*)VoteSmartID {
		[super setInput:@"VoteSmartID" toValue:VoteSmartID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetList Choreo.
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetList_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Sunlight Congress API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of legislators that meet a specified search criteria.
 */
@implementation TMBSunlightLabs_Congress_Legislator_GetList

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_Congress_Legislator_GetList Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/Congress/Legislator/GetList"] autorelease];
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
		TMBSunlightLabs_Congress_Legislator_GetList_ResultSet *results = [[[TMBSunlightLabs_Congress_Legislator_GetList_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetList Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_Congress_Legislator_GetList_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_Congress_Legislator_GetList_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCommittee Choreo.
 */
@implementation TMBSunlightLabs_Congress_Committee_GetCommittee_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The id of a committee to return.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
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
 * Results object with appropriate getters for retrieving outputs from the GetCommittee Choreo.
 */
@implementation TMBSunlightLabs_Congress_Committee_GetCommittee_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from the Sunlight Congress API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns details for a committee by id.
 */
@implementation TMBSunlightLabs_Congress_Committee_GetCommittee

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_Congress_Committee_GetCommittee Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/Congress/Committee/GetCommittee"] autorelease];
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
		TMBSunlightLabs_Congress_Committee_GetCommittee_ResultSet *results = [[[TMBSunlightLabs_Congress_Committee_GetCommittee_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCommittee Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_Congress_Committee_GetCommittee_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_Congress_Committee_GetCommittee_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the TopPhraseSources Choreo.
 */
@implementation TMBSunlightLabs_CapitolWords_TopPhraseSources_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) The API Key provided by Sunlight Labs.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the Chamber input for this Choreo.
	*(optional, string) Limit results to a particular chamber. Valid values: house, senate, extensions.
	 */
	-(void)setChamber:(NSString*)Chamber {
		[super setInput:@"Chamber" toValue:Chamber];
	}

	/*!
	 * Set the value of the Date input for this Choreo.
	*(optional, string) Show results for only the given date. Format: YYYY-MM-DD
	 */
	-(void)setDate:(NSString*)Date {
		[super setInput:@"Date" toValue:Date];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, string) Limit results to those on or before the given date. Format: YYYY-MM-DD.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Entity input for this Choreo.
	*(required, string) The type of entity for which to return top results. Acceptable inputs: legislator, state, party, bioguide_id, volume, chamber. So 'legislator' returns the top legislators who say the given phrase.
	 */
	-(void)setEntity:(NSString*)Entity {
		[super setInput:@"Entity" toValue:Entity];
	}

	/*!
	 * Set the value of the MinCount input for this Choreo.
	*(optional, integer) Only returns results where mentions are at or above the supplied threshold.
	 */
	-(void)setMinCount:(NSString*)MinCount {
		[super setInput:@"MinCount" toValue:MinCount];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) The page number to return.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Party input for this Choreo.
	*(optional, string) Limit results to members of congress from a given party. Valid values: R, D, I.
	 */
	-(void)setParty:(NSString*)Party {
		[super setInput:@"Party" toValue:Party];
	}

	/*!
	 * Set the value of the PerPage input for this Choreo.
	*(optional, integer) The number of results to return per page.
	 */
	-(void)setPerPage:(NSString*)PerPage {
		[super setInput:@"PerPage" toValue:PerPage];
	}

	/*!
	 * Set the value of the Phrase input for this Choreo.
	*(required, string) The phrase to search for.
	 */
	-(void)setPhrase:(NSString*)Phrase {
		[super setInput:@"Phrase" toValue:Phrase];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Output formats inlcude json and xml. Defaults to json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) The metric on which to sort top results. Acceptable inputs: tfidf or count. Defaults to tfidf.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, string) Limit results to those on or after the given date. Format: YYYY-MM-DD
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) Limit results to members from a particular state. Format: 2-letter state abbreviation (e.g. MD, RI, NY)
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the TopPhraseSources Choreo.
 */
@implementation TMBSunlightLabs_CapitolWords_TopPhraseSources_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from CapitolWords.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the top sources of a given phrase, which can be sorted either by legislator, state, party, bioguide ID, volume, or chambers.
 */
@implementation TMBSunlightLabs_CapitolWords_TopPhraseSources

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBSunlightLabs_CapitolWords_TopPhraseSources Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/SunlightLabs/CapitolWords/TopPhraseSources"] autorelease];
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
		TMBSunlightLabs_CapitolWords_TopPhraseSources_ResultSet *results = [[[TMBSunlightLabs_CapitolWords_TopPhraseSources_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the TopPhraseSources Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBSunlightLabs_CapitolWords_TopPhraseSources_Inputs*)newInputSet {
		return [[[TMBSunlightLabs_CapitolWords_TopPhraseSources_Inputs alloc] init] autorelease];
	}
@end
	