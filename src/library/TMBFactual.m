/*!
 * @TMBFactual.m
 *
 * Execute Choreographies from the Temboo Factual bundle.
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

#import "TMBFactual.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the FindPlacesByName Choreo.
 */
@implementation TMBFactual_FindPlacesByName_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) A search string (i.e. Starbucks)
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindPlacesByName Choreo.
 */
@implementation TMBFactual_FindPlacesByName_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Factual.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search for places by name.
 */
@implementation TMBFactual_FindPlacesByName

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFactual_FindPlacesByName Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Factual/FindPlacesByName"] autorelease];
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
		TMBFactual_FindPlacesByName_ResultSet *results = [[[TMBFactual_FindPlacesByName_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindPlacesByName Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFactual_FindPlacesByName_Inputs*)newInputSet {
		return [[[TMBFactual_FindPlacesByName_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FilterPlacesByCity Choreo.
 */
@implementation TMBFactual_FilterPlacesByCity_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) Enter a city to narrow results to.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A search string (i.e. Starbucks)
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterPlacesByCity Choreo.
 */
@implementation TMBFactual_FilterPlacesByCity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Factual.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Restrict a query to a specified city.
 */
@implementation TMBFactual_FilterPlacesByCity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFactual_FilterPlacesByCity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Factual/FilterPlacesByCity"] autorelease];
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
		TMBFactual_FilterPlacesByCity_ResultSet *results = [[[TMBFactual_FilterPlacesByCity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FilterPlacesByCity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFactual_FilterPlacesByCity_Inputs*)newInputSet {
		return [[[TMBFactual_FilterPlacesByCity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FilterPlacesByMultipleCities Choreo.
 */
@implementation TMBFactual_FilterPlacesByMultipleCities_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Cities input for this Choreo.
	*(required, string) Enter a list of cities to filter results. Use the following comma-separated format: "New York", "Ithaca", "Albany"
	 */
	-(void)setCities:(NSString*)Cities {
		[super setInput:@"Cities" toValue:Cities];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A search string (i.e. Starbucks).
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterPlacesByMultipleCities Choreo.
 */
@implementation TMBFactual_FilterPlacesByMultipleCities_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Factual.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Restrict a query to a specified city.
 */
@implementation TMBFactual_FilterPlacesByMultipleCities

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFactual_FilterPlacesByMultipleCities Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Factual/FilterPlacesByMultipleCities"] autorelease];
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
		TMBFactual_FilterPlacesByMultipleCities_ResultSet *results = [[[TMBFactual_FilterPlacesByMultipleCities_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FilterPlacesByMultipleCities Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFactual_FilterPlacesByMultipleCities_Inputs*)newInputSet {
		return [[[TMBFactual_FilterPlacesByMultipleCities_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FilterPlacesByCategories Choreo.
 */
@implementation TMBFactual_FilterPlacesByCategories_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Category input for this Choreo.
	*(required, string) Enter a Factual category to narrow the search results.
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) Enter a city to narrow results to.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A search string (i.e. Starbucks)
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterPlacesByCategories Choreo.
 */
@implementation TMBFactual_FilterPlacesByCategories_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Factual.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Filter queries by category.
 */
@implementation TMBFactual_FilterPlacesByCategories

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFactual_FilterPlacesByCategories Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Factual/FilterPlacesByCategories"] autorelease];
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
		TMBFactual_FilterPlacesByCategories_ResultSet *results = [[[TMBFactual_FilterPlacesByCategories_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FilterPlacesByCategories Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFactual_FilterPlacesByCategories_Inputs*)newInputSet {
		return [[[TMBFactual_FilterPlacesByCategories_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FilterRestaurantsByCuisineAndCoordinates Choreo.
 */
@implementation TMBFactual_FilterRestaurantsByCuisineAndCoordinates_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Cuisine input for this Choreo.
	*(required, string) Enter a desired cuisine to narrow the search results. See Choreo doc for a list of available cuisine parameters.
	 */
	-(void)setCuisine:(NSString*)Cuisine {
		[super setInput:@"Cuisine" toValue:Cuisine];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) Enter latitude coordinates of the location defining the center of the search radius.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) Enter longitude coordinates of the location defining the center of the search radius.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Radius input for this Choreo.
	*(required, integer) Provide the radius (in meters, and centered on the latitude-longitude coordinates specified) for which search results will be returned.
	 */
	-(void)setRadius:(NSString*)Radius {
		[super setInput:@"Radius" toValue:Radius];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterRestaurantsByCuisineAndCoordinates Choreo.
 */
@implementation TMBFactual_FilterRestaurantsByCuisineAndCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Factual.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Find restaurants by cuisine and near specified latitude, longitude coordinates.
 */
@implementation TMBFactual_FilterRestaurantsByCuisineAndCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFactual_FilterRestaurantsByCuisineAndCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Factual/FilterRestaurantsByCuisineAndCoordinates"] autorelease];
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
		TMBFactual_FilterRestaurantsByCuisineAndCoordinates_ResultSet *results = [[[TMBFactual_FilterRestaurantsByCuisineAndCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FilterRestaurantsByCuisineAndCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFactual_FilterRestaurantsByCuisineAndCoordinates_Inputs*)newInputSet {
		return [[[TMBFactual_FilterRestaurantsByCuisineAndCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindPlacesNearCoordinates Choreo.
 */
@implementation TMBFactual_FindPlacesNearCoordinates_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) Enter latitude coordinates of the location defining the center of the search radius.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) Enter longitude coordinates of the location defining the center of the search radius.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A search string (i.e. Starbucks)
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Radius input for this Choreo.
	*(required, integer) Provide the radius (in meters, and centered on the latitude-longitude coordinates specified) for which search results will be returned.
	 */
	-(void)setRadius:(NSString*)Radius {
		[super setInput:@"Radius" toValue:Radius];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindPlacesNearCoordinates Choreo.
 */
@implementation TMBFactual_FindPlacesNearCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Factual.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Find places near specified latitude, longitude coordinates.
 */
@implementation TMBFactual_FindPlacesNearCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFactual_FindPlacesNearCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Factual/FindPlacesNearCoordinates"] autorelease];
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
		TMBFactual_FindPlacesNearCoordinates_ResultSet *results = [[[TMBFactual_FindPlacesNearCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindPlacesNearCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFactual_FindPlacesNearCoordinates_Inputs*)newInputSet {
		return [[[TMBFactual_FindPlacesNearCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindRestaurantsByName Choreo.
 */
@implementation TMBFactual_FindRestaurantsByName_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(required, string) A search string (i.e. Starbucks)
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindRestaurantsByName Choreo.
 */
@implementation TMBFactual_FindRestaurantsByName_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Factual.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Search for restaurants by name. 
 */
@implementation TMBFactual_FindRestaurantsByName

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFactual_FindRestaurantsByName Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Factual/FindRestaurantsByName"] autorelease];
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
		TMBFactual_FindRestaurantsByName_ResultSet *results = [[[TMBFactual_FindRestaurantsByName_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindRestaurantsByName Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFactual_FindRestaurantsByName_Inputs*)newInputSet {
		return [[[TMBFactual_FindRestaurantsByName_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FilterPlacesByTopLevelCategory Choreo.
 */
@implementation TMBFactual_FilterPlacesByTopLevelCategory_Inputs

	/*!
	 * Set the value of the APIKey input for this Choreo.
	*(optional, string) The API Key provided by Factual (AKA the OAuth Consumer Key).
	 */
	-(void)setAPIKey:(NSString*)APIKey {
		[super setInput:@"APIKey" toValue:APIKey];
	}

	/*!
	 * Set the value of the APISecret input for this Choreo.
	*(optional, string) The API Secret provided by Factual (AKA the OAuth Consumer Secret).
	 */
	-(void)setAPISecret:(NSString*)APISecret {
		[super setInput:@"APISecret" toValue:APISecret];
	}

	/*!
	 * Set the value of the Category input for this Choreo.
	*(required, string) Enter a Factual top-level category to narrow the search results. See Choreo doc for a list of Factual top-level categories.
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) Enter latitude coordinates of the location defining the center of the search radius.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) Enter longitude coordinates of the location defining the center of the search radius.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) A search string (i.e. Starbucks)
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the Radius input for this Choreo.
	*(required, integer) Provide the radius (in meters, and centered on the latitude-longitude coordinates specified) for which search results will be returned.
	 */
	-(void)setRadius:(NSString*)Radius {
		[super setInput:@"Radius" toValue:Radius];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterPlacesByTopLevelCategory Choreo.
 */
@implementation TMBFactual_FilterPlacesByTopLevelCategory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from Factual.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Find places by top-level category and near specified latitude, longitude coordinates.
 */
@implementation TMBFactual_FilterPlacesByTopLevelCategory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBFactual_FilterPlacesByTopLevelCategory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Factual/FilterPlacesByTopLevelCategory"] autorelease];
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
		TMBFactual_FilterPlacesByTopLevelCategory_ResultSet *results = [[[TMBFactual_FilterPlacesByTopLevelCategory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FilterPlacesByTopLevelCategory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBFactual_FilterPlacesByTopLevelCategory_Inputs*)newInputSet {
		return [[[TMBFactual_FilterPlacesByTopLevelCategory_Inputs alloc] init] autorelease];
	}
@end
	