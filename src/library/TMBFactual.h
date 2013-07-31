/*!
 * @header Temboo iOS SDK Factual classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBFactual.FindPlacesByName Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindPlacesByName Choreo.
 */
@interface TMBFactual_FindPlacesByName_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setQuery:(NSString*)Query;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindPlacesByName Choreo.
 */
@interface TMBFactual_FindPlacesByName_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Search for places by name.
 */
@interface TMBFactual_FindPlacesByName : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFactual_FindPlacesByName_Inputs*)newInputSet;
@end

/*! group TMBFactual_FindPlacesByName Choreo */


/*! group TMBFactual.FilterPlacesByCity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FilterPlacesByCity Choreo.
 */
@interface TMBFactual_FilterPlacesByCity_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setCity:(NSString*)City;
	-(void)setQuery:(NSString*)Query;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterPlacesByCity Choreo.
 */
@interface TMBFactual_FilterPlacesByCity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Restrict a query to a specified city.
 */
@interface TMBFactual_FilterPlacesByCity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFactual_FilterPlacesByCity_Inputs*)newInputSet;
@end

/*! group TMBFactual_FilterPlacesByCity Choreo */


/*! group TMBFactual.FilterPlacesByMultipleCities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FilterPlacesByMultipleCities Choreo.
 */
@interface TMBFactual_FilterPlacesByMultipleCities_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setCities:(NSString*)Cities;
	-(void)setQuery:(NSString*)Query;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterPlacesByMultipleCities Choreo.
 */
@interface TMBFactual_FilterPlacesByMultipleCities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Restrict a query to a specified city.
 */
@interface TMBFactual_FilterPlacesByMultipleCities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFactual_FilterPlacesByMultipleCities_Inputs*)newInputSet;
@end

/*! group TMBFactual_FilterPlacesByMultipleCities Choreo */


/*! group TMBFactual.FilterPlacesByCategories Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FilterPlacesByCategories Choreo.
 */
@interface TMBFactual_FilterPlacesByCategories_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setCategory:(NSString*)Category;
	-(void)setCity:(NSString*)City;
	-(void)setQuery:(NSString*)Query;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterPlacesByCategories Choreo.
 */
@interface TMBFactual_FilterPlacesByCategories_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Filter queries by category.
 */
@interface TMBFactual_FilterPlacesByCategories : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFactual_FilterPlacesByCategories_Inputs*)newInputSet;
@end

/*! group TMBFactual_FilterPlacesByCategories Choreo */


/*! group TMBFactual.FilterRestaurantsByCuisineAndCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FilterRestaurantsByCuisineAndCoordinates Choreo.
 */
@interface TMBFactual_FilterRestaurantsByCuisineAndCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setCuisine:(NSString*)Cuisine;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setRadius:(NSString*)Radius;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterRestaurantsByCuisineAndCoordinates Choreo.
 */
@interface TMBFactual_FilterRestaurantsByCuisineAndCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Find restaurants by cuisine and near specified latitude, longitude coordinates.
 */
@interface TMBFactual_FilterRestaurantsByCuisineAndCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFactual_FilterRestaurantsByCuisineAndCoordinates_Inputs*)newInputSet;
@end

/*! group TMBFactual_FilterRestaurantsByCuisineAndCoordinates Choreo */


/*! group TMBFactual.FindPlacesNearCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindPlacesNearCoordinates Choreo.
 */
@interface TMBFactual_FindPlacesNearCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setQuery:(NSString*)Query;
	-(void)setRadius:(NSString*)Radius;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindPlacesNearCoordinates Choreo.
 */
@interface TMBFactual_FindPlacesNearCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Find places near specified latitude, longitude coordinates.
 */
@interface TMBFactual_FindPlacesNearCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFactual_FindPlacesNearCoordinates_Inputs*)newInputSet;
@end

/*! group TMBFactual_FindPlacesNearCoordinates Choreo */


/*! group TMBFactual.FindRestaurantsByName Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindRestaurantsByName Choreo.
 */
@interface TMBFactual_FindRestaurantsByName_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setQuery:(NSString*)Query;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindRestaurantsByName Choreo.
 */
@interface TMBFactual_FindRestaurantsByName_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Search for restaurants by name. 
 */
@interface TMBFactual_FindRestaurantsByName : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFactual_FindRestaurantsByName_Inputs*)newInputSet;
@end

/*! group TMBFactual_FindRestaurantsByName Choreo */


/*! group TMBFactual.FilterPlacesByTopLevelCategory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FilterPlacesByTopLevelCategory Choreo.
 */
@interface TMBFactual_FilterPlacesByTopLevelCategory_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setCategory:(NSString*)Category;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setQuery:(NSString*)Query;
	-(void)setRadius:(NSString*)Radius;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FilterPlacesByTopLevelCategory Choreo.
 */
@interface TMBFactual_FilterPlacesByTopLevelCategory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Find places by top-level category and near specified latitude, longitude coordinates.
 */
@interface TMBFactual_FilterPlacesByTopLevelCategory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFactual_FilterPlacesByTopLevelCategory_Inputs*)newInputSet;
@end

/*! group TMBFactual_FilterPlacesByTopLevelCategory Choreo */
