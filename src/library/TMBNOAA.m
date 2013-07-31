/*!
 * @TMBNOAA.m
 *
 * Execute Choreographies from the Temboo NOAA bundle.
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

#import "TMBNOAA.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the ListCoordinatesForZipcode Choreo.
 */
@implementation TMBNOAA_ListCoordinatesForZipcode_Inputs

	/*!
	 * Set the value of the ListZipCodeList input for this Choreo.
	*(integer) Enter the zipcode for which latitude and longitude coordinates will be retrieved.
	 */
	-(void)setListZipCodeList:(NSString*)ListZipCodeList {
		[super setInput:@"ListZipCodeList" toValue:ListZipCodeList];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCoordinatesForZipcode Choreo.
 */
@implementation TMBNOAA_ListCoordinatesForZipcode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) Response from NDFD servers.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve latitude and longitude data for a specified zipcode (in 50 U.S. States and Puerto Rico).
 */
@implementation TMBNOAA_ListCoordinatesForZipcode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNOAA_ListCoordinatesForZipcode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NOAA/ListCoordinatesForZipcode"] autorelease];
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
		TMBNOAA_ListCoordinatesForZipcode_ResultSet *results = [[[TMBNOAA_ListCoordinatesForZipcode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListCoordinatesForZipcode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNOAA_ListCoordinatesForZipcode_Inputs*)newInputSet {
		return [[[TMBNOAA_ListCoordinatesForZipcode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WeatherByCitiesUnsummarized Choreo.
 */
@implementation TMBNOAA_WeatherByCitiesUnsummarized_Inputs

	/*!
	 * Set the value of the CitiesLevel input for this Choreo.
	*(required, integer) Enter a city grouping number. For example: enter 1, to obtain weather information for primary U.S. cities. See documentation for additional numbers.
	 */
	-(void)setCitiesLevel:(NSString*)CitiesLevel {
		[super setInput:@"CitiesLevel" toValue:CitiesLevel];
	}

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(required, date) Enter the end time for retrieval of NDWD information in UTC format. Time must be today's date, or a future date.  Format: 2004-04-27T12:00.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the NDFDParameterName input for this Choreo.
	*(optional, string) Enter an additional weather parameter in the following format: phail=phail. Use only if Product is set to: glance.
	 */
	-(void)setNDFDParameterName:(NSString*)NDFDParameterName {
		[super setInput:@"NDFDParameterName" toValue:NDFDParameterName];
	}

	/*!
	 * Set the value of the Product input for this Choreo.
	*(required, string) Enter one of two parameters: time-series (to return all data between the Begin and End time parameters); glance for a subset of 5 often used parameters
	 */
	-(void)setProduct:(NSString*)Product {
		[super setInput:@"Product" toValue:Product];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest date in the database is returned. Format: 2004-04-27T12:00.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Unit input for this Choreo.
	*(optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
	 */
	-(void)setUnit:(NSString*)Unit {
		[super setInput:@"Unit" toValue:Unit];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherByCitiesUnsummarized Choreo.
 */
@implementation TMBNOAA_WeatherByCitiesUnsummarized_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Response from NDFD servers.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve weather information for a specific list of cities.
 */
@implementation TMBNOAA_WeatherByCitiesUnsummarized

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNOAA_WeatherByCitiesUnsummarized Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NOAA/WeatherByCitiesUnsummarized"] autorelease];
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
		TMBNOAA_WeatherByCitiesUnsummarized_ResultSet *results = [[[TMBNOAA_WeatherByCitiesUnsummarized_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WeatherByCitiesUnsummarized Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNOAA_WeatherByCitiesUnsummarized_Inputs*)newInputSet {
		return [[[TMBNOAA_WeatherByCitiesUnsummarized_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WeatherByCitiesSummarized Choreo.
 */
@implementation TMBNOAA_WeatherByCitiesSummarized_Inputs

	/*!
	 * Set the value of the CitiesLevel input for this Choreo.
	*(required, integer) Enter a city grouping number. For example: enter 1, to obtain weather information for primary U.S. cities. See documentation for additional numbers.
	 */
	-(void)setCitiesLevel:(NSString*)CitiesLevel {
		[super setInput:@"CitiesLevel" toValue:CitiesLevel];
	}

	/*!
	 * Set the value of the Format input for this Choreo.
	*(required, string) Specify a timespan for which NDFD data will be summarized. Enter: 24 hourly, for a 24 hour summary, or: 12 hourly, for a 12 hour weather summary.
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the NumberOfDays input for this Choreo.
	*(optional, integer) Specify the number of days to retieve data for. If null, data from the earliest date in the dabase is returned.
	 */
	-(void)setNumberOfDays:(NSString*)NumberOfDays {
		[super setInput:@"NumberOfDays" toValue:NumberOfDays];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest date in the database is returned. Format: 2004-04-27T12:00.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Unit input for this Choreo.
	*(optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
	 */
	-(void)setUnit:(NSString*)Unit {
		[super setInput:@"Unit" toValue:Unit];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherByCitiesSummarized Choreo.
 */
@implementation TMBNOAA_WeatherByCitiesSummarized_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Response from NDFD servers.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve weather information for a specific list of cities.
 */
@implementation TMBNOAA_WeatherByCitiesSummarized

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNOAA_WeatherByCitiesSummarized Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NOAA/WeatherByCitiesSummarized"] autorelease];
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
		TMBNOAA_WeatherByCitiesSummarized_ResultSet *results = [[[TMBNOAA_WeatherByCitiesSummarized_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WeatherByCitiesSummarized Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNOAA_WeatherByCitiesSummarized_Inputs*)newInputSet {
		return [[[TMBNOAA_WeatherByCitiesSummarized_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WeatherByCenterPointSubgridSummarized Choreo.
 */
@implementation TMBNOAA_WeatherByCenterPointSubgridSummarized_Inputs

	/*!
	 * Set the value of the CenterPointLatitude input for this Choreo.
	*(required, decimal) Enter the latitude specifying the rectangle or the grid center that defines the area being queried. North latitude is positive.
	 */
	-(void)setCenterPointLatitude:(NSString*)CenterPointLatitude {
		[super setInput:@"CenterPointLatitude" toValue:CenterPointLatitude];
	}

	/*!
	 * Set the value of the CenterPointLongitude input for this Choreo.
	*(required, decimal) Enter the longitute specifying the rectangle or the grid center that defines the area being queried. West longitude is negative.
	 */
	-(void)setCenterPointLongitude:(NSString*)CenterPointLongitude {
		[super setInput:@"CenterPointLongitude" toValue:CenterPointLongitude];
	}

	/*!
	 * Set the value of the Format input for this Choreo.
	*(required, string) Specify a timespan for which NDFD data will be summarized. Enter: 24 hourly, for a 24 hour summary, or: 12 hourly, for a 12 hour weather summary.
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the LatitudeDistance input for this Choreo.
	*(required, decimal) Specify the distance from the center point in the latitudinal direction to the rectangle's East/West oriented sides.
	 */
	-(void)setLatitudeDistance:(NSString*)LatitudeDistance {
		[super setInput:@"LatitudeDistance" toValue:LatitudeDistance];
	}

	/*!
	 * Set the value of the LongitudeDistance input for this Choreo.
	*(required, decimal) Specify the distance from the center point in the longitudinal direction to the rectangle's North/South oriented side.
	 */
	-(void)setLongitudeDistance:(NSString*)LongitudeDistance {
		[super setInput:@"LongitudeDistance" toValue:LongitudeDistance];
	}

	/*!
	 * Set the value of the NumberOfDays input for this Choreo.
	*(optional, integer) Specify the number of days to retieve data for. If null, data from the earliest date in the dabase is returned.
	 */
	-(void)setNumberOfDays:(NSString*)NumberOfDays {
		[super setInput:@"NumberOfDays" toValue:NumberOfDays];
	}

	/*!
	 * Set the value of the SquareResolution input for this Choreo.
	*(optional, decimal) Enter desired data resolution in kilometers.  Default is 5km.
	 */
	-(void)setSquareResolution:(NSString*)SquareResolution {
		[super setInput:@"SquareResolution" toValue:SquareResolution];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(required, date) Enter the start time for retrieval of NDWD data in following format: 2004-04-27 If null, the earliest date in the database is returned.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Unit input for this Choreo.
	*(optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
	 */
	-(void)setUnit:(NSString*)Unit {
		[super setInput:@"Unit" toValue:Unit];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherByCenterPointSubgridSummarized Choreo.
 */
@implementation TMBNOAA_WeatherByCenterPointSubgridSummarized_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Response from NDFD servers.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve weather information for a rectangle defined by a center point and distances in the latitudinal and longitudinal directions.
 */
@implementation TMBNOAA_WeatherByCenterPointSubgridSummarized

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNOAA_WeatherByCenterPointSubgridSummarized Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NOAA/WeatherByCenterPointSubgridSummarized"] autorelease];
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
		TMBNOAA_WeatherByCenterPointSubgridSummarized_ResultSet *results = [[[TMBNOAA_WeatherByCenterPointSubgridSummarized_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WeatherByCenterPointSubgridSummarized Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNOAA_WeatherByCenterPointSubgridSummarized_Inputs*)newInputSet {
		return [[[TMBNOAA_WeatherByCenterPointSubgridSummarized_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListCityCoordinatesUnsummarized Choreo.
 */
@implementation TMBNOAA_ListCityCoordinatesUnsummarized_Inputs

	/*!
	 * Set the value of the CitiesLevel input for this Choreo.
	*(integer) Enter a city grouping number to retrieve its latitude and longitude coordinates. For example: enter 1, to obtain information for primary U.S. cities.
	 */
	-(void)setCitiesLevel:(NSString*)CitiesLevel {
		[super setInput:@"CitiesLevel" toValue:CitiesLevel];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCityCoordinatesUnsummarized Choreo.
 */
@implementation TMBNOAA_ListCityCoordinatesUnsummarized_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (XML) Response from NDFD servers.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve unsummarized latitude and longitude data for a specified list of cities.
 */
@implementation TMBNOAA_ListCityCoordinatesUnsummarized

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNOAA_ListCityCoordinatesUnsummarized Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NOAA/ListCityCoordinatesUnsummarized"] autorelease];
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
		TMBNOAA_ListCityCoordinatesUnsummarized_ResultSet *results = [[[TMBNOAA_ListCityCoordinatesUnsummarized_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListCityCoordinatesUnsummarized Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNOAA_ListCityCoordinatesUnsummarized_Inputs*)newInputSet {
		return [[[TMBNOAA_ListCityCoordinatesUnsummarized_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WeatherForPointsOnLineSummarized Choreo.
 */
@implementation TMBNOAA_WeatherForPointsOnLineSummarized_Inputs

	/*!
	 * Set the value of the Endpoint1Latitude input for this Choreo.
	*(required, integer) Enter the latitude of the first endpoint of the line for which weather data is requested. North latitude is positive.
	 */
	-(void)setEndpoint1Latitude:(NSString*)Endpoint1Latitude {
		[super setInput:@"Endpoint1Latitude" toValue:Endpoint1Latitude];
	}

	/*!
	 * Set the value of the Endpoint1Longitude input for this Choreo.
	*(required, integer) Enter the longitude of the first endpoint of the line for which weather data is requested. West longitude is negative.
	 */
	-(void)setEndpoint1Longitude:(NSString*)Endpoint1Longitude {
		[super setInput:@"Endpoint1Longitude" toValue:Endpoint1Longitude];
	}

	/*!
	 * Set the value of the Endpoint2Latitude input for this Choreo.
	*(required, integer) Enter the latitude of the second endpoint of the line for which weather data is requested. North latitude is positive.
	 */
	-(void)setEndpoint2Latitude:(NSString*)Endpoint2Latitude {
		[super setInput:@"Endpoint2Latitude" toValue:Endpoint2Latitude];
	}

	/*!
	 * Set the value of the Endpoint2Longitude input for this Choreo.
	*(required, integer) Enter the longitude of the second endpoint of the line for which weather data is requested. West longitude is negative.
	 */
	-(void)setEndpoint2Longitude:(NSString*)Endpoint2Longitude {
		[super setInput:@"Endpoint2Longitude" toValue:Endpoint2Longitude];
	}

	/*!
	 * Set the value of the Format input for this Choreo.
	*(required, string) Specify a timespan for which NDFD data will be summarized. Enter: 24 hourly, for a 24 hour summary, or: 12 hourly, for a 12 hour weather summary.
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the NumberOfDays input for this Choreo.
	*(optional, integer) Specify the number of days to retieve data for. If null, data from the earliest date in the dabase is returned.
	 */
	-(void)setNumberOfDays:(NSString*)NumberOfDays {
		[super setInput:@"NumberOfDays" toValue:NumberOfDays];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest date in the database is returned. Format: 2004-04-27T12:00.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Unit input for this Choreo.
	*(optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
	 */
	-(void)setUnit:(NSString*)Unit {
		[super setInput:@"Unit" toValue:Unit];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherForPointsOnLineSummarized Choreo.
 */
@implementation TMBNOAA_WeatherForPointsOnLineSummarized_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Response from NDFD servers.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve weather information for all points on a line defined by a set of latitude and longitude coordinates.
 */
@implementation TMBNOAA_WeatherForPointsOnLineSummarized

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNOAA_WeatherForPointsOnLineSummarized Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NOAA/WeatherForPointsOnLineSummarized"] autorelease];
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
		TMBNOAA_WeatherForPointsOnLineSummarized_ResultSet *results = [[[TMBNOAA_WeatherForPointsOnLineSummarized_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WeatherForPointsOnLineSummarized Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNOAA_WeatherForPointsOnLineSummarized_Inputs*)newInputSet {
		return [[[TMBNOAA_WeatherForPointsOnLineSummarized_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WeatherForSinglePointSummarized Choreo.
 */
@implementation TMBNOAA_WeatherForSinglePointSummarized_Inputs

	/*!
	 * Set the value of the Format input for this Choreo.
	*(required, string) Specify a timespan for which NDFD data will be summarized. Enter: 24 hourly, for a 24 hour summary, or: 12 hourly, for a 12 hour weather summary.
	 */
	-(void)setFormat:(NSString*)Format {
		[super setInput:@"Format" toValue:Format];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) Enter the latitude coordinates of the point for which weather data is requested. North latitude is positive.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) Enter the longitude coordinate of the point for which weather data is requested. West longitude is negative.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the NumberOfDays input for this Choreo.
	*(optional, integer) Specify the number of days to retieve data for. If null, data from the earliest date in the dabase is returned.
	 */
	-(void)setNumberOfDays:(NSString*)NumberOfDays {
		[super setInput:@"NumberOfDays" toValue:NumberOfDays];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest date in the database is returned. Format: 2004-04-27T12:00.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Unit input for this Choreo.
	*(optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
	 */
	-(void)setUnit:(NSString*)Unit {
		[super setInput:@"Unit" toValue:Unit];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherForSinglePointSummarized Choreo.
 */
@implementation TMBNOAA_WeatherForSinglePointSummarized_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Response from NDFD servers.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve weather information for a single point defined by latitude and longitude coordinates.
 */
@implementation TMBNOAA_WeatherForSinglePointSummarized

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNOAA_WeatherForSinglePointSummarized Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NOAA/WeatherForSinglePointSummarized"] autorelease];
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
		TMBNOAA_WeatherForSinglePointSummarized_ResultSet *results = [[[TMBNOAA_WeatherForSinglePointSummarized_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WeatherForSinglePointSummarized Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNOAA_WeatherForSinglePointSummarized_Inputs*)newInputSet {
		return [[[TMBNOAA_WeatherForSinglePointSummarized_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WeatherByZipcode Choreo.
 */
@implementation TMBNOAA_WeatherByZipcode_Inputs

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, date) Enter today's date, or some future date in UTC format. Format: 2004-04-27T12:00. Defaults to NOW if not provided.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the NDFDParameterName input for this Choreo.
	*(optional, string) Enter an additional weather parameter in the following format: phail=phail. Use only if Product is set to: glance.
	 */
	-(void)setNDFDParameterName:(NSString*)NDFDParameterName {
		[super setInput:@"NDFDParameterName" toValue:NDFDParameterName];
	}

	/*!
	 * Set the value of the Product input for this Choreo.
	*(required, string) Enter one of two parameters: time-series (to return all data between the Begin and End time parameters); glance for a subset of 5 often used parameters
	 */
	-(void)setProduct:(NSString*)Product {
		[super setInput:@"Product" toValue:Product];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest date in the database is returned.  Format: 2004-04-27T12:00.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Unit input for this Choreo.
	*(optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
	 */
	-(void)setUnit:(NSString*)Unit {
		[super setInput:@"Unit" toValue:Unit];
	}

	/*!
	 * Set the value of the ZipCodeList input for this Choreo.
	*(required, integer) Enter the zipcode for which NDFD weather information will be retrieved.
	 */
	-(void)setZipCodeList:(NSString*)ZipCodeList {
		[super setInput:@"ZipCodeList" toValue:ZipCodeList];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherByZipcode Choreo.
 */
@implementation TMBNOAA_WeatherByZipcode_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Response from NDFD servers.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve DWML-encoded NDFD data for a specified zipcode (in 50 U.S. States and Puerto Rico).
 */
@implementation TMBNOAA_WeatherByZipcode

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNOAA_WeatherByZipcode Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NOAA/WeatherByZipcode"] autorelease];
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
		TMBNOAA_WeatherByZipcode_ResultSet *results = [[[TMBNOAA_WeatherByZipcode_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WeatherByZipcode Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNOAA_WeatherByZipcode_Inputs*)newInputSet {
		return [[[TMBNOAA_WeatherByZipcode_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the WeatherForSinglePointUnsummarized Choreo.
 */
@implementation TMBNOAA_WeatherForSinglePointUnsummarized_Inputs

	/*!
	 * Set the value of the EndDate input for this Choreo.
	*(optional, date) Enter the end time for retrieval of NDWD information in UTC format. If null, the last available time in the database is returned. Format: 2004-04-27T12:00.
	 */
	-(void)setEndDate:(NSString*)EndDate {
		[super setInput:@"EndDate" toValue:EndDate];
	}

	/*!
	 * Set the value of the Latitude input for this Choreo.
	*(required, decimal) Enter the latitude coordinate of the point for which weather data is requested. North latitude is positive.
	 */
	-(void)setLatitude:(NSString*)Latitude {
		[super setInput:@"Latitude" toValue:Latitude];
	}

	/*!
	 * Set the value of the Longitude input for this Choreo.
	*(required, decimal) Enter the longitude coordinate of the point for which weather data is requested. West longitude is negative.
	 */
	-(void)setLongitude:(NSString*)Longitude {
		[super setInput:@"Longitude" toValue:Longitude];
	}

	/*!
	 * Set the value of the Product input for this Choreo.
	*(required, string) Enter one of two parameters: time-series (to return all data between the Begin and End time parameters); glance for a subset of 5 often used parameters
	 */
	-(void)setProduct:(NSString*)Product {
		[super setInput:@"Product" toValue:Product];
	}

	/*!
	 * Set the value of the StartDate input for this Choreo.
	*(optional, date) Enter the start time for retrieval of NDWD information in UTC format. If null, the earliest time in the database is returned. Format: 2004-04-27T12:00.
	 */
	-(void)setStartDate:(NSString*)StartDate {
		[super setInput:@"StartDate" toValue:StartDate];
	}

	/*!
	 * Set the value of the Unit input for this Choreo.
	*(optional, string) Enter the unit format the data will be displayed in. Default is: e, for Standard English (U.S. Standard).  Or: m, for Metric (SI Units).
	 */
	-(void)setUnit:(NSString*)Unit {
		[super setInput:@"Unit" toValue:Unit];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherForSinglePointUnsummarized Choreo.
 */
@implementation TMBNOAA_WeatherForSinglePointUnsummarized_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (xml) Response from NDFD servers.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieve unsummarized weather information for a single point defined by latitude and longitude coordinates.
 */
@implementation TMBNOAA_WeatherForSinglePointUnsummarized

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBNOAA_WeatherForSinglePointUnsummarized Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/NOAA/WeatherForSinglePointUnsummarized"] autorelease];
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
		TMBNOAA_WeatherForSinglePointUnsummarized_ResultSet *results = [[[TMBNOAA_WeatherForSinglePointUnsummarized_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the WeatherForSinglePointUnsummarized Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBNOAA_WeatherForSinglePointUnsummarized_Inputs*)newInputSet {
		return [[[TMBNOAA_WeatherForSinglePointUnsummarized_Inputs alloc] init] autorelease];
	}
@end
	