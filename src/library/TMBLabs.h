/*!
 * @header Temboo iOS SDK Labs classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBLabs.Social.GetNearbyContacts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetNearbyContacts Choreo.
 */
@interface TMBLabs_Social_GetNearbyContacts_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setAfterTimestamp:(NSString*)AfterTimestamp;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setOffset:(NSString*)Offset;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetNearbyContacts Choreo.
 */
@interface TMBLabs_Social_GetNearbyContacts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Searches Foursquare recent check-ins and the Facebook social graph with a given set of Geo coordinates
 */
@interface TMBLabs_Social_GetNearbyContacts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_Social_GetNearbyContacts_Inputs*)newInputSet;
@end

/*! group TMBLabs.Social_GetNearbyContacts Choreo */


/*! group TMBLabs.GetWeather.ByGoogleLat Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByGoogleLat Choreo.
 */
@interface TMBLabs_GetWeather_ByGoogleLat_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByGoogleLat Choreo.
 */
@interface TMBLabs_GetWeather_ByGoogleLat_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves weather and UV index data based on coordinates returned from Google Latitude.
 */
@interface TMBLabs_GetWeather_ByGoogleLat : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_GetWeather_ByGoogleLat_Inputs*)newInputSet;
@end

/*! group TMBLabs.GetWeather_ByGoogleLat Choreo */


/*! group TMBLabs.GetWeather.ByAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByAddress Choreo.
 */
@interface TMBLabs_GetWeather_ByAddress_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setAddress:(NSString*)Address;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByAddress Choreo.
 */
@interface TMBLabs_GetWeather_ByAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves weather and UV index data for a given Geo point using the Yahoo Weather and EnviroFacts APIs.
 */
@interface TMBLabs_GetWeather_ByAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_GetWeather_ByAddress_Inputs*)newInputSet;
@end

/*! group TMBLabs.GetWeather_ByAddress Choreo */


/*! group TMBLabs.GoodCitizen.EcoByZip Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EcoByZip Choreo.
 */
@interface TMBLabs_GoodCitizen_EcoByZip_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setLimit:(NSString*)Limit;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EcoByZip Choreo.
 */
@interface TMBLabs_GoodCitizen_EcoByZip_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a host of eco-conscious environmental information for a specified location based on zip code.
 */
@interface TMBLabs_GoodCitizen_EcoByZip : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_GoodCitizen_EcoByZip_Inputs*)newInputSet;
@end

/*! group TMBLabs.GoodCitizen_EcoByZip Choreo */


/*! group TMBLabs.GetWeather.ByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByCoordinates Choreo.
 */
@interface TMBLabs_GetWeather_ByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByCoordinates Choreo.
 */
@interface TMBLabs_GetWeather_ByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves weather and UV index data for a given Geo point using the Yahoo Weather and EnviroFacts APIs.
 */
@interface TMBLabs_GetWeather_ByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_GetWeather_ByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBLabs.GetWeather_ByCoordinates Choreo */


/*! group TMBLabs.Social.GetContacts Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetContacts Choreo.
 */
@interface TMBLabs_Social_GetContacts_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setScreenName:(NSString*)ScreenName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetContacts Choreo.
 */
@interface TMBLabs_Social_GetContacts_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves your social contacts from multiple APIs in one API call.
 */
@interface TMBLabs_Social_GetContacts : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_Social_GetContacts_Inputs*)newInputSet;
@end

/*! group TMBLabs.Social_GetContacts Choreo */


/*! group TMBLabs.GetPlaces.ByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByCoordinates Choreo.
 */
@interface TMBLabs_GetPlaces_ByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByCoordinates Choreo.
 */
@interface TMBLabs_GetPlaces_ByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about places near a set of coordinates from multiple sources in one API call.
 */
@interface TMBLabs_GetPlaces_ByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_GetPlaces_ByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBLabs.GetPlaces_ByCoordinates Choreo */


/*! group TMBLabs.Social.UpdateAllStatuses Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UpdateAllStatuses Choreo.
 */
@interface TMBLabs_Social_UpdateAllStatuses_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setMessage:(NSString*)Message;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UpdateAllStatuses Choreo.
 */
