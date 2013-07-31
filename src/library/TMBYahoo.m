/*!
 * @TMBYahoo.m
 *
 * Execute Choreographies from the Temboo Yahoo bundle.
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

#import "TMBYahoo.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetWeatherByAddress Choreo.
 */
@implementation TMBYahoo_Weather_GetWeatherByAddress_Inputs

	/*!
	 * Set the value of the Address input for this Choreo.
	*(required, string) The address to be searched.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) The App ID provided by Yahoo!
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the Units input for this Choreo.
	*(optional, string) The unit of temperature in the response. Acceptable inputs: f for Fahrenheit or c for Celsius. Defaults to f. When c is specified, all units measurements returned are changed to metric.
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeatherByAddress Choreo.
 */
@implementation TMBYahoo_Weather_GetWeatherByAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Yahoo Weather.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "WOEID" output from an execution of this Choreo.
	 * @return - NSString* (integer) The unique Where On Earth ID of the location.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getWOEID {
		return [super getOutputByName:@"WOEID"];
	}
	
@end

/*!
 * Retrieves the Yahoo Weather RSS Feed for any specified location by address.
 */
@implementation TMBYahoo_Weather_GetWeatherByAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYahoo_Weather_GetWeatherByAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yahoo/Weather/GetWeatherByAddress"] autorelease];
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
		TMBYahoo_Weather_GetWeatherByAddress_ResultSet *results = [[[TMBYahoo_Weather_GetWeatherByAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWeatherByAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYahoo_Weather_GetWeatherByAddress_Inputs*)newInputSet {
		return [[[TMBYahoo_Weather_GetWeatherByAddress_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWeather Choreo.
 */
@implementation TMBYahoo_Weather_GetWeather_Inputs

	/*!
	 * Set the value of the Units input for this Choreo.
	*(optional, string) The unit of temperature in the response. Acceptable inputs: f for Fahrenheit or c for Celsius. Defaults to f. When c is specified, all units measurements returned are changed to metric.
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}

	/*!
	 * Set the value of the WOEID input for this Choreo.
	*(required, integer) Where On Earth ID for the desired location. This unique integer can be found by first running the GetWeatherByCoordinates Choreo.
	 */
	-(void)setWOEID:(NSString*)WOEID {
		[super setInput:@"WOEID" toValue:WOEID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeather Choreo.
 */
@implementation TMBYahoo_Weather_GetWeather_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Yahoo! Weather.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the Yahoo! Weather RSS Feed for any specified location.
 */
@implementation TMBYahoo_Weather_GetWeather

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYahoo_Weather_GetWeather Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yahoo/Weather/GetWeather"] autorelease];
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
		TMBYahoo_Weather_GetWeather_ResultSet *results = [[[TMBYahoo_Weather_GetWeather_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWeather Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYahoo_Weather_GetWeather_Inputs*)newInputSet {
		return [[[TMBYahoo_Weather_GetWeather_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetNews Choreo.
 */
@implementation TMBYahoo_Finance_GetNews_Inputs

	/*!
	 * Set the value of the Company input for this Choreo.
	*(required, string) Ticker symbol for one or more companies to search, separated by commas (e.g. YHOO,DIS to include news about Yahoo! and Disney).
	 */
	-(void)setCompany:(NSString*)Company {
		[super setInput:@"Company" toValue:Company];
	}

	/*!
	 * Set the value of the NewsType input for this Choreo.
	*(required, string) Enter the type of news items you want to see in the RSS feed: headline or industry. 
	 */
	-(void)setNewsType:(NSString*)NewsType {
		[super setInput:@"NewsType" toValue:NewsType];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNews Choreo.
 */
@implementation TMBYahoo_Finance_GetNews_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Yahoo! Finance.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the most recent Yahoo! Finance Company or Industry news items as an RSS feed.
 */
@implementation TMBYahoo_Finance_GetNews

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYahoo_Finance_GetNews Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yahoo/Finance/GetNews"] autorelease];
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
		TMBYahoo_Finance_GetNews_ResultSet *results = [[[TMBYahoo_Finance_GetNews_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetNews Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYahoo_Finance_GetNews_Inputs*)newInputSet {
		return [[[TMBYahoo_Finance_GetNews_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetWeatherByCoordinates Choreo.
 */
@implementation TMBYahoo_Weather_GetWeatherByCoordinates_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) The App ID provided by Yahoo!
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) The latitude coordinate of the location you want to search.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) The longitude coordinate of the location you want to search.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Units input for this Choreo.
	*(optional, string) The unit of temperature in the response. Acceptable inputs: f for Fahrenheit or c for Celsius. Defaults to f. When c is specified, all units measurements returned are changed to metric.
	 */
	-(void)setUnits:(NSString*)Units {
		[super setInput:@"Units" toValue:Units];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeatherByCoordinates Choreo.
 */
@implementation TMBYahoo_Weather_GetWeatherByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) The response from Yahoo Weather.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}

	/*!
	 * Retrieve the value of the "WOEID" output from an execution of this Choreo.
	 * @return - NSString* (integer) The unique Where On Earth ID of the location.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getWOEID {
		return [super getOutputByName:@"WOEID"];
	}
	
@end

/*!
 * Retrieves the Yahoo Weather RSS Feed for any specified location by geo-coordinates.
 */
@implementation TMBYahoo_Weather_GetWeatherByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYahoo_Weather_GetWeatherByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yahoo/Weather/GetWeatherByCoordinates"] autorelease];
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
		TMBYahoo_Weather_GetWeatherByCoordinates_ResultSet *results = [[[TMBYahoo_Weather_GetWeatherByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetWeatherByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYahoo_Weather_GetWeatherByCoordinates_Inputs*)newInputSet {
		return [[[TMBYahoo_Weather_GetWeatherByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindByCoordinates Choreo.
 */
@implementation TMBYahoo_PlaceFinder_FindByCoordinates_Inputs

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) The App ID provided by Yahoo!
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the GeocodeFlags input for this Choreo.
	*(optional, string) Affects how geocoding is performed for the request. Valid value are: A, C, L, Q, or R. See documentation for more details on this parameter.
	 */
	-(void)setGeocodeFlags:(NSString*)GeocodeFlags {
		[super setInput:@"GeocodeFlags" toValue:GeocodeFlags];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, string) The latitude coordinate of the location you want to find.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, string) The longitude coordinate of the location you want to find.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the ResponseFlags input for this Choreo.
	*(optional, string) Determines which data elements are returned in the response. Valid values are: B, C, D, E, G, I, J, Q, R, T, U, W, X. See documentation for details on this parameter.
	 */
	-(void)setResponseFlags:(NSString*)ResponseFlags {
		[super setInput:@"ResponseFlags" toValue:ResponseFlags];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) You can specify json to get this output format in JSON. Otherwise, the default output will be in XML.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByCoordinates Choreo.
 */
@implementation TMBYahoo_PlaceFinder_FindByCoordinates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Yahoo! PlaceFinder.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves complete location information from a specified pair of latitude and longitude coordinates.
 */
@implementation TMBYahoo_PlaceFinder_FindByCoordinates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYahoo_PlaceFinder_FindByCoordinates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yahoo/PlaceFinder/FindByCoordinates"] autorelease];
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
		TMBYahoo_PlaceFinder_FindByCoordinates_ResultSet *results = [[[TMBYahoo_PlaceFinder_FindByCoordinates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindByCoordinates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYahoo_PlaceFinder_FindByCoordinates_Inputs*)newInputSet {
		return [[[TMBYahoo_PlaceFinder_FindByCoordinates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FindByAddress Choreo.
 */
@implementation TMBYahoo_PlaceFinder_FindByAddress_Inputs

	/*!
	 * Set the value of the Address input for this Choreo.
	*(required, string) The address to be searched.
	 */
	-(void)setAddress:(NSString*)Address {
		[super setInput:@"Address" toValue:Address];
	}

	/*!
	 * Set the value of the AppID input for this Choreo.
	*(optional, string) The App ID provided by Yahoo!
	 */
	-(void)setAppID:(NSString*)AppID {
		[super setInput:@"AppID" toValue:AppID];
	}

	/*!
	 * Set the value of the GeocodeFlags input for this Choreo.
	*(optional, string) Affects how geocoding is performed for the request. Valid value are: A, C, L, Q, or R. See documentation for more details on this parameter.
	 */
	-(void)setGeocodeFlags:(NSString*)GeocodeFlags {
		[super setInput:@"GeocodeFlags" toValue:GeocodeFlags];
	}

	/*!
	 * Set the value of the ResponseFlags input for this Choreo.
	*(optional, string) Determines which data elements are returned in the response. Valid values are: B, C, D, E, G, I, J, Q, R, T, U, W, X. See documentation for details on this parameter.
	 */
	-(void)setResponseFlags:(NSString*)ResponseFlags {
		[super setInput:@"ResponseFlags" toValue:ResponseFlags];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) You can specify json to get this output format in JSON. Otherwise, the default output will be in XML.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByAddress Choreo.
 */
@implementation TMBYahoo_PlaceFinder_FindByAddress_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Yahoo! PlaceFinder.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves complete geocoding information for a location by specifying an address or partial address.
 */
@implementation TMBYahoo_PlaceFinder_FindByAddress

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBYahoo_PlaceFinder_FindByAddress Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/Yahoo/PlaceFinder/FindByAddress"] autorelease];
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
		TMBYahoo_PlaceFinder_FindByAddress_ResultSet *results = [[[TMBYahoo_PlaceFinder_FindByAddress_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FindByAddress Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBYahoo_PlaceFinder_FindByAddress_Inputs*)newInputSet {
		return [[[TMBYahoo_PlaceFinder_FindByAddress_Inputs alloc] init] autorelease];
	}
@end
	