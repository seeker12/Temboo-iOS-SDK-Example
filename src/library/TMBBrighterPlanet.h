/*!
 * @header Temboo iOS SDK BrighterPlanet classes
 *
 * Execute Choreographies from the Temboo BrighterPlanet bundle.
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

/*! group TMBBrighterPlanet.Purchase Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Purchase Choreo.
 */
@interface TMBBrighterPlanet_Purchase_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCost:(NSString*)Cost;
	-(void)setDate:(NSString*)Date;
	-(void)setIndustry:(NSString*)Industry;
	-(void)setMerchantCategory:(NSString*)MerchantCategory;
	-(void)setMerchant:(NSString*)Merchant;
	-(void)setPurchaseAmount:(NSString*)PurchaseAmount;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSicIndustry:(NSString*)SicIndustry;
	-(void)setTax:(NSString*)Tax;
	-(void)setTimeframe:(NSString*)Timeframe;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Purchase Choreo.
 */
@interface TMBBrighterPlanet_Purchase_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns lifecycle emissions for any good or service. 
 */
@interface TMBBrighterPlanet_Purchase : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_Purchase_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_Purchase Choreo */


/*! group TMBBrighterPlanet.Pet Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Pet Choreo.
 */
@interface TMBBrighterPlanet_Pet_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAcquisition:(NSString*)Acquisition;
	-(void)setBreed:(NSString*)Breed;
	-(void)setGender:(NSString*)Gender;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRetirement:(NSString*)Retirement;
	-(void)setSpecies:(NSString*)Species;
	-(void)setWeight:(NSString*)Weight;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Pet Choreo.
 */
@interface TMBBrighterPlanet_Pet_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns lifecycle food production and veterinary care emissions modeling for domestic animals.
 */
@interface TMBBrighterPlanet_Pet : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_Pet_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_Pet Choreo */


/*! group TMBBrighterPlanet.Diet Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Diet Choreo.
 */
@interface TMBBrighterPlanet_Diet_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDietClass:(NSString*)DietClass;
	-(void)setEndDate:(NSString*)EndDate;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSize:(NSString*)Size;
	-(void)setStartDate:(NSString*)StartDate;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Diet Choreo.
 */
@interface TMBBrighterPlanet_Diet_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the carbon footprint of an individual's yearly food consumption.
 */
@interface TMBBrighterPlanet_Diet : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_Diet_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_Diet Choreo */


/*! group TMBBrighterPlanet.GetReferenceData Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReferenceData Choreo.
 */
@interface TMBBrighterPlanet_GetReferenceData_Inputs : TMBChoreographyInputSet
	-(void)setResource:(NSString*)Resource;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReferenceData Choreo.
 */
@interface TMBBrighterPlanet_GetReferenceData_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a wide variety of reference data sets provided by Brighter Planet.
 */
@interface TMBBrighterPlanet_GetReferenceData : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_GetReferenceData_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_GetReferenceData Choreo */


/*! group TMBBrighterPlanet.AutomobileTrip Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AutomobileTrip Choreo.
 */
@interface TMBBrighterPlanet_AutomobileTrip_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAutomobileFuel:(NSString*)AutomobileFuel;
	-(void)setCountry:(NSString*)Country;
	-(void)setDate:(NSString*)Date;
	-(void)setDestination:(NSString*)Destination;
	-(void)setDistance:(NSString*)Distance;
	-(void)setDuration:(NSString*)Duration;
	-(void)setFuelEfficiency:(NSString*)FuelEfficiency;
	-(void)setFuelUse:(NSString*)FuelUse;
	-(void)setHybridity:(NSString*)Hybridity;
	-(void)setMake:(NSString*)Make;
	-(void)setModel:(NSString*)Model;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSizeClass:(NSString*)SizeClass;
	-(void)setSpeed:(NSString*)Speed;
	-(void)setUrbanity:(NSString*)Urbanity;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AutomobileTrip Choreo.
 */