@interface TMBLabs_Social_UpdateAllStatuses_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Shares a post across multiple social networks such as Facebook, Tumblr, and Twitter.
 */
@interface TMBLabs_Social_UpdateAllStatuses : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_Social_UpdateAllStatuses_Inputs*)newInputSet;
@end

/*! group TMBLabs.Social_UpdateAllStatuses Choreo */


/*! group TMBLabs.GoodCitizen.Civic Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Civic Choreo.
 */
@interface TMBLabs_GoodCitizen_Civic_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Civic Choreo.
 */
@interface TMBLabs_GoodCitizen_Civic_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a host of information about the district and representatives of a specified location.
 */
@interface TMBLabs_GoodCitizen_Civic : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_GoodCitizen_Civic_Inputs*)newInputSet;
@end

/*! group TMBLabs.GoodCitizen_Civic Choreo */


/*! group TMBLabs.GoodCitizen.EcoByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EcoByCoordinates Choreo.
 */
@interface TMBLabs_GoodCitizen_EcoByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EcoByCoordinates Choreo.
 */
@interface TMBLabs_GoodCitizen_EcoByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a host of eco-conscious environmental information for a specified location based on Lattitude and Longitude inputs.
 */
@interface TMBLabs_GoodCitizen_EcoByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_GoodCitizen_EcoByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBLabs.GoodCitizen_EcoByCoordinates Choreo */


/*! group TMBLabs.GetWeather.ByFoursquare Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByFoursquare Choreo.
 */
@interface TMBLabs_GetWeather_ByFoursquare_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setShout:(NSString*)Shout;
	-(void)setVenueID:(NSString*)VenueID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByFoursquare Choreo.
 */
@interface TMBLabs_GetWeather_ByFoursquare_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves weather and UV index data based on coordinates returned from a Foursquare recent check-in.
 */
@interface TMBLabs_GetWeather_ByFoursquare : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_GetWeather_ByFoursquare_Inputs*)newInputSet;
@end

/*! group TMBLabs.GetWeather_ByFoursquare Choreo */


/*! group TMBLabs.GetPlaces.ByGoogleLat Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByGoogleLat Choreo.
 */
@interface TMBLabs_GetPlaces_ByGoogleLat_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setLimit:(NSString*)Limit;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByGoogleLat Choreo.
 */
@interface TMBLabs_GetPlaces_ByGoogleLat_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information from multiple APIs about places near a set of coordinates retrieved from Google Latitude.
 */
@interface TMBLabs_GetPlaces_ByGoogleLat : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_GetPlaces_ByGoogleLat_Inputs*)newInputSet;
@end

/*! group TMBLabs.GetPlaces_ByGoogleLat Choreo */


/*! group TMBLabs.GetPlaces.ByAddress Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByAddress Choreo.
 */
@interface TMBLabs_GetPlaces_ByAddress_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setAddress:(NSString*)Address;
	-(void)setLimit:(NSString*)Limit;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByAddress Choreo.
 */
@interface TMBLabs_GetPlaces_ByAddress_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information from multiple APIs about places near a specified street address.
 */
@interface TMBLabs_GetPlaces_ByAddress : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_GetPlaces_ByAddress_Inputs*)newInputSet;
@end

/*! group TMBLabs.GetPlaces_ByAddress Choreo */


/*! group TMBLabs.GetPlaces.ByFoursquare Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ByFoursquare Choreo.
 */
@interface TMBLabs_GetPlaces_ByFoursquare_Inputs : TMBChoreographyInputSet
	-(void)setAPICredentials:(NSString*)APICredentials;
	-(void)setLimit:(NSString*)Limit;
	-(void)setQuery:(NSString*)Query;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setShout:(NSString*)Shout;
	-(void)setType:(NSString*)Type;
	-(void)setVenueID:(NSString*)VenueID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ByFoursquare Choreo.
 */
@interface TMBLabs_GetPlaces_ByFoursquare_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information from multiple APIs about places near a set of coordinates retrieved from Foursquare.
 */
@interface TMBLabs_GetPlaces_ByFoursquare : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBLabs_GetPlaces_ByFoursquare_Inputs*)newInputSet;
@end

/*! group TMBLabs.GetPlaces_ByFoursquare Choreo */
