/*!
 * @header Temboo iOS SDK NOAA classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBNOAA.ListCoordinatesForZipcode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListCoordinatesForZipcode Choreo.
 */
@interface TMBNOAA_ListCoordinatesForZipcode_Inputs : TMBChoreographyInputSet
	-(void)setListZipCodeList:(NSString*)ListZipCodeList;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCoordinatesForZipcode Choreo.
 */
@interface TMBNOAA_ListCoordinatesForZipcode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve latitude and longitude data for a specified zipcode (in 50 U.S. States and Puerto Rico).
 */
@interface TMBNOAA_ListCoordinatesForZipcode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNOAA_ListCoordinatesForZipcode_Inputs*)newInputSet;
@end

/*! group TMBNOAA_ListCoordinatesForZipcode Choreo */


/*! group TMBNOAA.WeatherByCitiesUnsummarized Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WeatherByCitiesUnsummarized Choreo.
 */
@interface TMBNOAA_WeatherByCitiesUnsummarized_Inputs : TMBChoreographyInputSet
	-(void)setCitiesLevel:(NSString*)CitiesLevel;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setNDFDParameterName:(NSString*)NDFDParameterName;
	-(void)setProduct:(NSString*)Product;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setUnit:(NSString*)Unit;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherByCitiesUnsummarized Choreo.
 */
@interface TMBNOAA_WeatherByCitiesUnsummarized_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve weather information for a specific list of cities.
 */
@interface TMBNOAA_WeatherByCitiesUnsummarized : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNOAA_WeatherByCitiesUnsummarized_Inputs*)newInputSet;
@end

/*! group TMBNOAA_WeatherByCitiesUnsummarized Choreo */


/*! group TMBNOAA.WeatherByCitiesSummarized Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WeatherByCitiesSummarized Choreo.
 */
@interface TMBNOAA_WeatherByCitiesSummarized_Inputs : TMBChoreographyInputSet
	-(void)setCitiesLevel:(NSString*)CitiesLevel;
	-(void)setFormat:(NSString*)Format;
	-(void)setNumberOfDays:(NSString*)NumberOfDays;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setUnit:(NSString*)Unit;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherByCitiesSummarized Choreo.
 */
@interface TMBNOAA_WeatherByCitiesSummarized_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve weather information for a specific list of cities.
 */
@interface TMBNOAA_WeatherByCitiesSummarized : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNOAA_WeatherByCitiesSummarized_Inputs*)newInputSet;
@end

/*! group TMBNOAA_WeatherByCitiesSummarized Choreo */


/*! group TMBNOAA.WeatherByCenterPointSubgridSummarized Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WeatherByCenterPointSubgridSummarized Choreo.
 */
@interface TMBNOAA_WeatherByCenterPointSubgridSummarized_Inputs : TMBChoreographyInputSet
	-(void)setCenterPointLatitude:(NSString*)CenterPointLatitude;
	-(void)setCenterPointLongitude:(NSString*)CenterPointLongitude;
	-(void)setFormat:(NSString*)Format;
	-(void)setLatitudeDistance:(NSString*)LatitudeDistance;
	-(void)setLongitudeDistance:(NSString*)LongitudeDistance;
	-(void)setNumberOfDays:(NSString*)NumberOfDays;
	-(void)setSquareResolution:(NSString*)SquareResolution;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setUnit:(NSString*)Unit;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherByCenterPointSubgridSummarized Choreo.
 */
@interface TMBNOAA_WeatherByCenterPointSubgridSummarized_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve weather information for a rectangle defined by a center point and distances in the latitudinal and longitudinal directions.
 */
@interface TMBNOAA_WeatherByCenterPointSubgridSummarized : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNOAA_WeatherByCenterPointSubgridSummarized_Inputs*)newInputSet;
@end

/*! group TMBNOAA_WeatherByCenterPointSubgridSummarized Choreo */


/*! group TMBNOAA.ListCityCoordinatesUnsummarized Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListCityCoordinatesUnsummarized Choreo.
 */
@interface TMBNOAA_ListCityCoordinatesUnsummarized_Inputs : TMBChoreographyInputSet
	-(void)setCitiesLevel:(NSString*)CitiesLevel;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCityCoordinatesUnsummarized Choreo.
 */
