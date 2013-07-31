/*!
 * @header Temboo iOS SDK Genability classes
 *
 * Execute Choreographies from the Temboo Genability bundle.
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

/*! group TMBGenability.TariffData.GetZipCodeDetails Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetZipCodeDetails Choreo.
 */
@interface TMBGenability_TariffData_GetZipCodeDetails_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setPageCount:(NSString*)PageCount;
	-(void)setPageStart:(NSString*)PageStart;
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetZipCodeDetails Choreo.
 */
@interface TMBGenability_TariffData_GetZipCodeDetails_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the details for a given zip code.
 */
@interface TMBGenability_TariffData_GetZipCodeDetails : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetZipCodeDetails_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetZipCodeDetails Choreo */


/*! group TMBGenability.TariffData.GetTimeOfUseGroup Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTimeOfUseGroup Choreo.
 */
@interface TMBGenability_TariffData_GetTimeOfUseGroup_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setEndsWith:(NSString*)EndsWith;
	-(void)setIsRegex:(NSString*)IsRegex;
	-(void)setLSEID:(NSString*)LSEID;
	-(void)setPageCount:(NSString*)PageCount;
	-(void)setPageStart:(NSString*)PageStart;
	-(void)setSearchOn:(NSString*)SearchOn;
	-(void)setSearch:(NSString*)Search;
	-(void)setSortOn:(NSString*)SortOn;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartsWith:(NSString*)StartsWith;
	-(void)setTOUGroupID:(NSString*)TOUGroupID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTimeOfUseGroup Choreo.
 */
@interface TMBGenability_TariffData_GetTimeOfUseGroup_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a particular Time of Use Group with a given touGroupId and lseId.
 */
@interface TMBGenability_TariffData_GetTimeOfUseGroup : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetTimeOfUseGroup_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetTimeOfUseGroup Choreo */


/*! group TMBGenability.PricingAndCalc.GetTerritoryIDFromZipcode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTerritoryIDFromZipcode Choreo.
 */
@interface TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setLSEID:(NSString*)LSEID;
	-(void)setMasterTariffID:(NSString*)MasterTariffID;
	-(void)setZipcode:(NSString*)Zipcode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTerritoryIDFromZipcode Choreo.
 */
@interface TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Get a territoryID, by using a consumer's zipcode, LSE ID and master tariff ID.
 */
@interface TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_PricingAndCalc_GetTerritoryIDFromZipcode_Inputs*)newInputSet;
@end

/*! group TMBGenability.PricingAndCalc_GetTerritoryIDFromZipcode Choreo */


/*! group TMBGenability.TariffData.GetTariffs Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTariffs Choreo.
 */
@interface TMBGenability_TariffData_GetTariffs_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setCustomerClasses:(NSString*)CustomerClasses;
	-(void)setEffectiveOn:(NSString*)EffectiveOn;
	-(void)setEndsWith:(NSString*)EndsWith;
	-(void)setFromDateTime:(NSString*)FromDateTime;
	-(void)setIsRegex:(NSString*)IsRegex;
	-(void)setLSEID:(NSString*)LSEID;
	-(void)setPageCount:(NSString*)PageCount;
	-(void)setPageStart:(NSString*)PageStart;
	-(void)setPopulateProperties:(NSString*)PopulateProperties;
	-(void)setPopulateRates:(NSString*)PopulateRates;
	-(void)setSearchOn:(NSString*)SearchOn;
	-(void)setSearch:(NSString*)Search;
	-(void)setSortOn:(NSString*)SortOn;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartsWith:(NSString*)StartsWith;
	-(void)setTariffTypes:(NSString*)TariffTypes;
	-(void)setToDateTime:(NSString*)ToDateTime;
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTariffs Choreo.
 */
@interface TMBGenability_TariffData_GetTariffs_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of Tariff objects based a specified search criteria.
 */
@interface TMBGenability_TariffData_GetTariffs : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetTariffs_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetTariffs Choreo */


/*! group TMBGenability.TariffData.GetMetricsForZipCode Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetMetricsForZipCode Choreo.
 */
