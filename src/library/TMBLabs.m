/*!
 * @TMBLabs.m
 *
 * Execute Choreographies from the Temboo Labs bundle.
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

#import "TMBLabs.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetNearbyContacts Choreo.
 */
@implementation TMBLabs_Social_GetNearbyContacts_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(required, json) A JSON dictionary containing Facebook and Foursquare credentials.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the AfterTimestamp input for this Choreo.
	*(optional, date) Seconds after which to look for checkins, e.g. for looking for new checkins since the last fetch.
	 */
	-(void)setAfterTimestamp:(NSString*)AfterTimestamp {
		[super setInput:@"AfterTimestamp" toValue:AfterTimestamp];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude coordinate of the location to search for.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Used to page through results. Limits the number of records returned in the API responses.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(conditional, decimal) The longitude coordinate of the location to search for.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Offset input for this Choreo.
	*(optional, integer) Used to page through Facebook results. Returns results starting from the specified number.
	 */
	-(void)setOffset:(NSString*)Offset {
		[super setInput:@"Offset" toValue:Offset];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNearbyContacts Choreo.
 */
@implementation TMBLabs_Social_GetNearbyContacts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) A merged result of Foursquare and Facebook location based searches.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Searches Foursquare recent check-ins and the Facebook social graph with a given set of Geo coordinates
 */
@implementation TMBLabs_Social_GetNearbyContacts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_Social_GetNearbyContacts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/Social/GetNearbyContacts"] autorelease];
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
		TMBLabs_Social_GetNearbyContacts_ResultSet *results = [[[TMBLabs_Social_GetNearbyContacts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetNearbyContacts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_Social_GetNearbyContacts_Inputs*)newInputSet {
		return [[[TMBLabs_Social_GetNearbyContacts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByGoogleLat Choreo.
 */
@implementation TMBLabs_GetWeather_ByGoogleLat_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(required, json) A JSON dictionary containing your Google Latitude and Yahoo credentials. See Choreo documentation for formatting examples.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByGoogleLat Choreo.
 */
@implementation TMBLabs_GetWeather_ByGoogleLat_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) Contains weather information based on the coordinates returned from Google Latitude.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves weather and UV index data based on coordinates returned from Google Latitude.
 */
@implementation TMBLabs_GetWeather_ByGoogleLat

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_GetWeather_ByGoogleLat Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/GetWeather/ByGoogleLat"] autorelease];
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
		TMBLabs_GetWeather_ByGoogleLat_ResultSet *results = [[[TMBLabs_GetWeather_ByGoogleLat_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByGoogleLat Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_GetWeather_ByGoogleLat_Inputs*)newInputSet {
		return [[[TMBLabs_GetWeather_ByGoogleLat_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByAddress Choreo.
 */
@implementation TMBLabs_GetWeather_ByAddress_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(optional, json) A JSON dictionary containing a Yahoo App ID. See Choreo documentation for formatting examples.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the Address input for this Choreo.
	*(required, string) The street address of the location to get weather for.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByAddress Choreo.
 */
@implementation TMBLabs_GetWeather_ByAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) Contains combined weather data from Yahoo Weather and EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves weather and UV index data for a given Geo point using the Yahoo Weather and EnviroFacts APIs.
 */
@implementation TMBLabs_GetWeather_ByAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_GetWeather_ByAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/GetWeather/ByAddress"] autorelease];
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
		TMBLabs_GetWeather_ByAddress_ResultSet *results = [[[TMBLabs_GetWeather_ByAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_GetWeather_ByAddress_Inputs*)newInputSet {
		return [[[TMBLabs_GetWeather_ByAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EcoByZip Choreo.
 */
@implementation TMBLabs_GoodCitizen_EcoByZip_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(optional, string) A JSON dictionary containing credentials for Genability. See Choreo documentation for formatting examples.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of facility records to search for in the Envirofacts database.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Zip input for this Choreo.
	*(required, integer) The zip code for the user's current location.
	 */
	-(void)setZip:(NSString*)Zip {
		[super setInput:@"Zip" toValue:Zip];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EcoByZip Choreo.
 */
@implementation TMBLabs_GoodCitizen_EcoByZip_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from the Eco Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a host of eco-conscious environmental information for a specified location based on zip code.
 */
@implementation TMBLabs_GoodCitizen_EcoByZip

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_GoodCitizen_EcoByZip Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/GoodCitizen/EcoByZip"] autorelease];
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
		TMBLabs_GoodCitizen_EcoByZip_ResultSet *results = [[[TMBLabs_GoodCitizen_EcoByZip_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EcoByZip Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_GoodCitizen_EcoByZip_Inputs*)newInputSet {
		return [[[TMBLabs_GoodCitizen_EcoByZip_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByCoordinates Choreo.
 */
@implementation TMBLabs_GetWeather_ByCoordinates_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(optional, json) A JSON dictionary containing a Yahoo App ID. See Choreo documentation for formatting examples.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude coordinate to use when looking up weather information.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude coordinate to use when looking up weather information.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByCoordinates Choreo.
 */
@implementation TMBLabs_GetWeather_ByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) Contains combined weather data from Yahoo Weather and EnviroFacts.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves weather and UV index data for a given Geo point using the Yahoo Weather and EnviroFacts APIs.
 */
@implementation TMBLabs_GetWeather_ByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_GetWeather_ByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/GetWeather/ByCoordinates"] autorelease];
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
		TMBLabs_GetWeather_ByCoordinates_ResultSet *results = [[[TMBLabs_GetWeather_ByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_GetWeather_ByCoordinates_Inputs*)newInputSet {
		return [[[TMBLabs_GetWeather_ByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetContacts Choreo.
 */
@implementation TMBLabs_Social_GetContacts_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(conditional, json) A list of credentials for the APIs you wish to access. See Choreo documentation for formatting examples.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the ScreenName input for this Choreo.
	*(conditional, string) The Twitter screen name to retrieve followers for.
	 */
	-(void)setScreenName:(NSString*)ScreenName {
		[super setInput:@"ScreenName" toValue:ScreenName];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetContacts Choreo.
 */
@implementation TMBLabs_Social_GetContacts_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) Contains the merged results from the API responses.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves your social contacts from multiple APIs in one API call.
 */
@implementation TMBLabs_Social_GetContacts

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_Social_GetContacts Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/Social/GetContacts"] autorelease];
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
		TMBLabs_Social_GetContacts_ResultSet *results = [[[TMBLabs_Social_GetContacts_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetContacts Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_Social_GetContacts_Inputs*)newInputSet {
		return [[[TMBLabs_Social_GetContacts_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByCoordinates Choreo.
 */
@implementation TMBLabs_GetPlaces_ByCoordinates_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(required, json) A JSON dictionary of credentials for the APIs you wish to access. See Choreo documentation for formatting examples.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude of the user's location.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Limits the number of Foursquare venue results.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude of the user's location.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) This keyword input can be used to narrow search results for Google Places and Foursquare.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) Filters results by type of place, such as: bar, dentist, etc. This is used to filter results for Google Places and Yelp.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByCoordinates Choreo.
 */
@implementation TMBLabs_GetPlaces_ByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Contains the merged results from the API responses.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information about places near a set of coordinates from multiple sources in one API call.
 */
@implementation TMBLabs_GetPlaces_ByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_GetPlaces_ByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/GetPlaces/ByCoordinates"] autorelease];
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
		TMBLabs_GetPlaces_ByCoordinates_ResultSet *results = [[[TMBLabs_GetPlaces_ByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_GetPlaces_ByCoordinates_Inputs*)newInputSet {
		return [[[TMBLabs_GetPlaces_ByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAllStatuses Choreo.
 */
@implementation TMBLabs_Social_UpdateAllStatuses_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(required, json) A list of credentials for the APIs you wish to access. See Choreo documentation for formatting examples.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(required, string) The message to be posted across social networks.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAllStatuses Choreo.
 */
@implementation TMBLabs_Social_UpdateAllStatuses_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) A list of results for each API.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Shares a post across multiple social networks such as Facebook, Tumblr, and Twitter.
 */
@implementation TMBLabs_Social_UpdateAllStatuses

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_Social_UpdateAllStatuses Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/Social/UpdateAllStatuses"] autorelease];
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
		TMBLabs_Social_UpdateAllStatuses_ResultSet *results = [[[TMBLabs_Social_UpdateAllStatuses_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UpdateAllStatuses Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_Social_UpdateAllStatuses_Inputs*)newInputSet {
		return [[[TMBLabs_Social_UpdateAllStatuses_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the Civic Choreo.
 */
@implementation TMBLabs_GoodCitizen_Civic_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(optional, json) The JSON dictionary for the Sulight Labs credentials required to operate this choreo. LittleSis credentials are optional. See docs for the format of this input.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude coordinate of your location.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Set the number of records to return for the bills, votes, and relationships of each legislator. Defaults to 5.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude coordinate of your locaion.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Civic Choreo.
 */
@implementation TMBLabs_GoodCitizen_Civic_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from the Civic Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a host of information about the district and representatives of a specified location.
 */
@implementation TMBLabs_GoodCitizen_Civic

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_GoodCitizen_Civic Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/GoodCitizen/Civic"] autorelease];
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
		TMBLabs_GoodCitizen_Civic_ResultSet *results = [[[TMBLabs_GoodCitizen_Civic_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the Civic Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_GoodCitizen_Civic_Inputs*)newInputSet {
		return [[[TMBLabs_GoodCitizen_Civic_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EcoByCoordinates Choreo.
 */
@implementation TMBLabs_GoodCitizen_EcoByCoordinates_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(optional, string) A JSON dictionary containing credentials for Genability. See Choreo documentation for formatting examples.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude coordinate for the user's current location.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) The number of facility records to search for in the Envirofacts database.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude coordinate for the user's current location.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EcoByCoordinates Choreo.
 */
@implementation TMBLabs_GoodCitizen_EcoByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from the Eco Choreo.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a host of eco-conscious environmental information for a specified location based on Lattitude and Longitude inputs.
 */
@implementation TMBLabs_GoodCitizen_EcoByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_GoodCitizen_EcoByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/GoodCitizen/EcoByCoordinates"] autorelease];
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
		TMBLabs_GoodCitizen_EcoByCoordinates_ResultSet *results = [[[TMBLabs_GoodCitizen_EcoByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EcoByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_GoodCitizen_EcoByCoordinates_Inputs*)newInputSet {
		return [[[TMBLabs_GoodCitizen_EcoByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByFoursquare Choreo.
 */
@implementation TMBLabs_GetWeather_ByFoursquare_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(required, json) A JSON dictionary containing your Foursquare and Yahoo credentials. See Choreo documentation for formatting examples.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the Shout input for this Choreo.
	*(optional, string) A message about your check-in. The maximum length of this field is 140 characters.
	 */
	-(void)setShout:(NSString*)Shout {
		[super setInput:@"Shout" toValue:Shout];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(optional, string) The venue where the user is checking in. Required if creating a Foursquare checkin.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByFoursquare Choreo.
 */
@implementation TMBLabs_GetWeather_ByFoursquare_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) Contains weather information based on the coordinates returned from the Foursquare checkin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves weather and UV index data based on coordinates returned from a Foursquare recent check-in.
 */
@implementation TMBLabs_GetWeather_ByFoursquare

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_GetWeather_ByFoursquare Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/GetWeather/ByFoursquare"] autorelease];
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
		TMBLabs_GetWeather_ByFoursquare_ResultSet *results = [[[TMBLabs_GetWeather_ByFoursquare_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByFoursquare Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_GetWeather_ByFoursquare_Inputs*)newInputSet {
		return [[[TMBLabs_GetWeather_ByFoursquare_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByGoogleLat Choreo.
 */
@implementation TMBLabs_GetPlaces_ByGoogleLat_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(required, json) A JSON dictionary of credentials for the APIs you wish to access. See Choreo documentation for formatting examples.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Limits the number of Foursquare venues returned.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) This keyword input can be used to narrow search results for Google Places and Foursquare.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) Filters results by type of place, such as: bar, dentist, etc. This is used to filter results for Google Places and Yelp.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByGoogleLat Choreo.
 */
@implementation TMBLabs_GetPlaces_ByGoogleLat_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Contains the merged results from the API responses.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information from multiple APIs about places near a set of coordinates retrieved from Google Latitude.
 */
@implementation TMBLabs_GetPlaces_ByGoogleLat

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_GetPlaces_ByGoogleLat Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/GetPlaces/ByGoogleLat"] autorelease];
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
		TMBLabs_GetPlaces_ByGoogleLat_ResultSet *results = [[[TMBLabs_GetPlaces_ByGoogleLat_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByGoogleLat Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_GetPlaces_ByGoogleLat_Inputs*)newInputSet {
		return [[[TMBLabs_GetPlaces_ByGoogleLat_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByAddress Choreo.
 */
@implementation TMBLabs_GetPlaces_ByAddress_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(conditional, json) 
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the Address input for this Choreo.
	*(required, string) The street address to use in the search. This can be a single address, or an array of addresses. See documentation for formatting examples.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Limits the number of Foursquare venues results.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) This keyword input can be used to narrow search results for Google Places and Foursquare.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) Filters results by type of place, such as: bar, dentist, etc. This is used to filter results for Google Places and Yelp.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByAddress Choreo.
 */
@implementation TMBLabs_GetPlaces_ByAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* Contains the merged results for search.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information from multiple APIs about places near a specified street address.
 */
@implementation TMBLabs_GetPlaces_ByAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_GetPlaces_ByAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/GetPlaces/ByAddress"] autorelease];
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
		TMBLabs_GetPlaces_ByAddress_ResultSet *results = [[[TMBLabs_GetPlaces_ByAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_GetPlaces_ByAddress_Inputs*)newInputSet {
		return [[[TMBLabs_GetPlaces_ByAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ByFoursquare Choreo.
 */
@implementation TMBLabs_GetPlaces_ByFoursquare_Inputs

	/*!
	 * Set the value of the APICredentials input for this Choreo.
	*(required, json) A JSON dictionary of credentials for the APIs you wish to access. See Choreo documentation for formatting examples.
	 */
	-(void)setAPICredentials:(NSString*)APICredentials {
		[super setInput:@"APICredentials" toValue:APICredentials];
	}

	/*!
	 * Set the value of the Limit input for this Choreo.
	*(optional, integer) Limits the number of Foursquare venues returned.
	 */
	-(void)setLimit:(NSString*)Limit {
		[super setInput:@"Limit" toValue:Limit];
	}

	/*!
	 * Set the value of the Query input for this Choreo.
	*(optional, string) This keyword input can be used to narrow search results for Google Places and Foursquare.
	 */
	-(void)setQuery:(NSString*)Query {
		[super setInput:@"Query" toValue:Query];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are json (the default) and xml.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}

	/*!
	 * Set the value of the Shout input for this Choreo.
	*(optional, string) A message about your check-in. The maximum length of this field is 140 characters.
	 */
	-(void)setShout:(NSString*)Shout {
		[super setInput:@"Shout" toValue:Shout];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) Filters results by type of place, such as: bar, dentist, etc. This is used to filter results for Google Places and Yelp.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the VenueID input for this Choreo.
	*(optional, string) The venue where the user is checking in. Required if creating a Foursquare checkin.
	 */
	-(void)setVenueID:(NSString*)VenueID {
		[super setInput:@"VenueID" toValue:VenueID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByFoursquare Choreo.
 */
@implementation TMBLabs_GetPlaces_ByFoursquare_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) Contains weather information based on the coordinates returned from the Foursquare checkin.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information from multiple APIs about places near a set of coordinates retrieved from Foursquare.
 */
@implementation TMBLabs_GetPlaces_ByFoursquare

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBLabs_GetPlaces_ByFoursquare Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Labs/GetPlaces/ByFoursquare"] autorelease];
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
		TMBLabs_GetPlaces_ByFoursquare_ResultSet *results = [[[TMBLabs_GetPlaces_ByFoursquare_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ByFoursquare Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBLabs_GetPlaces_ByFoursquare_Inputs*)newInputSet {
		return [[[TMBLabs_GetPlaces_ByFoursquare_Inputs alloc] init] autorelease];
	}
@end
	