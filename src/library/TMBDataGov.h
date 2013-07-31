/*!
 * @header Temboo iOS SDK DataGov classes
 *
 * Execute Choreographies from the Temboo DataGov bundle.
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

/*! group TMBDataGov.GetDemographicsForNation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDemographicsForNation Choreo.
 */
@interface TMBDataGov_GetDemographicsForNation_Inputs : TMBChoreographyInputSet
	-(void)setDataVersion:(NSString*)DataVersion;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDemographicsForNation Choreo.
 */
@interface TMBDataGov_GetDemographicsForNation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve demographic information for the entire nation.
 */
@interface TMBDataGov_GetDemographicsForNation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDataGov_GetDemographicsForNation_Inputs*)newInputSet;
@end

/*! group TMBDataGov_GetDemographicsForNation Choreo */


/*! group TMBDataGov.GetDemographicsByTypeAndID Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDemographicsByTypeAndID Choreo.
 */
@interface TMBDataGov_GetDemographicsByTypeAndID_Inputs : TMBChoreographyInputSet
	-(void)setDataVersion:(NSString*)DataVersion;
	-(void)setGeographyIDs:(NSString*)GeographyIDs;
	-(void)setGeographyType:(NSString*)GeographyType;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDemographicsByTypeAndID Choreo.
 */
@interface TMBDataGov_GetDemographicsByTypeAndID_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve demographic data for a specified geography type and geography ID.
 */
@interface TMBDataGov_GetDemographicsByTypeAndID : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDataGov_GetDemographicsByTypeAndID_Inputs*)newInputSet;
@end

/*! group TMBDataGov_GetDemographicsByTypeAndID Choreo */


/*! group TMBDataGov.GetCensusIDByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCensusIDByCoordinates Choreo.
 */
@interface TMBDataGov_GetCensusIDByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setGeographyType:(NSString*)GeographyType;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCensusIDByCoordinates Choreo.
 */
@interface TMBDataGov_GetCensusIDByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCensusID;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve the U.S. census block geography ID for a specified latitude and longitude. 
 */
@interface TMBDataGov_GetCensusIDByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDataGov_GetCensusIDByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBDataGov_GetCensusIDByCoordinates Choreo */


/*! group TMBDataGov.GetCensusIDByTypeAndName Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCensusIDByTypeAndName Choreo.
 */
@interface TMBDataGov_GetCensusIDByTypeAndName_Inputs : TMBChoreographyInputSet
	-(void)setGeographyName:(NSString*)GeographyName;
	-(void)setGeographyType:(NSString*)GeographyType;
	-(void)setMaxResults:(NSString*)MaxResults;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCensusIDByTypeAndName Choreo.
 */
@interface TMBDataGov_GetCensusIDByTypeAndName_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCensusID;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve the U.S. census ID for a specified geography type and name.
 */
@interface TMBDataGov_GetCensusIDByTypeAndName : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDataGov_GetCensusIDByTypeAndName_Inputs*)newInputSet;
@end

/*! group TMBDataGov_GetCensusIDByTypeAndName Choreo */


/*! group TMBDataGov.GetDemographicsByCoordinates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetDemographicsByCoordinates Choreo.
 */
@interface TMBDataGov_GetDemographicsByCoordinates_Inputs : TMBChoreographyInputSet
	-(void)setDataVersion:(NSString*)DataVersion;
	-(void)setLatitude:(NSString*)Latitude;
	-(void)setLongitude:(NSString*)Longitude;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetDemographicsByCoordinates Choreo.
 */
@interface TMBDataGov_GetDemographicsByCoordinates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve demographic information for specified geographical coordinates.
 */
@interface TMBDataGov_GetDemographicsByCoordinates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDataGov_GetDemographicsByCoordinates_Inputs*)newInputSet;
@end

/*! group TMBDataGov_GetDemographicsByCoordinates Choreo */
