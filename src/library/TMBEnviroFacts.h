/*!
 * @header Temboo iOS SDK EnviroFacts classes
 *
 * Execute Choreographies from the Temboo EnviroFacts bundle.
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

/*! group TMBEnviroFacts.UVForecast.HourlyUVByCity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the HourlyUVByCity Choreo.
 */
@interface TMBEnviroFacts_UVForecast_HourlyUVByCity_Inputs : TMBChoreographyInputSet
	-(void)setCity:(NSString*)City;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HourlyUVByCity Choreo.
 */
@interface TMBEnviroFacts_UVForecast_HourlyUVByCity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves EPA hourly Ultraviolet (UV) Index readings in a given city. 
 */
@interface TMBEnviroFacts_UVForecast_HourlyUVByCity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBEnviroFacts_UVForecast_HourlyUVByCity_Inputs*)newInputSet;
@end

/*! group TMBEnviroFacts.UVForecast_HourlyUVByCity Choreo */


/*! group TMBEnviroFacts.UVForecast.HourlyUVByZipCode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the HourlyUVByZipCode Choreo.
 */
@interface TMBEnviroFacts_UVForecast_HourlyUVByZipCode_Inputs : TMBChoreographyInputSet
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the HourlyUVByZipCode Choreo.
 */
@interface TMBEnviroFacts_UVForecast_HourlyUVByZipCode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves EPA hourly Ultraviolet (UV) Index readings in a given zip code.
 */
@interface TMBEnviroFacts_UVForecast_HourlyUVByZipCode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBEnviroFacts_UVForecast_HourlyUVByZipCode_Inputs*)newInputSet;
@end

/*! group TMBEnviroFacts.UVForecast_HourlyUVByZipCode Choreo */


/*! group TMBEnviroFacts.DesignForEnvironment.AdvancedSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AdvancedSearch Choreo.
 */
@interface TMBEnviroFacts_DesignForEnvironment_AdvancedSearch_Inputs : TMBChoreographyInputSet
	-(void)setOperator:(NSString*)Operator;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRowEnd:(NSString*)RowEnd;
	-(void)setRowStart:(NSString*)RowStart;
	-(void)setSearchType:(NSString*)SearchType;
	-(void)setSearchValue:(NSString*)SearchValue;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AdvancedSearch Choreo.
 */
@interface TMBEnviroFacts_DesignForEnvironment_AdvancedSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCount;
	-(NSString*)getResponse;	
@end

/*!
 * Performs a detailed search of the EPA Design for the Environment database.
 */
@interface TMBEnviroFacts_DesignForEnvironment_AdvancedSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBEnviroFacts_DesignForEnvironment_AdvancedSearch_Inputs*)newInputSet;
@end

/*! group TMBEnviroFacts.DesignForEnvironment_AdvancedSearch Choreo */


/*! group TMBEnviroFacts.UVForecast.DailyUVByCity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DailyUVByCity Choreo.
 */
@interface TMBEnviroFacts_UVForecast_DailyUVByCity_Inputs : TMBChoreographyInputSet
	-(void)setCity:(NSString*)City;
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DailyUVByCity Choreo.
 */
@interface TMBEnviroFacts_UVForecast_DailyUVByCity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves EPA daily Ultraviolet (UV) Index readings in a given city.
 */
@interface TMBEnviroFacts_UVForecast_DailyUVByCity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBEnviroFacts_UVForecast_DailyUVByCity_Inputs*)newInputSet;
@end

/*! group TMBEnviroFacts.UVForecast_DailyUVByCity Choreo */


/*! group TMBEnviroFacts.DesignForEnvironment.SearchByProduct Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchByProduct Choreo.
 */
@interface TMBEnviroFacts_DesignForEnvironment_SearchByProduct_Inputs : TMBChoreographyInputSet
	-(void)setCompanyKeyword:(NSString*)CompanyKeyword;
	-(void)setOperator:(NSString*)Operator;
	-(void)setProductID:(NSString*)ProductID;
	-(void)setProductKeyword:(NSString*)ProductKeyword;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRowEnd:(NSString*)RowEnd;
	-(void)setRowStart:(NSString*)RowStart;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchByProduct Choreo.
 */
@interface TMBEnviroFacts_DesignForEnvironment_SearchByProduct_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCount;
	-(NSString*)getResponse;	
@end

/*!
 * Searches for products in the EPA Design for the Environment database.
 */
@interface TMBEnviroFacts_DesignForEnvironment_SearchByProduct : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBEnviroFacts_DesignForEnvironment_SearchByProduct_Inputs*)newInputSet;
@end

/*! group TMBEnviroFacts.DesignForEnvironment_SearchByProduct Choreo */


/*! group TMBEnviroFacts.UVForecast.DailyUVByZipCode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DailyUVByZipCode Choreo.
 */
@interface TMBEnviroFacts_UVForecast_DailyUVByZipCode_Inputs : TMBChoreographyInputSet
	-(void)setResponseType:(NSString*)ResponseType;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DailyUVByZipCode Choreo.
 */
