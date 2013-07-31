/*!
 * @header Temboo iOS SDK Yelp classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBYelp.SearchForBusinessesWithDeals Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchForBusinessesWithDeals Choreo.
 */
@interface TMBYelp_SearchForBusinessesWithDeals_Inputs : TMBChoreographyInputSet
	-(void)setAccuracy:(NSString*)Accuracy;
	-(void)setBusinessType:(NSString*)BusinessType;
	-(void)setCategory:(NSString*)Category;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLocation:(NSString*)Location;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTokenSecret:(NSString*)TokenSecret;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchForBusinessesWithDeals Choreo.
 */
@interface TMBYelp_SearchForBusinessesWithDeals_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Only returns information for businesses with deals.
 */
@interface TMBYelp_SearchForBusinessesWithDeals : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYelp_SearchForBusinessesWithDeals_Inputs*)newInputSet;
@end

/*! group TMBYelp_SearchForBusinessesWithDeals Choreo */


/*! group TMBYelp.SearchByBoundingBox Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByBoundingBox Choreo.
 */
@interface TMBYelp_SearchByBoundingBox_Inputs : TMBChoreographyInputSet
	-(void)setBusinessType:(NSString*)BusinessType;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setNortheastLatitude:(NSString*)NortheastLatitude;
	-(void)setNortheastLongitude:(NSString*)NortheastLongitude;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSouthwestLatitude:(NSString*)SouthwestLatitude;
	-(void)setSouthwestLongitude:(NSString*)SouthwestLongitude;
	-(void)setTokenSecret:(NSString*)TokenSecret;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByBoundingBox Choreo.
 */
@interface TMBYelp_SearchByBoundingBox_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve businesses in a geographic bounding box.
 */
@interface TMBYelp_SearchByBoundingBox : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYelp_SearchByBoundingBox_Inputs*)newInputSet;
@end

/*! group TMBYelp_SearchByBoundingBox Choreo */


/*! group TMBYelp.SearchByCity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCity Choreo.
 */
@interface TMBYelp_SearchByCity_Inputs : TMBChoreographyInputSet
	-(void)setBusinessType:(NSString*)BusinessType;
	-(void)setCity:(NSString*)City;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTokenSecret:(NSString*)TokenSecret;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCity Choreo.
 */
@interface TMBYelp_SearchByCity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve businesses by city.
 */
@interface TMBYelp_SearchByCity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYelp_SearchByCity_Inputs*)newInputSet;
@end

/*! group TMBYelp_SearchByCity Choreo */


/*! group TMBYelp.SearchByNeighborhood Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByNeighborhood Choreo.
 */
@interface TMBYelp_SearchByNeighborhood_Inputs : TMBChoreographyInputSet
	-(void)setBusinessType:(NSString*)BusinessType;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setNeighborhood:(NSString*)Neighborhood;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTokenSecret:(NSString*)TokenSecret;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByNeighborhood Choreo.
 */
@interface TMBYelp_SearchByNeighborhood_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve businesses by neighborhood.
 */
@interface TMBYelp_SearchByNeighborhood : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYelp_SearchByNeighborhood_Inputs*)newInputSet;
@end

/*! group TMBYelp_SearchByNeighborhood Choreo */


/*! group TMBYelp.SearchByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCoordinates Choreo.
 */
@interface TMBYelp_SearchByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAccuracy:(NSString*)Accuracy;
	-(void)setBusinessType:(NSString*)BusinessType;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTokenSecret:(NSString*)TokenSecret;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCoordinates Choreo.
 */
@interface TMBYelp_SearchByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve businesses near a specified latitude and longitude.
 */
@interface TMBYelp_SearchByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYelp_SearchByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBYelp_SearchByCoordinates Choreo */


/*! group TMBYelp.SearchByCategory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByCategory Choreo.
 */
@interface TMBYelp_SearchByCategory_Inputs : TMBChoreographyInputSet
	-(void)setCategory:(NSString*)Category;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setCount:(NSString*)Count;
	-(void)setLocation:(NSString*)Location;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTokenSecret:(NSString*)TokenSecret;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByCategory Choreo.
 */
@interface TMBYelp_SearchByCategory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve businesses in a specific location by business category.
 */
@interface TMBYelp_SearchByCategory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYelp_SearchByCategory_Inputs*)newInputSet;
@end

/*! group TMBYelp_SearchByCategory Choreo */


/*! group TMBYelp.SearchForBusiness Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchForBusiness Choreo.
 */
@interface TMBYelp_SearchForBusiness_Inputs : TMBChoreographyInputSet
	-(void)setBusinessId:(NSString*)BusinessId;
	-(void)setBusinessName:(NSString*)BusinessName;
	-(void)setCity:(NSString*)City;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTokenSecret:(NSString*)TokenSecret;
	-(void)setToken:(NSString*)Token;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchForBusiness Choreo.
 */
@interface TMBYelp_SearchForBusiness_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a given business id or name.
 */
@interface TMBYelp_SearchForBusiness : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYelp_SearchForBusiness_Inputs*)newInputSet;
@end

/*! group TMBYelp_SearchForBusiness Choreo */


/*! group TMBYelp.SearchByAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByAddress Choreo.
 */
@interface TMBYelp_SearchByAddress_Inputs : TMBChoreographyInputSet
	-(void)setAddress:(NSString*)Address;
	-(void)setBusinessType:(NSString*)BusinessType;
	-(void)setConsumerKey:(NSString*)ConsumerKey;
	-(void)setConsumerSecret:(NSString*)ConsumerSecret;
	-(void)setRange:(NSString*)Range;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTokenSecret:(NSString*)TokenSecret;
	-(void)setToken:(NSString*)Token;
	-(void)setUnits:(NSString*)Units;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByAddress Choreo.
 */
@interface TMBYelp_SearchByAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve businesses within a specific range of a specified address.
 */
@interface TMBYelp_SearchByAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBYelp_SearchByAddress_Inputs*)newInputSet;
@end

/*! group TMBYelp_SearchByAddress Choreo */