@interface TMBGenability_TariffData_GetMetricsForZipCode_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetMetricsForZipCode Choreo.
 */
@interface TMBGenability_TariffData_GetMetricsForZipCode_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a place object and associated facts and metrics with a given zip code.
 */
@interface TMBGenability_TariffData_GetMetricsForZipCode : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetMetricsForZipCode_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetMetricsForZipCode Choreo */


/*! group TMBGenability.PricingAndCalc.GetTariffPrice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTariffPrice Choreo.
 */
@interface TMBGenability_PricingAndCalc_GetTariffPrice_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setConsumptionAmount:(NSString*)ConsumptionAmount;
	-(void)setDemandAmount:(NSString*)DemandAmount;
	-(void)setFromDateTime:(NSString*)FromDateTime;
	-(void)setMasterTariffID:(NSString*)MasterTariffID;
	-(void)setPageCount:(NSString*)PageCount;
	-(void)setPageStart:(NSString*)PageStart;
	-(void)setTerritoryID:(NSString*)TerritoryID;
	-(void)setToDateTime:(NSString*)ToDateTime;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTariffPrice Choreo.
 */
@interface TMBGenability_PricingAndCalc_GetTariffPrice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve summarized rates of a specified electricity tariff, in addition to changes in rates over a specified time span.
 */
@interface TMBGenability_PricingAndCalc_GetTariffPrice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_PricingAndCalc_GetTariffPrice_Inputs*)newInputSet;
@end

/*! group TMBGenability.PricingAndCalc_GetTariffPrice Choreo */


/*! group TMBGenability.TariffData.GetPropertyKey Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPropertyKey Choreo.
 */
@interface TMBGenability_TariffData_GetPropertyKey_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setKeyName:(NSString*)KeyName;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPropertyKey Choreo.
 */
@interface TMBGenability_TariffData_GetPropertyKey_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns an individual Property Key using a given key name.
 */
@interface TMBGenability_TariffData_GetPropertyKey : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetPropertyKey_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetPropertyKey Choreo */


/*! group TMBGenability.PricingAndCalc.RunNewPriceCalculation Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RunNewPriceCalculation Choreo.
 */
@interface TMBGenability_PricingAndCalc_RunNewPriceCalculation_Inputs : TMBChoreographyInputSet
	-(void)setPOSTData:(NSString*)POSTData;
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setMasterTariffID:(NSString*)MasterTariffID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RunNewPriceCalculation Choreo.
 */
@interface TMBGenability_PricingAndCalc_RunNewPriceCalculation_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Calculate electricity costs based on a POSTed calculation criteria. 
 */
@interface TMBGenability_PricingAndCalc_RunNewPriceCalculation : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_PricingAndCalc_RunNewPriceCalculation_Inputs*)newInputSet;
@end

/*! group TMBGenability.PricingAndCalc_RunNewPriceCalculation Choreo */


/*! group TMBGenability.TariffData.GetPropertyKeys Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPropertyKeys Choreo.
 */
@interface TMBGenability_TariffData_GetPropertyKeys_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setEntityID:(NSString*)EntityID;
	-(void)setEntityType:(NSString*)EntityType;
	-(void)setPageCount:(NSString*)PageCount;
	-(void)setPageStart:(NSString*)PageStart;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPropertyKeys Choreo.
 */
@interface TMBGenability_TariffData_GetPropertyKeys_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of Property Keys based on a specified search criteria.
 */
@interface TMBGenability_TariffData_GetPropertyKeys : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetPropertyKeys_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetPropertyKeys Choreo */


/*! group TMBGenability.TariffData.GetTariff Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTariff Choreo.
 */
@interface TMBGenability_TariffData_GetTariff_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setMasterTariffID:(NSString*)MasterTariffID;
	-(void)setPopulateProperties:(NSString*)PopulateProperties;
	-(void)setPopulateRates:(NSString*)PopulateRates;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTariff Choreo.
 */
@interface TMBGenability_TariffData_GetTariff_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns an individual Tariff object with a given id.
 */
@interface TMBGenability_TariffData_GetTariff : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetTariff_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetTariff Choreo */


