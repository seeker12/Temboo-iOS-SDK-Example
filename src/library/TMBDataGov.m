/*!
 * @TMBDataGov.m
 *
 * Execute Choreographies from the Temboo DataGov bundle.
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

#import "TMBDataGov.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetDemographicsForNation Choreo.
 */
@implementation TMBDataGov_GetDemographicsForNation_Inputs

	/*!
	 * Set the value of the DataVersion input for this Choreo.
	*(optional, string) Specify the census data version to search, such as "jun2011" (the default).
	 */
	-(void)setDataVersion:(NSString*)DataVersion {
		[super setInput:@"DataVersion" toValue:DataVersion];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDemographicsForNation Choreo.
 */
@implementation TMBDataGov_GetDemographicsForNation_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from the API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve demographic information for the entire nation.
 */
@implementation TMBDataGov_GetDemographicsForNation

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDataGov_GetDemographicsForNation Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DataGov/GetDemographicsForNation"] autorelease];
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
		TMBDataGov_GetDemographicsForNation_ResultSet *results = [[[TMBDataGov_GetDemographicsForNation_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDemographicsForNation Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDataGov_GetDemographicsForNation_Inputs*)newInputSet {
		return [[[TMBDataGov_GetDemographicsForNation_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetDemographicsByTypeAndID Choreo.
 */
@implementation TMBDataGov_GetDemographicsByTypeAndID_Inputs

	/*!
	 * Set the value of the DataVersion input for this Choreo.
	*(optional, string) Specify the census data version to search, such as "jun2011" (the default).
	 */
	-(void)setDataVersion:(NSString*)DataVersion {
		[super setInput:@"DataVersion" toValue:DataVersion];
	}

	/*!
	 * Set the value of the GeographyIDs input for this Choreo.
	*(conditional, integer) The geography IDs to search for. Separate multiple IDs by commas; a maximum of 10 IDs are allowed.
	 */
	-(void)setGeographyIDs:(NSString*)GeographyIDs {
		[super setInput:@"GeographyIDs" toValue:GeographyIDs];
	}

	/*!
	 * Set the value of the GeographyType input for this Choreo.
	*(required, string) Specify one of the following geography type values: "state", "county", "tract", "block", "congdistrict", "statehouse", "statesenate", "censusplace", or "msa" (metropolitan statistical area).
	 */
	-(void)setGeographyType:(NSString*)GeographyType {
		[super setInput:@"GeographyType" toValue:GeographyType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDemographicsByTypeAndID Choreo.
 */
@implementation TMBDataGov_GetDemographicsByTypeAndID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from the API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve demographic data for a specified geography type and geography ID.
 */
@implementation TMBDataGov_GetDemographicsByTypeAndID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDataGov_GetDemographicsByTypeAndID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DataGov/GetDemographicsByTypeAndID"] autorelease];
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
		TMBDataGov_GetDemographicsByTypeAndID_ResultSet *results = [[[TMBDataGov_GetDemographicsByTypeAndID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDemographicsByTypeAndID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDataGov_GetDemographicsByTypeAndID_Inputs*)newInputSet {
		return [[[TMBDataGov_GetDemographicsByTypeAndID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCensusIDByCoordinates Choreo.
 */
@implementation TMBDataGov_GetCensusIDByCoordinates_Inputs

	/*!
	 * Set the value of the GeographyType input for this Choreo.
	*(required, string) Specify one of the following geography type values: "state", "county", "tract", "block", "congdistrict", "statehouse", "statesenate", "censusplace", or "msa" (metropolitan statistical area).
	 */
	-(void)setGeographyType:(NSString*)GeographyType {
		[super setInput:@"GeographyType" toValue:GeographyType];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) Specify a latitude to search for, such as "41.486857".
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) Specify a longitude to search for, such as "-71.294392".
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCensusIDByCoordinates Choreo.
 */
@implementation TMBDataGov_GetCensusIDByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "CensusID" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ID retrieved from the API call.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCensusID {
		return [super getOutputByName:@"CensusID"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from the API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve the U.S. census block geography ID for a specified latitude and longitude. 
 */
@implementation TMBDataGov_GetCensusIDByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDataGov_GetCensusIDByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DataGov/GetCensusIDByCoordinates"] autorelease];
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
		TMBDataGov_GetCensusIDByCoordinates_ResultSet *results = [[[TMBDataGov_GetCensusIDByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCensusIDByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDataGov_GetCensusIDByCoordinates_Inputs*)newInputSet {
		return [[[TMBDataGov_GetCensusIDByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCensusIDByTypeAndName Choreo.
 */
@implementation TMBDataGov_GetCensusIDByTypeAndName_Inputs

	/*!
	 * Set the value of the GeographyName input for this Choreo.
	*(required, string) Specify the geography name for the correspnding type, with at least three leading characters. For example, for the geography type "state" you could enter "ore" for Oregon.
	 */
	-(void)setGeographyName:(NSString*)GeographyName {
		[super setInput:@"GeographyName" toValue:GeographyName];
	}

	/*!
	 * Set the value of the GeographyType input for this Choreo.
	*(required, string) Specify one of the following geography type values: "state", "county", "tract", "block", "congdistrict", "statehouse", "statesenate", "censusplace", or "msa" (metropolitan statistical area).
	 */
	-(void)setGeographyType:(NSString*)GeographyType {
		[super setInput:@"GeographyType" toValue:GeographyType];
	}

	/*!
	 * Set the value of the MaxResults input for this Choreo.
	*(required, integer) Specify the maximum number of results to return. Defaults to 50.
	 */
	-(void)setMaxResults:(NSString*)MaxResults {
		[super setInput:@"MaxResults" toValue:MaxResults];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCensusIDByTypeAndName Choreo.
 */
@implementation TMBDataGov_GetCensusIDByTypeAndName_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "CensusID" output from an execution of this Choreo.
	 * @return - NSString* (integer) The ID retrieved from the API call.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCensusID {
		return [super getOutputByName:@"CensusID"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from the API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve the U.S. census ID for a specified geography type and name.
 */
@implementation TMBDataGov_GetCensusIDByTypeAndName

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDataGov_GetCensusIDByTypeAndName Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DataGov/GetCensusIDByTypeAndName"] autorelease];
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
		TMBDataGov_GetCensusIDByTypeAndName_ResultSet *results = [[[TMBDataGov_GetCensusIDByTypeAndName_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCensusIDByTypeAndName Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDataGov_GetCensusIDByTypeAndName_Inputs*)newInputSet {
		return [[[TMBDataGov_GetCensusIDByTypeAndName_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetDemographicsByCoordinates Choreo.
 */
@implementation TMBDataGov_GetDemographicsByCoordinates_Inputs

	/*!
	 * Set the value of the DataVersion input for this Choreo.
	*(optional, string) Specify the data version to search, such as "jun2011" (the default).
	 */
	-(void)setDataVersion:(NSString*)DataVersion {
		[super setInput:@"DataVersion" toValue:DataVersion];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) Specify a latitude to search for, such as "41.486857".
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) Specify a longitude to search for, such as "-71.294392".
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDemographicsByCoordinates Choreo.
 */
@implementation TMBDataGov_GetDemographicsByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response returned from the API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve demographic information for specified geographical coordinates.
 */
@implementation TMBDataGov_GetDemographicsByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDataGov_GetDemographicsByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DataGov/GetDemographicsByCoordinates"] autorelease];
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
		TMBDataGov_GetDemographicsByCoordinates_ResultSet *results = [[[TMBDataGov_GetDemographicsByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetDemographicsByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDataGov_GetDemographicsByCoordinates_Inputs*)newInputSet {
		return [[[TMBDataGov_GetDemographicsByCoordinates_Inputs alloc] init] autorelease];
	}
@end
	