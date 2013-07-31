/*!
 * @header Temboo iOS SDK Patch classes
 *
 * Execute Choreographies from the Temboo Patch bundle.
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

/*! group TMBPatch.FindStoriesByID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByID Choreo.
 */
@interface TMBPatch_FindStoriesByID_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setKeyword:(NSString*)Keyword;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLocationID:(NSString*)LocationID;
	-(void)setMaximumAge:(NSString*)MaximumAge;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByID Choreo.
 */
@interface TMBPatch_FindStoriesByID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Return the most recent stories from a specified U.S. city, state, ZIP code, or neighborhood using its Patch ID.
 */
@interface TMBPatch_FindStoriesByID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPatch_FindStoriesByID_Inputs*)newInputSet;
@end

/*! group TMBPatch_FindStoriesByID Choreo */


/*! group TMBPatch.FindStoriesByState Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByState Choreo.
 */
@interface TMBPatch_FindStoriesByState_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setKeyword:(NSString*)Keyword;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMaximumAge:(NSString*)MaximumAge;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByState Choreo.
 */
@interface TMBPatch_FindStoriesByState_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Return the most recent stories from a specified U.S. state.
 */
@interface TMBPatch_FindStoriesByState : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPatch_FindStoriesByState_Inputs*)newInputSet;
@end

/*! group TMBPatch_FindStoriesByState Choreo */


/*! group TMBPatch.FindStoriesByNeighborhood Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByNeighborhood Choreo.
 */
@interface TMBPatch_FindStoriesByNeighborhood_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setCity:(NSString*)City;
	-(void)setKeyword:(NSString*)Keyword;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMaximumAge:(NSString*)MaximumAge;
	-(void)setNeighborhood:(NSString*)Neighborhood;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByNeighborhood Choreo.
 */
@interface TMBPatch_FindStoriesByNeighborhood_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Return the most recent stories from a specified U.S. neighborhood.
 */
@interface TMBPatch_FindStoriesByNeighborhood : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPatch_FindStoriesByNeighborhood_Inputs*)newInputSet;
@end

/*! group TMBPatch_FindStoriesByNeighborhood Choreo */


/*! group TMBPatch.FindStoriesByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByCoordinates Choreo.
 */
@interface TMBPatch_FindStoriesByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setKeyword:(NSString*)Keyword;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLimit:(NSString*)Limit;
	-(void)setLongitude:(NSString*)Longitude;
	-(void)setMaximumAge:(NSString*)MaximumAge;
	-(void)setRadius:(NSString*)Radius;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByCoordinates Choreo.
 */
@interface TMBPatch_FindStoriesByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Return the most recent stories from a specified U.S. latitude and longitude.
 */
@interface TMBPatch_FindStoriesByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPatch_FindStoriesByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBPatch_FindStoriesByCoordinates Choreo */


/*! group TMBPatch.FindLocationByName Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindLocationByName Choreo.
 */
@interface TMBPatch_FindLocationByName_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setLimit:(NSString*)Limit;
	-(void)setRegionName:(NSString*)RegionName;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindLocationByName Choreo.
 */
@interface TMBPatch_FindLocationByName_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCoordinates;
	-(NSString*)getLatitude;
	-(NSString*)getLocationID;
	-(NSString*)getLongitude;
	-(NSString*)getResponse;	
@end

/*!
 * Return Patch location information for a specified U.S. region.
 */
@interface TMBPatch_FindLocationByName : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPatch_FindLocationByName_Inputs*)newInputSet;
@end

/*! group TMBPatch_FindLocationByName Choreo */


/*! group TMBPatch.FindStoriesByZIPCode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByZIPCode Choreo.
 */
@interface TMBPatch_FindStoriesByZIPCode_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setKeyword:(NSString*)Keyword;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMaximumAge:(NSString*)MaximumAge;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setZIPCode:(NSString*)ZIPCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByZIPCode Choreo.
 */
@interface TMBPatch_FindStoriesByZIPCode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Return the most recent stories from a specified U.S. ZIP code.
 */
@interface TMBPatch_FindStoriesByZIPCode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPatch_FindStoriesByZIPCode_Inputs*)newInputSet;
@end

/*! group TMBPatch_FindStoriesByZIPCode Choreo */


/*! group TMBPatch.FindStoriesByCity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FindStoriesByCity Choreo.
 */
@interface TMBPatch_FindStoriesByCity_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAPISecret:(NSString*)APISecret;
	-(void)setCity:(NSString*)City;
	-(void)setKeyword:(NSString*)Keyword;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMaximumAge:(NSString*)MaximumAge;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FindStoriesByCity Choreo.
 */
@interface TMBPatch_FindStoriesByCity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Return the most recent stories from a specified U.S. city.
 */
@interface TMBPatch_FindStoriesByCity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBPatch_FindStoriesByCity_Inputs*)newInputSet;
@end

/*! group TMBPatch_FindStoriesByCity Choreo */