@interface TMBNOAA_ListCityCoordinatesUnsummarized_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve unsummarized latitude and longitude data for a specified list of cities.
 */
@interface TMBNOAA_ListCityCoordinatesUnsummarized : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNOAA_ListCityCoordinatesUnsummarized_Inputs*)newInputSet;
@end

/*! group TMBNOAA_ListCityCoordinatesUnsummarized Choreo */


/*! group TMBNOAA.WeatherForPointsOnLineSummarized Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WeatherForPointsOnLineSummarized Choreo.
 */
@interface TMBNOAA_WeatherForPointsOnLineSummarized_Inputs : TMBChoreographyInputSet
	-(void)setEndpoint1Latitude:(NSString*)Endpoint1Latitude;
	-(void)setEndpoint1Longitude:(NSString*)Endpoint1Longitude;
	-(void)setEndpoint2Latitude:(NSString*)Endpoint2Latitude;
	-(void)setEndpoint2Longitude:(NSString*)Endpoint2Longitude;
	-(void)setFormat:(NSString*)Format;
	-(void)setNumberOfDays:(NSString*)NumberOfDays;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setUnit:(NSString*)Unit;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherForPointsOnLineSummarized Choreo.
 */
@interface TMBNOAA_WeatherForPointsOnLineSummarized_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve weather information for all points on a line defined by a set of latitude and longitude coordinates.
 */
@interface TMBNOAA_WeatherForPointsOnLineSummarized : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNOAA_WeatherForPointsOnLineSummarized_Inputs*)newInputSet;
@end

/*! group TMBNOAA_WeatherForPointsOnLineSummarized Choreo */


/*! group TMBNOAA.WeatherForSinglePointSummarized Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WeatherForSinglePointSummarized Choreo.
 */
@interface TMBNOAA_WeatherForSinglePointSummarized_Inputs : TMBChoreographyInputSet
	-(void)setFormat:(NSString*)Format;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setNumberOfDays:(NSString*)NumberOfDays;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setUnit:(NSString*)Unit;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherForSinglePointSummarized Choreo.
 */
@interface TMBNOAA_WeatherForSinglePointSummarized_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve weather information for a single point defined by latitude and longitude coordinates.
 */
@interface TMBNOAA_WeatherForSinglePointSummarized : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNOAA_WeatherForSinglePointSummarized_Inputs*)newInputSet;
@end

/*! group TMBNOAA_WeatherForSinglePointSummarized Choreo */


/*! group TMBNOAA.WeatherByZipcode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WeatherByZipcode Choreo.
 */
@interface TMBNOAA_WeatherByZipcode_Inputs : TMBChoreographyInputSet
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setNDFDParameterName:(NSString*)NDFDParameterName;
	-(void)setProduct:(NSString*)Product;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setUnit:(NSString*)Unit;
	-(void)setZipCodeList:(NSString*)ZipCodeList;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherByZipcode Choreo.
 */
@interface TMBNOAA_WeatherByZipcode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve DWML-encoded NDFD data for a specified zipcode (in 50 U.S. States and Puerto Rico).
 */
@interface TMBNOAA_WeatherByZipcode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNOAA_WeatherByZipcode_Inputs*)newInputSet;
@end

/*! group TMBNOAA_WeatherByZipcode Choreo */


/*! group TMBNOAA.WeatherForSinglePointUnsummarized Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the WeatherForSinglePointUnsummarized Choreo.
 */
@interface TMBNOAA_WeatherForSinglePointUnsummarized_Inputs : TMBChoreographyInputSet
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setProduct:(NSString*)Product;
	-(void)setStartDate:(NSString*)StartDate;
	-(void)setUnit:(NSString*)Unit;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the WeatherForSinglePointUnsummarized Choreo.
 */
@interface TMBNOAA_WeatherForSinglePointUnsummarized_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve unsummarized weather information for a single point defined by latitude and longitude coordinates.
 */
@interface TMBNOAA_WeatherForSinglePointUnsummarized : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBNOAA_WeatherForSinglePointUnsummarized_Inputs*)newInputSet;
@end

/*! group TMBNOAA_WeatherForSinglePointUnsummarized Choreo */
