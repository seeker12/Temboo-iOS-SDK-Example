/*!
 * @TMBEnviroFacts.m
 *
 * Execute Choreographies from the Temboo EnviroFacts bundle.
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

#import "TMBEnviroFacts.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the HourlyUVByCity Choreo.
 */
@implementation TMBEnviroFacts_UVForecast_HourlyUVByCity_Inputs

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) A valid City Name in the United States.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Results can be retrieved in either JSON or XML. Defaults to XML.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) The abbreviation of the state that the city resides in.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HourlyUVByCity Choreo.
 */
@implementation TMBEnviroFacts_UVForecast_HourlyUVByCity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves EPA hourly Ultraviolet (UV) Index readings in a given city. 
 */
@implementation TMBEnviroFacts_UVForecast_HourlyUVByCity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBEnviroFacts_UVForecast_HourlyUVByCity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/EnviroFacts/UVForecast/HourlyUVByCity"] autorelease];
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
		TMBEnviroFacts_UVForecast_HourlyUVByCity_ResultSet *results = [[[TMBEnviroFacts_UVForecast_HourlyUVByCity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the HourlyUVByCity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBEnviroFacts_UVForecast_HourlyUVByCity_Inputs*)newInputSet {
		return [[[TMBEnviroFacts_UVForecast_HourlyUVByCity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the HourlyUVByZipCode Choreo.
 */
@implementation TMBEnviroFacts_UVForecast_HourlyUVByZipCode_Inputs

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Results can be retrieved in either JSON or XML. Defaults to XML.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(required, integer) A valid United States Postal Service (USPS) ZIP Code or Postal Code.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HourlyUVByZipCode Choreo.
 */
@implementation TMBEnviroFacts_UVForecast_HourlyUVByZipCode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves EPA hourly Ultraviolet (UV) Index readings in a given zip code.
 */
@implementation TMBEnviroFacts_UVForecast_HourlyUVByZipCode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBEnviroFacts_UVForecast_HourlyUVByZipCode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/EnviroFacts/UVForecast/HourlyUVByZipCode"] autorelease];
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
		TMBEnviroFacts_UVForecast_HourlyUVByZipCode_ResultSet *results = [[[TMBEnviroFacts_UVForecast_HourlyUVByZipCode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the HourlyUVByZipCode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBEnviroFacts_UVForecast_HourlyUVByZipCode_Inputs*)newInputSet {
		return [[[TMBEnviroFacts_UVForecast_HourlyUVByZipCode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AdvancedSearch Choreo.
 */
@implementation TMBEnviroFacts_DesignForEnvironment_AdvancedSearch_Inputs

	/*!
	 * Set the value of the Operator input for this Choreo.
	*(optional, string) Default output is "=" when SearchType=sector_id or product_id, and "CONTAINING" when SearchType=partner, product, or sector. Other possible values are: "<", " >", "!=", and "BEGINNING".
	 */
	-(void)setOperator:(NSString*)Operator {
		[super setInput:@"Operator" toValue:Operator];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(conditional, string) Response can be returned in JSON or XML. Defaults to XML.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RowEnd input for this Choreo.
	*(optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
	 */
	-(void)setRowEnd:(NSString*)RowEnd {
		[super setInput:@"RowEnd" toValue:RowEnd];
	}

	/*!
	 * Set the value of the RowStart input for this Choreo.
	*(optional, integer) Indicates the starting row number of the results displayed. Default is 0.
	 */
	-(void)setRowStart:(NSString*)RowStart {
		[super setInput:@"RowStart" toValue:RowStart];
	}

	/*!
	 * Set the value of the SearchType input for this Choreo.
	*(conditional, string) Indicate either "sector", "sector_id", "partner", "product", or "product_id." Used together with SearchValue and the optional Operator input to formulate a specific search of the DfE database.
	 */
	-(void)setSearchType:(NSString*)SearchType {
		[super setInput:@"SearchType" toValue:SearchType];
	}

	/*!
	 * Set the value of the SearchValue input for this Choreo.
	*(conditional, integer) Indicate the product, code, or sector to search for. Used together with SearchType and the optional Operator input to create a customized search.
	 */
	-(void)setSearchValue:(NSString*)SearchValue {
		[super setInput:@"SearchValue" toValue:SearchValue];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdvancedSearch Choreo.
 */
@implementation TMBEnviroFacts_DesignForEnvironment_AdvancedSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Count" output from an execution of this Choreo.
	 * @return - NSString* The total number of records returned for any given search.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCount {
		return [super getOutputByName:@"Count"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Performs a detailed search of the EPA Design for the Environment database.
 */
@implementation TMBEnviroFacts_DesignForEnvironment_AdvancedSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBEnviroFacts_DesignForEnvironment_AdvancedSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/EnviroFacts/DesignForEnvironment/AdvancedSearch"] autorelease];
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
		TMBEnviroFacts_DesignForEnvironment_AdvancedSearch_ResultSet *results = [[[TMBEnviroFacts_DesignForEnvironment_AdvancedSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AdvancedSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBEnviroFacts_DesignForEnvironment_AdvancedSearch_Inputs*)newInputSet {
		return [[[TMBEnviroFacts_DesignForEnvironment_AdvancedSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DailyUVByCity Choreo.
 */
@implementation TMBEnviroFacts_UVForecast_DailyUVByCity_Inputs

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) A valid City Name in the United States.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Results can be retrieved in either JSON or XML. Defaults to XML.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) The abbreviation of the state that the city resides in.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DailyUVByCity Choreo.
 */
@implementation TMBEnviroFacts_UVForecast_DailyUVByCity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves EPA daily Ultraviolet (UV) Index readings in a given city.
 */
@implementation TMBEnviroFacts_UVForecast_DailyUVByCity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBEnviroFacts_UVForecast_DailyUVByCity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/EnviroFacts/UVForecast/DailyUVByCity"] autorelease];
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
		TMBEnviroFacts_UVForecast_DailyUVByCity_ResultSet *results = [[[TMBEnviroFacts_UVForecast_DailyUVByCity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DailyUVByCity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBEnviroFacts_UVForecast_DailyUVByCity_Inputs*)newInputSet {
		return [[[TMBEnviroFacts_UVForecast_DailyUVByCity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByProduct Choreo.
 */
@implementation TMBEnviroFacts_DesignForEnvironment_SearchByProduct_Inputs

	/*!
	 * Set the value of the CompanyKeyword input for this Choreo.
	*(conditional, string) A keyword in the name of the company to search for. If a specific ProductName or ProductID is specified, this input is ignored.
	 */
	-(void)setCompanyKeyword:(NSString*)CompanyKeyword {
		[super setInput:@"CompanyKeyword" toValue:CompanyKeyword];
	}

	/*!
	 * Set the value of the Operator input for this Choreo.
	*(optional, string) Default output is "CONTAINING" and does not require an operator, but users can enter "<", " >", "!=", "BEGINNING", "=" for more customized searches.
	 */
	-(void)setOperator:(NSString*)Operator {
		[super setInput:@"Operator" toValue:Operator];
	}

	/*!
	 * Set the value of the ProductID input for this Choreo.
	*(conditional, integer) A number representing the unique identifier for a product in the EnviroFacts database.
	 */
	-(void)setProductID:(NSString*)ProductID {
		[super setInput:@"ProductID" toValue:ProductID];
	}

	/*!
	 * Set the value of the ProductKeyword input for this Choreo.
	*(conditional, string) A keyword in the name of the product to search for. If a specific ProductID is specified, this input is ignored.
	 */
	-(void)setProductKeyword:(NSString*)ProductKeyword {
		[super setInput:@"ProductKeyword" toValue:ProductKeyword];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(conditional, string) Response can be returned in JSON or XML. Defaults to XML.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RowEnd input for this Choreo.
	*(optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
	 */
	-(void)setRowEnd:(NSString*)RowEnd {
		[super setInput:@"RowEnd" toValue:RowEnd];
	}

	/*!
	 * Set the value of the RowStart input for this Choreo.
	*(optional, integer) Indicates the starting row number of the results displayed. Default is 0.
	 */
	-(void)setRowStart:(NSString*)RowStart {
		[super setInput:@"RowStart" toValue:RowStart];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByProduct Choreo.
 */
@implementation TMBEnviroFacts_DesignForEnvironment_SearchByProduct_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Count" output from an execution of this Choreo.
	 * @return - NSString* The total number of records returned for any given search.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCount {
		return [super getOutputByName:@"Count"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches for products in the EPA Design for the Environment database.
 */
@implementation TMBEnviroFacts_DesignForEnvironment_SearchByProduct

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBEnviroFacts_DesignForEnvironment_SearchByProduct Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/EnviroFacts/DesignForEnvironment/SearchByProduct"] autorelease];
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
		TMBEnviroFacts_DesignForEnvironment_SearchByProduct_ResultSet *results = [[[TMBEnviroFacts_DesignForEnvironment_SearchByProduct_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByProduct Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBEnviroFacts_DesignForEnvironment_SearchByProduct_Inputs*)newInputSet {
		return [[[TMBEnviroFacts_DesignForEnvironment_SearchByProduct_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DailyUVByZipCode Choreo.
 */
@implementation TMBEnviroFacts_UVForecast_DailyUVByZipCode_Inputs

	/*!
	 * Set the value of the ResponseType input for this Choreo.
	*(optional, string) Results can be retrieved in either JSON or XML. Defaults to XML.
	 */
	-(void)setResponseType:(NSString*)ResponseType {
		[super setInput:@"ResponseType" toValue:ResponseType];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(required, integer) A valid United States Postal Service (USPS) ZIP Code or Postal Code.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DailyUVByZipCode Choreo.
 */
@implementation TMBEnviroFacts_UVForecast_DailyUVByZipCode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves EPA daily Ultraviolet (UV) Index readings in a given zip code. 
 */
@implementation TMBEnviroFacts_UVForecast_DailyUVByZipCode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBEnviroFacts_UVForecast_DailyUVByZipCode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/EnviroFacts/UVForecast/DailyUVByZipCode"] autorelease];
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
		TMBEnviroFacts_UVForecast_DailyUVByZipCode_ResultSet *results = [[[TMBEnviroFacts_UVForecast_DailyUVByZipCode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DailyUVByZipCode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBEnviroFacts_UVForecast_DailyUVByZipCode_Inputs*)newInputSet {
		return [[[TMBEnviroFacts_UVForecast_DailyUVByZipCode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ChemicalSearch Choreo.
 */
@implementation TMBEnviroFacts_Toxins_ChemicalSearch_Inputs

	/*!
	 * Set the value of the ChemicalID input for this Choreo.
	*(required, string) EPA ID number of a chemical. Chemical IDs from a given facility can be found by first running the ChemActivityByFacility or ToxinReleaseByFacility Choreos.
	 */
	-(void)setChemicalID:(NSString*)ChemicalID {
		[super setInput:@"ChemicalID" toValue:ChemicalID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ChemicalSearch Choreo.
 */
@implementation TMBEnviroFacts_Toxins_ChemicalSearch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about specific chemicals released by EPA-regulated facilities.
 */
@implementation TMBEnviroFacts_Toxins_ChemicalSearch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBEnviroFacts_Toxins_ChemicalSearch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/EnviroFacts/Toxins/ChemicalSearch"] autorelease];
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
		TMBEnviroFacts_Toxins_ChemicalSearch_ResultSet *results = [[[TMBEnviroFacts_Toxins_ChemicalSearch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ChemicalSearch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBEnviroFacts_Toxins_ChemicalSearch_Inputs*)newInputSet {
		return [[[TMBEnviroFacts_Toxins_ChemicalSearch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ChemActivityByFacility Choreo.
 */
@implementation TMBEnviroFacts_Toxins_ChemActivityByFacility_Inputs

	/*!
	 * Set the value of the FacilityID input for this Choreo.
	*(required, string) FacilityID for which a toxin release report is to be generated. Found by first running the FacilitiesSearch Choreo.
	 */
	-(void)setFacilityID:(NSString*)FacilityID {
		[super setInput:@"FacilityID" toValue:FacilityID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify the desired response format. Valid formats are: xml (the default) and csv.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RowEnd input for this Choreo.
	*(optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
	 */
	-(void)setRowEnd:(NSString*)RowEnd {
		[super setInput:@"RowEnd" toValue:RowEnd];
	}

	/*!
	 * Set the value of the RowStart input for this Choreo.
	*(optional, integer) Indicates the starting row number of the results displayed. Default is 0.
	 */
	-(void)setRowStart:(NSString*)RowStart {
		[super setInput:@"RowStart" toValue:RowStart];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ChemActivityByFacility Choreo.
 */
@implementation TMBEnviroFacts_Toxins_ChemActivityByFacility_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of the type of manufacturing activity of toxic chemicals at any EPA-regulated facility.
 */
@implementation TMBEnviroFacts_Toxins_ChemActivityByFacility

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBEnviroFacts_Toxins_ChemActivityByFacility Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/EnviroFacts/Toxins/ChemActivityByFacility"] autorelease];
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
		TMBEnviroFacts_Toxins_ChemActivityByFacility_ResultSet *results = [[[TMBEnviroFacts_Toxins_ChemActivityByFacility_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ChemActivityByFacility Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBEnviroFacts_Toxins_ChemActivityByFacility_Inputs*)newInputSet {
		return [[[TMBEnviroFacts_Toxins_ChemActivityByFacility_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FacilitiesSearchByZip Choreo.
 */
@implementation TMBEnviroFacts_Toxins_FacilitiesSearchByZip_Inputs

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify the desired response format. Valid formats are: xml (the default) and csv.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RowEnd input for this Choreo.
	*(optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
	 */
	-(void)setRowEnd:(NSString*)RowEnd {
		[super setInput:@"RowEnd" toValue:RowEnd];
	}

	/*!
	 * Set the value of the RowStart input for this Choreo.
	*(optional, integer) Indicates the starting row number of the results displayed. Default is 0.
	 */
	-(void)setRowStart:(NSString*)RowStart {
		[super setInput:@"RowStart" toValue:RowStart];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(required, string) Zip code to be searched.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FacilitiesSearchByZip Choreo.
 */
@implementation TMBEnviroFacts_Toxins_FacilitiesSearchByZip_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of EPA-regulated facilities in the Toxins Release Inventory (TRI) database within a given area code.
 */
@implementation TMBEnviroFacts_Toxins_FacilitiesSearchByZip

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBEnviroFacts_Toxins_FacilitiesSearchByZip Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/EnviroFacts/Toxins/FacilitiesSearchByZip"] autorelease];
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
		TMBEnviroFacts_Toxins_FacilitiesSearchByZip_ResultSet *results = [[[TMBEnviroFacts_Toxins_FacilitiesSearchByZip_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FacilitiesSearchByZip Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBEnviroFacts_Toxins_FacilitiesSearchByZip_Inputs*)newInputSet {
		return [[[TMBEnviroFacts_Toxins_FacilitiesSearchByZip_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchBySector Choreo.
 */
@implementation TMBEnviroFacts_DesignForEnvironment_SearchBySector_Inputs

	/*!
	 * Set the value of the Category input for this Choreo.
	*(conditional, string) Specify either Industrial or Consumer to retrieve a list of products that fall into either category. If a specific SectorKeyword or SectorID is given, this input is ignored.
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the Operator input for this Choreo.
	*(optional, string) Default output is "CONTAINING" and does not require an operator, but users can enter "<", " >", "!=", "BEGINNING", "=" for more customized searches.
	 */
	-(void)setOperator:(NSString*)Operator {
		[super setInput:@"Operator" toValue:Operator];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(conditional, string) Response can be returned in JSON or XML. Defaults to XML.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RowEnd input for this Choreo.
	*(optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
	 */
	-(void)setRowEnd:(NSString*)RowEnd {
		[super setInput:@"RowEnd" toValue:RowEnd];
	}

	/*!
	 * Set the value of the RowStart input for this Choreo.
	*(optional, integer) Indicates the starting row number of the results displayed. Default is 0.
	 */
	-(void)setRowStart:(NSString*)RowStart {
		[super setInput:@"RowStart" toValue:RowStart];
	}

	/*!
	 * Set the value of the SectorID input for this Choreo.
	*(conditional, integer) A number representing the unique identifier for the product's sector in the EnviroFacts database.
	 */
	-(void)setSectorID:(NSString*)SectorID {
		[super setInput:@"SectorID" toValue:SectorID];
	}

	/*!
	 * Set the value of the SectorKeyword input for this Choreo.
	*(conditional, string) A keyword in the name of the sector to search for. If a specific SectorID is given, this input is ignored.
	 */
	-(void)setSectorKeyword:(NSString*)SectorKeyword {
		[super setInput:@"SectorKeyword" toValue:SectorKeyword];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchBySector Choreo.
 */
@implementation TMBEnviroFacts_DesignForEnvironment_SearchBySector_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Count" output from an execution of this Choreo.
	 * @return - NSString* The total number of records returned for any given search.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCount {
		return [super getOutputByName:@"Count"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Looks up products by sector in the EPA Design for the Environment database
 */
@implementation TMBEnviroFacts_DesignForEnvironment_SearchBySector

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBEnviroFacts_DesignForEnvironment_SearchBySector Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/EnviroFacts/DesignForEnvironment/SearchBySector"] autorelease];
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
		TMBEnviroFacts_DesignForEnvironment_SearchBySector_ResultSet *results = [[[TMBEnviroFacts_DesignForEnvironment_SearchBySector_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchBySector Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBEnviroFacts_DesignForEnvironment_SearchBySector_Inputs*)newInputSet {
		return [[[TMBEnviroFacts_DesignForEnvironment_SearchBySector_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ToxinReleaseByFacility Choreo.
 */
@implementation TMBEnviroFacts_Toxins_ToxinReleaseByFacility_Inputs

	/*!
	 * Set the value of the FacilityID input for this Choreo.
	*(required, string) FacilityID for which a toxin release report is to be generated. Found by first running the FacilitiesSearch Choreo.
	 */
	-(void)setFacilityID:(NSString*)FacilityID {
		[super setInput:@"FacilityID" toValue:FacilityID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify the desired response format. Valid formats are: xml (the default) and csv.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the RowEnd input for this Choreo.
	*(optional, integer) Number 1 or greater indicates the ending row number of the results displayed. Default is 4999 when RowStart is 0. Up to 5000 entries are returned in the output.
	 */
	-(void)setRowEnd:(NSString*)RowEnd {
		[super setInput:@"RowEnd" toValue:RowEnd];
	}

	/*!
	 * Set the value of the RowStart input for this Choreo.
	*(optional, integer) Indicates the starting row number of the results displayed. Default is 0.
	 */
	-(void)setRowStart:(NSString*)RowStart {
		[super setInput:@"RowStart" toValue:RowStart];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ToxinReleaseByFacility Choreo.
 */
@implementation TMBEnviroFacts_Toxins_ToxinReleaseByFacility_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of the annual release quantities of toxic chemicals at EPA-regulated facilities into air, water, on-site land, and underground wells.
 */
@implementation TMBEnviroFacts_Toxins_ToxinReleaseByFacility

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBEnviroFacts_Toxins_ToxinReleaseByFacility Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/EnviroFacts/Toxins/ToxinReleaseByFacility"] autorelease];
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
		TMBEnviroFacts_Toxins_ToxinReleaseByFacility_ResultSet *results = [[[TMBEnviroFacts_Toxins_ToxinReleaseByFacility_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ToxinReleaseByFacility Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBEnviroFacts_Toxins_ToxinReleaseByFacility_Inputs*)newInputSet {
		return [[[TMBEnviroFacts_Toxins_ToxinReleaseByFacility_Inputs alloc] init] autorelease];
	}
@end
	