/*!
 * @TMBPatch.m
 *
 * Execute Choreographies from the Temboo Patch bundle.
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

#import "TMBPatch.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByID Choreo.
 */
@implementation TMBPatch_FindStoriesByID_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) A valid API key provided by Patch.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API shared secret provided by Patch.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Keyword input for this Choreo.
	*(optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
	 */
	-(void)setKeyword:(NSString*)Keyword {
		[super setInput:@"Keyword" toValue:Keyword];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the LocationID input for this Choreo.
	*(required, string) The UUID for a state, city, ZIP code, or neighborhood, assigned by Patch. Separate multiple IDs with commas but no spaces.
	 */
	-(void)setLocationID:(NSString*)LocationID {
		[super setInput:@"LocationID" toValue:LocationID];
	}

	/*!
	 * Set the value of the MaximumAge input for this Choreo.
	*(optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
	 */
	-(void)setMaximumAge:(NSString*)MaximumAge {
		[super setInput:@"MaximumAge" toValue:MaximumAge];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, boolean) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByID Choreo.
 */
@implementation TMBPatch_FindStoriesByID_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response returned from Patch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Return the most recent stories from a specified U.S. city, state, ZIP code, or neighborhood using its Patch ID.
 */
@implementation TMBPatch_FindStoriesByID

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPatch_FindStoriesByID Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Patch/FindStoriesByID"] autorelease];
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
		TMBPatch_FindStoriesByID_ResultSet *results = [[[TMBPatch_FindStoriesByID_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindStoriesByID Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPatch_FindStoriesByID_Inputs*)newInputSet {
		return [[[TMBPatch_FindStoriesByID_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByState Choreo.
 */
@implementation TMBPatch_FindStoriesByState_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) A valid API key provided by Patch.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API shared secret provided by Patch.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Keyword input for this Choreo.
	*(optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
	 */
	-(void)setKeyword:(NSString*)Keyword {
		[super setInput:@"Keyword" toValue:Keyword];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MaximumAge input for this Choreo.
	*(optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
	 */
	-(void)setMaximumAge:(NSString*)MaximumAge {
		[super setInput:@"MaximumAge" toValue:MaximumAge];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) The U.S. state name or abbreviation for the stories to return.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByState Choreo.
 */
@implementation TMBPatch_FindStoriesByState_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response returned from Patch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Return the most recent stories from a specified U.S. state.
 */
@implementation TMBPatch_FindStoriesByState

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPatch_FindStoriesByState Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Patch/FindStoriesByState"] autorelease];
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
		TMBPatch_FindStoriesByState_ResultSet *results = [[[TMBPatch_FindStoriesByState_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindStoriesByState Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPatch_FindStoriesByState_Inputs*)newInputSet {
		return [[[TMBPatch_FindStoriesByState_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByNeighborhood Choreo.
 */
@implementation TMBPatch_FindStoriesByNeighborhood_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) A valid API key provided by Patch.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API shared secret provided by Patch.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) The name of the city to return stories for.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Keyword input for this Choreo.
	*(optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
	 */
	-(void)setKeyword:(NSString*)Keyword {
		[super setInput:@"Keyword" toValue:Keyword];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MaximumAge input for this Choreo.
	*(optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
	 */
	-(void)setMaximumAge:(NSString*)MaximumAge {
		[super setInput:@"MaximumAge" toValue:MaximumAge];
	}

	/*!
	 * Set the value of the Neighborhood input for this Choreo.
	*(required, string) The name of the neighborhood in the corresponding city to return stories for. Common values include "downtown", "midtown", etc.
	 */
	-(void)setNeighborhood:(NSString*)Neighborhood {
		[super setInput:@"Neighborhood" toValue:Neighborhood];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) The U.S. state name or abbreviation corresponding to the city to return stories for.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByNeighborhood Choreo.
 */
@implementation TMBPatch_FindStoriesByNeighborhood_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response returned from Patch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Return the most recent stories from a specified U.S. neighborhood.
 */
@implementation TMBPatch_FindStoriesByNeighborhood

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPatch_FindStoriesByNeighborhood Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Patch/FindStoriesByNeighborhood"] autorelease];
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
		TMBPatch_FindStoriesByNeighborhood_ResultSet *results = [[[TMBPatch_FindStoriesByNeighborhood_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindStoriesByNeighborhood Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPatch_FindStoriesByNeighborhood_Inputs*)newInputSet {
		return [[[TMBPatch_FindStoriesByNeighborhood_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByCoordinates Choreo.
 */
@implementation TMBPatch_FindStoriesByCoordinates_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) A valid API key provided by Patch.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API shared secret provided by Patch.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Keyword input for this Choreo.
	*(optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
	 */
	-(void)setKeyword:(NSString*)Keyword {
		[super setInput:@"Keyword" toValue:Keyword];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitiude for the area from which to retrieve stories. For example, "40.740512".
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude for the area from which to retrieve stories. For example, "-73.991479".
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the MaximumAge input for this Choreo.
	*(optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
	 */
	-(void)setMaximumAge:(NSString*)MaximumAge {
		[super setInput:@"MaximumAge" toValue:MaximumAge];
	}

	/*!
	 * Set the value of the Radius input for this Choreo.
	*(optional, integer) Specify a radius in feet in which to search the specified coordinates, between 500 and 26,400. The default is 1,000 feet.
	 */
	-(void)setRadius:(NSString*)Radius {
		[super setInput:@"Radius" toValue:Radius];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByCoordinates Choreo.
 */
@implementation TMBPatch_FindStoriesByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response returned from Patch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Return the most recent stories from a specified U.S. latitude and longitude.
 */
@implementation TMBPatch_FindStoriesByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPatch_FindStoriesByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Patch/FindStoriesByCoordinates"] autorelease];
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
		TMBPatch_FindStoriesByCoordinates_ResultSet *results = [[[TMBPatch_FindStoriesByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindStoriesByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPatch_FindStoriesByCoordinates_Inputs*)newInputSet {
		return [[[TMBPatch_FindStoriesByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindLocationByName Choreo.
 */
@implementation TMBPatch_FindLocationByName_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) A valid API key provided by Patch.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API shared secret provided by Patch.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Specify a maximum number of locations to return, between 1 and 100. The default is 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the RegionName input for this Choreo.
	*(required, string) Enter a state, city, neighborhood, district (county), locality (borough), or metro area name; a place name, such as a business, landmark, or park; or a ZIP code. Separate multiple names with commas.
	 */
	-(void)setRegionName:(NSString*)RegionName {
		[super setInput:@"RegionName" toValue:RegionName];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify "xml" to convert the Patch JSON response to XML, or "json" (the default) to not convert.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindLocationByName Choreo.
 */
@implementation TMBPatch_FindLocationByName_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Coordinates" output from an execution of this Choreo.
	 * @return - NSString* (string) The concatenated location latitude and longitude returned by Patch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCoordinates {
		return [super getOutputByName:@"Coordinates"];
	}

	/*!
	 * Retrieve the value of the "Latitude" output from an execution of this Choreo.
	 * @return - NSString* (decimal) The latitude for the location returned by Patch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLatitude {
		return [super getOutputByName:@"Latitude"];
	}

	/*!
	 * Retrieve the value of the "LocationID" output from an execution of this Choreo.
	 * @return - NSString* (string) 
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLocationID {
		return [super getOutputByName:@"LocationID"];
	}

	/*!
	 * Retrieve the value of the "Longitude" output from an execution of this Choreo.
	 * @return - NSString* (decimal) The longitude for the location returned by Patch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLongitude {
		return [super getOutputByName:@"Longitude"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response returned from Patch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Return Patch location information for a specified U.S. region.
 */
@implementation TMBPatch_FindLocationByName

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPatch_FindLocationByName Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Patch/FindLocationByName"] autorelease];
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
		TMBPatch_FindLocationByName_ResultSet *results = [[[TMBPatch_FindLocationByName_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindLocationByName Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPatch_FindLocationByName_Inputs*)newInputSet {
		return [[[TMBPatch_FindLocationByName_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByZIPCode Choreo.
 */
@implementation TMBPatch_FindStoriesByZIPCode_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) A valid API key provided by Patch.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API shared secret provided by Patch.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Keyword input for this Choreo.
	*(optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
	 */
	-(void)setKeyword:(NSString*)Keyword {
		[super setInput:@"Keyword" toValue:Keyword];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MaximumAge input for this Choreo.
	*(optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
	 */
	-(void)setMaximumAge:(NSString*)MaximumAge {
		[super setInput:@"MaximumAge" toValue:MaximumAge];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the ZIPCode input for this Choreo.
	*(required, string) The ZIP code to return stories from.
	 */
	-(void)setZIPCode:(NSString*)ZIPCode {
		[super setInput:@"ZIPCode" toValue:ZIPCode];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByZIPCode Choreo.
 */
@implementation TMBPatch_FindStoriesByZIPCode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response returned from Patch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Return the most recent stories from a specified U.S. ZIP code.
 */
@implementation TMBPatch_FindStoriesByZIPCode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPatch_FindStoriesByZIPCode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Patch/FindStoriesByZIPCode"] autorelease];
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
		TMBPatch_FindStoriesByZIPCode_ResultSet *results = [[[TMBPatch_FindStoriesByZIPCode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindStoriesByZIPCode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPatch_FindStoriesByZIPCode_Inputs*)newInputSet {
		return [[[TMBPatch_FindStoriesByZIPCode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByCity Choreo.
 */
@implementation TMBPatch_FindStoriesByCity_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(required, string) A valid API key provided by Patch.
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(required, string) The API shared secret provided by Patch.
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) The name of the city to return stories for.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Keyword input for this Choreo.
	*(optional, string) Specify one or more words or phrases to find in the story title, story summary, and topic tags of the stories to return.
	 */
	-(void)setKeyword:(NSString*)Keyword {
		[super setInput:@"Keyword" toValue:Keyword];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Specify how many stories to return, between 1 and 100. The default is 10.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the MaximumAge input for this Choreo.
	*(optional, integer) Specify the maximum age in days of the stories to return, between 1 and 30. The default is 10.
	 */
	-(void)setMaximumAge:(NSString*)MaximumAge {
		[super setInput:@"MaximumAge" toValue:MaximumAge];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) Specify "xml" to convert the Patch JSON response to XML. The default is "json".
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(required, string) The U.S. state name or abbreviation corresponding to the city to return stories for.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByCity Choreo.
 */
@implementation TMBPatch_FindStoriesByCity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response returned from Patch.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Return the most recent stories from a specified U.S. city.
 */
@implementation TMBPatch_FindStoriesByCity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBPatch_FindStoriesByCity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Patch/FindStoriesByCity"] autorelease];
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
		TMBPatch_FindStoriesByCity_ResultSet *results = [[[TMBPatch_FindStoriesByCity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindStoriesByCity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBPatch_FindStoriesByCity_Inputs*)newInputSet {
		return [[[TMBPatch_FindStoriesByCity_Inputs alloc] init] autorelease];
	}
@end
	