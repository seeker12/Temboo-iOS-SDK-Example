/*!
 * @TMBYelp.m
 *
 * Execute Choreographies from the Temboo Yelp bundle.
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

#import "TMBYelp.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the SearchForBusinessesWithDeals Choreo.
 */
@implementation TMBYelp_SearchForBusinessesWithDeals_Inputs

	/*!
	 * Set the value of the Accuracy input for this Choreo.
	*(optional, integer) Narrow or widen the search range in relation to the coordinates, such as "2" for state or "8" for street address.
	 */
	-(void)setAccuracy:(NSString*)Accuracy {
		[super setInput:@"Accuracy" toValue:Accuracy];
	}

	/*!
	 * Set the value of the BusinessType input for this Choreo.
	*(optional, string) A term to narrow the search, such as "comic books" or "restaurants". Leave blank to search for all business types.
	 */
	-(void)setBusinessType:(NSString*)BusinessType {
		[super setInput:@"BusinessType" toValue:BusinessType];
	}

	/*!
	 * Set the value of the Category input for this Choreo.
	*(optional, string) Yelp categories to search in, separated by commas but no spaces, such as "hiking,climbing". See the Yelp API docimentation for a list of categories.
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Yelp.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Yelp.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(conditional, decimal) The latitude to search near, such as "37.788022". Searching with either Location or Coordinates is required.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Location input for this Choreo.
	*(conditional, string) An address, neighborhood, city, state, or ZIP code in which to search for the category. Searching with either Location or Coordinates is required.
	 */
	-(void)setLocation:(NSString*)Location {
		[super setInput:@"Location" toValue:Location];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(conditional, decimal) The longitude to search near, such as "-122.399797". Searching with either Location or Coordinates is required.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from Yelp, either XML or JSON (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TokenSecret input for this Choreo.
	*(required, string) The Token Secret provided by Yelp.
	 */
	-(void)setTokenSecret:(NSString*)TokenSecret {
		[super setInput:@"TokenSecret" toValue:TokenSecret];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The Token provided by Yelp.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchForBusinessesWithDeals Choreo.
 */
@implementation TMBYelp_SearchForBusinessesWithDeals_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Only returns information for businesses with deals.
 */
@implementation TMBYelp_SearchForBusinessesWithDeals

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYelp_SearchForBusinessesWithDeals Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yelp/SearchForBusinessesWithDeals"] autorelease];
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
		TMBYelp_SearchForBusinessesWithDeals_ResultSet *results = [[[TMBYelp_SearchForBusinessesWithDeals_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchForBusinessesWithDeals Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYelp_SearchForBusinessesWithDeals_Inputs*)newInputSet {
		return [[[TMBYelp_SearchForBusinessesWithDeals_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByBoundingBox Choreo.
 */
@implementation TMBYelp_SearchByBoundingBox_Inputs

	/*!
	 * Set the value of the BusinessType input for this Choreo.
	*(optional, string) A term to narrow the search, such as "comic books" or "restaurants". Leave blank to search for all business types.
	 */
	-(void)setBusinessType:(NSString*)BusinessType {
		[super setInput:@"BusinessType" toValue:BusinessType];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Yelp.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Yelp.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the NortheastLatitude input for this Choreo.
	*(required, decimal) The northeastern latitude of the bounding box to search, such as "37.788022".
	 */
	-(void)setNortheastLatitude:(NSString*)NortheastLatitude {
		[super setInput:@"NortheastLatitude" toValue:NortheastLatitude];
	}

	/*!
	 * Set the value of the NortheastLongitude input for this Choreo.
	*(required, decimal) The northeastern longitude of the bounding box to search, such as "-122.399797".
	 */
	-(void)setNortheastLongitude:(NSString*)NortheastLongitude {
		[super setInput:@"NortheastLongitude" toValue:NortheastLongitude];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from Yelp, either XML or JSON (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the SouthwestLatitude input for this Choreo.
	*(required, decimal) The southwestern latitude of the bounding box to search, such as "37.900000".
	 */
	-(void)setSouthwestLatitude:(NSString*)SouthwestLatitude {
		[super setInput:@"SouthwestLatitude" toValue:SouthwestLatitude];
	}

	/*!
	 * Set the value of the SouthwestLongitude input for this Choreo.
	*(required, decimal) The southwestern longitude of the bounding box to search, such as "-122.500000".
	 */
	-(void)setSouthwestLongitude:(NSString*)SouthwestLongitude {
		[super setInput:@"SouthwestLongitude" toValue:SouthwestLongitude];
	}

	/*!
	 * Set the value of the TokenSecret input for this Choreo.
	*(required, string) The Token Secret provided by Yelp.
	 */
	-(void)setTokenSecret:(NSString*)TokenSecret {
		[super setInput:@"TokenSecret" toValue:TokenSecret];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The Token provided by Yelp.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByBoundingBox Choreo.
 */
@implementation TMBYelp_SearchByBoundingBox_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve businesses in a geographic bounding box.
 */
@implementation TMBYelp_SearchByBoundingBox

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYelp_SearchByBoundingBox Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yelp/SearchByBoundingBox"] autorelease];
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
		TMBYelp_SearchByBoundingBox_ResultSet *results = [[[TMBYelp_SearchByBoundingBox_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByBoundingBox Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYelp_SearchByBoundingBox_Inputs*)newInputSet {
		return [[[TMBYelp_SearchByBoundingBox_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCity Choreo.
 */
@implementation TMBYelp_SearchByCity_Inputs

	/*!
	 * Set the value of the BusinessType input for this Choreo.
	*(optional, string) A term to narrow the search, such as "wine" or "restaurants". Leave blank to search for all business types.
	 */
	-(void)setBusinessType:(NSString*)BusinessType {
		[super setInput:@"BusinessType" toValue:BusinessType];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(required, string) The name of the city in which to search for businesses.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Yelp.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Yelp.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The number of businesses to return. The default is 15.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, multiline) The format of the response from Yelp, either XML or JSON (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TokenSecret input for this Choreo.
	*(required, string) The Token Secret provided by Yelp.
	 */
	-(void)setTokenSecret:(NSString*)TokenSecret {
		[super setInput:@"TokenSecret" toValue:TokenSecret];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The Token provided by Yelp.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCity Choreo.
 */
@implementation TMBYelp_SearchByCity_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve businesses by city.
 */
@implementation TMBYelp_SearchByCity

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYelp_SearchByCity Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yelp/SearchByCity"] autorelease];
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
		TMBYelp_SearchByCity_ResultSet *results = [[[TMBYelp_SearchByCity_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByCity Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYelp_SearchByCity_Inputs*)newInputSet {
		return [[[TMBYelp_SearchByCity_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByNeighborhood Choreo.
 */
@implementation TMBYelp_SearchByNeighborhood_Inputs

	/*!
	 * Set the value of the BusinessType input for this Choreo.
	*(optional, string) A term to narrow the search, such as "wine" or "restaurants". Leave blank to search for all business types.
	 */
	-(void)setBusinessType:(NSString*)BusinessType {
		[super setInput:@"BusinessType" toValue:BusinessType];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Yelp.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Yelp.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The number of businesses to return. The default is 15.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Neighborhood input for this Choreo.
	*(required, string) The neighborhood in which to search for businesses. See the Yelp API documentation for a list of supported neighborhoods.
	 */
	-(void)setNeighborhood:(NSString*)Neighborhood {
		[super setInput:@"Neighborhood" toValue:Neighborhood];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from Yelp, either XML or JSON (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TokenSecret input for this Choreo.
	*(required, string) The Token Secret provided by Yelp.
	 */
	-(void)setTokenSecret:(NSString*)TokenSecret {
		[super setInput:@"TokenSecret" toValue:TokenSecret];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The Token provided by Yelp.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByNeighborhood Choreo.
 */
@implementation TMBYelp_SearchByNeighborhood_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve businesses by neighborhood.
 */
@implementation TMBYelp_SearchByNeighborhood

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYelp_SearchByNeighborhood Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yelp/SearchByNeighborhood"] autorelease];
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
		TMBYelp_SearchByNeighborhood_ResultSet *results = [[[TMBYelp_SearchByNeighborhood_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByNeighborhood Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYelp_SearchByNeighborhood_Inputs*)newInputSet {
		return [[[TMBYelp_SearchByNeighborhood_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCoordinates Choreo.
 */
@implementation TMBYelp_SearchByCoordinates_Inputs

	/*!
	 * Set the value of the Accuracy input for this Choreo.
	*(optional, integer) Narrow or widen the search range in relation to the coordinates, such as "2" for state or "8" for street address.
	 */
	-(void)setAccuracy:(NSString*)Accuracy {
		[super setInput:@"Accuracy" toValue:Accuracy];
	}

	/*!
	 * Set the value of the BusinessType input for this Choreo.
	*(optional, string) A term to narrow the search, such as "comic books" or "restaurants". Leave blank to search for all business types.
	 */
	-(void)setBusinessType:(NSString*)BusinessType {
		[super setInput:@"BusinessType" toValue:BusinessType];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Yelp.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Yelp.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude to search near, such as "37.788022".
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude to search near, such as "-122.399797".
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from Yelp, either XML or JSON (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TokenSecret input for this Choreo.
	*(required, string) The Token Secret provided by Yelp.
	 */
	-(void)setTokenSecret:(NSString*)TokenSecret {
		[super setInput:@"TokenSecret" toValue:TokenSecret];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The Token provided by Yelp.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCoordinates Choreo.
 */
@implementation TMBYelp_SearchByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve businesses near a specified latitude and longitude.
 */
@implementation TMBYelp_SearchByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYelp_SearchByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yelp/SearchByCoordinates"] autorelease];
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
		TMBYelp_SearchByCoordinates_ResultSet *results = [[[TMBYelp_SearchByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYelp_SearchByCoordinates_Inputs*)newInputSet {
		return [[[TMBYelp_SearchByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCategory Choreo.
 */
@implementation TMBYelp_SearchByCategory_Inputs

	/*!
	 * Set the value of the Category input for this Choreo.
	*(required, string) Yelp categories to search in, separated by commas but no spaces, such as "hiking,climbing". See the Yelp API docimentation for a list of categories.
	 */
	-(void)setCategory:(NSString*)Category {
		[super setInput:@"Category" toValue:Category];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Yelp.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Yelp.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Count input for this Choreo.
	*(optional, integer) The number of businesses to return. The default is 15.
	 */
	-(void)setCount:(NSString*)Count {
		[super setInput:@"Count" toValue:Count];
	}

	/*!
	 * Set the value of the Location input for this Choreo.
	*(required, string) An address, neighborhood, city, state, or ZIP code in which to search for the category.
	 */
	-(void)setLocation:(NSString*)Location {
		[super setInput:@"Location" toValue:Location];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from Yelp, either XML or JSON (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TokenSecret input for this Choreo.
	*(required, string) The Token Secret provided by Yelp.
	 */
	-(void)setTokenSecret:(NSString*)TokenSecret {
		[super setInput:@"TokenSecret" toValue:TokenSecret];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The Token provided by Yelp.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCategory Choreo.
 */
@implementation TMBYelp_SearchByCategory_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve businesses in a specific location by business category.
 */
@implementation TMBYelp_SearchByCategory

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYelp_SearchByCategory Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yelp/SearchByCategory"] autorelease];
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
		TMBYelp_SearchByCategory_ResultSet *results = [[[TMBYelp_SearchByCategory_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByCategory Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYelp_SearchByCategory_Inputs*)newInputSet {
		return [[[TMBYelp_SearchByCategory_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchForBusiness Choreo.
 */
@implementation TMBYelp_SearchForBusiness_Inputs

	/*!
	 * Set the value of the BusinessId input for this Choreo.
	*(conditional, string) The business id to return results for. This can be found in the URL when you're on the business page on yelp.com (i.e. "yelp-san-francisco"). This is required unless using the BusinessName input.
	 */
	-(void)setBusinessId:(NSString*)BusinessId {
		[super setInput:@"BusinessId" toValue:BusinessId];
	}

	/*!
	 * Set the value of the BusinessName input for this Choreo.
	*(conditional, string) A term to narrow the search, such as business name. This is required unless using the BusinessId input.
	 */
	-(void)setBusinessName:(NSString*)BusinessName {
		[super setInput:@"BusinessName" toValue:BusinessName];
	}

	/*!
	 * Set the value of the City input for this Choreo.
	*(conditional, string) The name of the city in which to search for businesses. This is required unless providing the BusinessId.
	 */
	-(void)setCity:(NSString*)City {
		[super setInput:@"City" toValue:City];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Yelp.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Yelp.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, multiline) The format of the response from Yelp, either XML or JSON (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TokenSecret input for this Choreo.
	*(required, string) The Token Secret provided by Yelp.
	 */
	-(void)setTokenSecret:(NSString*)TokenSecret {
		[super setInput:@"TokenSecret" toValue:TokenSecret];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The Token provided by Yelp.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchForBusiness Choreo.
 */
@implementation TMBYelp_SearchForBusiness_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a given business id or name.
 */
@implementation TMBYelp_SearchForBusiness

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYelp_SearchForBusiness Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yelp/SearchForBusiness"] autorelease];
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
		TMBYelp_SearchForBusiness_ResultSet *results = [[[TMBYelp_SearchForBusiness_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchForBusiness Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYelp_SearchForBusiness_Inputs*)newInputSet {
		return [[[TMBYelp_SearchForBusiness_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the SearchByAddress Choreo.
 */
@implementation TMBYelp_SearchByAddress_Inputs

	/*!
	 * Set the value of the Address input for this Choreo.
	*(required, string) The street address of the business to search for.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the BusinessType input for this Choreo.
	*(optional, string) A term to narrow the search, such as "shoes" or "restaurants". Leave blank to search for all business types.
	 */
	-(void)setBusinessType:(NSString*)BusinessType {
		[super setInput:@"BusinessType" toValue:BusinessType];
	}

	/*!
	 * Set the value of the ConsumerKey input for this Choreo.
	*(required, string) The Consumer Key provided by Yelp.
	 */
	-(void)setConsumerKey:(NSString*)ConsumerKey {
		[super setInput:@"ConsumerKey" toValue:ConsumerKey];
	}

	/*!
	 * Set the value of the ConsumerSecret input for this Choreo.
	*(required, string) The Consumer Secret provided by Yelp.
	 */
	-(void)setConsumerSecret:(NSString*)ConsumerSecret {
		[super setInput:@"ConsumerSecret" toValue:ConsumerSecret];
	}

	/*!
	 * Set the value of the Range input for this Choreo.
	*(required, integer) Narrow or expand a search by specifying a range in either feet, meters, miles, or kilometers, depending on the value of the Units input. The default is 200 feet, and the maximum is 2,500 square miles.
	 */
	-(void)setRange:(NSString*)Range {
		[super setInput:@"Range" toValue:Range];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format of the response from Yelp, either XML or JSON (the default).
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the TokenSecret input for this Choreo.
	*(required, string) The Token Secret provided by Yelp.
	 */
	-(void)setTokenSecret:(NSString*)TokenSecret {
		[super setInput:@"TokenSecret" toValue:TokenSecret];
	}

	/*!
	 * Set the value of the Token input for this Choreo.
	*(required, string) The Token provided by Yelp.
	 */
	-(void)setToken:(NSString*)Token {
		[super setInput:@"Token" toValue:Token];
	}

	/*!
	 * Set the value of the Units input for this Choreo.
	*(required, string) Specify "feet" (the default), "meters", "miles", or "kilometers". Units apply to the Range input value.
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByAddress Choreo.
 */
@implementation TMBYelp_SearchByAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Yelp. Corresponds to the input value for ResponseFormat (defaults to JSON).
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve businesses within a specific range of a specified address.
 */
@implementation TMBYelp_SearchByAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYelp_SearchByAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yelp/SearchByAddress"] autorelease];
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
		TMBYelp_SearchByAddress_ResultSet *results = [[[TMBYelp_SearchByAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the SearchByAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYelp_SearchByAddress_Inputs*)newInputSet {
		return [[[TMBYelp_SearchByAddress_Inputs alloc] init] autorelease];
	}
@end
	