@interface TMBBrighterPlanet_AutomobileTrip_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the carbon footprint of driving an automobile.
 */
@interface TMBBrighterPlanet_AutomobileTrip : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_AutomobileTrip_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_AutomobileTrip Choreo */


/*! group TMBBrighterPlanet.Residence Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Residence Choreo.
 */
@interface TMBBrighterPlanet_Residence_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAcquisition:(NSString*)Acquisition;
	-(void)setAirConditionerUse:(NSString*)AirConditionerUse;
	-(void)setAnnualCoalVolumeEstimate:(NSString*)AnnualCoalVolumeEstimate;
	-(void)setAnnualFuelOilCost:(NSString*)AnnualFuelOilCost;
	-(void)setAnnualFuelOilVolumeEstimate:(NSString*)AnnualFuelOilVolumeEstimate;
	-(void)setAnnualPropaneCost:(NSString*)AnnualPropaneCost;
	-(void)setAnnualPropaneVolumeEstimate:(NSString*)AnnualPropaneVolumeEstimate;
	-(void)setAnnualWoodVolumeEstimate:(NSString*)AnnualWoodVolumeEstimate;
	-(void)setBathrooms:(NSString*)Bathrooms;
	-(void)setBedrooms:(NSString*)Bedrooms;
	-(void)setClothesMachineUse:(NSString*)ClothesMachineUse;
	-(void)setConstructionYear:(NSString*)ConstructionYear;
	-(void)setDishwasherUse:(NSString*)DishwasherUse;
	-(void)setFloors:(NSString*)Floors;
	-(void)setFloorspaceEstimate:(NSString*)FloorspaceEstimate;
	-(void)setFreezerCount:(NSString*)FreezerCount;
	-(void)setFullBathrooms:(NSString*)FullBathrooms;
	-(void)setGreenElectricty:(NSString*)GreenElectricty;
	-(void)setHalfBathrooms:(NSString*)HalfBathrooms;
	-(void)setLightingEfficiency:(NSString*)LightingEfficiency;
	-(void)setMonthlyElectricityCost:(NSString*)MonthlyElectricityCost;
	-(void)setMonthlyElectricityUseEstimate:(NSString*)MonthlyElectricityUseEstimate;
	-(void)setMonthlyNaturalGasCost:(NSString*)MonthlyNaturalGasCost;
	-(void)setMonthlyNaturalGasVolumeEstimate:(NSString*)MonthlyNaturalGasVolumeEstimate;
	-(void)setOccupation:(NSString*)Occupation;
	-(void)setOwnership:(NSString*)Ownership;
	-(void)setRefrigeratorCount:(NSString*)RefrigeratorCount;
	-(void)setResidentialClass:(NSString*)ResidentialClass;
	-(void)setResidents:(NSString*)Residents;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRetirement:(NSString*)Retirement;
	-(void)setTimeframe:(NSString*)Timeframe;
	-(void)setUrbanity:(NSString*)Urbanity;
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Residence Choreo.
 */
@interface TMBBrighterPlanet_Residence_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the annual carbon footprint of a home.
 */
@interface TMBBrighterPlanet_Residence : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_Residence_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_Residence Choreo */


/*! group TMBBrighterPlanet.FuelPurchase Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FuelPurchase Choreo.
 */
@interface TMBBrighterPlanet_FuelPurchase_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCost:(NSString*)Cost;
	-(void)setDate:(NSString*)Date;
	-(void)setFuelType:(NSString*)FuelType;
	-(void)setPADD:(NSString*)PADD;
	-(void)setPrice:(NSString*)Price;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
	-(void)setTimeframe:(NSString*)Timeframe;
	-(void)setVolume:(NSString*)Volume;
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FuelPurchase Choreo.
 */
@interface TMBBrighterPlanet_FuelPurchase_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the carbon emissions from using a wide variety of fuel types.
 */
@interface TMBBrighterPlanet_FuelPurchase : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_FuelPurchase_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_FuelPurchase Choreo */