/*! group TMBGenability.TariffData.GetTerritory Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTerritory Choreo.
 */
@interface TMBGenability_TariffData_GetTerritory_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setPopulateItems:(NSString*)PopulateItems;
	-(void)setTerritoryID:(NSString*)TerritoryID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTerritory Choreo.
 */
@interface TMBGenability_TariffData_GetTerritory_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a an individual Territory objects with a given id.
 */
@interface TMBGenability_TariffData_GetTerritory : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetTerritory_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetTerritory Choreo */


/*! group TMBGenability.TariffData.GetLoadServingEntity Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLoadServingEntity Choreo.
 */
@interface TMBGenability_TariffData_GetLoadServingEntity_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setLSEID:(NSString*)LSEID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLoadServingEntity Choreo.
 */
@interface TMBGenability_TariffData_GetLoadServingEntity_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a Load Serving Entity with a given ID.
 */
@interface TMBGenability_TariffData_GetLoadServingEntity : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetLoadServingEntity_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetLoadServingEntity Choreo */


/*! group TMBGenability.TariffData.GetLoadServingEntities Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetLoadServingEntities Choreo.
 */
@interface TMBGenability_TariffData_GetLoadServingEntities_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setEndsWith:(NSString*)EndsWith;
	-(void)setIsRegex:(NSString*)IsRegex;
	-(void)setPageCount:(NSString*)PageCount;
	-(void)setPageStart:(NSString*)PageStart;
	-(void)setSearchOn:(NSString*)SearchOn;
	-(void)setSearch:(NSString*)Search;
	-(void)setSortOn:(NSString*)SortOn;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartsWith:(NSString*)StartsWith;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetLoadServingEntities Choreo.
 */
@interface TMBGenability_TariffData_GetLoadServingEntities_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of LoadServingEntity objects based a specified search criteria.
 */
@interface TMBGenability_TariffData_GetLoadServingEntities : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetLoadServingEntities_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetLoadServingEntities Choreo */


/*! group TMBGenability.PricingAndCalc.GetPrice Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetPrice Choreo.
 */
@interface TMBGenability_PricingAndCalc_GetPrice_Inputs : TMBChoreographyInputSet
	-(void)setAccountID:(NSString*)AccountID;
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setConsumptionAmount:(NSString*)ConsumptionAmount;
	-(void)setDemandAmount:(NSString*)DemandAmount;
	-(void)setFromDateTime:(NSString*)FromDateTime;
	-(void)setMasterTariffID:(NSString*)MasterTariffID;
	-(void)setPageCount:(NSString*)PageCount;
	-(void)setPageStart:(NSString*)PageStart;
	-(void)setProfileID:(NSString*)ProfileID;
	-(void)setProviderAccountID:(NSString*)ProviderAccountID;
	-(void)setTerritoryID:(NSString*)TerritoryID;
	-(void)setToDateTime:(NSString*)ToDateTime;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetPrice Choreo.
 */
@interface TMBGenability_PricingAndCalc_GetPrice_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the consumption price of a specified Tariff over a given date range.
 */
@interface TMBGenability_PricingAndCalc_GetPrice : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_PricingAndCalc_GetPrice_Inputs*)newInputSet;
@end

/*! group TMBGenability.PricingAndCalc_GetPrice Choreo */


/*! group TMBGenability.PricingAndCalc.CalculateTariffInputMetaData Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CalculateTariffInputMetaData Choreo.
 */
@interface TMBGenability_PricingAndCalc_CalculateTariffInputMetaData_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setBillingPeriod:(NSString*)BillingPeriod;
	-(void)setCityLimits:(NSString*)CityLimits;
	-(void)setConnectionType:(NSString*)ConnectionType;
	-(void)setFromDateTime:(NSString*)FromDateTime;
	-(void)setGroupBy:(NSString*)GroupBy;
	-(void)setKeyName:(NSString*)KeyName;
	-(void)setKeyValue:(NSString*)KeyValue;
	-(void)setMasterTariffID:(NSString*)MasterTariffID;
	-(void)setToDateTime:(NSString*)ToDateTime;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CalculateTariffInputMetaData Choreo.
 */