@interface TMBEnviroFacts_UVForecast_DailyUVByZipCode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves EPA daily Ultraviolet (UV) Index readings in a given zip code. 
 */
@interface TMBEnviroFacts_UVForecast_DailyUVByZipCode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBEnviroFacts_UVForecast_DailyUVByZipCode_Inputs*)newInputSet;
@end

/*! group TMBEnviroFacts.UVForecast_DailyUVByZipCode Choreo */


/*! group TMBEnviroFacts.Toxins.ChemicalSearch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ChemicalSearch Choreo.
 */
@interface TMBEnviroFacts_Toxins_ChemicalSearch_Inputs : TMBChoreographyInputSet
	-(void)setChemicalID:(NSString*)ChemicalID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ChemicalSearch Choreo.
 */
@interface TMBEnviroFacts_Toxins_ChemicalSearch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information about specific chemicals released by EPA-regulated facilities.
 */
@interface TMBEnviroFacts_Toxins_ChemicalSearch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBEnviroFacts_Toxins_ChemicalSearch_Inputs*)newInputSet;
@end

/*! group TMBEnviroFacts.Toxins_ChemicalSearch Choreo */


/*! group TMBEnviroFacts.Toxins.ChemActivityByFacility Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ChemActivityByFacility Choreo.
 */
@interface TMBEnviroFacts_Toxins_ChemActivityByFacility_Inputs : TMBChoreographyInputSet
	-(void)setFacilityID:(NSString*)FacilityID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRowEnd:(NSString*)RowEnd;
	-(void)setRowStart:(NSString*)RowStart;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ChemActivityByFacility Choreo.
 */
@interface TMBEnviroFacts_Toxins_ChemActivityByFacility_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of the type of manufacturing activity of toxic chemicals at any EPA-regulated facility.
 */
@interface TMBEnviroFacts_Toxins_ChemActivityByFacility : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBEnviroFacts_Toxins_ChemActivityByFacility_Inputs*)newInputSet;
@end

/*! group TMBEnviroFacts.Toxins_ChemActivityByFacility Choreo */


/*! group TMBEnviroFacts.Toxins.FacilitiesSearchByZip Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FacilitiesSearchByZip Choreo.
 */
@interface TMBEnviroFacts_Toxins_FacilitiesSearchByZip_Inputs : TMBChoreographyInputSet
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRowEnd:(NSString*)RowEnd;
	-(void)setRowStart:(NSString*)RowStart;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FacilitiesSearchByZip Choreo.
 */
@interface TMBEnviroFacts_Toxins_FacilitiesSearchByZip_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of EPA-regulated facilities in the Toxins Release Inventory (TRI) database within a given area code.
 */
@interface TMBEnviroFacts_Toxins_FacilitiesSearchByZip : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBEnviroFacts_Toxins_FacilitiesSearchByZip_Inputs*)newInputSet;
@end

/*! group TMBEnviroFacts.Toxins_FacilitiesSearchByZip Choreo */


/*! group TMBEnviroFacts.DesignForEnvironment.SearchBySector Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the SearchBySector Choreo.
 */
@interface TMBEnviroFacts_DesignForEnvironment_SearchBySector_Inputs : TMBChoreographyInputSet
	-(void)setCategory:(NSString*)Category;
	-(void)setOperator:(NSString*)Operator;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRowEnd:(NSString*)RowEnd;
	-(void)setRowStart:(NSString*)RowStart;
	-(void)setSectorID:(NSString*)SectorID;
	-(void)setSectorKeyword:(NSString*)SectorKeyword;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the SearchBySector Choreo.
 */
@interface TMBEnviroFacts_DesignForEnvironment_SearchBySector_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getCount;
	-(NSString*)getResponse;	
@end

/*!
 * Looks up products by sector in the EPA Design for the Environment database
 */
@interface TMBEnviroFacts_DesignForEnvironment_SearchBySector : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBEnviroFacts_DesignForEnvironment_SearchBySector_Inputs*)newInputSet;
@end

/*! group TMBEnviroFacts.DesignForEnvironment_SearchBySector Choreo */


/*! group TMBEnviroFacts.Toxins.ToxinReleaseByFacility Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ToxinReleaseByFacility Choreo.
 */
@interface TMBEnviroFacts_Toxins_ToxinReleaseByFacility_Inputs : TMBChoreographyInputSet
	-(void)setFacilityID:(NSString*)FacilityID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRowEnd:(NSString*)RowEnd;
	-(void)setRowStart:(NSString*)RowStart;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ToxinReleaseByFacility Choreo.
 */
@interface TMBEnviroFacts_Toxins_ToxinReleaseByFacility_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of the annual release quantities of toxic chemicals at EPA-regulated facilities into air, water, on-site land, and underground wells.
 */
@interface TMBEnviroFacts_Toxins_ToxinReleaseByFacility : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBEnviroFacts_Toxins_ToxinReleaseByFacility_Inputs*)newInputSet;
@end

/*! group TMBEnviroFacts.Toxins_ToxinReleaseByFacility Choreo */