/*! group TMBBrighterPlanet.ElectricityUse Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ElectricityUse Choreo.
 */
@interface TMBBrighterPlanet_ElectricityUse_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCountry:(NSString*)Country;
	-(void)setDate:(NSString*)Date;
	-(void)setEnergy:(NSString*)Energy;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
	-(void)setTimeframe:(NSString*)Timeframe;
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ElectricityUse Choreo.
 */
@interface TMBBrighterPlanet_ElectricityUse_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the carbon footprint of using electricity from the US public grid.
 */
@interface TMBBrighterPlanet_ElectricityUse : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_ElectricityUse_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_ElectricityUse Choreo */


/*! group TMBBrighterPlanet.Flight Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Flight Choreo.
 */
@interface TMBBrighterPlanet_Flight_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAircraft:(NSString*)Aircraft;
	-(void)setAirline:(NSString*)Airline;
	-(void)setCompliance:(NSString*)Compliance;
	-(void)setDate:(NSString*)Date;
	-(void)setDestinationAirport:(NSString*)DestinationAirport;
	-(void)setDistanceClass:(NSString*)DistanceClass;
	-(void)setDistanceEstimate:(NSString*)DistanceEstimate;
	-(void)setFuel:(NSString*)Fuel;
	-(void)setOriginAirport:(NSString*)OriginAirport;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setSeats:(NSString*)Seats;
	-(void)setTimeframe:(NSString*)Timeframe;
	-(void)setTrips:(NSString*)Trips;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Flight Choreo.
 */
@interface TMBBrighterPlanet_Flight_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the carbon footprint of a passenger's air travel.
 */
@interface TMBBrighterPlanet_Flight : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_Flight_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_Flight Choreo */


/*! group TMBBrighterPlanet.Shipment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Shipment Choreo.
 */
@interface TMBBrighterPlanet_Shipment_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCarrier:(NSString*)Carrier;
	-(void)setDestinationZipCode:(NSString*)DestinationZipCode;
	-(void)setDestination:(NSString*)Destination;
	-(void)setDistance:(NSString*)Distance;
	-(void)setMode:(NSString*)Mode;
	-(void)setOriginZipCode:(NSString*)OriginZipCode;
	-(void)setOrigin:(NSString*)Origin;
	-(void)setPackageCount:(NSString*)PackageCount;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setWeight:(NSString*)Weight;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Shipment Choreo.
 */
@interface TMBBrighterPlanet_Shipment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the carbon footprint of shipping packages.
 */
@interface TMBBrighterPlanet_Shipment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_Shipment_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_Shipment Choreo */


/*! group TMBBrighterPlanet.Meeting Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Meeting Choreo.
 */
@interface TMBBrighterPlanet_Meeting_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setArea:(NSString*)Area;
	-(void)setDate:(NSString*)Date;
	-(void)setDuration:(NSString*)Duration;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setState:(NSString*)State;
	-(void)setZip:(NSString*)Zip;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Meeting Choreo.
 */
@interface TMBBrighterPlanet_Meeting_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns facility operations emissions analysis for corporate and cultural events.
 */
@interface TMBBrighterPlanet_Meeting : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_Meeting_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_Meeting Choreo */


/*! group TMBBrighterPlanet.BusTrip Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the BusTrip Choreo.
 */
@interface TMBBrighterPlanet_BusTrip_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setBusClass:(NSString*)BusClass;
	-(void)setCompliance:(NSString*)Compliance;
	-(void)setDate:(NSString*)Date;
	-(void)setDistance:(NSString*)Distance;
	-(void)setDuration:(NSString*)Duration;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTimeframe:(NSString*)Timeframe;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the BusTrip Choreo.
 */
@interface TMBBrighterPlanet_BusTrip_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the carbon footprint of passenger bus travel.
 */
@interface TMBBrighterPlanet_BusTrip : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_BusTrip_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_BusTrip Choreo */


/*! group TMBBrighterPlanet.RailTrip Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RailTrip Choreo.
 */
