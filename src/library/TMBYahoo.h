/*!
 * @header Temboo iOS SDK Yahoo classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBYahoo.Weather.GetWeatherByAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWeatherByAddress Choreo.
 */
@interface TMBYahoo_Weather_GetWeatherByAddress_Inputs : TMBChoreographyInputSet
	-(void)setAddress:(NSString*)Address;
	-(void)setAppID:(NSString*)AppID;
	-(void)setUnits:(NSString*)Units;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeatherByAddress Choreo.
 */
@interface TMBYahoo_Weather_GetWeatherByAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getWOEID;	
@end

/*!
 * Retrieves the Yahoo Weather RSS Feed for any specified location by address.
 */
@interface TMBYahoo_Weather_GetWeatherByAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYahoo_Weather_GetWeatherByAddress_Inputs*)newInputSet;
@end

/*! group TMBYahoo.Weather_GetWeatherByAddress Choreo */


/*! group TMBYahoo.Weather.GetWeather Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWeather Choreo.
 */
@interface TMBYahoo_Weather_GetWeather_Inputs : TMBChoreographyInputSet
	-(void)setUnits:(NSString*)Units;
	-(void)setWOEID:(NSString*)WOEID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeather Choreo.
 */
@interface TMBYahoo_Weather_GetWeather_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the Yahoo! Weather RSS Feed for any specified location.
 */
@interface TMBYahoo_Weather_GetWeather : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYahoo_Weather_GetWeather_Inputs*)newInputSet;
@end

/*! group TMBYahoo.Weather_GetWeather Choreo */


/*! group TMBYahoo.Finance.GetNews Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetNews Choreo.
 */
@interface TMBYahoo_Finance_GetNews_Inputs : TMBChoreographyInputSet
	-(void)setCompany:(NSString*)Company;
	-(void)setNewsType:(NSString*)NewsType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNews Choreo.
 */
@interface TMBYahoo_Finance_GetNews_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the most recent Yahoo! Finance Company or Industry news items as an RSS feed.
 */
@interface TMBYahoo_Finance_GetNews : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYahoo_Finance_GetNews_Inputs*)newInputSet;
@end

/*! group TMBYahoo.Finance_GetNews Choreo */


/*! group TMBYahoo.Weather.GetWeatherByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetWeatherByCoordinates Choreo.
 */
@interface TMBYahoo_Weather_GetWeatherByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setUnits:(NSString*)Units;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetWeatherByCoordinates Choreo.
 */
@interface TMBYahoo_Weather_GetWeatherByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;
	-(NSString*)getWOEID;	
@end

/*!
 * Retrieves the Yahoo Weather RSS Feed for any specified location by geo-coordinates.
 */
@interface TMBYahoo_Weather_GetWeatherByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYahoo_Weather_GetWeatherByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBYahoo.Weather_GetWeatherByCoordinates Choreo */


/*! group TMBYahoo.PlaceFinder.FindByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindByCoordinates Choreo.
 */
@interface TMBYahoo_PlaceFinder_FindByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setGeocodeFlags:(NSString*)GeocodeFlags;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setResponseFlags:(NSString*)ResponseFlags;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByCoordinates Choreo.
 */
@interface TMBYahoo_PlaceFinder_FindByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves complete location information from a specified pair of latitude and longitude coordinates.
 */
@interface TMBYahoo_PlaceFinder_FindByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYahoo_PlaceFinder_FindByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBYahoo.PlaceFinder_FindByCoordinates Choreo */


/*! group TMBYahoo.PlaceFinder.FindByAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindByAddress Choreo.
 */
@interface TMBYahoo_PlaceFinder_FindByAddress_Inputs : TMBChoreographyInputSet
	-(void)setAddress:(NSString*)Address;
	-(void)setAppID:(NSString*)AppID;
	-(void)setGeocodeFlags:(NSString*)GeocodeFlags;
	-(void)setResponseFlags:(NSString*)ResponseFlags;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindByAddress Choreo.
 */
@interface TMBYahoo_PlaceFinder_FindByAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves complete geocoding information for a location by specifying an address or partial address.
 */
@interface TMBYahoo_PlaceFinder_FindByAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYahoo_PlaceFinder_FindByAddress_Inputs*)newInputSet;
@end

/*! group TMBYahoo.PlaceFinder_FindByAddress Choreo */