@interface TMBGenability_PricingAndCalc_CalculateTariffInputMetaData_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieve inputs required to run a calculation for the specified tariff, within a specified period of time.
 */
@interface TMBGenability_PricingAndCalc_CalculateTariffInputMetaData : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_PricingAndCalc_CalculateTariffInputMetaData_Inputs*)newInputSet;
@end

/*! group TMBGenability.PricingAndCalc_CalculateTariffInputMetaData Choreo */


/*! group TMBGenability.TariffData.GetTimeOfUseGroupIntervals Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTimeOfUseGroupIntervals Choreo.
 */
@interface TMBGenability_TariffData_GetTimeOfUseGroupIntervals_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setFromDateTime:(NSString*)FromDateTime;
	-(void)setLSEID:(NSString*)LSEID;
	-(void)setPageCount:(NSString*)PageCount;
	-(void)setPageStart:(NSString*)PageStart;
	-(void)setTOUGroupID:(NSString*)TOUGroupID;
	-(void)setToDateTime:(NSString*)ToDateTime;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTimeOfUseGroupIntervals Choreo.
 */
@interface TMBGenability_TariffData_GetTimeOfUseGroupIntervals_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns all the Intervals for a Time of Use Group within a given date range.
 */
@interface TMBGenability_TariffData_GetTimeOfUseGroupIntervals : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetTimeOfUseGroupIntervals_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetTimeOfUseGroupIntervals Choreo */


/*! group TMBGenability.TariffData.GetTerritories Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTerritories Choreo.
 */
@interface TMBGenability_TariffData_GetTerritories_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setContainsItemType:(NSString*)ContainsItemType;
	-(void)setContainsItemValue:(NSString*)ContainsItemValue;
	-(void)setEndsWith:(NSString*)EndsWith;
	-(void)setIsRegex:(NSString*)IsRegex;
	-(void)setLSEID:(NSString*)LSEID;
	-(void)setMasterTariffID:(NSString*)MasterTariffID;
	-(void)setPageCount:(NSString*)PageCount;
	-(void)setPageStart:(NSString*)PageStart;
	-(void)setPopulateItems:(NSString*)PopulateItems;
	-(void)setPopulateLSES:(NSString*)PopulateLSES;
	-(void)setSearchOn:(NSString*)SearchOn;
	-(void)setSearch:(NSString*)Search;
	-(void)setSortOn:(NSString*)SortOn;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartsWith:(NSString*)StartsWith;
	-(void)setUsageTypes:(NSString*)UsageTypes;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTerritories Choreo.
 */
@interface TMBGenability_TariffData_GetTerritories_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of Territory objects based a specified search criteria.
 */
@interface TMBGenability_TariffData_GetTerritories : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetTerritories_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetTerritories Choreo */


/*! group TMBGenability.TariffData.GetSeasonGroups Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetSeasonGroups Choreo.
 */
@interface TMBGenability_TariffData_GetSeasonGroups_Inputs : TMBChoreographyInputSet
	-(void)setAppID:(NSString*)AppID;
	-(void)setAppKey:(NSString*)AppKey;
	-(void)setEndsWith:(NSString*)EndsWith;
	-(void)setIsRegex:(NSString*)IsRegex;
	-(void)setLSEID:(NSString*)LSEID;
	-(void)setPageCount:(NSString*)PageCount;
	-(void)setPageStart:(NSString*)PageStart;
	-(void)setSearchOn:(NSString*)SearchOn;
	-(void)setSearch:(NSString*)Search;
	-(void)setSortOn:(NSString*)SortOn;
	-(void)setSortOrder:(NSString*)SortOrder;
	-(void)setStartsWith:(NSString*)StartsWith;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetSeasonGroups Choreo.
 */
@interface TMBGenability_TariffData_GetSeasonGroups_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of Season Groups for a given Load Serving Entity.
 */
@interface TMBGenability_TariffData_GetSeasonGroups : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGenability_TariffData_GetSeasonGroups_Inputs*)newInputSet;
@end

/*! group TMBGenability.TariffData_GetSeasonGroups Choreo */