@interface TMBBrighterPlanet_RailTrip_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCompliance:(NSString*)Compliance;
	-(void)setCountry:(NSString*)Country;
	-(void)setDate:(NSString*)Date;
	-(void)setDestination:(NSString*)Destination;
	-(void)setDistance:(NSString*)Distance;
	-(void)setDuration:(NSString*)Duration;
	-(void)setOrigin:(NSString*)Origin;
	-(void)setRailClass:(NSString*)RailClass;
	-(void)setRailCompany:(NSString*)RailCompany;
	-(void)setRailTraction:(NSString*)RailTraction;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setTimeframe:(NSString*)Timeframe;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RailTrip Choreo.
 */
@interface TMBBrighterPlanet_RailTrip_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns information about the carbon footprint of a passenger's train travel.
 */
@interface TMBBrighterPlanet_RailTrip : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_RailTrip_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_RailTrip Choreo */


/*! group TMBBrighterPlanet.Automobile Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Automobile Choreo.
 */
@interface TMBBrighterPlanet_Automobile_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAcquisition:(NSString*)Acquisition;
	-(void)setAnnualDistance:(NSString*)AnnualDistance;
	-(void)setAnnualFuelUse:(NSString*)AnnualFuelUse;
	-(void)setAutomobileFuel:(NSString*)AutomobileFuel;
	-(void)setCountry:(NSString*)Country;
	-(void)setDailyDistance:(NSString*)DailyDistance;
	-(void)setDailyDuration:(NSString*)DailyDuration;
	-(void)setFuelEfficiency:(NSString*)FuelEfficiency;
	-(void)setFuelUse:(NSString*)FuelUse;
	-(void)setHybridity:(NSString*)Hybridity;
	-(void)setMake:(NSString*)Make;
	-(void)setModel:(NSString*)Model;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRetirement:(NSString*)Retirement;
	-(void)setSizeClass:(NSString*)SizeClass;
	-(void)setSpeed:(NSString*)Speed;
	-(void)setUrbanity:(NSString*)Urbanity;
	-(void)setWeeklyDistance:(NSString*)WeeklyDistance;
	-(void)setYear:(NSString*)Year;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Automobile Choreo.
 */
@interface TMBBrighterPlanet_Automobile_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns greenhouse gas modeling for passenger vehicles operated over periods of time.
 */
@interface TMBBrighterPlanet_Automobile : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_Automobile_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_Automobile Choreo */


/*! group TMBBrighterPlanet.Lodging Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Lodging Choreo.
 */
@interface TMBBrighterPlanet_Lodging_Inputs : TMBChoreographyInputSet
	-(void)setACCoverage:(NSString*)ACCoverage;
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setCity:(NSString*)City;
	-(void)setCompliance:(NSString*)Compliance;
	-(void)setConstructionYear:(NSString*)ConstructionYear;
	-(void)setCountry:(NSString*)Country;
	-(void)setDate:(NSString*)Date;
	-(void)setDuration:(NSString*)Duration;
	-(void)setFloors:(NSString*)Floors;
	-(void)setHotTubs:(NSString*)HotTubs;
	-(void)setIndoorPools:(NSString*)IndoorPools;
	-(void)setLodgingClass:(NSString*)LodgingClass;
	-(void)setOutdoorPools:(NSString*)OutdoorPools;
	-(void)setPropertyRooms:(NSString*)PropertyRooms;
	-(void)setProperty:(NSString*)Property;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
	-(void)setRooms:(NSString*)Rooms;
	-(void)setState:(NSString*)State;
	-(void)setTimeframe:(NSString*)Timeframe;
	-(void)setZipCode:(NSString*)ZipCode;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Lodging Choreo.
 */
@interface TMBBrighterPlanet_Lodging_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the the footprint of a guest's hotel stay.
 */
@interface TMBBrighterPlanet_Lodging : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBBrighterPlanet_Lodging_Inputs*)newInputSet;
@end

/*! group TMBBrighterPlanet_Lodging Choreo */
